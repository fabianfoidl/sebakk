<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="eclntjsfserver_popups_wizardg_6">
<t:rowbodypane id="g_2" >
  <t:row id="g_3" >
    <t:fixgrid id="g_4" borderheight="0" borderwidth="0" height="100%" objectbinding="#{eclntdefscr.wizard.rows}" rowheight="18" sbvisibleamount="20" suppressheadline="true" width="175" >
      <t:gridcol id="g_5" avoidselection="#{eclntdefscr.wizard.avoidGridNavigation}" text="Step" width="100%" >
        <t:label id="g_6" font=".{font}" text=".{link}" />
      </t:gridcol>
    </t:fixgrid>
    <t:coldistance id="g_7" width="20" />
    <t:pane id="g_8" border="#C0C0C0" height="100%" padding="1" width="100%" >
      <t:rowinclude id="g_9" contentreplace="#{eclntdefscr.wizard.contentReplace}" page="#{eclntdefscr.wizard.pageName}" />
    </t:pane>
  </t:row>
  <t:rowdistance id="g_10" height="20" />
  <t:row id="g_11" >
    <t:coldistance id="g_12" width="100%" />
    <t:button id="g_13" actionListener="#{eclntdefscr.wizard.onPrevious}" enabled="#{eclntdefscr.wizard.enabledPrevious}" image="#{eclntdefscr.wizard.iconPrevious}" imagedisabled="#{eclntdefscr.wizard.iconDisabled}" rendered="#{eclntdefscr.wizard.renderedPrevious}" text="#{eclntdefscr.wizard.textPrevious}" />
    <t:button id="g_14" actionListener="#{eclntdefscr.wizard.onNext}" enabled="#{eclntdefscr.wizard.enabledNext}" horizontaltextposition="1" image="#{eclntdefscr.wizard.iconNext}" imagedisabled="#{eclntdefscr.wizard.iconDisabled}" rendered="#{eclntdefscr.wizard.renderedNext}" text="#{eclntdefscr.wizard.textNext}" />
    <t:coldistance id="g_15" rendered="#{eclntdefscr.wizard.renderedDistance}" width="30" />
    <t:button id="g_17" actionListener="#{eclntdefscr.wizard.onFinish}" enabled="#{eclntdefscr.wizard.enabledFinish}" image="#{eclntdefscr.wizard.iconFinish}" imagedisabled="#{eclntdefscr.wizard.iconDisabled}" rendered="#{eclntdefscr.wizard.renderedFinish}" text="#{eclntdefscr.wizard.textFinish}" />
    <t:coldistance id="g_18" width="50" />
    <t:button id="g_19" actionListener="#{eclntdefscr.wizard.onCancel}" image="#{eclntdefscr.wizard.iconCancel}" imagedisabled="#{eclntdefscr.wizard.iconDisabled}" text="#{eclntdefscr.wizard.textCancel}" />
  </t:row>
</t:rowbodypane>
<t:pageaddons/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
