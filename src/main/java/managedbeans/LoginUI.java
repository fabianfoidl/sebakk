package managedbeans;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.elements.impl.FIXGRIDItem;
import org.eclnt.jsfserver.elements.impl.FIXGRIDListBinding;
import org.eclnt.jsfserver.pagebean.PageBean;
import org.keycloak.authorization.client.AuthzClient;
import org.keycloak.authorization.client.representation.TokenIntrospectionResponse;
import org.keycloak.authorization.client.util.HttpResponseException;
import org.keycloak.representations.AccessToken.Access;
import org.keycloak.representations.AccessTokenResponse;
import org.keycloak.representations.idm.authorization.AuthorizationRequest;
import org.keycloak.representations.idm.authorization.AuthorizationResponse;
import org.keycloak.representations.idm.authorization.Permission;
import org.keycloak.representations.idm.authorization.PermissionRequest;

import db.Database;
import db.User;

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
		m_showSuperuser = false;
		m_showShiftLeader = false;
    	m_showOperator1 = false;
    	m_showOperator2 = false;
		System.out.println("Try onLogin...");
		m_showIfTrue = true;
    	if (m_user != null && m_user != "" && m_pass != null && m_pass != "") {
    		try {
    			AuthzClient authzClient = AuthzClient.create();
//        		AccessTokenResponse response = authzClient.obtainAccessToken(m_user, m_pass);
//    			String token = authzClient.obtainAccessToken(m_user, m_pass).getToken();
//    			System.out.println(token);
    			
    			AuthorizationRequest request = new AuthorizationRequest();
//    			request.addPermission("machine1");  // kann auskommentiert werden, wenn ueberprueft werden soll, ob eine Berechtigung fuer Ressource machine1 existiert
    			
    			AuthorizationResponse response = authzClient.authorization(m_user, m_pass).authorize(request);
    			String rpt = response.getToken();
    			System.out.println("Token: " + rpt);
    			
    			TokenIntrospectionResponse requestingPartyToken = authzClient.protection().introspectRequestingPartyToken(rpt);
    			
    			for (Permission granted : requestingPartyToken.getPermissions()) {
    				System.out.println(granted);
    				m_loginText = "Eingeloggt!";
    				if (Roles.MACHINE1.getDesc().equals(granted.getResourceName())) {
    					m_showOperator1 = true;
    				}
    				if (Roles.MACHINE2.getDesc().equals(granted.getResourceName())) {
    					m_showOperator2 = true;
    				}
    				if (Roles.SHIFTLEADER.getDesc().equals(granted.getResourceName())) {
    					m_showShiftLeader = true;
    				}
    				if (Roles.ADMIN.getDesc().equals(granted.getResourceName())) {
    					m_showSuperuser = true;
    				}
    			}
    			
    		} catch (HttpResponseException ex) {
    			if (ex.getStatusCode() == 401) {
    				m_loginText = "Falsche Zugangsdaten!";
    			}
    		} catch (Exception ex) {
    			ex.printStackTrace();
    			m_loginText = "Bitte Zugangsdaten ueberpruefen.";
    		}
    		
    	} else {
    		m_loginText = "Falsche Zugangsdaten!";
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
