package managedbeans;

import java.io.Serializable;
import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.defaultscreens.Statusbar;
import org.eclnt.jsfserver.pagebean.PageBean;

import javax.faces.event.ActionEvent;

@CCGenClass (expressionBase="#{d.AddressDetailUI}")

public class AddressDetailUI
    extends PageBean 
    implements Serializable
{
    // ------------------------------------------------------------------------
    // members
    // ------------------------------------------------------------------------

    String m_town;
    String m_street;
    String m_lastName;
    String m_firstName;
    
    // ------------------------------------------------------------------------
    // constructors & initialization
    // ------------------------------------------------------------------------

    public AddressDetailUI()
    {
    }

    public String getPageName() { return "/addressdetail.jsp"; }
    public String getRootExpressionUsedInPage() { return "#{d.AddressDetailUI}"; }

    // ------------------------------------------------------------------------
    // public usage
    // ------------------------------------------------------------------------
    
    public String getTown() { return m_town; }
    public void setTown(String value) { this.m_town = value; }

    public String getStreet() { return m_street; }
    public void setStreet(String value) { this.m_street = value; }

    public String getLastName() { return m_lastName; }
    public void setLastName(String value) { this.m_lastName = value; }

    public String getFirstName() { return m_firstName; }
    public void setFirstName(String value) { this.m_firstName = value; }

    public void onSaveAction(ActionEvent event) 
    {
        if (m_firstName == null || m_lastName == null)
        {
            Statusbar.outputError("Please define all name fields.");
            return;
        }
        m_town = m_firstName + "/" + m_lastName;
    }

}
