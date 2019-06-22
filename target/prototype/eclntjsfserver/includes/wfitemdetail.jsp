<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="ccapporpages_wfitemdetailg_sv">
<t:row id="g_1" >
<t:pane id="g_2" padding="10" rowdistance="5" stylevariant="outestpane" width="100%" >
<t:row id="g_3" >
<t:label id="g_4" stylevariant="label" text="Status" width="80" />
<t:buttonmenu id="g_5" background="#00000018" buttonmenumode="buttonandmenu" contentareafilled="false" text="#{WFItemDetailUI.wi.status}" width="80" >
<t:menuitem id="g_6" actionListener="#{WFItemDetailUI.onStatusOPEN}" command="STATUS_OPEN" text="Switch to OPEN" />
<t:menuitem id="g_7" actionListener="#{WFItemDetailUI.onStatusINWORK}" command="STATUS_INWORK" text="Switch to INWORK" />
<t:menuitem id="g_8" actionListener="#{WFItemDetailUI.onStatusFINISHED}" command="STATUS_FINISHED" text="Switch to FINISHED" />
<t:menuseparator id="g_9" />
<t:menuitem id="g_10" command="REJECT" text="Reject" />
<t:menuitem id="g_11" actionListener="#{WFItemDetailUI.onDelegate}" command="DELEGATE" text="Delegate" />
</t:buttonmenu>
<t:coldistance id="g_12" width="100%" />
<t:icon id="g_13" actionListener="#{WFItemDetailUI.onAddComment}" image="/eclntjsfserver/images/wfaddcomment.png" />
</t:row>
<t:row id="g_14" >
<t:label id="g_15" stylevariant="label" text="Title" width="80" />
<t:label id="g_16" text="#{WFItemDetailUI.wi.title}" width="100%;100" />
<t:icon id="g_17" actionListener="#{WFItemDetailUI.onShowItemDescription}" enabled="#{WFItemDetailUI.descriptionAvailable}" image="/eclntjsfserver/images/lightbulb.png" />
</t:row>
<t:row id="g_18" >
<t:label id="g_19" stylevariant="label" text="Start/ End" width="80" />
<t:label id="g_20" format="date" text="#{WFItemDetailUI.wi.dateStart}" timezone="UTC" />
<t:label id="g_21" text="  /  " />
<t:label id="g_22" format="date" text="#{WFItemDetailUI.wi.dateEnd}" timezone="UTC" />
</t:row>
<t:rowdistance id="g_23" height="10" />
<t:row id="g_24" >
<t:fixgrid id="g_25" background="#00000000" border="0" borderheight="0" borderwidth="0" enabled="false" horizontalscrollmode="autowithresize" objectbinding="#{WFItemDetailUI.pages}" rowbgpaint="null!" sbvisibleamount="10" showemptyrows="false" suppressheadline="true" width="100%" >
<t:gridcol id="g_26" text="Page" width="100%" >
<t:pane id="g_27" >
<t:rowdistance id="g_28" height="50%" />
<t:row id="g_29" >
<t:link id="g_30" actionListener=".{onShowPage}" align="left" image="/eclntjsfserver/images/wfopenworkitem.png" text=".{wip.title}" />
</t:row>
<t:rowdistance id="g_31" height="50%" />
</t:pane>
</t:gridcol>
<t:gridcol id="g_32" text="Column" width="20" >
<t:icon id="g_33" actionListener=".{onOpenLongText}" enabled=".{longTextAvailable}" image="/eclntjsfserver/images/lightbulb.png" />
</t:gridcol>
</t:fixgrid>
</t:row>
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
