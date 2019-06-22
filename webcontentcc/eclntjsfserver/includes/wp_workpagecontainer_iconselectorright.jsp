<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="wp_2">
	<t:row id="g_1">
		<t:pane id="g_40" width="100%" height="100%" stylevariant="WP_WORKPAGECONTAINER_ICONSELECTORRIGHT">
			<t:row id="g_41" rendered="#{wpr.workpageAvailable}">
				<t:pane id="g_10" width="100%" height="100%">
					<t:captureanimator id="g_22" trigger="#{wpr.animationTrigger}"
						animationtype="shrinktocenter" />
					<t:rowdynamiccontent id="g_3" contentbinding="#{wpr.content}" />
				</t:pane>
				<t:scrollpane id="g_2" height="100%"
					padding="top:0;bottom:0;left:10" background="#00000000">
					<t:row id="g_30">
						<t:pane id="g_31" height="100%">
							<t:captureanimator id="g_32" trigger="#{wpr.animationTrigger}"
								animationtype="fogdark" />
							<t:rowdynamiccontent id="g_4" contentbinding="#{wpr.icons}" />
						</t:pane>
					</t:row>
				</t:scrollpane>
			</t:row>
			<t:rowinclude id="g_50" rendered="#{wpr.workpageNotAvailable}" page="#{wpr.emptyPage}"/>
		</t:pane>
	</t:row>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
