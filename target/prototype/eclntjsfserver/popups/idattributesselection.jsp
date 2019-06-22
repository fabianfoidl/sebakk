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
<t:rowbodypane id="g_3" padding="0" stylevariant="IDVALUESELECTION" background="#e0e0e0">
<t:row id="g_4" componentbinding="#{eclntdefscr.popupIdAttributesSelection.row}">
</t:row>
</t:rowbodypane>
<t:rowheader id="g_8" rendered="#{eclntdefscr.popupIdAttributesSelection.withHeader}" stylevariant="IDVALUESELECTION" >
<t:button id="g_9" actionListener="#{eclntdefscr.popupIdAttributesSelection.onOK}" contentareafilled="fase" image="#{ccstylevalue.ccIdValueSelectionOK}" text="#{eclnti18n.IDTEXTSEL_ok}" />
<t:coldistance id="g_10" width="100%" />
<t:button id="g_11" actionListener="#{eclntdefscr.popupIdAttributesSelection.onCancel}" contentareafilled="false" text="#{eclnti18n.IDTEXTSEL_cancel}" />
</t:rowheader>
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
