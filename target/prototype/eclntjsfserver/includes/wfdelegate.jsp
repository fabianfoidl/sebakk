<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="ccapporpages_wfdelegateg_sv">
<t:row id="g_1" >
<t:pane id="g_2" height="100%" stylevariant="outestpane" width="100%" >
<t:rowbodypane id="g_3" >
<t:row id="g_4" >
<t:label id="g_5" text="To User" width="80" />
<t:combofield id="g_6" actionListener="#{WFDelegateUI.onToUserAction}" text="#{WFDelegateUI.toUser}" width="100" />
</t:row>
<t:rowdistance id="g_7" height="10" />
<t:row id="g_8" >
<t:label id="g_9" text="Comment" />
</t:row>
<t:row id="g_10" >
<t:textarea id="g_11" height="100%" text="#{WFDelegateUI.comment}" width="100%" />
</t:row>
<t:row id="g_12" >
<t:button id="g_13" actionListener="#{WFDelegateUI.onDelegateAction}" text="Delegate" />
<t:coldistance id="g_14" width="100%" />
<t:button id="g_15" actionListener="#{WFDelegateUI.onCancelAction}" bgpaint="null!" contentareafilled="false" text="Cancel" />
</t:row>
</t:rowbodypane>
</t:pane>
</t:row>
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
