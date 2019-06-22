<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>

<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_popups_idvalueselectiong_2">
			<t:row id="g_1">
				<t:pane id="g_2" border="#C0C0C0" height="100%" padding="1"
					stylevariant="IDVALUESELECTION" width="100%">
					<t:rowbodypane id="g_3" padding="0" stylevariant="IDVALUESELECTION">
						<t:row id="g_4">
							<t:fixgrid id="g_5"
								suppressheadline="#{eclntdefscr.popupIdTextSelection.suppressHeadline}"
								avoidroundtrips="true"
								height="100%"
								objectbinding="#{eclntdefscr.popupIdTextSelection.lines}"
								requestfocus="creation"
								stylevariant="IDVALUESELECTION" width="100%"
								singleclickexecute="true" keysensitive="true">
								<t:gridcol id="e_140" stylevariant="IDVALUESELECTION" text="#{eclntdefscr.popupIdTextSelection.titleId}" width="100" focusable="false" rendered="#{eclntdefscr.popupIdTextSelection.renderIdColumn}">
									<t:label id="e_141" stylevariant="IDVALUESELECTION"
										text=".{id}" bgpaint=".{bgpaint}"/>
								</t:gridcol>
								<t:gridcol id="g_6" stylevariant="IDVALUESELECTION" text="#{eclntdefscr.popupIdTextSelection.titleText}" width="100%" focusable="false"  rendered="#{eclntdefscr.popupIdTextSelection.renderTextColumn}">
									<t:label id="g_7" stylevariant="IDVALUESELECTION"
										text=".{text}" bgpaint=".{bgpaint}"/>
								</t:gridcol>
							</t:fixgrid>
						</t:row>
					</t:rowbodypane>
					<t:rowheader id="g_8"
						rendered="#{eclntdefscr.popupIdTextSelection.withHeader}"
						stylevariant="IDVALUESELECTION">
						<t:button id="g_9" stylevariant="IDVALUESELECTION"
							actionListener="#{eclntdefscr.popupIdTextSelection.onOK}"
							contentareafilled="fase"
							image="#{ccstylevalue.ccIdValueSelectionOK}"
							text="#{eclnti18n.IDTEXTSEL_ok}" />
						<t:coldistance id="g_10" width="100%" />
						<t:button id="g_11" stylevariant="IDVALUESELECTION"
							actionListener="#{eclntdefscr.popupIdTextSelection.onCancel}"
							contentareafilled="false" text="#{eclnti18n.IDTEXTSEL_cancel}" />
					</t:rowheader>
					<t:rowline id="g_2222" height="1" background="#00000030" />
					<t:row id="g_1112">
						<t:textpane id="g_1115"
							text="#{eclntdefscr.popupIdTextSelection.explanation}"
							width="100%" stylevariant="IDVALUESELECTION"
							border="left:5;right:5;top:8;bottom:8;color:#00000000" />
					</t:row>
				</t:pane>
			</t:row>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
