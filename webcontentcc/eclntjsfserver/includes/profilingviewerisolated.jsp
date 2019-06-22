<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_profilingviewerisolatedg_sv">
<t:beanprocessing id="g_1" >
<t:sessioncloser id="g_2" />
</t:beanprocessing>
<t:rowinclude id="g_3" page="/eclntjsfserver/includes/profilingviewer.jsp" />
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
