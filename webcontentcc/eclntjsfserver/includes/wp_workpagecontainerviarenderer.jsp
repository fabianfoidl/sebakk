<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="wp_2">
<t:row id="g_21" >
<t:pane id="g_22" actionListener="#{OBJECTBINDING.onPageAction}" height="100%" width="100%" dropreceive="DROPRECEIVE" hotkeyisolation="HOTKEYISOLATION">
<t:rowpagebeaninclude id="g_28" pagebeanbinding="#{OBJECTBINDING.renderer}"/>
</t:pane>
</t:row>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
