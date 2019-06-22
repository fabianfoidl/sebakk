<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_streamstoretreeg_sv">
<t:rowheader id="g_1" >
<t:coldistance id="g_2" width="100%" />
<t:icon id="g_3" actionListener="#{cctd.StreamStoreTreeUI.onRefresh}" image="/eclntjsfserver/images/arrow_refresh.png" />
</t:rowheader>
<t:rowbodypane id="g_4" padding="0" rowdistance="0" >
<t:row id="g_5" >
<t:fixgrid id="g_6" border="0" height="100%" objectbinding="#{cctd.StreamStoreTreeUI.tree}" rowheight="18" sbvisibleamount="40" suppressheadline="true" width="100%" >
<t:gridcol id="g_7" text="Column" width="100%" >
<t:treenode id="g_8" popupmenu=".{popupMenu}" />
</t:gridcol>
</t:fixgrid>
</t:row>
</t:rowbodypane>
<t:popupmenu id="ENDNODEPOPUPMENU" >
<t:menuitem id="g_9" command="REMOVECONTENT" image="#{ccstylevalue.ccDeleteImage}" text="Remove Content" />
</t:popupmenu>
<t:popupmenu id="FOLDERPOPUPMENU" >
<t:menuitem id="g_10" command="ADDNEWCONTENT" image="/eclntjsfserver/images/textxml.png" text="Add new Content..." />
</t:popupmenu>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
