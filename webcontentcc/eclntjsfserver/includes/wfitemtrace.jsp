<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="ccapporpages_wfitemtraceg_sv">
<t:row id="g_1" >
<t:pane id="g_2" border="#808080" height="100%" padding="10" rowdistance="5" stylevariant="outestpane" width="100%" >
<t:row id="g_3" >
<t:scrollpane id="g_4" background="#FFFFFF80" border="#00000030" height="100%" width="100%" >
<t:row id="g_5" >
<t:textpane id="g_6" contenttype="text/html" font="family:Trebuchet MS;size:11" text="#{WFItemTraceUI.traceText}" width="100%" />
</t:row>
</t:scrollpane>
</t:row>
<t:row id="g_7" >
<t:textarea id="g_8" height="100" requestfocus="creation" text="#{WFItemTraceUI.newComment}" width="100%" />
</t:row>
<t:row id="g_9" >
<t:coldistance id="g_10" width="100%" />
<t:button id="g_11" actionListener="#{WFItemTraceUI.onAddComment}" text="Add Comment" />
</t:row>
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
