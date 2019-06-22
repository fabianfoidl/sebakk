<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="workplace_demodynbeantreeg_sv">
<t:rowbodypane id="g_1" padding="0" rowdistance="0" >
<t:row id="g_2" >
<t:splitpane id="g_3" dividerlocation="300" height="100%" orientation="horizontal" width="100%" >
<t:splitpanesplit id="g_4" >
<t:row id="g_5" >
<t:pane id="g_6" height="100%" width="100%" >
<t:captureanimator id="g_7" animationtype="fog(#000000,08)" trigger="#{cctd.DynBeanTreeUI.animationTriggerTree}" />
<t:row id="g_8" >
<t:fixgrid id="g_9" height="100%" objectbinding="#{cctd.DynBeanTreeUI.tree}" rowheight="18" sbvisibleamount="35" suppressheadline="true" width="100%" >
<t:gridcol id="g_10" text="Column" width="100%" >
<t:treenode id="g_11" />
</t:gridcol>
</t:fixgrid>
</t:row>
</t:pane>
</t:row>
</t:splitpanesplit>
<t:splitpanesplit id="g_12" >
<t:row id="g_13" >
<t:pane id="g_14" height="100%" width="100%" >
<t:captureanimator id="g_15" animationtype="turnleft" trigger="#{cctd.DynBeanTreeUI.animationTriggerContent}" />
<t:row id="g_16" >
<t:scrollpane id="g_17" height="100%" padding="10" width="100%" >
<t:rowpagebeaninclude id="g_18" pagebeanbinding="#{cctd.DynBeanTreeUI.dynBean}" />
</t:scrollpane>
</t:row>
</t:pane>
</t:row>
</t:splitpanesplit>
</t:splitpane>
</t:row>
</t:rowbodypane>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
