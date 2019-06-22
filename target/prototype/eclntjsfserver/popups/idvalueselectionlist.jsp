<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_popups_idvalueselectiong_2">
<t:row id="g_1" >
<t:pane id="g_2" border="#808080" height="100%" padding="1" stylevariant="IDVALUESELECTION" width="100%" >
<t:rowbodypane id="g_3" padding="0" stylevariant="IDVALUESELECTION" >
<t:row id="g_4" >

<t:list id="g_5" flush="true" 
                 listvalues="#{eclntdefscr.popupIdTextSelection.listValues}" 
                 listselection="#{eclntdefscr.popupIdTextSelection.listSelection}" 
                 stylevariant="IDVALUESELECTION"
                 height="100%" 
                 width="100%"
                 requestfocus="creation"
                 actionListener="#{eclntdefscr.popupIdTextSelection.onListAction}"/>

</t:row>
</t:rowbodypane>
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
