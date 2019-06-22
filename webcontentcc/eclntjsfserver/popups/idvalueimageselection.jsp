<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="ztest_idts3g_sv">
			<t:row id="g_1">
				<t:fixgrid id="g_2" bordercolor="#00000030" borderheight="1"
					borderwidth="1" height="100%"
					objectbinding="#{eclntdefscr.popupIdTextSelection.lines}"
					requestfocus="creation" rowheight="42" sbvisibleamount="15"
					suppressheadline="true" stylevariant="IDVALUESELECTION"
					width="100%" singleclickexecute="true" keysensitive="true">
					<t:gridcol id="g_3" text="Column" width="100%">
						<t:pane focusable="true" id="g_4">
							<t:row id="g_5">
								<t:coldistance id="g_101" width="5" />
								<t:image id="g_6" height="25" image=".{image}" keepratio="true"
									width="36" />
								<t:coldistance id="g_102" width="5" />
								<t:pane id="g_7" height="100%" width="100%">
									<t:row id="g_8">
										<t:label id="g_9" font="size:14" height="60%" text=".{text}"
											width="100%" />
									</t:row>
									<t:row id="g_10">
										<t:label id="g_11" foreground="#00000080" height="40%"
											text=".{id}" width="100%" />
									</t:row>
								</t:pane>
							</t:row>
						</t:pane>
					</t:gridcol>
				</t:fixgrid>
			</t:row>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
