<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_imagecaptureg_11">
<t:beanprocessing id="g_2" >
  <t:beanpropertysetter id="g_3" property="#{v_imagecapture.refExpression}" value="v_imagecapture" />
</t:beanprocessing>
<t:row id="g_4" >
  <t:pane id="g_5" >
    <t:row id="g_6" >
      <t:pane id="g_7" border="#C0C0C0" height="$height$" >
        <t:row id="g_8" >
          <t:pane id="g_9" componentbinding="#{v_imagecapture.iconPane}" padding="5" />
        </t:row>
        <t:rowdistance id="g_10" height="100%" />
        <t:row id="g_11" >
          <t:coldistance id="g_12" width="50%" />
          <t:icon id="g_13" doubleclickenabled="true" tooltip="#{eclnti18n.IMAGECAPTURE_previous}" actionListener="#{v_imagecapture.onPrevious}" image="/eclntjsfserver/images/arrow_gray_left.png" />
          <t:icon id="g_14" doubleclickenabled="true" tooltip="#{eclnti18n.IMAGECAPTURE_next}" actionListener="#{v_imagecapture.onNext}" image="/eclntjsfserver/images/arrow_gray_right.png" />
          <t:coldistance id="g_15" width="50%" />
        </t:row>
      </t:pane>
      <t:pane id="g_16" border="right:1;top:1;bottom:1;color:#C0C0C0" height="$height$" >
        <t:row id="g_17" >
          <t:coldistance id="g_18" width="10" />
          <t:heximage id="g_19" invokeevent="doubleclick" actionListener="#{v_imagecapture.onHexImageAction}" height="$imageheight$" hexdata="#{v_imagecapture.selHexImage}" width="$imagewidth$" />
          <t:coldistance id="g_20" width="10" />
          <t:pane id="g_21" background="#00000010" height="100%" padding="left:5;bottom:2" >
            <t:row id="g_22" >
              <t:coldistance id="g_23" width="70" />
            </t:row>
            <t:rowdistance id="g_24" height="100%" />
            <t:row id="g_25" rendered="$enabled$">
              <t:pane id="g_26" rowdistance="$rowdistancecommandpane$" componentbinding="#{v_imagecapture.commandPane}" />
            </t:row>
            <t:rowdistance id="g_100" height="$rowdistancecommandpane$" />
          </t:pane>
          <t:fileupload id="g_221" focusable="false" height="0" width="0" actionListener="#{v_imagecapture.uploadExecute}" openpopuptrigger="#{v_imagecapture.uploadTrigger}"/>
        </t:row>
      </t:pane>
    </t:row>
  </t:pane>
</t:row>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
