<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_popups_yesnog_16">
			<t:row id="g_6601"><t:pane id="g_1" padding="0" background="#{eclntdefscr.yesNoPopup.backgroundColor}" width="100%" height="100%">
				<t:row id="g_2">
                    <t:pane id="g_4406" background="#{eclntdefscr.yesNoPopup.imageBackgroundColor}" height="100%" padding="10" rendered="#{eclntdefscr.yesNoPopup.iconRendered}">
                        <t:rowdistance id="4408" height="100%"/>
                         <t:row id="4407">
                            <t:image id="g_101" rowalignmenty="middle" image="#{eclntdefscr.yesNoPopup.icon}" rendered="#{eclntdefscr.yesNoPopup.iconRendered}"/>
                         </t:row>
                        <t:rowdistance id="4409" height="100%"/>
                    </t:pane>
                    <t:pane id="g_5502" padding="10" width="100%" height="100%">
                        <t:row id="g_5503">
							<t:scrollpane id="g_3" height="100%" width="100%" rowdistance="10">
								<t:row id="g_554" rendered="#{eclntdefscr.yesNoPopup.headlineRendered}">
									<t:textpane id="g_555" text="#{eclntdefscr.yesNoPopup.headline}" align="#{eclntdefscr.yesNoPopup.textAlign}"
										width="100%" font="size:16;weight:bold" stylevariant="TRANSPARENT"/>
								</t:row>
                                <t:rowdistance id="7702" height="100%"/>
								<t:row id="g_4">
									<t:textpane id="g_5" text="#{eclntdefscr.yesNoPopup.text}" align="#{eclntdefscr.yesNoPopup.textAlign}"
										width="100%" stylevariant="TRANSPARENT"/>
								</t:row>
                                <t:rowdistance id="7703" height="100%"/>
							</t:scrollpane>
						</t:row>
		                <t:rowdistance id="g_6" height="10" />
		                <t:row id="g_7">
		                    <t:coldistance id="g_8" width="#{ccstylevalue.ccYesNoPopupLeftColdistanceWidth}" />
		                    <t:button id="g_9" actionListener="#{eclntdefscr.yesNoPopup.onYes}"
		                        image="#{eclntdefscr.yesNoPopup.yesButtonImage}"
		                        text="#{eclntdefscr.yesNoPopup.textYes}" width="80+" requestfocus="#{eclntdefscr.yesNoPopup.requestFocusYes}"
		                        stylevariant="#{ccstylevalue.ccYesNoPopupStyleVariantButtonYes}"/>
		                    <t:coldistance id="g_10" />
		                    <t:button id="g_11" actionListener="#{eclntdefscr.yesNoPopup.onNo}"
		                        image="#{eclntdefscr.yesNoPopup.noButtonImage}"
		                        text="#{eclntdefscr.yesNoPopup.textNo}" width="80+" requestfocus="#{eclntdefscr.yesNoPopup.requestFocusNo}"
		                        stylevariant="#{ccstylevalue.ccYesNoPopupStyleVariantButtonNo}"/>
		                    <t:coldistance id="g_12"
		                        rendered="#{eclntdefscr.yesNoPopup.showCancel}" width="50" />
		                    <t:button id="g_13"
		                        actionListener="#{eclntdefscr.yesNoPopup.onCancel}"
		                        image="#{eclntdefscr.yesNoPopup.cancelButtonImage}"
		                        rendered="#{eclntdefscr.yesNoPopup.showCancel}"
		                        text="#{eclntdefscr.yesNoPopup.textCancel}" width="80+"  requestfocus="#{eclntdefscr.yesNoPopup.requestFocusCancel}"
		                        stylevariant="#{ccstylevalue.ccYesNoPopupStyleVariantButtonCancel}"/>
		                    <t:coldistance id="g_14" width="#{ccstylevalue.ccYesNoPopupRightColdistanceWidth}" />
		                </t:row>
					</t:pane>
				</t:row>
			</t:pane></t:row>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
