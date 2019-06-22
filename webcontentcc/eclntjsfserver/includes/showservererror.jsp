<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_includes_showservererrorg_sv">
			<t:beanprocessing id="g_1">
				<t:beanmethodinvoker id="g_2"
					actionListener="#{eclntdefscr.showServerError.onHideAllPopups}"
					jsfphase="renderBegin" />
			</t:beanprocessing>
			<t:rowbodypane id="g_3" background="#FFFFFF" rowdistance="5">
				<t:row id="g_4">
					<t:label id="g_5" font="size:20;weight:bold" foreground="#800000"
						text="Server Side Error" />
				</t:row>
				<t:row id="g_6">
					<t:textpane id="g_7"
						text="An error occurred within your server side application that was not caught by the application processing. Please check with your application provider."
						width="100%" />
				</t:row>
				<t:rowdistance id="g_8" height="10" />
				<t:row id="g_9">
					<t:label id="g_10" text="Server Side Stack Trace" />
				</t:row>
				<t:row id="g_11">
					<t:textarea id="g_12" height="100%;100"
						text="#{eclntdefscr.showServerError.text}" width="100%" />
				</t:row>
				<t:rowdistance id="g_ce5" height="10" />
				<t:row id="g_ce1">
					<t:label id="g_ce2" text="Client Side Error Info" />
				</t:row>
				<t:row id="g_ce3">
					<t:textarea id="g_ce4" height="50"
						text="#{eclntdefscr.showServerError.clientErrorInfo}" width="100%" />
				</t:row>
				<t:row id="g_rb1">
					<t:reloadbutton id="g_rb2" text="#{eclnti18n.reloadClient}"/>
				</t:row>
			</t:rowbodypane>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
