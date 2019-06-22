<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_popups_gridrwodatag_4">
		    <t:row id="g_101">
		    <t:pane id="g_102" width="100%" height="100%" border="#00000080"> 
		    <t:rowheader id="g_103">
		        <t:coldistance id="g_104" width="50%"/>
		        <t:icon id="g_107" hotkey="ctrl-37" doubleclickenabled="true" image="/eclntjsfserver/images/control_playbackwards.png" actionListener="#{GRIDBINDING.rowDataUI.onSelectLineUp}"/>
                <t:coldistance id="g_106" width="10"/>
                <t:icon id="g_108" hotkey="ctrl-39" doubleclickenabled="true" image="/eclntjsfserver/images/control_play.png" actionListener="#{GRIDBINDING.rowDataUI.onSelectLineDown}"/>
                <t:coldistance id="g_105" width="50%"/>
		    </t:rowheader>
			<t:rowbodypane id="g_1" padding="0">

                <t:row id="g_200">
                <t:pane id="g_201" padding="20" width="100%" height="100%">
                    <t:captureanimator id="g_202" trigger="#{GRIDBINDING.rowDataUI.animationTrigger}" animationtype="#{GRIDBINDING.rowDataUI.animationType}">
                    </t:captureanimator>
    				<t:row id="g_2" componentbinding="#{GRIDBINDING.rowDataUI.row}">
	       			</t:row>
                </t:pane>
                </t:row>

			</t:rowbodypane>

			<t:pageaddons id="g_pa" />
			</t:pane>
			</t:row>
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
