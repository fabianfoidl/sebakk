<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>

<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_includes_modalpopupg_3">

<t:htmodalpopup id="g_24" 
              rendered="#{eclntdefscr.htModalPopup0.opened == true}"
              opened="#{eclntdefscr.htModalPopup0.opened}" 
              title="#{eclntdefscr.htModalPopup0.title}" 
              left="#{eclntdefscr.htModalPopup0.left}" 
              top="#{eclntdefscr.htModalPopup0.top}" 
              height="#{eclntdefscr.htModalPopup0.height}" 
              width="#{eclntdefscr.htModalPopup0.width}" >
  <t:htrow id="g_100" width="100%" styleClass="classtitlebarback">
    <t:htlabel id="g_101" text="#{eclntdefscr.htModalPopup0.title}" styleClass="classtitlebartext" width="100%">
    </t:htlabel>
    <t:htbutton id="g_102" image="../eclntjsfserver/images/window_close.png" styleClass="classbuttonplain" actionListener="#{eclntdefscr.htModalPopup0.onPopupClosedByUser}">
    </t:htbutton>
  </t:htrow>
  <t:htrow id="g_201" width="100%" height="100%">
    <t:htpane id="g_202" styleClass="classpopupinnercontent" width="100%" height="100%">
      <t:rowinclude id="g_25" 
                    page="#{eclntdefscr.htModalPopup0.page}" 
                    contentreplace="#{eclntdefscr.htModalPopup0.contentReplace}" 
                    contentreplacedrilldown="#{eclntdefscr.htModalPopup0.contentReplaceDrillDown}"/>
    </t:htpane>
  </t:htrow>
</t:htmodalpopup>

<t:htmodalpopup id="g2_24" 
              rendered="#{eclntdefscr.htModalPopup1.opened == true}"
              opened="#{eclntdefscr.htModalPopup1.opened}" 
              title="#{eclntdefscr.htModalPopup1.title}" 
              left="#{eclntdefscr.htModalPopup1.left}" 
              top="#{eclntdefscr.htModalPopup1.top}" 
              height="#{eclntdefscr.htModalPopup1.height}" 
              width="#{eclntdefscr.htModalPopup1.width}" >
  <t:htrow id="g2_100" width="100%" styleClass="classtitlebarback">
    <t:htlabel id="g2_101" text="#{eclntdefscr.htModalPopup1.title}" styleClass="classtitlebartext" width="100%">
    </t:htlabel>
    <t:htbutton id="g2_102" image="../eclntjsfserver/images/window_close.png" styleClass="classbuttonplain" actionListener="#{eclntdefscr.htModalPopup1.onPopupClosedByUser}">
    </t:htbutton>
  </t:htrow>
  <t:htrow id="g2_201" width="100%" height="100%">
    <t:htpane id="g2_202" styleClass="classpopupinnercontent" width="100%" height="100%">
      <t:rowinclude id="g2_25" 
                    page="#{eclntdefscr.htModalPopup1.page}" 
                    contentreplace="#{eclntdefscr.htModalPopup1.contentReplace}" 
                    contentreplacedrilldown="#{eclntdefscr.htModalPopup1.contentReplaceDrillDown}"/>
    </t:htpane>
  </t:htrow>
</t:htmodalpopup>

<t:htmodalpopup id="g3_24" 
              rendered="#{eclntdefscr.htModalPopup2.opened == true}"
              opened="#{eclntdefscr.htModalPopup2.opened}" 
              title="#{eclntdefscr.htModalPopup2.title}" 
              left="#{eclntdefscr.htModalPopup2.left}" 
              top="#{eclntdefscr.htModalPopup2.top}" 
              height="#{eclntdefscr.htModalPopup2.height}" 
              width="#{eclntdefscr.htModalPopup2.width}" >
  <t:htrow id="g3_100" width="100%" styleClass="classtitlebarback">
    <t:htlabel id="g3_101" text="#{eclntdefscr.htModalPopup2.title}" styleClass="classtitlebartext" width="100%">
    </t:htlabel>
    <t:htbutton id="g3_102" image="../eclntjsfserver/images/window_close.png" styleClass="classbuttonplain" actionListener="#{eclntdefscr.htModalPopup2.onPopupClosedByUser}">
    </t:htbutton>
  </t:htrow>
  <t:htrow id="g3_201" width="100%" height="100%">
    <t:htpane id="g3_202" styleClass="classpopupinnercontent" width="100%" height="100%">
      <t:rowinclude id="g3_25" 
                    page="#{eclntdefscr.htModalPopup2.page}" 
                    contentreplace="#{eclntdefscr.htModalPopup2.contentReplace}" 
                    contentreplacedrilldown="#{eclntdefscr.htModalPopup2.contentReplaceDrillDown}"/>
    </t:htpane>
  </t:htrow>
</t:htmodalpopup>



