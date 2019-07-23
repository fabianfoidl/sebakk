package db;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.derby.jdbc.EmbeddedDriver;

public class Database {

	private static Connection conn;
	
	static String url = "jdbc:derby:testdb4";
	
	public Database() {
	}
	
	public static void establishConnection() {
		try {
			Driver derbyEmbeddedDriver = new EmbeddedDriver();
			DriverManager.registerDriver(derbyEmbeddedDriver);
			conn = DriverManager.getConnection(url);
			//conn.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeConnection() {
		try {
			DriverManager.getConnection("jdbc:derby:;shutdown=true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static void createDbAndinsertTestData() {
		
		PreparedStatement pstmt;
		Statement stmt;
		String createRolesSQL = "create table roles (id integer not null generated always as identity (start with 1, increment by 1), name varchar(30) not null, constraint primary_key1 primary key (id))";
		String createUserSQL = "create table users (id integer not null generated always as identity (start with 1, increment by 1), name varchar(100) not null, username varchar(30) not null, password varchar(30) not null, constraint primary_key2 primary key (id))";
		String createAssignedRolesSQL = "create table assignedRoles (id integer not null generated always as identity (start with 1, increment by 1), role integer not null, userid integer not null, constraint primary_key3 primary key (id), constraint fkUser foreign key (userid) references users(id), constraint fkRole foreign key (role) references roles (id))";
		
		try {
			Driver derbyEmbeddedDriver = new EmbeddedDriver();
			DriverManager.registerDriver(derbyEmbeddedDriver);
			conn = DriverManager.getConnection("jdbc:derby:testdb4;create=true");
			//conn.setAutoCommit(false);
			
			stmt = conn.createStatement();
			//stmt.execute("DROP TABLE IF EXISTS roles");
			//stmt.execute("DROP TABLE IF EXISTS user");
			//stmt.execute("DROP TABLE IF EXISTS assignedRoles");
			//conn.commit();
			
			DatabaseMetaData dbmd = conn.getMetaData();
			ResultSet rs = dbmd.getTables(null, "APP", "ROLES", null);
			if (!rs.next()) {
				stmt.execute(createRolesSQL);
			} else {
				stmt.execute("DELETE FROM roles");
			}
			
			rs = dbmd.getTables(null, "APP", "USERS", null);
			if (!rs.next()) {
				stmt.execute(createUserSQL);
			} else {
				stmt.execute("DELETE FROM users");
			}
			
			rs = dbmd.getTables(null, "APP", "ASSIGNEDROLES", null);
			if (!rs.next()) {
				stmt.execute(createAssignedRolesSQL);
			} else {
				stmt.execute("DELETE FROM assignedRoles");
			}
			
			stmt = conn.createStatement();
			stmt.executeUpdate("INSERT INTO roles (name) values ('Admin')");
			stmt.executeUpdate("INSERT INTO roles (name) values ('Guest')");
			stmt.executeUpdate("INSERT INTO roles (name) values ('Standard User')");
			stmt.executeUpdate("INSERT INTO roles (name) values ('Super User')");
			stmt.executeUpdate("INSERT INTO roles (name) values ('Machine 1')");
			stmt.executeUpdate("INSERT INTO roles (name) values ('Machine 2')");
			stmt.executeUpdate("INSERT INTO roles (name) values ('Shiftleader')");
			
			stmt.executeUpdate("INSERT INTO users (name, username, password) values ('Administrator', 'admin', 'admin')");
			stmt.executeUpdate("INSERT INTO users (name, username, password) values ('Super Administrator', 'sadmin', 'sadmin')");
			stmt.executeUpdate("INSERT INTO users (name, username, password) values ('Operator 1', 'operator1', 'operator1')");
			stmt.executeUpdate("INSERT INTO users (name, username, password) values ('Operator 2', 'operator2', 'operator2')");
			stmt.executeUpdate("INSERT INTO users (name, username, password) values ('Max Musterfrau', 'max', 'max')");
			stmt.executeUpdate("INSERT INTO users (name, username, password) values ('Fabian Foidl', 'fabian', 'fabian')");
			
			stmt.executeUpdate("INSERT INTO assignedRoles (userid, role) values (1, 1)");
			//conn.commit();
			
			System.out.println("inserting data ok...");
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
	}
	
	
	// database methods
	
	public static List<Role> getAllRoles() {
		List<Role> roles = new ArrayList<Role>();
		Statement stmt;
		ResultSet rs = null;
		
		try {
			System.out.println("please query...");
			establishConnection();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from roles");
			System.out.println("getRoles() ok...");
			while(rs.next()) {
				roles.add(new Role(rs.getString(1), rs.getString(2)));
			}
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return roles;
	}
	
	public static List<User> getAllUser() {
		List <User> user = new ArrayList<User>();
		Statement stmt;
		ResultSet rs = null;
		
		try {
			establishConnection();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users");
			while(rs.next()) {
				user.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return user;
	}
	
	public static Integer insertNewUser(User user) {
		PreparedStatement pstmt;
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("insert into users (name) values (?)");
			pstmt.setString(1, user.getName());
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e)  {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return PreparedStatement.RETURN_GENERATED_KEYS;
	}
	
	public static Integer insertNewRole(Role role) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		Integer key = -1;
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("insert into roles (name) values (?)", Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, role.getName());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			
			if (rs.next()) {
				key = rs.getInt(1);
			}
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return key;
	}
	
	public static Role getRoleById(Integer roleid) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		Role role = new Role();
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("select * from roles where id = ?");
			pstmt.setInt(1, roleid);
			rs = pstmt.executeQuery();
			// Safe because there can be only one unique role
			while (rs.next()) {
				role = new Role(rs.getString(1), rs.getString(2));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			closeConnection();
		} finally {
			closeConnection();
		}
		return role;
	}
	
	public static User getUserById(Integer userid) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		User user = new User();
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("select * from users where id = ?");
			pstmt.setInt(1, userid);
			rs = pstmt.executeQuery();
			// safe because there can only be one user with an unique id
			while(rs.next()) {
				user = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			closeConnection();
		} finally {
			closeConnection();
		}
		return user;
	}
	
	public static User deleteUser(Integer userid) {
		PreparedStatement pstmt;
		User user = getUserById(userid);
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("delete from users where id = ?");
			pstmt.setInt(1, userid);
			pstmt.executeUpdate();
			pstmt = conn.prepareStatement("delete form assignedRoles where userid = ?");
			pstmt.setInt(1, userid);
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return user;
	}
	
	public static Role deleteRole(Integer roleid) {
		PreparedStatement pstmt;
		Role role = getRoleById(roleid);
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("delete from roles where id = ?");
			pstmt.setInt(1, roleid);
			pstmt.executeUpdate();
			pstmt = conn.prepareStatement("delete form assignedRoles where roleid = ?");
			pstmt.setInt(1, roleid);
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return role;
	}
	
	public static Integer assignRole(String user, String role) {
		PreparedStatement pstmt;
		Integer roleid = Integer.parseInt(role);
		Integer userid = Integer.parseInt(user);
		Integer updatedRows = -1;
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("insert into assignedRoles (role, userid) values (?, ?)");
			pstmt.setInt(1, roleid);
			pstmt.setInt(2, userid);
			updatedRows = pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return updatedRows;
	}
	
	public static Integer deassignRole(String user, String role) {
		PreparedStatement pstmt;
		Integer roleid = Integer.parseInt(role);
		Integer userid = Integer.parseInt(user);
		Integer updatedRows = -1;
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("delete from assignedRoles where role = ? and userid = ?");
			pstmt.setInt(1, roleid);
			pstmt.setInt(2, userid);
			updatedRows = pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return updatedRows;
	}
	
	public static List<Role> getNotAssignedRolesForUser(String user) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		List<Role> roles = new ArrayList<Role>();
		Integer userid = Integer.valueOf(user);
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("select r.id, r.name from roles r where r.id not in (select a.role from assignedRoles a where a.userid = ?)");
			pstmt.setInt(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				roles.add(new Role(rs.getString(1), rs.getString(2)));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return roles;
	}
	
	public static List<Role> getAssignedRolesForUser(String user) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		List<Role> roles = new ArrayList<Role>();
		Integer userid = Integer.valueOf(user);
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("select r.id, r.name from assignedRoles a join roles r on (a.role = r.id) where a.userid = ?");
			pstmt.setInt(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				roles.add(new Role(rs.getString(1), rs.getString(2)));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return roles;
	}
	
	public static List<Role> getAssignedRolesForUsername(String username) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		List<Role> roles = new ArrayList<Role>();
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("select r.id, r.name from assignedRoles a join roles r on (a.role = r.id) join users u on (u.id = a.userid) where u.username = ?");
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				roles.add(new Role(rs.getString(1), rs.getString(2)));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return roles;
	}
	
	public static boolean isValidUser(String username, String password) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		boolean userExists = false;
		establishConnection();
		
		try {
			pstmt = conn.prepareStatement("select username, password from users where username = ? and password = ?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				userExists = true;
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return userExists;
	}
	
	public static User getUserByUsername(String username) {
		PreparedStatement pstmt;
		ResultSet rs = null;
		establishConnection();
		User user = new User();
		
		try {
			pstmt = conn.prepareStatement("select username, password from users where username = ?");
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user.setUsername(rs.getString(1));
				user.setPassword(rs.getString(2));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		
		return user;
	}
	
	
	
	
	// Derby test methods

	@Deprecated
	public static void establishDBConnection() {
		Connection conn = null;
		PreparedStatement pstmt;
		Statement stmt;
		ResultSet rs = null;
		String createSQL = "create table person ("
			      + "id integer not null generated always as"
			      + " identity (start with 1, increment by 1),   "
			      + "name varchar(30) not null, email varchar(30), phone varchar(10),"
			      + "constraint primary_key primary key (id))";
		try {
			Driver derbyEmbeddedDriver = new EmbeddedDriver();
			DriverManager.registerDriver(derbyEmbeddedDriver);
			conn = DriverManager.getConnection("jdbc:derby:testdb1;create=true", "user123", "pass123");
			conn.setAutoCommit(false);
			stmt = conn.createStatement();
			stmt.execute(createSQL);
			
			pstmt = conn.prepareStatement("insert into person (name,email,phone) values(?,?,?)");
	        pstmt.setString(1, "Hagar the Horrible");
	        pstmt.setString(2, "hagar@somewhere.com");
	        pstmt.setString(3, "1234567890");
	        pstmt.executeUpdate();
	        
	        rs = stmt.executeQuery("select * from person");
	        while (rs.next()) {
	        	System.out.printf("%d %s %s %s\n",
	            rs.getInt(1), rs.getString(2),
	            rs.getString(3), rs.getString(4));
	         }
	        
		} catch (Exception e) {
			
		}
	}
	
   public void testDerby() {
      Connection conn = null;
      PreparedStatement pstmt;
      Statement stmt;
      ResultSet rs = null;
      String createSQL = "create table person ("
      + "id integer not null generated always as"
      + " identity (start with 1, increment by 1),   "
      + "name varchar(30) not null, email varchar(30), phone varchar(10),"
      + "constraint primary_key primary key (id))";

      try {
         Driver derbyEmbeddedDriver = new EmbeddedDriver();
         DriverManager.registerDriver(derbyEmbeddedDriver);
         conn = DriverManager.getConnection("jdbc:derby:testdb1;create=true", "user123", "pass123");
         conn.setAutoCommit(false);
         stmt = conn.createStatement();
         stmt.execute(createSQL);

         pstmt = conn.prepareStatement("insert into person (name,email,phone) values(?,?,?)");
         pstmt.setString(1, "Hagar the Horrible");
         pstmt.setString(2, "hagar@somewhere.com");
         pstmt.setString(3, "1234567890");
         pstmt.executeUpdate();

         rs = stmt.executeQuery("select * from person");
         while (rs.next()) {
            System.out.printf("%d %s %s %s\n",
            rs.getInt(1), rs.getString(2),
            rs.getString(3), rs.getString(4));
         }

         stmt.execute("drop table person");

         conn.commit();

      } catch (SQLException ex) {
         System.out.println("in connection" + ex);
      }

      try {
         DriverManager.getConnection
            ("jdbc:derby:;shutdown=true");
      } catch (SQLException ex) {
         if (((ex.getErrorCode() == 50000) &&
            ("XJ015".equals(ex.getSQLState())))) {
               System.out.println("Derby shut down normally");
         } else {
            System.err.println("Derby did not shut down normally");
            System.err.println(ex.getMessage());
         }
      }
   }
}