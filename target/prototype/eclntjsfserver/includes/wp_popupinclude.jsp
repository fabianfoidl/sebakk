<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="wp_popupcontent">
<t:rowheader id="g_1" rendered="#{@DISPATCHER@.popupHeaderRendered}" stylevariant="WP_ISOLATEDWORKPAGE">
  <t:coldistance id="g_2" width="100%" />
  <t:button id="g_3" stylevariant="WP_ISOLATEDWORKPAGE" clientname="CC_WP_BACKTOCONTENTAREA" actionListener="#{@DISPATCHER@.onMoveWorkpageIntoContentArea}" contentareafilled="false" image="#{ccstylevalue.ccWpPopupImageBack}" text="#{eclnti18n.WP_backtocontentarea}" />
  <t:button id="g_333" stylevariant="WP_ISOLATEDWORKPAGE" clientname="CC_WP_NORMALSIZE" rendered="#{@DISPATCHER@.toNormalSizeRendered}" actionListener="#{@DISPATCHER@.onMaximize}" contentareafilled="false" image="#{ccstylevalue.ccWpPopupImageNormalSize}" text="#{eclnti18n.WP_normalsize}" />
  <t:button id="g_33" stylevariant="WP_ISOLATEDWORKPAGE" clientname="CC_WP_MAXIMIZE" rendered="#{@DISPATCHER@.toMaximizedSizeRendered}" actionListener="#{@DISPATCHER@.onMaximize}" contentareafilled="false" image="#{ccstylevalue.ccWpPopupImageMaximize}" text="#{eclnti18n.WP_maximize}" />
</t:rowheader>
<t:rowinclude id="g_4" page="#{@DISPATCHER@.workpage.jspPage}"/>
<t:rowstatusbar id="g_5" objectbinding="#{@DISPATCHER@.statusbar}" rendered="#{@DISPATCHER@.openedAsPopup}" />
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
