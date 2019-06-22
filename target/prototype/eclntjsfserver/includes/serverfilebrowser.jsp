<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="workplace_demotreefilebrowserg_sv">
			<t:row id="g_h1">
				<t:pane id="g_1" padding="1" rowdistance="0" width="100%"
					height="100%" border="#00000080">
					<t:row id="g_2">
						<t:fixgrid id="g_3" height="100%"
							objectbinding="#{ServerFileBrowser.tree}" sbvisibleamount="25"
							suppressheadline="true" width="100%" border="0" rowheight='16'>
							<t:gridcol id="g_4" text="Column" width="100%">
								<t:treenode id="g_5" />
							</t:gridcol>
						</t:fixgrid>
					</t:row>
					<t:rowline id="g_2222" height="1" background="#00000030"  rendered="#{ServerFileBrowser.availableExplanation}"/>
					<t:row id="g_1112" rendered="#{ServerFileBrowser.availableExplanation}">
						<t:textpane id="g_1115" text="#{ServerFileBrowser.explanation}"
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
