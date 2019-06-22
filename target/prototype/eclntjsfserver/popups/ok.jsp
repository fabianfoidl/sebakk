<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_popups_okg_8">
		<t:row id="2307_1"><t:pane  id="2307_2" width="100%" background="#{eclntdefscr.okPopup.bodyBackgroundColor}" bgpaint="#{eclntdefscr.okPopup.bodyBgpaint}" height="100%" iswindowmover="true" border="#00000010" padding="1">
				<t:row id="g_2">
				    <t:pane id="g_4406" background="#{eclntdefscr.okPopup.imageBackgroundColor}" bgpaint="#{eclntdefscr.okPopup.imageBgpaint}" height="100%" padding="10" rendered="#{eclntdefscr.okPopup.iconRendered}">
				        <t:rowdistance id="4408" height="100%"/>
				         <t:row id="4407">
                            <t:image id="g_101" rowalignmenty="middle" image="#{eclntdefscr.okPopup.icon}" rendered="#{eclntdefscr.okPopup.iconRendered}"/>
				         </t:row>
                        <t:rowdistance id="4409" height="100%"/>
				    </t:pane>
				    <t:coldistance id="g_4403" width="10" rendered="#{eclntdefscr.okPopup.iconRendered}"/>
				    <t:pane id="g_4401" height="100%" width="100%" padding="10"> 
                        <t:row id="g_4402"> 
							<t:scrollpane id="g_3" height="100%" width="100%" rowdistance="10" background="#00000000">
								<t:row id="g_554" rendered="#{eclntdefscr.okPopup.headlineRendered}">
									<t:textpane id="g_555" text="#{eclntdefscr.okPopup.headline}" align="#{eclntdefscr.okPopup.textAlign}"
										width="100%" font="size:16;weight:bold" stylevariant="TRANSPARENT" foreground="#{eclntdefscr.okPopup.textColor}"/>
								</t:row>
                                <t:rowdistance id="7701" height="100%"/>
								<t:row id="g_4">
									<t:textpane id="g_5" text="#{eclntdefscr.okPopup.text}" align="#{eclntdefscr.okPopup.textAlign}" 
										width="100%" stylevariant="TRANSPARENT" foreground="#{eclntdefscr.okPopup.textColor}"/>
								</t:row>
                                <t:rowdistance id="7702" height="100%"/>
							</t:scrollpane>
				        </t:row>
		                <t:rowdistance id="g_6" height="10" />
		                <t:row id="g_7">
		                    <t:coldistance id="g_8" width="#{ccstylevalue.ccOKPopupLeftColdistanceWidth}" />
		                    <t:button id="g_9" actionListener="#{eclntdefscr.okPopup.onClose}"
		                        image="#{eclntdefscr.okPopup.buttonImage}" text="#{eclntdefscr.okPopup.textOk}" requestfocus="creation" width="100"/>
		                    <t:coldistance id="g_2212"
		                        rendered="#{eclntdefscr.okPopup.showCancel}" width="50" />
		                    <t:button id="g_2213"
		                        actionListener="#{eclntdefscr.okPopup.onCancel}"
		                        rendered="#{eclntdefscr.okPopup.showCancel}"
		                        image="#{eclntdefscr.okPopup.cancelButtonImage}" 
		                        text="#{eclntdefscr.okPopup.textCancel}" width="80+" 
		                        stylevariant="#{ccstylevalue.ccOKPopupStyleVariantButtonOK}"/>
		                    <t:coldistance id="g_10" width="#{ccstylevalue.ccOKPopupRightColdistanceWidth}" />
		                </t:row>
				    </t:pane>
                    <t:coldistance id="g_4405" width="10" rendered="#{eclntdefscr.okPopup.iconRendered}"/>
				</t:row>
			<t:pageaddons id="g_pa" />
			</t:pane></t:row>
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
