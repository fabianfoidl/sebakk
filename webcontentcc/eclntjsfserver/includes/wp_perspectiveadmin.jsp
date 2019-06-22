<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="ztest_testperspectiveadming_sv">
			<t:row id="g_1">
				<t:pane id="g_2" padding="20" rowdistance="5"
					stylevariant="asbodypane">
					<t:row id="g_a1">
						<t:label id="g_a2" text="#{eclnti18n.WPP_titleName}" />
					</t:row>
					<t:rowdistance id="g_a3" height="10" />
					<t:row id="g_3">
						<t:label id="g_4" text="#{eclnti18n.WPP_name}" width="100" />
						<t:field id="g_5" text="#{BEAN.name}" width="200"
							requestfocus="creation" />
					</t:row>
					<t:row id="g_6">
						<t:coldistance id="g_7" width="100" />
						<t:button id="g_8" text="#{eclnti18n.WPP_save}" actionListener="#{BEAN.onSave}" />
					</t:row>
					<t:rowdistance id="g_a4" height="10" />
					<t:row id="g_a9">
						<t:label id="g_a10" text="#{eclnti18n.WPP_titleGrid}" />
					</t:row>
					<t:rowdistance id="g_a11" height="10" />
					<t:row id="g_a5">
						<t:fixgrid id="g_a6" objectbinding="#{BEAN.perspectiveGrid}" sbvisibleamount="8" rowheight="16" 
						           bordercolor="#00000030" borderheight="1" borderwidth="1" background="#FFFFFF80" width="100%" suppressheadline="true">
							<t:gridcol id="g_a7" width="100%" text="Personal perspective">
								<t:label id="g_a8" text=".{perspectiveName}"/>
							</t:gridcol>
							<t:gridcol id="g_a12" width="20" text="">
								<t:icon id="g_a13" image="/eclntjsfserver/images/cross.png" actionListener=".{onRemove}"/>
							</t:gridcol>
						</t:fixgrid>
					</t:row>
				</t:pane>
			</t:row>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
