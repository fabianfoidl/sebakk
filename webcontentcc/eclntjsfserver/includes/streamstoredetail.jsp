<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_streamstoredetailg_sv">
<t:rowheader id="g_1" popupmenu="HOTKEYS" >
<t:button id="g_2" actionListener="#{cctd.StreamStoreDetailUI.onSave}" contentareafilled="false" image="/eclntjsfserver/images/disk.png" text="Save" />
<t:coldistance id="g_3" width="50" />
<t:button id="g_4" actionListener="#{cctd.StreamStoreDetailUI.onCheck}" contentareafilled="false" image="/eclntjsfserver/images/check.png" text="Check" />
</t:rowheader>
<t:rowbodypane id="g_5" padding="0" popupmenu="HOTKEYS" rowdistance="0" >
<t:row id="g_6" rendered="#{cctd.StreamStoreDetailUI.renderTextEditor}" >
<t:splitpane id="g_7" dividerlocation="#{cctd.StreamStoreDetailUI.dividerPosition}" dividersize="14" height="100%" onetouchexpandable="true" orientation="vertical" width="100%" withwritebackdividerlocation="true" >
<t:splitpanesplit id="g_8" >
<t:row id="g_9" >
<t:textarea id="g_10" border="left:0;right:0;top:0;bottom:0" font="family:Courier New" height="100%" linewrap="false" selectallwhenfocussed="false" text="#{cctd.StreamStoreDetailUI.content}" width="100%" />
</t:row>
</t:splitpanesplit>
<t:splitpanesplit id="g_11" >
<t:row id="g_12" >
<t:textarea id="g_13" background="#FFFFE0" bgpaint="write(100%-40,5,Template,12,#00000080,righttop)" border="left:0;right:0;top:0;bottom:0" enabled="false" font="family:Courier New" height="100%" linewrap="false" selectallwhenfocussed="false" text="#{cctd.StreamStoreDetailUI.template}" width="100%" />
</t:row>
</t:splitpanesplit>
</t:splitpane>
</t:row>
<t:rowpagebeaninclude id="g_14" pagebeanbinding="#{cctd.StreamStoreDetailUI.dynBeanTree}" />
</t:rowbodypane>
<t:popupmenu id="HOTKEYS" >
<t:menuitem id="g_15" actionListener="#{cctd.StreamStoreDetailUI.onSave}" hotkey="ctrl-83" image="/eclntjsfserver/images/disk.png" text="Save" />
<t:menuitem id="g_16" actionListener="#{cctd.StreamStoreDetailUI.onCheck}" hotkey="118" image="/eclntjsfserver/images/check.png" text="Check" />
</t:popupmenu>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
