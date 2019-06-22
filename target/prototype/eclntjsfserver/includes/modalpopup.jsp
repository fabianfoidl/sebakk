<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>

<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_modalpopupg_3">
<t:clienttestlog id="g_ctl" text="#{eclntdefscr.clientTestLogMessage}"/>
<t:beanprocessing id="g_2221" >
<t:clipboardset id="g_2222" value="#{eclntdefscr.clipboard.contentSet}" dataflavor="#{eclntdefscr.clipboard.dataFlavor}" trigger="#{eclntdefscr.clipboard.contentSetTrigger}"/>
</t:beanprocessing>
<t:dummy id="popupsbelow" componentbinding="#{eclntdefscr.popupNode}"/>

</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
