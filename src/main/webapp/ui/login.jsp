<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="loging_sv">
<t:rowtitlebar id="g_1" text="Login" />
<t:rowheader id="g_2" />
<t:rowbodypane id="g_3" rowdistance="5" >
<t:row id="g_4" >
<t:box id="g_5" background="00" rowdistance="10" >
<t:row id="g_6" >
<t:label id="g_7" text="Benutzer" width="100" />
<t:field id="g_8" text="#{d.LoginUI.user}" width="100" />
<t:coldistance id="g_9" width="20" />
</t:row>
<t:row id="g_10" >
<t:label id="g_11" text="Passwort" width="100" />
<t:password id="g_12" text="#{d.LoginUI.password}" width="100" />
</t:row>
<t:row id="g_13" rendered="#{d.LoginUI.eingeloggt}" >
<t:label id="g_14" text="#{d.LoginUI.loginText}" />
</t:row>
<t:row id="g_15" >
<t:button id="g_16" actionListener="#{d.LoginUI.onLogin}" text="Login" width="80" />
</t:row>
</t:box>
<t:coldistance id="g_17" width="30" />
<t:box id="g_18" background="00" width="100%" >
<t:row id="g_19" >
<t:fixgrid id="g_20" height="150" objectbinding="#{d.LoginUI.userGrid}" width="330" >
<t:gridcol id="g_21" text="ID" width="30" >
<t:label id="g_22" text=".{id}" />
</t:gridcol>
<t:gridcol id="g_23" text="Name" width="100" >
<t:label id="g_24" text=".{name}" />
</t:gridcol>
<t:gridcol id="g_25" text="Benutzername" width="100" >
<t:label id="g_26" text=".{username}" />
</t:gridcol>
<t:gridcol id="g_27" text="Passwort" width="100" >
<t:label id="g_28" text=".{password}" />
</t:gridcol>
</t:fixgrid>
</t:row>
</t:box>
</t:row>
<t:row id="g_29" >
<t:label id="g_30" text="Ab hier beginnt der gesperrte Bereich." />
</t:row>
<t:rowdistance id="g_31" />
<t:row id="g_32" >
<t:label id="g_33" text="Rolle: Super User" />
<t:coldistance id="g_34" width="330" />
<t:label id="g_35" text="Rolle: Schichtleiter" />
</t:row>
<t:row id="g_36" >
<t:box id="g_37" height="200" width="400" >
<t:row id="g_38" >
<t:label id="g_39" rendered="#{d.LoginUI.showSuperuser}" text="Dieser Text sollte nur dem Admin angezeigt weren." />
</t:row>
</t:box>
<t:coldistance id="g_40" width="30" />
<t:box id="g_41" height="200" width="400" >
<t:row id="g_42" >
<t:label id="g_43" rendered="#{d.LoginUI.showShiftLeader}" text="Dieser Text sollte nur dem Schichtleiter angezeigt werden." />
</t:row>
</t:box>
</t:row>
<t:rowdistance id="g_44" height="20" />
<t:row id="g_45" >
<t:label id="g_46" text="Rolle: Operator 1" />
<t:coldistance id="g_47" width="335" />
<t:label id="g_48" text="Rolle: Operator 2" />
</t:row>
<t:row id="g_49" >
<t:box id="g_50" height="200" width="400" >
<t:row id="g_51" >
<t:label id="g_52" rendered="#{d.LoginUI.showOperator1}" text="Dieser Text sollte nur dem Operator 1 angezeigt werden." />
</t:row>
</t:box>
<t:coldistance id="g_53" width="30" />
<t:box id="g_54" height="200" width="400" >
<t:row id="g_55" >
<t:label id="g_56" rendered="#{d.LoginUI.showOperator2}" text="Dieser Text sollte nur dem Operator 2 angezeigt werden." />
</t:row>
</t:box>
</t:row>
</t:rowbodypane>
<t:rowstatusbar id="g_57" />
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
