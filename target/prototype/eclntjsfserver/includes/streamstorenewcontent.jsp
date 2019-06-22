<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_streamstorenewcontentg_sv">
<t:row id="g_1" >
<t:pane id="g_2" padding="20" rowdistance="5" stylevariant="asbodypane" >
<t:row id="g_3" >
<t:label id="g_4" text="Name" width="100" />
<t:field id="g_5" align="right" bgpaint="mandatory()" regex="[a-zA-Z0-9]+" requestfocus="creation" text="#{cctd.StreamStoreNewContentUI.contentName}" width="150" />
<t:label id="g_6" text=".xml" />
</t:row>
<t:row id="g_7" >
<t:coldistance id="g_8" width="100" />
<t:button id="g_9" actionListener="#{cctd.StreamStoreNewContentUI.onCreateAction}" text="Create" />
</t:row>
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
