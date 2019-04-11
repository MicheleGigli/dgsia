INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types','<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="**NULL**" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CTA" typedescr="Contenuto lista" viewpage="**NULL**" listmodel="**NULL**" defaultmodel="**NULL**">
		<attributes>
			<attribute name="title" attributetype="Text" description="titolo" searchable="true" indexingtype="TEXT" />
			<list name="lista" attributetype="Monolist" description="lista contenuti vari">
				<nestedtype>
					<attribute name="lista" attributetype="Composite">
						<attributes>
							<attribute name="title" attributetype="Text" description="titolo">
								<validations>
									<required>true</required>
								</validations>
							</attribute>
							<attribute name="abstract" attributetype="Longtext" description="descrizione" />
							<attribute name="img" attributetype="Image" description="immagine" />
							<attribute name="link" attributetype="Link" description="link" />
							<attribute name="date" attributetype="Date" description="data" />
							<attribute name="number" attributetype="Number" description="numero" />
						</attributes>
					</attribute>
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CTM" typedescr="Contenuto base titl+sub+img+link" viewpage="paginadettaglio" listmodel="1" defaultmodel="1">
		<attributes>
			<attribute name="primopiano" attributetype="Boolean" description="Primo piano" searchable="true">
				<validations />
			</attribute>
			<attribute name="subtitle" attributetype="Text" description="subtitle">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="title" attributetype="Text" description="title">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="img" attributetype="Image" description="immagine" />
			<attribute name="link" attributetype="Link" description="link" />
			<attribute name="abstract" attributetype="Text" description="abstract" />
			<attribute name="date" attributetype="Date" description="data" searchable="true" />
			<attribute name="enum" attributetype="Enumerator" description="enumeration" searchable="true" separator=","><![CDATA[ATTI GIUDIZIARI, ATTUALITA, COMUNICATI STAMPA]]></attribute>
			<attribute name="autore" attributetype="Text" description="autore" searchable="true" />
			<list name="article" attributetype="Monolist" description="Corpo articolo">
				<validations />
				<nestedtype>
					<attribute name="article" attributetype="Composite">
						<attributes>
							<attribute name="text1" attributetype="Hypertext" description="testo articolo">
								<validations />
							</attribute>
							<attribute name="img1" attributetype="Image" description="immagine articolo">
								<validations />
							</attribute>
							<attribute name="link1" attributetype="Link" description="link articolo">
								<validations />
							</attribute>
						</attributes>
					</attribute>
				</nestedtype>
			</list>
			<list name="attach" attributetype="Monolist" description="allegati  articolo">
				<validations />
				<nestedtype>
					<attribute name="attach" attributetype="Attach">
						<validations />
					</attribute>
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DLD" typedescr="Download Card" viewpage="**NULL**" listmodel="10031" defaultmodel="10003">
		<attributes>
			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="File" attributetype="Attach" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="ShortDescr" attributetype="Hypertext" description="Short Description" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="LongDescr" attributetype="Hypertext" description="Long Description" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
		</attributes>
	</contenttype>
	<contenttype typecode="PRC" typedescr="Procedura" viewpage="paginadettaglio" listmodel="31" defaultmodel="32">
		<attributes>
			<attribute name="titolo" attributetype="Text" description="Titolo" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="abstract" attributetype="Longtext" description="Abstract" indexingtype="TEXT" />
			<attribute name="body" attributetype="Hypertext" description="Corpo Testo" indexingtype="TEXT" />
			<list name="allegati" attributetype="Monolist" description="Lista Allegati">
				<nestedtype>
					<attribute name="allegati" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="links" attributetype="Monolist" description="links">
				<nestedtype>
					<attribute name="links" attributetype="Link" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<datatypes />');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report','<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2019-04-11 09:14:57</creation>
	<lastupdate>2019-04-11 09:15:06</lastupdate>
	<components>
		<component code="entandoCore" date="2019-04-11 09:14:57" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="pages_metadata_online" />
					<table name="pages_metadata_draft" />
					<table name="widgetcatalog" />
					<table name="guifragment" />
					<table name="widgetconfig" />
					<table name="widgetconfig_draft" />
					<table name="uniquekeys" />
				</datasource>
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergrouprole" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
					<table name="authuserprofiles" />
					<table name="authuserprofilesearch" />
					<table name="authuserprofileattrroles" />
					<table name="actionlogrecords" />
					<table name="actionlogrelations" />
					<table name="actionloglikerecords" />
					<table name="actionlogcommentrecords" />
					<table name="dataobjectmodels" />
					<table name="dataobjects" />
					<table name="dataobjectrelations" />
					<table name="dataobjectsearch" />
					<table name="dataobjectattributeroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-jquery" date="2019-04-11 09:15:01" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-html5-essentials" date="2019-04-11 09:15:01" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-bootstrap" date="2019-04-11 09:15:01" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-less" date="2019-04-11 09:15:01" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2019-04-11 09:15:01" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="contentattributeroles" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
					<table name="workcontentattributeroles" />
				</datasource>
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-generic" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-download" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_bar" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_breadcrumbs" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-admin-console" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="authusershortcuts" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-cms-default" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpinfinispan" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-language_choose" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-login_form" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_form" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-bootstrap-hero" date="2019-04-11 09:15:03" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jacms_resourceMetadataMapping','Mapping between resource Metadata and resource attribute fields','<mapping>
    <field key="alt"></field>
    <field key="description"></field>
    <field key="legend"></field>
    <field key="title"></field>
</mapping>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
		<default>true</default>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
	</Lang>
</Langs>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
	<Param name="useJsessionId">false</Param>
	<Param name="gravatarIntegrationEnabled">false</Param>
	<Param name="editEmptyFragmentEnabled">false</Param>
	<Param name="argon2">true</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
	<ExtraParams>
		<Param name="page_preview_hash">45OeUaM9FVmQLmRDPaod</Param>
	</ExtraParams>
</Params>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','indexdir20181122132859');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','userProfileTypes','User Profile Types Definitions','<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>');
