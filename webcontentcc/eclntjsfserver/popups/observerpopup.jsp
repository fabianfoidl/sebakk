<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_popups_observerg_8">
			<t:beanprocessing id="g_bp">
				<t:longpolling id="g_polling"
					longpollingurl="#{eclntdefscr.observerPopup.longPollingURL}"
					actionListener="#{eclntdefscr.observerPopup.onLongPollingAction}"
					rendered="#{eclntdefscr.observerPopup.renderedHttpPolling}">
				</t:longpolling>
                <t:websocketpolling id="g_polling2"
                    websocketurl="#{eclntdefscr.observerPopup.longPollingURL}"
                    actionListener="#{eclntdefscr.observerPopup.onLongPollingAction}"
                    rendered="#{eclntdefscr.observerPopup.renderedWebSocketPolling}">
                </t:websocketpolling>
			</t:beanprocessing>
			<t:rowbodypane id="g_1" bgpaint="border(0,0,100%,100%,#80000080,3)"
				padding="0">
				<t:row id="g_30">
					<t:pane id="g_31" rowdistance="10" padding="20" height="100%" border="color:#FF000030;left:3;right:3;top:3;bottom:3"
						width="100%">
						<t:row id="g_20">
							<t:label id="g_21" text="#{eclntdefscr.observerPopup.headline}"
								font="size:16">
							</t:label>
						</t:row>
						<t:row id="g_2">
							<t:textarea id="g_ta" text="#{eclntdefscr.observerPopup.text}"
								enabled="false" height="100%" width="100%" linewrap="false">
							</t:textarea>
						</t:row>
						<t:row id="g_40">
							<t:coldistance id="g_41" width="100%">
							</t:coldistance>
							<t:clock id="g_42" startatzero="true" clockformat="timeMedium" font="size:10">
							</t:clock>
						</t:row>
					</t:pane>
				</t:row>
			</t:rowbodypane>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
