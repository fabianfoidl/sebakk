<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_profilingviewerg_sv">
<t:rowheader id="g_1" >
<t:icon id="g_1_2222" image="/eclntjsfserver/images/lightbulb.png" actionListener="#{eclntdefscr.profilingViewer.onHelp}"/>
<t:coldistance id="g_2" width="100%" />
<t:button id="g_3" actionListener="#{eclntdefscr.profilingViewer.onRefresh}" image="/eclntjsfserver/images/arrow_refresh.png" rowalignmenty="top" text="Refresh" contentareafilled="false" />
</t:rowheader>
<t:rowbodypane id="g_4" padding="0" rowdistance="0" >
<t:row id="g_5" >
<t:fixgrid id="g_6" background="#FFFFFF" border="top:0" bordercolor="#00000030" borderheight="1" borderwidth="1" objectbinding="#{eclntdefscr.profilingViewer.profilingFiles}" rowbgpaint="rectangle(0,50%,100%,50%,#00000010)" rowheight="16" sbvisibleamount="6" width="100%" >
<t:gridcol id="g_7" rendered="#{eclntdefscr.logViewer.flagShowTimestampThread}" text="File Name" width="100%" >
<t:label id="g_8" text=".{name}" />
</t:gridcol>
<t:gridcol id="g_9" align="right!" text="Column" width="115" >
<t:label id="g_10" align="right!" format="datetime" text=".{date}" />
</t:gridcol>
</t:fixgrid>
</t:row>
<t:rowline id="g_11" height="1" />
<t:row id="g_12" >
<t:coldistance id="g_12222" width="100%"/>
<t:link id="g_13" text="Remove all Files" actionListener="#{eclntdefscr.profilingViewer.onRemoveAllFiles}"/>
</t:row>
<t:rowdistance id="g_14" height="10" />
<t:row id="g_15" >
<t:fixgrid id="g_16" background="#FFFFFF" border="top:0" bordercolor="#00000030" borderheight="1" borderwidth="1" height="100%" objectbinding="#{eclntdefscr.profilingViewer.profilingGrid}" rowbgpaint="rectangle(0,50%,100%,50%,#00000010)" rowheight="16" sbvisibleamount="30" width="100%" >
<t:gridcol id="g_17222" text="" width="30" >
<t:label id="g_18222" background="#c0c0c040" text=".{counter}" align="center"/>
</t:gridcol>
<t:gridcol id="g_17" text="Type" width="50" >
<t:label id="g_18" background="#c0c0c040" text=".{pli.type}" />
</t:gridcol>
<t:gridcol id="g_19" align="right!" rendered="#{eclntdefscr.logViewer.flagShowTimestampThread}" text="Duration (nano-sec)" width="100" >
<t:label id="g_20" align="right!" background="#FFFFC040" format="int" text=".{pli.duration}" />
</t:gridcol>
<t:gridcol id="g_21" text="Comment" width="100%" >
<t:label id="g_22" text=".{pli.comment}" />
</t:gridcol>
</t:fixgrid>
</t:row>
</t:rowbodypane>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
