<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="ccapporpages_wfinboxg_sv">
<t:row id="g_1" >
<t:pane id="g_2" height="100%" stylevariant="outestpane" width="100%" >
<t:rowbodypane id="g_3" padding="0" rowdistance="0" >
<t:row id="g_4" >
<t:fixgrid id="g_5" height="100%" bordercolor="#00000030" borderwidth="1" borderheight="1" objectbinding="#{WFInboxUI.grid}" rowheight="35" sbvisibleamount="30" selectorcolumn="1" suppressheadline="true" width="100%" >
<t:gridcol id="g_6" text="Description" width="100%;100" >
<t:pane id="g_7" padding="left:5;right:5;" >
<t:row id="g_8" >
<t:label id="g_9" height="50%" text=".{wi.title}" />
</t:row>
<t:row id="g_10" >
<t:label id="g_11" font="weight:bold" height="50%" text=".{wi.status}" />
<t:coldistance id="g_12" width="20" />
<t:label id="g_13" foreground="#00000080" text=".{wi.id}" width="100%" />
</t:row>
</t:pane>
</t:gridcol>
</t:fixgrid>
</t:row>
<t:rowpagebeaninclude id="g_14" pagebeanbinding="#{WFInboxUI.itemUI}" rendered="#{WFInboxUI.grid.itemSelected}" />
</t:rowbodypane>
<t:rowline id="g_15" background="#00000030" height="1" />
<t:rowdistance id="g_16" height="4" />
<t:row id="g_17" >
<t:coldistance id="g_18" width="100%" />
<t:link id="g_19" actionListener="#{WFInboxUI.onRefreshGridAction}" text="Reload" />
<t:coldistance id="g_20" width="10" />
</t:row>
<t:rowdistance id="g_21" height="2" />
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
