<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@taglib prefix="t" uri="/WEB-INF/eclnt"%>


<!-- ========== CONTENT BEGIN ========== -->
<f:view>
	<h:form>
		<f:subview id="eclntjsfserver_popups_gridexportfunctionsg_sv">
				<t:row id="g_2">
					<t:pane id="g_3" background="#FFFFFF80" border="#00000040"
						padding="10" rowdistance="5" width="100%;250">
						<t:row id="g_21">
							<t:pane id="g_22"
								bgpaint="image(100%-30,100%,/eclntjsfserver/images/grid_whole.png,rightbottom)"
								rowdistance="5" width="100%">
								<t:row id="g_23">
									<t:label id="g_24" font="weight:bold"
										text="#{eclnti18n.GRID_wholegrid}" />
								</t:row>
                                <t:row id="g_1125">
                                    <t:coldistance id="g_1126" width="10" />
                                    <t:filedownloadlink id="g_1127" filename="#{eclntdefscr.gridDetails.downloadFilenamePDF}"
                                        opensupported="true" openimmediately="true" text="#{eclnti18n.GRID_exportpdf}"
                                        url="#{eclntdefscr.gridDetails.exportURLPdfWholeGrid}" enforceextension="pdf"/>
                                </t:row>
                                <t:row id="g_25">
                                    <t:coldistance id="g_26" width="10" />
                                    <t:filedownloadlink id="g_27" filename="#{eclntdefscr.gridDetails.downloadFilenameCSV}"
                                        opensupported="true" openimmediately="true" text="#{eclnti18n.GRID_exportcsv}"
                                        url="#{eclntdefscr.gridDetails.exportURLCsvWholeGrid}" />
                                </t:row>
								<t:row id="g_28">
									<t:coldistance id="g_29" width="10" />
									<t:filedownloadlink id="g_30" filename="#{eclntdefscr.gridDetails.downloadFilenameXML}"
										opensupported="true" text="#{eclnti18n.GRID_exportxml}"
										url="#{eclntdefscr.gridDetails.exportURLXMLWholeGrid}" />
								</t:row>
								<t:row id="g_3328" rendered="#{eclntdefscr.gridDetails.xlsxAvailable}">
									<t:coldistance id="g_3329" width="10" />
									<t:filedownloadlink id="g_3330" filename="#{eclntdefscr.gridDetails.downloadFilenameXLSX}"
										opensupported="true" text="#{eclnti18n.GRID_exportxlsx}"
										url="#{eclntdefscr.gridDetails.exportURLXLSXWholeGrid}" enforceextension="xlsx" />
								</t:row>
								<t:row id="g_31">
									<t:coldistance id="g_32" width="10" />
									<t:link id="g_33"
										actionListener="#{eclntdefscr.gridDetails.onExportToClipboardWholeGrid}"
										text="#{eclnti18n.GRID_exportclipboard}" />
								</t:row>
							</t:pane>
						</t:row>
                        <t:row id="g_100034"
                            rendered="#{eclntdefscr.gridDetails.rowFunctionsAvailable}">
                            <t:pane id="g_100035"
                                bgpaint="image(100%-30,100%,/eclntjsfserver/images/grid_rows.png,rightbottom)"
                                rowdistance="5" width="100%">
                                <t:row id="g_100036">
                                    <t:label id="g_100037" font="weight:bold"
                                        text="#{eclnti18n.GRID_wholerows}" />
                                </t:row>
                                <t:row id="g_2225">
                                    <t:coldistance id="g_2226" width="10" />
                                    <t:filedownloadlink id="g_2227" filename="#{eclntdefscr.gridDetails.downloadFilenamePDF}"
                                        opensupported="true" text="#{eclnti18n.GRID_exportpdf}"
                                        url="#{eclntdefscr.gridDetails.exportURLPdfRows}" enforceextension="pdf" />
                                </t:row>
                                <t:row id="g_100038">
                                    <t:coldistance id="g_100039" width="10" />
                                    <t:filedownloadlink id="g_100040" filename="#{eclntdefscr.gridDetails.downloadFilenameCSV}"
                                        opensupported="true" text="#{eclnti18n.GRID_exportcsv}"
                                        url="#{eclntdefscr.gridDetails.exportURLCsvRows}" />
                                </t:row>
                                <t:row id="g_100041">
                                    <t:coldistance id="g_100042" width="10" />
                                    <t:filedownloadlink id="g_100043" filename="#{eclntdefscr.gridDetails.downloadFilenameXML}"
                                        opensupported="true" text="#{eclnti18n.GRID_exportxml}"
                                        url="#{eclntdefscr.gridDetails.exportURLXMLRows}" />
                                </t:row>
								<t:row id="g_3428" rendered="#{eclntdefscr.gridDetails.xlsxAvailable}">
									<t:coldistance id="g_3429" width="10" />
									<t:filedownloadlink id="g_3430" filename="#{eclntdefscr.gridDetails.downloadFilenameXLSX}"
										opensupported="true" text="#{eclnti18n.GRID_exportxlsx}"
										url="#{eclntdefscr.gridDetails.exportURLXLSXRows}" enforceextension="xlsx" />
								</t:row>
                                <t:row id="g_100044">
                                    <t:coldistance id="g_100045" width="10" />
                                    <t:link id="g_100046"
                                        actionListener="#{eclntdefscr.gridDetails.onExportToClipboardRows}"
                                        text="#{eclnti18n.GRID_exportclipboard}" />
                                </t:row>
                            </t:pane>
                        </t:row>
                        <t:row id="g_34"
                            rendered="#{eclntdefscr.gridDetails.cellFunctionsAvailable}">
                            <t:pane id="g_35"
                                bgpaint="image(100%-30,100%,/eclntjsfserver/images/grid_range.png,rightbottom)"
                                rowdistance="5" width="100%">
                                <t:row id="g_36">
                                    <t:label id="g_37" font="weight:bold"
                                        text="#{eclnti18n.GRID_wholerange}" />
                                </t:row>
                                <t:row id="g_38">
                                    <t:coldistance id="g_39" width="10" />
                                    <t:filedownloadlink id="g_40" filename="#{eclntdefscr.gridDetails.downloadFilenameCSV}"
                                        opensupported="true" text="#{eclnti18n.GRID_exportcsv}"
                                        url="#{eclntdefscr.gridDetails.exportURLCsvRange}" />
                                </t:row>
                                <t:row id="g_41">
                                    <t:coldistance id="g_42" width="10" />
                                    <t:filedownloadlink id="g_43" filename="#{eclntdefscr.gridDetails.downloadFilenameXML}"
                                        opensupported="true" text="#{eclnti18n.GRID_exportxml}"
                                        url="#{eclntdefscr.gridDetails.exportURLXMLRange}" />
                                </t:row>
                                <t:row id="g_44">
                                    <t:coldistance id="g_45" width="10" />
                                    <t:link id="g_46"
                                        actionListener="#{eclntdefscr.gridDetails.onExportToClipboardRange}"
                                        text="#{eclnti18n.GRID_exportclipboard}" />
                                </t:row>
                            </t:pane>
                        </t:row>
					</t:pane>
				</t:row>
			<t:pageaddons id="g_pa" />
		</f:subview>
	</h:form>
</f:view>
<!-- ========== CONTENT END ========== -->
