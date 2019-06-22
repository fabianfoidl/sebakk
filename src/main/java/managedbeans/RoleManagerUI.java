package managedbeans;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.defaultscreens.Statusbar;
import org.eclnt.jsfserver.elements.events.BaseActionEventDrop;
import org.eclnt.jsfserver.elements.impl.FIXGRIDItem;
import org.eclnt.jsfserver.elements.impl.FIXGRIDListBinding;
import org.eclnt.jsfserver.elements.util.ValidValuesBinding;
import org.eclnt.jsfserver.pagebean.PageBean;

import db.Database;
import db.Role;
import db.User;

@CCGenClass (expressionBase="#{d.RoleManagerUI}")

public class RoleManagerUI
    extends PageBean 
    implements Serializable
{
    public void onDeleteRole(javax.faces.event.ActionEvent event) {
    	Role role = Database.deleteRole(Integer.parseInt(m_roleItems1.getSelectedItem().getRoleId()));
    	// TODO maybe insert if for safety
    	Statusbar.outputMessageWithPopup("Rolle " + role.getName() + " geloschet...");
    	m_roleItems1.getItems().remove(m_roleItems1.getSelectedItem());
    }

    public void onDeleteUser(javax.faces.event.ActionEvent event) {
    	if (m_user != null && !m_user.equals("")) {
    		User user = Database.deleteUser(Integer.parseInt(m_user));
        	Statusbar.outputMessageWithPopup("User " + user.getName() + " geloescht...");
    	} else {
    		Statusbar.outputMessageWithPopup("Bitte User auswaehlen...");
    	}
    	
    }

    public void onNewRole(javax.faces.event.ActionEvent event) {
    	Integer id = Database.insertNewRole(new Role(null, m_newRole));
    	RoleItem ri = new RoleItem();
    	ri.setRoleId(String.valueOf(id));
    	ri.setRoleName(m_newRole);
    	m_roleItems1.getItems().add(ri);
    }

    public void onNewUser(javax.faces.event.ActionEvent event) {
    	Integer id = Database.insertNewUser(new User(null, m_newUser, null, null));
    	// TODO: insert new user in vvb directly
    }

    String m_newRole;
    public String getNewRole() { return m_newRole; }
    public void setNewRole(String value) { this.m_newRole = value; }

    String m_newUser;
    public String getNewUser() { return m_newUser; }
    public void setNewUser(String value) { this.m_newUser = value; }


	String m_user;
	ValidValuesBinding m_userVvb;
	String userStatement = "nichts ausgewaehlt";
	
	protected RoleItemGrid m_roleItems2 = new RoleItemGrid();
    public RoleItemGrid getRoleItems2() { return m_roleItems2; }
    
    protected RoleItemGrid m_roleItems1 = new RoleItemGrid();
    public RoleItemGrid getRoleItems1() { return m_roleItems1; }
	
	

    // ------------------------------------------------------------------------
    // inner classes
    // ------------------------------------------------------------------------
    
    /* Listener to the user of the page bean. */
    public interface IListener
    {
    }
    
    public class RoleItem extends FIXGRIDItem implements java.io.Serializable
    {
        /**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		protected String m_roleName;
        public String getRoleName() { return m_roleName; }
        public void setRoleName(String value) { m_roleName = value; }

        protected String m_roleId;
        public String getRoleId() { return m_roleId; }
        public void setRoleId(String value) { m_roleId = value; }

        @Override
        public void onRowDrop(BaseActionEventDrop event)
        {
            String dragSend = event.getDragInfo(); 
            // drag & drop on item level ==> move dropped item at right position!
            boolean inFront = true;
            if (event.getPercentageVertical() >= 50)
                inFront = false;
            if (dragSend.startsWith("grid1:"))
                moveItemsBetweenGrids(m_roleItems1,m_roleItems2,m_roleItems2.getItems().indexOf(this),inFront);
            else if (dragSend.startsWith("grid2:"))
                moveItemsBetweenGrids(m_roleItems2,m_roleItems1,m_roleItems1.getItems().indexOf(this),inFront);
        }
    }
    
    public class RoleItemGrid extends FIXGRIDListBinding<RoleItem>
    {
        /**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		@Override
        protected void onDrop(BaseActionEventDrop dropEvent)
        {
            String dragsend = dropEvent.getDragInfo();
            if (dragsend.startsWith("grid1:"))
                moveItemsBetweenGrids(m_roleItems1,m_roleItems2,-1,true);
            else if (dragsend.startsWith("grid2:"))
                moveItemsBetweenGrids(m_roleItems2,m_roleItems1,-1,true);
        }
    }
    
    // ------------------------------------------------------------------------
    // members
    // ------------------------------------------------------------------------
    
    private IListener m_listener;
    
    // ------------------------------------------------------------------------
    // constructors & initialization
    // ------------------------------------------------------------------------

    public RoleManagerUI() {
		m_userVvb = new ValidValuesBinding();
		for (User user : Database.getAllUser()) {
			m_userVvb.addValidValue(user.getId(), user.getName());
		}		
    }

    public String getPageName() { return "/ui/RoleManager.jsp"; }
    public String getRootExpressionUsedInPage() { return "#{d.RoleManagerUI}"; }
    
    private void moveItemsBetweenGrids(RoleItemGrid gridFrom, 
            RoleItemGrid gridTo, 
            int toIndex,
            boolean inFront) {
    	
    	if (inFront == false) toIndex++;
    	Collection<RoleItem> ris = gridFrom.getSelectedItemsAsSequence();
    	for (RoleItem ri: ris) {
    		if (toIndex >= 0) {
    			gridTo.getItems().add(toIndex, ri);
    			toIndex++;
    		} else {
    			gridTo.getItems().add(ri);
    			// if drag to assigned roles
    			if (gridTo.equals(m_roleItems2)) {
    				Integer updatedRows = Database.assignRole(m_user, ri.getRoleId());
    				Statusbar.outputMessage("Updated Rows: " + updatedRows);
    				// else if drag to not assigned roles
    			} else if (gridTo.equals(m_roleItems1)) {
    				Integer updatedRows = Database.deassignRole(m_user, ri.getRoleId());
    				Statusbar.outputMessage("Updated Rows: " + updatedRows);
    			}
    		}
			gridFrom.getItems().remove(ri);
		}
	}

    // ------------------------------------------------------------------------
    // public usage
    // ------------------------------------------------------------------------

    /* Initialization of the bean. Add any parameter that is required within your scenario. */
    public void prepare(IListener listener)
    {
        m_listener = listener;
    }
    
    public ValidValuesBinding getUserVvb() {
    	return m_userVvb;
    }
    
    public void setUser(String user) {
    	this.m_user = user;
    }
    
    public String getUser() {
    	return m_user;
    }
    
    public void onFlushUser(javax.faces.event.ActionEvent event) {
    	System.out.println("now something should happen...");
    	fillNotAssignedRoles(m_user);
    	fillAssignedRoles(m_user);
    }
    
    private void fillNotAssignedRoles(String user) {
    	m_roleItems1.getItems().clear();
    	List<Role> roles = Database.getNotAssignedRolesForUser(user);
    	for (Role role : roles) {
    		RoleItem ri = new RoleItem();
    		ri.setRoleId(role.getId());
    		ri.setRoleName(role.getName());
    		m_roleItems1.getItems().add(ri);
    	}
    }
    
    private void fillAssignedRoles(String user) {
    	m_roleItems2.getItems().clear();
    	List<Role> roles = Database.getAssignedRolesForUser(user);
    	for (Role role : roles) {
    		RoleItem ri = new RoleItem();
    		ri.setRoleId(role.getId());
    		ri.setRoleName(role.getName());
    		m_roleItems2.getItems().add(ri);
    	}
    }
    
    public void setUserStatement(String userStatement) {
    	this.userStatement = userStatement;
    }
    
    public String getUserStatement() {
    	if (getUser() != null) {
    		return "User ID: " + getUser();
    	}
    	return userStatement;
    }

    // ------------------------------------------------------------------------
    // private usage
    // ------------------------------------------------------------------------
}
