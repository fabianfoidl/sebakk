<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
<h:form>
<f:subview id="RoleManagerg_sv">
<t:rowtitlebar id="g_1" text="Rollenmanager" />
<t:rowheader id="g_2" />
<t:rowbodypane id="g_3" >
<t:row id="g_4" >
<t:label id="g_5" text="bitte User auswählen" />
</t:row>
<t:row id="g_6" >
<t:combobox id="g_7" actionListener="#{d.RoleManagerUI.onFlushUser}" flush="true" validvaluesbinding="#{d.RoleManagerUI.userVvb}" value="#{d.RoleManagerUI.user}" width="100" />
<t:coldistance id="g_8" width="120" />
<t:label id="g_9" text="Neuen Benutzer hinzufügen" />
<t:field id="g_10" text="#{d.RoleManagerUI.newUser}" width="100" />
<t:coldistance id="g_11" />
<t:button id="g_12" actionListener="#{d.RoleManagerUI.onNewUser}" text="Hinzufügen" />
</t:row>
<t:row id="g_13" >
<t:label id="g_14" text="#{d.RoleManagerUI.userStatement}" width="120" />
<t:button id="g_15" actionListener="#{d.RoleManagerUI.onDeleteUser}" text="User löschen" />
<t:coldistance id="g_16" width="30" />
<t:label id="g_17" text="Neue Rolle hinzufügen" />
<t:field id="g_18" text="#{d.RoleManagerUI.newRole}" width="100" />
<t:coldistance id="g_19" />
<t:button id="g_20" actionListener="#{d.RoleManagerUI.onNewRole}" text="Hinzufügen" />
</t:row>
<t:rowdistance id="g_21" height="20" />
<t:row id="g_22" >
<t:label id="g_23" font="size:17" text="nicht zugeteilte Rollen" width="50%" />
<t:coldistance id="g_24" width="20" />
<t:label id="g_25" font="size:17" text="zugeteilte Rollen" width="50%" />
</t:row>
<t:row id="g_26" >
<t:fixgrid id="g_27" bordercolor="#{ccstylevalue.ccLightBorderColor}" borderheight="1" borderwidth="1" dragsend="grid1:grid1" dropreceive="grid2" enabled="true" height="100%" multiselect="true" objectbinding="#{d.RoleManagerUI.roleItems1}" rowdragsend="grid1:grid1" rowdropreceive="grid2:verticalsplit" sbvisibleamount="20" width="50%" >
<t:gridcol id="g_28" text="Role ID" width="60" >
<t:label id="g_29" text=".{roleId}" />
</t:gridcol>
<t:gridcol id="g_30" text="Role Name" width="100" >
<t:label id="g_31" text=".{roleName}" />
</t:gridcol>
<t:gridcol id="g_32" text="Löschen" width="100" >
<t:button id="g_33" actionListener="#{d.RoleManagerUI.onDeleteRole}" text="Löschen" />
</t:gridcol>
</t:fixgrid>
<t:coldistance id="g_34" width="20" />
<t:fixgrid id="g_35" bordercolor="#{ccstylevalue.ccLightBorderColor}" borderheight="1" borderwidth="1" dragsend="grid2:grid2" dropreceive="grid1" enabled="true" height="100%" multiselect="true" objectbinding="#{d.RoleManagerUI.roleItems2}" rowdragsend="grid2:grid2" rowdropreceive="grid1:verticalsplit" sbvisibleamount="20" width="50%" >
<t:gridcol id="g_36" text="Role ID" width="60" >
<t:label id="g_37" text=".{roleId}" />
</t:gridcol>
<t:gridcol id="g_38" text="Role Name" width="100" >
<t:label id="g_39" text=".{roleName}" />
</t:gridcol>
</t:fixgrid>
</t:row>
</t:rowbodypane>
<t:rowstatusbar id="g_40" />
<t:pageaddons id="g_pa"/>
</f:subview>
</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
