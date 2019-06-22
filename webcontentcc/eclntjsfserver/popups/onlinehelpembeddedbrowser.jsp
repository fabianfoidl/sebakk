<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_popups_onlinehelpg_34">
<t:row id="g_2">
<t:pane id="g_2pane" bgpaint="null!" background="#FFFFFF" padding="0" focusable="true" requestfocus="#{eclntdefscr.onlineHelp.requestFocus}" width="100%" height="100%">
  <t:row id="g_3" >
    <t:browser id="g_4" height="100%" width="100%" url="#{eclntdefscr.onlineHelp.url}">
    </t:browser>
  </t:row>
</t:pane>
</t:row>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
