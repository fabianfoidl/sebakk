<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="ROWTLCOCKPIT">
			<t:row id="g_1">
				<t:fixgrid id="g_2" avoidroundtrips="true"
					bgpaint="rectangle(0,0,100%,100%,#000000C0,#00000080,vertical)"
					bordercolor="#ffffff30" borderheight="1" borderwidth="1"
					height="$HEIGHT$" objectbinding="#{$OBJECTBINDING$.tlgrid}"
					rowbgpaint="rectangle(0,0,100%,50%,#ffffff10);rectangle(0,50%,100%,50%,#00000010)"
					rowheight="46" sbvisibleamount="8" scrollbartype="light"
					selectioncolor1="#ffffff00" selectioncolor2="#ffffff00"
					suppressheadline="true" width="$WIDTH$">
                    <t:gridcol id="g_0_3" text="Column" width="33%">
                        <t:pane id="g_0_4" actionListener=".{onInvoke0}" 
                            invokeevent="click" background=".{background0}">
                            <t:rowdistance id="g_0_5" height="50%" />
                            <t:row id="g_0_6">
                                <t:icon id="g_0_7"
                                    actionListener=".{onInvoke0}" image=".{image0}" rendered=".{rendered0}"/>
                                <t:pane id="g_0_8" actionListener=".{onInvoke0}" rendered=".{rendered0}"
                                    invokeevent="click">
                                    <t:row id="g_0_9">
                                        <t:label id="g_0_10"
                                            actionListener=".{onInvoke0}"
                                            font="size:14;weight:bold" foreground="#ffffff"
                                            invokeevent="click" text=".{title0}" />
                                    </t:row>
                                    <t:row id="g_0_11">
                                        <t:label id="g_0_12"
                                            actionListener=".{onInvoke0}"
                                            foreground="#ffffff" invokeevent="click"
                                            text=".{comment0}" />
                                    </t:row>
                                </t:pane>
                            </t:row>
                            <t:rowdistance id="g_0_13" height="50%" />
                        </t:pane>
                    </t:gridcol>
                    <t:gridcol id="g_1_3" text="Column" width="34%">
                        <t:pane id="g_1_4" actionListener=".{onInvoke1}" 
                            invokeevent="click" background=".{background1}">
                            <t:rowdistance id="g_1_5" height="50%" />
                            <t:row id="g_1_6">
                                <t:icon id="g_1_7"
                                    actionListener=".{onInvoke1}" image=".{image1}" rendered=".{rendered1}"/>
                                <t:pane id="g_1_8" actionListener=".{onInvoke1}" rendered=".{rendered1}"
                                    invokeevent="click">
                                    <t:row id="g_1_9">
                                        <t:label id="g_1_10"
                                            actionListener=".{onInvoke1}"
                                            font="size:14;weight:bold" foreground="#ffffff"
                                            invokeevent="click" text=".{title1}" />
                                    </t:row>
                                    <t:row id="g_1_11">
                                        <t:label id="g_1_12"
                                            actionListener=".{onInvoke1}"
                                            foreground="#ffffff" invokeevent="click"
                                            text=".{comment1}" />
                                    </t:row>
                                </t:pane>
                            </t:row>
                            <t:rowdistance id="g_1_13" height="50%" />
                        </t:pane>
                    </t:gridcol>
                    <t:gridcol id="g_2_3" text="Column" width="33%">
                        <t:pane id="g_2_4" actionListener=".{onInvoke2}" 
                            invokeevent="click" background=".{background2}">
                            <t:rowdistance id="g_2_5" height="50%" />
                            <t:row id="g_2_6">
                                <t:icon id="g_2_7"
                                    actionListener=".{onInvoke2}" image=".{image2}" rendered=".{rendered2}"/>
                                <t:pane id="g_2_8" actionListener=".{onInvoke2}" rendered=".{rendered2}"
                                    invokeevent="click">
                                    <t:row id="g_2_9">
                                        <t:label id="g_2_10"
                                            actionListener=".{onInvoke2}"
                                            font="size:14;weight:bold" foreground="#ffffff"
                                            invokeevent="click" text=".{title2}" />
                                    </t:row>
                                    <t:row id="g_2_11">
                                        <t:label id="g_2_12"
                                            actionListener=".{onInvoke2}"
                                            foreground="#ffffff" invokeevent="click"
                                            text=".{comment2}" />
                                    </t:row>
                                </t:pane>
                            </t:row>
                            <t:rowdistance id="g_2_13" height="50%" />
                        </t:pane>
                    </t:gridcol>
				</t:fixgrid>
			</t:row>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
