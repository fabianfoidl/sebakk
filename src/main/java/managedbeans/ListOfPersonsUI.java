package managedbeans;

import java.io.Serializable;

import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.elements.impl.FIXGRIDItem;
import org.eclnt.jsfserver.elements.impl.FIXGRIDListBinding;
import org.eclnt.jsfserver.pagebean.PageBean;

@CCGenClass (expressionBase="#{d.ListOfPersonsUI}")

public class ListOfPersonsUI
    extends PageBean 
    implements Serializable
{
    // ------------------------------------------------------------------------
    // inner classes
    // ------------------------------------------------------------------------
    
    public class GridItem extends FIXGRIDItem implements java.io.Serializable
    {
        String i_lastName;
        public String getLastName() { return i_lastName; }
        public void setLastName(String value) { this.i_lastName = value; }

        String i_firstName;
        public String getFirstName() { return i_firstName; }
        public void setFirstName(String value) { this.i_firstName = value; }

    }

    // ------------------------------------------------------------------------
    // members
    // ------------------------------------------------------------------------
    
    FIXGRIDListBinding<GridItem> m_grid = new FIXGRIDListBinding<GridItem>();

    // ------------------------------------------------------------------------
    // constructors & initialization
    // ------------------------------------------------------------------------

    public ListOfPersonsUI()
    {
    }

    public String getPageName() { return "/listofpersons.jsp"; }
    public String getRootExpressionUsedInPage() { return "#{d.ListOfPersonsUI}"; }

    // ------------------------------------------------------------------------
    // public usage
    // ------------------------------------------------------------------------

    public FIXGRIDListBinding<GridItem> getGrid() { return m_grid; }

    public void onAddItemAction(javax.faces.event.ActionEvent event) 
    {
        GridItem gi = new GridItem();
        gi.setFirstName("First " + System.currentTimeMillis());
        gi.setLastName("Last " + System.currentTimeMillis());
        m_grid.getItems().add(gi);
    }

    public void onClearAction(javax.faces.event.ActionEvent event) 
    {
        m_grid.getItems().clear();
    }

    // ------------------------------------------------------------------------
    // private usage
    // ------------------------------------------------------------------------
}
