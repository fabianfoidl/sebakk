<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_wp_functionsearchg_sv">
<t:rowbodypane id="g_1" padding="0" rowdistance="0" >
<t:rowdistance id="g_2" height="5" />
<t:row id="g_3" >
<t:coldistance id="g_4" width="5" />
<t:field id="g_5" actionListener="#{WorkplaceFunctionSearch.onSearchAction}" flush="true" flushtimer="1000" popupmenu="CCSEARCH" text="#{WorkplaceFunctionSearch.searchText}" textimage="#{ccstylevalue.ccWpSearchImage}" width="100%" requestfocus="creation"/>
<t:coldistance id="g_101" width="5" />
<t:button id="g_102" enabled="#{WorkplaceFunctionSearch.enabledStart}" actionListener="#{WorkplaceFunctionSearch.onStartAction}" text="#{eclnti18n.WPS_start}" width="100+"/>
<t:coldistance id="g_6" width="5" />
</t:row>
<t:rowdistance id="g_7" height="20" />
<t:rowline id="g_8" background="#00000030" height="1" />
<t:row id="g_9" >
<t:fixgrid id="g_10" background="#FFFFFF80" border="0" bordercolor="#{ccstylevalue.ccLightBorderColor}" borderheight="1" borderwidth="1" height="100%" objectbinding="#{WorkplaceFunctionSearch.grid}" rowheight="#{WorkplaceFunctionSearch.rowHeight}" sbvisibleamount="25" suppressheadline="true" width="100%" singleclickexecute="#{WorkplaceFunctionSearch.singleClickExecute}">
<t:gridcol id="g_11" text="Column" width="100%" >
<t:pane id="g_12" padding="left:2" background=".{background}">
<t:rowdistance id="g_201" height="100%"/>
<t:row id="g_13" >
<t:label id="g_14" font="weight:bold" height="100%" text=".{text}" width="100%" />
</t:row>
<t:rowline id="g_15" background="#00000010" height="1" rendered="#{WorkplaceFunctionSearch.renderSecondLine}"/>
<t:row id="g_16" rendered="#{WorkplaceFunctionSearch.renderSecondLine}">
<t:coldistance id="g_17" width="10" />
<t:label id="g_18" font="size:10" foreground="#808080" text=".{hierarchyText}" width="100%" />
</t:row>
<t:rowdistance id="g_202" height="100%"/>
</t:pane>
</t:gridcol>
</t:fixgrid>
</t:row>
</t:rowbodypane>
<t:popupmenu id="CCSEARCH" >
<t:menuitem id="g_19" actionListener="#{WorkplaceFunctionSearch.onSearchAction}" hotkey="10" hotkeyonly="true" text="Search" />
</t:popupmenu>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
