<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_popups_onlinehelpg_34">
<t:rowbodypane id="g_2" bgpaint="null!" background="#FFFFFF" padding="0" >
  <t:row id="g_3" >
    <t:jbrowser id="g_4" height="100%" width="100%" url="#{eclntdefscr.onlineHelp.url}" focusable="true">
    </t:jbrowser>
  </t:row>
</t:rowbodypane>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
