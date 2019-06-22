package managedbeans;

import java.io.Serializable;

import javax.faces.event.ActionEvent;

import org.eclnt.editor.annotations.CCGenClass;
import org.eclnt.jsfserver.defaultscreens.ModalPopup;
import org.eclnt.jsfserver.pagebean.IPageBean;
import org.eclnt.jsfserver.pagebean.PageBean;

@CCGenClass (expressionBase="#{d.AddressOuter}")

public class AddressOuter
    extends PageBean 
    implements Serializable
{
    public AddressOuter()
    {
    }

    public String getPageName() { return "/addressouter.jsp"; }
    public String getRootExpressionUsedInPage() { return "#{d.AddressOuter}"; }

    IPageBean m_content;
    public IPageBean getContent() { return m_content; }

    public void onShowContentAction(ActionEvent event) 
    {
        if (m_content == null)
        {
            AddressDetailUI aui = new AddressDetailUI();
            aui.setFirstName("First");
            aui.setLastName("Last");
            m_content = aui;
        }
    }
    
    public void onShowDialogAction(ActionEvent event) 
    {
        final AddressDetailUI aui = new AddressDetailUI();
        aui.setFirstName("First (dialog)");
        aui.setLastName("Last (dialog)");
        openModalPopup(aui,"My first Dialog",400,400,new ModalPopup.IModalPopupListener()
        {
            @Override
            public void reactOnPopupClosedByUser()
            {
                closePopup(aui);
            }
        });
    }

}
