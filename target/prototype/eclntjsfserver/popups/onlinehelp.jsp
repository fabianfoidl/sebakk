<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_popups_onlinehelpg_34">
<t:rowbodypane id="g_2" bgpaint="rectangle(0,0,100%,100%,#FFFFE0,#EEEEB0,vertical)" padding="5" >
  <t:row id="g_3" >
    <t:scrollpane id="g_4" height="100%" width="100%" >
      <t:row id="g_5" >
        <t:textpane id="g_6" width="100%" contenttype="#{eclntdefscr.onlineHelp.contentType}" text="#{eclntdefscr.onlineHelp.text}" />
      </t:row>
    </t:scrollpane>
  </t:row>
</t:rowbodypane>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
