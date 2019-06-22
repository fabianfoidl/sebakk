<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_popups_imageselectiong_2">
<t:rowbodypane id="g_2" padding="0" >
  <t:row id="g_3" >
    <t:fixgrid id="g_4" border="top:0;left:0;right:0;bottom:0" height="100%" 
               objectbinding="#{eclntdefscr.imageSelection.rows}" rowheight="25" 
               sbvisibleamount="10" suppressheadline="true" width="100%" background="#b0b0b0">
      <t:gridcol id="g_5" text="Image 1" width="25%" >
        <t:icon id="g_6" actionListener=".{onIcon1}" image=".{icon1}" />
      </t:gridcol>
      <t:gridcol id="g_7" text="Image 2" width="25%" >
        <t:icon id="g_8" actionListener=".{onIcon2}" image=".{icon2}" />
      </t:gridcol>
      <t:gridcol id="g_9" text="Image 2" width="25%" >
        <t:icon id="g_10" actionListener=".{onIcon3}" image=".{icon3}" />
      </t:gridcol>
      <t:gridcol id="g_11" text="Image 2" width="25%" >
        <t:icon id="g_12" actionListener=".{onIcon4}" image=".{icon4}" />
      </t:gridcol>
    </t:fixgrid>
  </t:row>
</t:rowbodypane>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
