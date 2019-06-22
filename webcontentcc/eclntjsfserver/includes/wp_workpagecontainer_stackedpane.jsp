<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="wp_2">
<t:row id="g_1">
    <t:stackedpane id="g_2" width="100%" height="100%" >
        <t:dynamiccontent id="g_3" contentbinding="#{wpr.content}" withdeltamgmt="true"/>
    </t:stackedpane>
</t:row>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