<t:htmodalpopup id="g_ml_24" 
              rendered="#{eclntdefscr.htModelessPopup0.opened == true}"
              opened="#{eclntdefscr.htModelessPopup0.opened}" 
              title="#{eclntdefscr.htModelessPopup0.title}" 
              left="#{eclntdefscr.htModelessPopup0.left}" 
              top="#{eclntdefscr.htModelessPopup0.top}" 
              height="#{eclntdefscr.htModelessPopup0.height}" 
              width="#{eclntdefscr.htModelessPopup0.width}" >
  <t:htrow id="g_ml_100" width="100%" styleClass="classtitlebarback">
    <t:htlabel id="g_ml_101" text="#{eclntdefscr.htModelessPopup0.title}" styleClass="classtitlebartext" width="100%">
    </t:htlabel>
    <t:htbutton id="g_ml_102" image="../eclntjsfserver/images/window_close.png" styleClass="classbuttonplain" actionListener="#{eclntdefscr.htModelessPopup0.onPopupClosedByUser}">
    </t:htbutton>
  </t:htrow>
  <t:htrow id="g_ml_201" width="100%" height="100%">
    <t:htpane id="g_ml_202" styleClass="classpopupinnercontent" width="100%" height="100%">
      <t:rowinclude id="g_ml_25" 
                    page="#{eclntdefscr.htModelessPopup0.page}" 
                    contentreplace="#{eclntdefscr.htModelessPopup0.contentReplace}" 
                    contentreplacedrilldown="#{eclntdefscr.htModelessPopup0.contentReplaceDrillDown}"/>
    </t:htpane>
  </t:htrow>
</t:htmodalpopup>

<t:htmodalpopup id="g2_ml_24" 
              rendered="#{eclntdefscr.htModelessPopup1.opened == true}"
              opened="#{eclntdefscr.htModelessPopup1.opened}" 
              title="#{eclntdefscr.htModelessPopup1.title}" 
              left="#{eclntdefscr.htModelessPopup1.left}" 
              top="#{eclntdefscr.htModelessPopup1.top}" 
              height="#{eclntdefscr.htModelessPopup1.height}" 
              width="#{eclntdefscr.htModelessPopup1.width}" >
  <t:htrow id="g2_ml_100" width="100%" styleClass="classtitlebarback">
    <t:htlabel id="g2_ml_101" text="#{eclntdefscr.htModelessPopup1.title}" styleClass="classtitlebartext" width="100%">
    </t:htlabel>
    <t:htbutton id="g2_ml_102" image="../eclntjsfserver/images/window_close.png" styleClass="classbuttonplain" actionListener="#{eclntdefscr.htModelessPopup1.onPopupClosedByUser}">
    </t:htbutton>
  </t:htrow>
  <t:htrow id="g2_ml_201" width="100%" height="100%">
    <t:htpane id="g2_ml_202" styleClass="classpopupinnercontent" width="100%" height="100%">
      <t:rowinclude id="g2_ml_25" 
                    page="#{eclntdefscr.htModelessPopup1.page}" 
                    contentreplace="#{eclntdefscr.htModelessPopup1.contentReplace}" 
                    contentreplacedrilldown="#{eclntdefscr.htModelessPopup1.contentReplaceDrillDown}"/>
    </t:htpane>
  </t:htrow>
</t:htmodalpopup>

<t:htmodalpopup id="g3_ml_24" 
              rendered="#{eclntdefscr.htModelessPopup2.opened == true}"
              opened="#{eclntdefscr.htModelessPopup2.opened}" 
              title="#{eclntdefscr.htModelessPopup2.title}" 
              left="#{eclntdefscr.htModelessPopup2.left}" 
              top="#{eclntdefscr.htModelessPopup2.top}" 
              height="#{eclntdefscr.htModelessPopup2.height}" 
              width="#{eclntdefscr.htModelessPopup2.width}" >
  <t:htrow id="g3_ml_100" width="100%" styleClass="classtitlebarback">
    <t:htlabel id="g3_ml_101" text="#{eclntdefscr.htModelessPopup2.title}" styleClass="classtitlebartext" width="100%">
    </t:htlabel>
    <t:htbutton id="g3_ml_102" image="../eclntjsfserver/images/window_close.png" styleClass="classbuttonplain" actionListener="#{eclntdefscr.htModelessPopup2.onPopupClosedByUser}">
    </t:htbutton>
  </t:htrow>
  <t:htrow id="g3_ml_201" width="100%" height="100%">
    <t:htpane id="g3_ml_202" styleClass="classpopupinnercontent" width="100%" height="100%">
      <t:rowinclude id="g3_ml_25" 
                    page="#{eclntdefscr.htModelessPopup2.page}" 
                    contentreplace="#{eclntdefscr.htModelessPopup2.contentReplace}" 
                    contentreplacedrilldown="#{eclntdefscr.htModelessPopup2.contentReplaceDrillDown}"/>
    </t:htpane>
  </t:htrow>
</t:htmodalpopup>



</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
