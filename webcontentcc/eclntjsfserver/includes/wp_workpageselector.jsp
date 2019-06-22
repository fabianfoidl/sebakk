<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="wp_9">
        <t:row id="g_26" >
          <t:tabbedline stylevariant="WP_WORKPAGESELECTOR" 
                        id="g_51" 
                        componentbinding="#{OBJECTBINDING.tabbedLine}" 
                        value="#{OBJECTBINDING.tabbedLineIndex}" 
                        enabled="#{OBJECTBINDING.tabbedLineEnabled}" 
                        width="100%" 
                        cutwidth="true"
                        reselectable="true"
                        dropreceive="CCWORKPAGE"
                        actionListener="#{OBJECTBINDING.onTabbedLineAction}" 
                        />
        </t:row>
<t:popupmenu id="WORKPAGETAB" >
  <t:menuitem id="g_53" command="cmdCLOSEWORKPAGE" image="#{ccstylevalue.ccWpCloseImage}" text="#{eclnti18n.WPSEL_close}" />
  <t:menuitem id="g_54" command="cmdOPENASPOPUP" image="#{ccstylevalue.ccWpPopupImage}" text="#{eclnti18n.WPSEL_openaspopup}" />
</t:popupmenu>
<t:popupmenu id="WORKPAGETABNOPOPUP" >
  <t:menuitem id="g_153" command="cmdCLOSEWORKPAGE" image="#{ccstylevalue.ccWpCloseImage}" text="#{eclnti18n.WPSEL_close}" />
</t:popupmenu>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
