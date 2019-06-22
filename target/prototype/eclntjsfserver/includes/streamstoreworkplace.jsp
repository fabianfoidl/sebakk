<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_streamstoreworkplaceg_sv">
<t:row id="g_1" >
<t:pane id="g_2" bgpaint="rectangle(0,0,100%,100%,#b0b0b0);rectangle(0,0,100%,100%,#FFFFFF20,#00000060,vertical);oval(100%-450,100%-450,800,800,#FFFFFF20);rectangle(0,0,100%,20,#00000060,#00000000,vertical);grid(75,#FFFFFF0a);write(100%-50,25,Configuration Workplace,30,#ffffff80,righttop)" height="100%" width="100%" >
<t:rowbodypane id="g_3" background="null!" bgpaint="rectangle(0,25,100%,1,#FFFFFF30)" padding="top:4;bottom:15;left:15;right:15" >
<t:row id="g_4" >
<t:coldistance id="g_5" width="50" />
<t:clock id="g_6" clockformat="dateShort" foreground="#FFFFFF80" width="60" />
<t:clock id="g_7" clockformat="timeMedium" foreground="#FFFFFF80" width="60" />
<t:coldistance id="g_8" width="100%" />
<t:workplaceperspectiveselector id="g_9" objectbinding="#{d.workpageContainer}" />
</t:row>
<t:rowdistance id="g_10" height="50" />
<t:rowworkplace id="g_11" objectbinding="#{cctd.workpageContainer}" />
</t:rowbodypane>
<t:rowstatusbar id="g_12" />
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
