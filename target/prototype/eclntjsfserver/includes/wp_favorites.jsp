<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="ztest_wp_favoritesg_73">
<t:beanpropertysetter id="g_1005" property="#{OBJECTBINDING.objectBinding}" value="OBJECTBINDING" onlyonce="true">
</t:beanpropertysetter>
<t:beanpropertysetter id="g_1006" property="#{OBJECTBINDING.imageWidthStr}" value="IMAGEWIDTH" onlyonce="true">
</t:beanpropertysetter>
<t:beanpropertysetter id="g_1007" property="#{OBJECTBINDING.imageHeightStr}" value="IMAGEHEIGHT" onlyonce="true">
</t:beanpropertysetter>
<t:beanpropertysetter id="g_1008" property="#{OBJECTBINDING.withIconTextStr}" value="WITHICONTEXT" onlyonce="true">
</t:beanpropertysetter>
<t:beanpropertysetter id="g_1009" property="#{OBJECTBINDING.rowAlignmentYStr}" value="ROWALIGNMENTY" onlyonce="true">
</t:beanpropertysetter>
<t:row id="g_2" >
  <t:pane id="g_3" actionListener="#{OBJECTBINDING.onPaneAction}" 
                   componentbinding="#{OBJECTBINDING.pane}" 
                   dropreceive="workpage" height="100%" 
                   rowdistance="5" width="100%" />
</t:row>
<t:popupmenu id="FAVORITEICON" >
  <t:menuitem id="g_4" command="cmdConfigureIcon" text="Configure Icon..." image="#{ccstylevalue.ccWpFavoriteImage}"/>
  <t:menuitem id="g_5" command="cmdRemoveFavorite" image="#{ccstylevalue.ccDeleteImage}" text="Remove" />
</t:popupmenu>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
