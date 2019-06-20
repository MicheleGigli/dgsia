-- ### DB *Port ###

-- EN-1748
ALTER TABLE pages_metadata_draft ADD COLUMN groupcode character varying(30);
ALTER TABLE pages_metadata_online ADD COLUMN groupcode character varying(30);
UPDATE pages_metadata_online SET groupcode = (SELECT pages.groupcode FROM pages WHERE pages_metadata_online.code = pages.code);
UPDATE pages_metadata_draft SET groupcode = (SELECT pages.groupcode FROM pages WHERE pages_metadata_draft.code = pages.code);
ALTER TABLE pages DROP groupcode;

-- EN-1858
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jacms_resourceMetadataMapping', 'Mapping between resource Metadata and resource attribute fields', '<mapping>
    <field key="alt"></field>
    <field key="description"></field>
    <field key="legend"></field>
    <field key="title"></field>
</mapping>');

-- EN-2141
UPDATE resources SET lastmodified = creationdate WHERE lastmodified IS NULL;

-- ------------------------------------------------------------

UPDATE sysconfig SET config = '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
		<default>true</default>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>false</default>
	</Lang>
</Langs>' WHERE item = 'langs';

-- EN-888-jacms_content_viewer_list_home_link per homepage

INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_home_link','content_viewer_list_home_link','jacms','<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.contentList listName="contentList" titleVar="titleVar"
pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />
<div class="container py-4 custom-list-content">
    <#if (titleVar??)>
    <h2>${titleVar}</h2>
    </#if>
    <div class="row link-utili">
        
            <@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
            <@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
            </@wp.freemarkerTemplateParameter>
            <#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
            <@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
            <@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
            <#list contentList as contentId>
            <#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
            <@jacms.content contentId="${contentId}" />
            </#if>
            </#list>
            <@wp.fragment code="default_pagerBlock" escapeXml=false />
            </@wp.freemarkerTemplateParameter>
            </@wp.pager>
            <#else>
            <p class="alert alert-info">
                <@wp.i18n key="LIST_VIEWER_EMPTY" />
            </p>
            </#if>
            <#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
            <div class="mt-3 container py-2 text-right">
                <a  class="btn btn-outline-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a>
            </div>
            </#if>
            <#assign contentList="">
            <br>
      
    </div>
</div>','<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
<@jacms.contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />
<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
<@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
</@wp.freemarkerTemplateParameter>
<#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
	<@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
		<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
<#list contentList as contentId>
<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
	<@jacms.content contentId="${contentId}" />
</#if>
</#list>
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
		</@wp.freemarkerTemplateParameter>
	</@wp.pager>
<#else>
		<p class="alert alert-info"><@wp.i18n key="LIST_VIEWER_EMPTY" /></p>
</#if>
<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>
<#assign contentList="">',1);


INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer_list_home_link','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of home links</property>
<property key="it">Contenuti - Pubblica una Lista di link per homepage</property>
</properties>

','<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="maxElements">Number of contents</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>','jacms',NULL,NULL,1,'free');




