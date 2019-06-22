<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="ccapporpages_longtextg_sv">
<t:row id="g_1" >
<t:scrollpane id="g_2" background="#fffff0" border="#C0c0c0" height="100%" width="100%" >
<t:row id="g_3" >
<t:textpane id="g_4" contenttype="text/html" font="family:Trebuchet MS;size:11" text="#{WFLongTextUI.htmlText}" width="100%" />
</t:row>
</t:scrollpane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
