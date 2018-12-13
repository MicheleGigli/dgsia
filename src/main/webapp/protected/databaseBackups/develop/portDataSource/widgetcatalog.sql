INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('come_fare_per','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Come Fare Per</property>
<property key="it">Come Fare Per</property>
</properties>

','<config>
                <parameter name="categoryRoot">category root</parameter>
	<action name="configSimpleParameter"/>
</config>',NULL,NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>','<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<action name="viewerConfig"/>
</config>','jacms',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti</property>
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
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer_list_carousel','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Carousel Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti Carousel</property>
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
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer_list_news','<?xml version="1.0" encoding="UTF-8"?>
<properties>
    <property key="en">Contents - Publish a List of Contents News</property>
    <property key="it">Contenuti - Pubblica una Lista di Contenuti News</property>
</properties>','<config>
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
</config>','jacms',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-internal-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
    <property key="en">Navigation -internal Bar</property>
    <property key="it">Navigazione - Barra interna </property>
</properties>','<config>
    <parameter name="navSpec">Rules for the Page List auto-generation</parameter>
    <action name="navigatorConfig" />
</config>',NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-language_choose','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Choose a Language</property>
<property key="it">Choose a Language</property>
</properties>

',NULL,NULL,NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-login_form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dropdown Sign In</property>
<property key="it">Dropdown Sign In</property>
</properties>

',NULL,NULL,NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Bar</property>
<property key="it">Navigazione - Barra Orizzontale</property>
</properties>','<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>',NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-navigation_breadcrumbs','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Breadcrumbs</property>
<property key="it">Navigazione - Briciole di Pane</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-search_form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Form</property>
<property key="it">Search Form</property>
</properties>

',NULL,NULL,NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-side-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
    <property key="en">Navigation -Side Bar</property>
    <property key="it">Navigazione - Barra laterale </property>
</properties>','<config>
    <parameter name="navSpec">Rules for the Page List auto-generation</parameter>
    <action name="navigatorConfig" />
</config>',NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando_apis','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>
',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/Api/Resource/list.action</property>
</properties>
',1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Internal Servlet</property>
<property key="it">Invocazione di una Servlet Interna</property>
</properties>','<config>
	<parameter name="actionPath">
		Path to an action or to a JSP. You must prepend ''/ExtStr2'' to any Struts2 action path
	</parameter>
	<action name="configSimpleParameter"/>
</config>',NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('LinkUtiliSettato','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Link Utili Settato</property>
<property key="it">Link Utili Settato</property>
</properties>

',NULL,NULL,'content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="modelId">10</property>
<property key="contentId">CTA144</property>
</properties>

',0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('login_form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login Form</property>
<property key="it">Form di Login</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('messages_system','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Messages</property>
<property key="it">Messaggi di Sistema</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Navigation_Bar_Settato','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation Bar Settato</property>
<property key="it">Navigation Bar Settato</property>
</properties>

',NULL,NULL,'entando-widget-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(corte_d_appello).subtree(1) + code(sezione_per_il_cittadino).subtree(1) + code(sezione_per_il_professionista).subtree(1) + code(sezione_per_l_amministrazia).subtree(1) + code(sezione_come_fare_per).subtree(1)</property>
</properties>

',0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Navigation_Bar_Side_CA','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation BAR Site Corte d''Appello</property>
<property key="it">Navigation BAR Site Corte d''Appello</property>
</properties>

',NULL,NULL,'entando-widget-side-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(corte_d_appello).subtree(1)</property>
</properties>

',0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Navigation_Bar_Side_PerIlCittadino','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation Bar Side Per Il Cittadino</property>
<property key="it">Navigation Bar Side Per Il Cittadino</property>
</properties>

',NULL,NULL,'entando-widget-side-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sezione_per_il_cittadino).subtree(1)</property>
</properties>

',0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Navigation_Internal_Child','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation-Internal-Child</property>
<property key="it">Navigation-Internal-Child</property>
</properties>

',NULL,NULL,'entando-widget-internal-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">current.children</property>
</properties>

',0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('PCR','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Publish a list of news</property>
<property key="it">Publish a list of news</property>
</properties>

',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('row_content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish Contents</property>
<property key="it">Contenuti - Pubblica Contenuti</property>
</properties>','<config>
	<parameter name="contents">Contents to Publish (mandatory)</parameter>
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="rowListViewerConfig" />
</config>','jacms',NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('search_result','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Result</property>
<property key="it">Ricerca - Risultati della Ricerca</property>
</properties>

',NULL,'jacms',NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('userprofile_editCurrentUser','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User</property>
<property key="it">Edita Utente Corrente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/edit.action</property>
</properties>',1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('userprofile_editCurrentUser_password','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Password</property>
<property key="it">Edita Password Utente Corrente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/editPassword.action</property>
</properties>',1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('userprofile_editCurrentUser_profile','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Profile</property>
<property key="it">Edita Profilo Utente Corrente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/Profile/edit.action</property>
</properties>',1,NULL);
