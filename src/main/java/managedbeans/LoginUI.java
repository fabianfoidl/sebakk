package managedbeans;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.RealmSecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.subject.Subject;
import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.elements.impl.FIXGRIDItem;
import org.eclnt.jsfserver.elements.impl.FIXGRIDListBinding;
import org.eclnt.jsfserver.pagebean.PageBean;

import db.Database;
import db.User;
import login.CCAuthorizingRealm;

@CCGenClass (expressionBase="#{d.LoginUI}")

public class LoginUI
    extends PageBean 
    implements Serializable
{
	
	public enum Roles {
		ADMIN("Admin"),
		SHIFTLEADER("Shiftleader"),
		MACHINE1("Machine 1"),
		MACHINE2("Machine 2");
		
		private String desc;
		
		Roles(String desc) {
			this.desc = desc;
		}
		
		public String getDesc() {
			return desc;
		}
	}
	
    Boolean m_showOperator2 = false;
    public Boolean getShowOperator2() { return m_showOperator2; }
    public void setShowOperator2(Boolean value) { this.m_showOperator2 = value; }

    Boolean m_showOperator1 = false;
    public Boolean getShowOperator1() { return m_showOperator1; }
    public void setShowOperator1(Boolean value) { this.m_showOperator1 = value; }

    Boolean m_showShiftLeader = false;
    public Boolean getShowShiftLeader() { return m_showShiftLeader; }
    public void setShowShiftLeader(Boolean value) { this.m_showShiftLeader = value; }

    Boolean m_showSuperuser = false;
    public Boolean getShowSuperuser() { return m_showSuperuser; }
    public void setShowSuperuser(Boolean value) { this.m_showSuperuser = value; }


    FIXGRIDListBinding<UserGridItem> m_userGrid = new FIXGRIDListBinding<UserGridItem>();
    public FIXGRIDListBinding<UserGridItem> getUserGrid() { return m_userGrid; }

    public class UserGridItem extends FIXGRIDItem implements java.io.Serializable
    {
    	
    	String id;
    	String name;
    	String username;
    	String password;
    	
        public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public void onRowSelect()
        {
        }
        public void onRowExecute()
        {
        }
    }
    
    private void fillUserVvb() {
    	List<User> users = Database.getAllUser();
    	for (User user : users) {
    		UserGridItem ugi = new UserGridItem();
    		ugi.setId(user.getId());
    		ugi.setName(user.getName());
    		ugi.setUsername(user.getUsername());
    		ugi.setPassword(user.getPassword());
    		m_userGrid.getItems().add(ugi);
    	}
    }

	
	String m_user;
	String m_pass;
	boolean m_showIfTrue = false;
	String m_loginText;
	
	public void setUser(String user) {
		m_user = user;
	}
	
	public String getUser() {
		return m_user;
	}
	
	public void setPassword(String password) {
		m_pass = password;
	}
	
	public String getPassword() {
		return m_pass;
	}
	
	public void setEingeloggt(boolean eingeloggt) {
		m_showIfTrue = eingeloggt;
	}
	
	public boolean getEingeloggt() {
		return m_showIfTrue;
	}
	
	public String getLoginText() {
		return m_loginText;
	}
	
	public void setLoginText(String loginText) {
		m_loginText = loginText;
	}
	
	public void onLogin(javax.faces.event.ActionEvent event) {
		Collection<Realm> realms = ((RealmSecurityManager)SecurityUtils.getSecurityManager()).getRealms();
		m_showSuperuser = false;
		m_showShiftLeader = false;
    	m_showOperator1 = false;
    	m_showOperator2 = false;
		System.out.println("Try onLogin...");
		m_showIfTrue = true;
    	if (m_user != null && m_user != "" && m_pass != null && m_pass != "") {
    		AuthenticationToken token = new UsernamePasswordToken(m_user, m_pass);
    		Subject currentUser = SecurityUtils.getSubject();
    		for (Realm realm : realms) {
    			if (realm instanceof CCAuthorizingRealm) {
    				// see @ https://stackoverflow.com/questions/22706632/how-to-clear-cache-for-a-subject-in-shiro
    				((CCAuthorizingRealm) realm).clearCachedAuthorizationInfo(currentUser.getPrincipals());
    			}
    		}
    		
    		//ccar.clearCachedAuthorizationInfo(currentUser.getPrincipals());
    		try {
    			currentUser.login(token);
    			m_loginText = "Eingeloggt!";
    			if (currentUser.hasRole(Roles.ADMIN.getDesc())) {
    				m_showSuperuser = true;
    			}
    			if (currentUser.hasRole(Roles.SHIFTLEADER.getDesc())) {
    				m_showShiftLeader = true;
    			}
    			if (currentUser.hasRole(Roles.MACHINE1.getDesc())) {
    				m_showOperator1 = true;
    			}
    			if (currentUser.hasRole(Roles.MACHINE2.getDesc())) {
    				m_showOperator2 = true;
    			}
    		} catch (IncorrectCredentialsException ice) {
    			m_loginText = "Falsche Zugangsdaten! Ex 1";
    		} catch (LockedAccountException lae) {
    			m_loginText = "Falsche Zugangsdaten! Ex 2";
    		} catch (AuthenticationException ae) {
    			m_loginText = "Falsche Zugangsdaten! Ex 3";
    		}
    	} else {
    		m_loginText = "Falsche Zugangsdaten! allgemein";
    	}
    	
    	
    }
	
	
    // ------------------------------------------------------------------------
    // inner classes
    // ------------------------------------------------------------------------
    
    /* Listener to the user of the page bean. */
    public interface IListener
    {
    }
    
    // ------------------------------------------------------------------------
    // members
    // ------------------------------------------------------------------------
    
    private IListener m_listener;
    
    // ------------------------------------------------------------------------
    // constructors & initialization
    // ------------------------------------------------------------------------

    public LoginUI()
    {
    	fillUserVvb();
    	m_showSuperuser = false;
    	m_showShiftLeader = false;
    	m_showOperator1 = false;
    	m_showOperator2 = false;
    }

    public String getPageName() { return "/ui/login.jsp"; }
    public String getRootExpressionUsedInPage() { return "#{d.LoginUI}"; }

    // ------------------------------------------------------------------------
    // public usage
    // ------------------------------------------------------------------------

    /* Initialization of the bean. Add any parameter that is required within your scenario. */
    public void prepare(IListener listener)
    {
        m_listener = listener;
    }

    // ------------------------------------------------------------------------
    // private usage
    // ------------------------------------------------------------------------
}
