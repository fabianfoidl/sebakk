package managedbeans;

import java.io.Serializable;
import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.pagebean.PageBean;

import javax.faces.event.ActionEvent;

@CCGenClass (expressionBase="#{d.HelloWorldUI}")

public class HelloWorldUI
    extends PageBean 
    implements Serializable
{
    public void onHelloAction(javax.faces.event.ActionEvent event) 
    {
        m_result = "Hello world, " + m_name + "!";
    }

    String m_result = "Not set yet.";
    public String getResult() { return m_result; }
    public void setResult(String value) { this.m_result = value; }

    String m_name = "Captain";
    public String getName() { return m_name; }
    public void setName(String value) { this.m_name = value; }

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

    public HelloWorldUI()
    {
    }

    public String getPageName() { return "/helloworld.jsp"; }
    public String getRootExpressionUsedInPage() { return "#{d.HelloWorldUI}"; }

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
