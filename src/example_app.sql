prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>37209028392602428358
,p_default_application_id=>111865
,p_default_owner=>'BOSTROWSKI'
);
end;
/
 
prompt APPLICATION 111865 - APEX Competition 2019
--
-- Application Export:
--   Application:     111865
--   Name:            APEX Competition 2019
--   Date and Time:   07:42 Monday April 8, 2019
--   Exported By:     OSTROWSKI.BARTOSZ@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                      4
--     Items:                   30
--     Processes:                5
--     Regions:                 35
--     Buttons:                 12
--     Dynamic Actions:         21
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         2
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              16
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   3
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'BOSTROWSKI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX Competition 2019')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'111865')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'538793FB5D729892F9209A2B396DAE7457FEE6C9CEB50DBBF82E8409A3CC25BC'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'YYYY-MM-DD'
,p_date_time_format=>'YYYY-MM-DD HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2019.04.05.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(4685218370410812863)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:APEX Competition 2019'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'APEX Competition 2019'
,p_last_updated_by=>'OSTROWSKI.BARTOSZ@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20190408073943'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(4685061927331809119)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4685200201384809286)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Description'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-info-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4946601387780394153)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Visualization'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-play-circle'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(4685190052364809258)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4685201748024809291)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4685202293155809292)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(4685201748024809291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4685202631916809292)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(4685201748024809291)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223383142423546222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(4685191332084809264)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233831424235463B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(4685191689798809266)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685019010260809114)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685019316630809115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685019694729809115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685019955204809116)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685020211031809116)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685020518983809116)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4685020849582809117)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(4685192984282809268)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4685195589247809276)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(4685195589247809276)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4685195958343809278)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_dynamic
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4831459616236731080)
,p_lov_name=>'LOV_DYNAMIC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename as d,',
'       empno as r',
'  from emp'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_static
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4831449204860729531)
,p_lov_name=>'LOV_STATIC'
,p_lov_query=>'.'||wwv_flow_api.id(4831449204860729531)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4831449544741729533)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Display1'
,p_lov_return_value=>'Return1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4831449902360729535)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Display2'
,p_lov_return_value=>'Return2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4831450305081729536)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Display3'
,p_lov_return_value=>'Return3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4831450761901729536)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Display4'
,p_lov_return_value=>'Return4'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(4685193596370809271)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(4685021461555809117)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(4685021676177809118)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685062252690809120)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685062540598809122)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685062896141809122)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685063106465809122)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685063467460809122)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685063786820809123)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685064075822809123)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685064365294809124)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685064679609809124)
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685065012562809125)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685065307380809126)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685065636027809126)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685065945966809127)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685066285959809127)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685066568568809127)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685066861624809127)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685067144137809127)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685067445645809127)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685067781502809128)
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685068193746809128)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">#BODY#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685068460948809128)
,p_page_template_id=>wwv_flow_api.id(4685068193746809128)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685068729771809128)
,p_page_template_id=>wwv_flow_api.id(4685068193746809128)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685068984765809129)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685069252329809129)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685069598039809129)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685069836829809130)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685070175089809130)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685070447549809130)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685070720078809131)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685071061011809131)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685071358221809131)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685071647834809132)
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685072034730809132)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685072303404809133)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685072632427809133)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685072905028809133)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685073238294809134)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685073580761809134)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685073827414809134)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685074135936809134)
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685074538830809134)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685074877143809135)
,p_page_template_id=>wwv_flow_api.id(4685074538830809134)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685075111838809135)
,p_page_template_id=>wwv_flow_api.id(4685074538830809134)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685075490565809135)
,p_page_template_id=>wwv_flow_api.id(4685074538830809134)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685076052668809137)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685076355309809138)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685076650581809138)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685076961125809138)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685077218005809138)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685077545071809139)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685077857715809139)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685078152951809139)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685078468655809139)
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685078871529809139)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685079110388809140)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685079407190809140)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685079791558809140)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685080066341809140)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685080349502809141)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685080643261809141)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685080999589809141)
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(4685081303841809141)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685081699711809142)
,p_page_template_id=>wwv_flow_api.id(4685081303841809141)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685081987793809142)
,p_page_template_id=>wwv_flow_api.id(4685081303841809141)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685082218589809143)
,p_page_template_id=>wwv_flow_api.id(4685081303841809141)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(4685167147284809230)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(4685167880364809231)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(4685167936246809231)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685082886248809143)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685083125367809144)
,p_plug_template_id=>wwv_flow_api.id(4685082886248809143)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685086535039809147)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685086792377809147)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685087089318809148)
,p_plug_template_id=>wwv_flow_api.id(4685086792377809147)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685087376995809148)
,p_plug_template_id=>wwv_flow_api.id(4685086792377809147)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685087592293809148)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685087888058809148)
,p_plug_template_id=>wwv_flow_api.id(4685087592293809148)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685088197355809148)
,p_plug_template_id=>wwv_flow_api.id(4685087592293809148)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685089735443809150)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685090080742809150)
,p_plug_template_id=>wwv_flow_api.id(4685089735443809150)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685090344862809151)
,p_plug_template_id=>wwv_flow_api.id(4685089735443809150)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685096967477809157)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685097229605809158)
,p_plug_template_id=>wwv_flow_api.id(4685096967477809157)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685097550246809158)
,p_plug_template_id=>wwv_flow_api.id(4685096967477809157)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685102386349809163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685104318524809165)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685104652656809165)
,p_plug_template_id=>wwv_flow_api.id(4685104318524809165)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685106417696809167)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685106716506809167)
,p_plug_template_id=>wwv_flow_api.id(4685106417696809167)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685108787471809168)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685109080952809168)
,p_plug_template_id=>wwv_flow_api.id(4685108787471809168)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685110625219809169)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685111215611809170)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685111580889809170)
,p_plug_template_id=>wwv_flow_api.id(4685111215611809170)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685111758667809170)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685112097960809171)
,p_plug_template_id=>wwv_flow_api.id(4685111758667809170)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685112332325809171)
,p_plug_template_id=>wwv_flow_api.id(4685111758667809170)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685118598729809175)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685118808275809175)
,p_plug_template_id=>wwv_flow_api.id(4685118598729809175)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685119137131809176)
,p_plug_template_id=>wwv_flow_api.id(4685118598729809175)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685121104974809177)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4685122189168809178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(4685122499691809178)
,p_plug_template_id=>wwv_flow_api.id(4685122189168809178)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685144269760809205)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685148287323809209)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685153899717809216)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685155448496809218)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685158283184809221)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685159201423809221)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685159601151809222)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685159838041809222)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685160897991809223)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685162420263809224)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685163425849809225)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4685165078563809227)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685123447693809179)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685123661881809180)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685127637686809186)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685133002497809193)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685134292861809194)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685137276420809197)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685137484989809198)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(4685137484989809198)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685140088973809200)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685140437353809201)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(4685142490805809203)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685166476043809229)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685166594301809229)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685166693750809229)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685166794088809230)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685166858178809230)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685166992293809230)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(4685167043450809230)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(4685169241216809233)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(4685169450979809234)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(4685169365816809233)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(4685170640453809236)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(4685078871529809139)
,p_default_dialog_template=>wwv_flow_api.id(4685074538830809134)
,p_error_template=>wwv_flow_api.id(4685068193746809128)
,p_printer_friendly_template=>wwv_flow_api.id(4685078871529809139)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(4685068193746809128)
,p_default_button_template=>wwv_flow_api.id(4685167880364809231)
,p_default_region_template=>wwv_flow_api.id(4685111758667809170)
,p_default_chart_template=>wwv_flow_api.id(4685111758667809170)
,p_default_form_template=>wwv_flow_api.id(4685111758667809170)
,p_default_reportr_template=>wwv_flow_api.id(4685111758667809170)
,p_default_tabform_template=>wwv_flow_api.id(4685111758667809170)
,p_default_wizard_template=>wwv_flow_api.id(4685111758667809170)
,p_default_menur_template=>wwv_flow_api.id(4685121104974809177)
,p_default_listr_template=>wwv_flow_api.id(4685111758667809170)
,p_default_irr_template=>wwv_flow_api.id(4685110625219809169)
,p_default_report_template=>wwv_flow_api.id(4685137484989809198)
,p_default_label_template=>wwv_flow_api.id(4685166794088809230)
,p_default_menu_template=>wwv_flow_api.id(4685169241216809233)
,p_default_calendar_template=>wwv_flow_api.id(4685169365816809233)
,p_default_list_template=>wwv_flow_api.id(4685153899717809216)
,p_default_nav_list_template=>wwv_flow_api.id(4685162420263809224)
,p_default_top_nav_list_temp=>wwv_flow_api.id(4685162420263809224)
,p_default_side_nav_list_temp=>wwv_flow_api.id(4685159838041809222)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(4685087592293809148)
,p_default_dialogr_template=>wwv_flow_api.id(4685086535039809147)
,p_default_option_label=>wwv_flow_api.id(4685166794088809230)
,p_default_required_label=>wwv_flow_api.id(4685167043450809230)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(4685159601151809222)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.3/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(4685169668098809234)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(4685169890115809235)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(4685170090563809235)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(4685170236979809235)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(4685170430380809235)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685083664698809145)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685084074365809145)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685084647293809146)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685085047467809146)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685088401222809149)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685088857294809149)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685090663170809152)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685091419273809152)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685092620549809153)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685093880254809155)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685094278057809155)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685096272808809156)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685099630310809160)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685100013184809161)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685100869419809162)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685102815743809164)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685103609247809164)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685104992272809165)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685105526423809166)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685107458207809167)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685119457728809176)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685119865363809176)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685120647461809177)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685122755004809179)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685123974569809182)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685124311607809182)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685126331505809184)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685128186287809186)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685129943530809188)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685130772273809189)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685132176193809191)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685133386017809193)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685135988017809196)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685137727455809198)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685138367364809199)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685138757453809199)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685140708144809201)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685144535136809206)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685145763641809207)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685146966227809208)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685148702631809210)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685150757139809212)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685151372860809213)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685152748741809214)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685154911309809218)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685157198574809220)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685163765458809226)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685164375361809226)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685165392485809228)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685167359304809231)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685168300393809232)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685170894864809238)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685171240677809239)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685172828925809240)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685173217586809240)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685174820071809241)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685175264625809242)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685176878489809243)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685177248735809244)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685178800859809245)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685179270095809245)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685179690854809246)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685180071023809246)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685180418200809247)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685180871723809247)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685181297915809247)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685182680378809249)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685184062387809251)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685185075160809251)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685185495755809252)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685185890060809252)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685186258187809252)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685186862371809253)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685187411296809253)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685187823651809255)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685188210134809255)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685188683028809255)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4685189416302809256)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685064931592809125)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(4685062252690809120)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685068047489809128)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(4685065012562809125)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685071945964809132)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(4685068984765809129)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685074456890809134)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(4685072034730809132)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685075796119809136)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(4685074538830809134)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685075926058809136)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(4685074538830809134)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685078754200809139)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(4685076052668809137)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685081298140809141)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(4685078871529809139)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685082557630809143)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(4685081303841809141)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685082752953809143)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(4685081303841809141)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685083469951809145)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685083835220809145)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(4685083664698809145)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685084200138809145)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(4685084074365809145)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685084472120809145)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(4685084074365809145)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685084807857809146)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(4685084647293809146)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685085247700809146)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(4685085047467809146)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685085450764809146)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(4685083664698809145)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685085654387809146)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(4685084647293809146)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685085866978809147)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(4685083664698809145)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685086089319809147)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(4685084647293809146)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685086294628809147)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(4685083664698809145)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685086461990809147)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685082886248809143)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(4685085047467809146)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685088607052809149)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685087592293809148)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685089028040809149)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(4685087592293809148)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(4685088857294809149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685089237117809149)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(4685087592293809148)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685089475679809149)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(4685087592293809148)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(4685088857294809149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685089643649809150)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685087592293809148)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685090801048809152)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(4685090663170809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685091067455809152)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(4685090663170809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685091273073809152)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(4685090663170809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685091651664809152)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685091873624809152)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685092094685809153)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685092250372809153)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(4685090663170809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685092431753809153)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685092870077809153)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685093040661809153)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685093227292809154)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685093412933809154)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685093645662809154)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685094058367809155)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(4685093880254809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685094427089809155)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(4685094278057809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685094603821809155)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(4685093880254809155)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685094864100809156)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685095022994809156)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685095286786809156)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685095411693809156)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(4685094278057809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685095616706809156)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685095876510809156)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685096031596809156)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685096456295809157)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(4685096272808809156)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685096631310809157)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(4685096272808809156)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685096866181809157)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685089735443809150)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685097802215809159)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685098056153809159)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685098241347809159)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685098448657809159)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685098618659809159)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685098887140809160)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685099045847809160)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685099245037809160)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685099445503809160)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685099892214809161)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(4685099630310809160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685100227790809161)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(4685100013184809161)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685100439311809161)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(4685099630310809160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685100678280809161)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(4685094278057809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685101061820809162)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(4685100869419809162)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685101299878809162)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685101449944809162)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685101662548809162)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685101867786809162)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685102071443809163)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(4685094278057809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685102285063809163)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685096967477809157)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685102661535809163)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685103070453809164)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(4685102815743809164)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685103228702809164)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(4685102815743809164)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685103486062809164)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(4685102815743809164)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685103880017809164)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(4685103609247809164)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685104094780809164)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(4685103609247809164)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685104200729809165)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685102386349809163)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685105134395809165)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685104318524809165)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(4685104992272809165)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685105312292809165)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685104318524809165)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685105762073809166)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685104318524809165)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(4685105526423809166)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685105921244809166)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685104318524809165)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(4685105526423809166)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685106118133809166)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685104318524809165)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685106354006809166)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685104318524809165)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685107014542809167)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685107278112809167)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685107608155809167)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685107823565809167)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685108031630809168)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685108221174809168)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685108470874809168)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685108600013809168)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685106417696809167)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685109345031809168)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685109567455809169)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685109788342809169)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685109990785809169)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685110136823809169)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685110354260809169)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685110588358809169)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685108787471809168)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(4685107458207809167)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685110930223809170)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685110625219809169)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685111146122809170)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685110625219809169)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685112615019809171)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685112898989809171)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685113065849809171)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685113276208809172)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(4685091419273809152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685113454063809172)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685113681983809172)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685113879135809172)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685114097965809172)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685114250224809172)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685114403955809172)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685114687460809173)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685114837038809173)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685115002871809173)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685115259053809173)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685115455762809173)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685115690727809173)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685115896429809173)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685116082290809173)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685116253376809174)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(4685092620549809153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685116433523809174)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(4685093880254809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685116644364809174)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(4685094278057809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685116896389809174)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(4685093880254809155)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685117083129809174)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685117227152809174)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685117460315809174)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685117638640809174)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(4685094278057809155)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685117806484809175)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685118054167809175)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685118259314809175)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685118454848809175)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(4685111758667809170)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(4685088401222809149)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685119650590809176)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685118598729809175)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(4685119457728809176)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685120090111809177)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685118598729809175)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(4685119865363809176)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685120205089809177)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685118598729809175)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685120496209809177)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685118598729809175)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(4685119865363809176)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685120816579809177)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685118598729809175)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(4685120647461809177)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685121043716809177)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685118598729809175)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(4685120647461809177)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685121463067809177)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685121104974809177)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(4685102815743809164)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685121691552809178)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685121104974809177)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685121808942809178)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4685121104974809177)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(4685102815743809164)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685122056193809178)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685121104974809177)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685122937919809179)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(4685122189168809178)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(4685122755004809179)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685123113175809179)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685122189168809178)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(4685122755004809179)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685123352106809179)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(4685122189168809178)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685124182691809182)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(4685123974569809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685124558738809182)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685124778747809183)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(4685123974569809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685124991921809183)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685125111423809183)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(4685123974569809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685125377371809183)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685125500001809183)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685125704982809183)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(4685123974569809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685125991019809183)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(4685123974569809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685126106164809184)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685126553191809184)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685126728977809184)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685126968059809184)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685127131243809185)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685127356076809185)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685127519961809185)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685123661881809180)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685127941040809186)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685128386020809186)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(4685128186287809186)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685128599043809186)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685128757056809187)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(4685128186287809186)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685128913478809187)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685129104557809187)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(4685128186287809186)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685129350384809187)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685129534980809187)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685129716380809188)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685130154201809188)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(4685129943530809188)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685130339568809188)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(4685129943530809188)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685130540072809188)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685130958973809190)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(4685130772273809189)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685131186051809190)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(4685130772273809189)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685131333673809190)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685131566550809190)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685131794673809191)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685131938945809191)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(4685128186287809186)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685132301765809192)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(4685132176193809191)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685132549416809192)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(4685132176193809191)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685132716950809192)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685132908746809193)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685127637686809186)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685133569781809193)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685133002497809193)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(4685133386017809193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685133707708809194)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685133002497809193)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(4685132176193809191)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685133906321809194)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685133002497809193)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(4685132176193809191)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685134151979809194)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685133002497809193)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(4685133386017809193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685134583222809194)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685134730963809194)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685134962733809195)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685135167245809195)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685135375357809195)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685135582213809195)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(4685132176193809191)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685135793336809196)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(4685132176193809191)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685136142582809196)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(4685135988017809196)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685136348693809196)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685136582113809197)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685136747657809197)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685136961345809197)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685137185170809197)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(4685134292861809194)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685137934908809198)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(4685137727455809198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685138199864809198)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(4685137727455809198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685138553722809199)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(4685138367364809199)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685138970544809199)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(4685138757453809199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685139148654809199)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(4685138757453809199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685139370028809199)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(4685138757453809199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685139571773809200)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(4685138367364809199)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685139785664809200)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685139942970809200)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685137484989809198)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(4685138757453809199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685140391198809201)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(4685140088973809200)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(4685126331505809184)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685140979268809202)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685141167062809202)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685141369675809202)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685141510272809202)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685141739923809202)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685141966469809203)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685142112860809203)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685142371699809203)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685140437353809201)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685142706676809203)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685142941325809204)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685143149498809204)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685143358355809204)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685143569916809204)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(4685124311607809182)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685143729392809204)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685143992750809204)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685144151068809205)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(4685142490805809203)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(4685140708144809201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685144720569809206)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685144967872809206)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685145122604809206)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685145352565809206)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685145534136809206)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685145900976809207)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685146197221809207)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685146324841809207)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685146529671809207)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685146721176809208)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685147127510809208)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(4685146966227809208)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685147394067809208)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(4685146966227809208)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685147511864809208)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(4685146966227809208)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685147739991809209)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685147957444809209)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(4685146966227809208)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685148110639809209)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(4685144269760809205)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(4685146966227809208)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685148513941809210)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685148992006809210)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(4685148702631809210)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685149148097809210)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685149301168809211)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(4685148702631809210)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685149531171809211)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685149756713809211)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(4685148702631809210)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685149911832809211)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685150160173809211)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685150362575809212)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685150512497809212)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685150972269809212)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(4685150757139809212)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685151142123809212)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685151501955809213)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(4685151372860809213)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685151796251809213)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(4685151372860809213)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685151931309809214)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685152134554809214)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685152388647809214)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685152598376809214)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(4685148702631809210)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685152983110809215)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(4685152748741809214)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685153119817809215)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(4685152748741809214)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685153320442809215)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(4685150757139809212)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685153568977809216)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685153756714809216)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685148287323809209)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685154140634809217)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685153899717809216)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685154370604809217)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685153899717809216)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685154530937809217)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685153899717809216)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685154766613809217)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685153899717809216)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685155110437809218)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685153899717809216)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(4685154911309809218)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685155327521809218)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685153899717809216)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(4685154911309809218)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685155778318809218)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685155979008809219)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685156103835809219)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685156344265809219)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685156539448809219)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685156773392809219)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(4685152748741809214)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685156927454809220)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(4685152748741809214)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685157323081809220)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(4685157198574809220)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685157528799809220)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685157777988809220)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685157994655809220)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685158180646809221)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(4685155448496809218)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685158576675809221)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685158283184809221)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685158717521809221)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685158283184809221)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685158976177809221)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685158283184809221)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685159142894809221)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685158283184809221)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685159590285809222)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685159201423809221)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685160136023809222)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685159838041809222)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685160381009809223)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685159838041809222)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685160517785809223)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685159838041809222)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685160763204809223)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685159838041809222)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685161159217809223)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(4685151372860809213)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685161384762809223)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(4685144535136809206)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685161522320809223)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(4685151372860809213)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685161759023809224)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(4685157198574809220)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685161913195809224)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685162100048809224)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(4685145763641809207)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685162391815809224)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(4685160897991809223)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(4685157198574809220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685162740084809225)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(4685162420263809224)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685162964391809225)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(4685162420263809224)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685163152201809225)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(4685162420263809224)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685163354086809225)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(4685162420263809224)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685163929281809226)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685163425849809225)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(4685163765458809226)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685164162699809226)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(4685163425849809225)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(4685163765458809226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685164544132809226)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685163425849809225)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(4685164375361809226)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685164718497809227)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685163425849809225)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(4685164375361809226)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685164960891809227)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685163425849809225)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(4685164375361809226)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685165546990809228)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685165078563809227)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(4685165392485809228)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685165783630809228)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(4685165078563809227)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(4685165392485809228)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685165909671809228)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(4685165078563809227)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(4685165392485809228)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685166165190809228)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(4685165078563809227)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685166360385809228)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(4685165078563809227)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685167505572809231)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(4685167147284809230)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(4685167359304809231)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685167741081809231)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(4685167147284809230)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(4685167359304809231)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685168152783809232)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(4685167936246809231)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685168585212809232)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(4685167936246809231)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(4685168300393809232)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685168799062809232)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(4685167936246809231)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(4685167359304809231)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685168923661809233)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(4685167936246809231)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(4685168300393809232)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685169134173809233)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(4685167936246809231)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(4685167359304809231)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685171009921809238)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(4685170894864809238)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685171441319809239)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(4685171240677809239)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685171610606809239)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(4685170894864809238)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685171857371809239)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(4685171240677809239)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685172032112809239)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(4685170894864809238)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685172231831809239)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(4685171240677809239)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685172489411809240)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(4685170894864809238)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685172645816809240)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(4685171240677809239)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685173041393809240)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(4685172828925809240)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685173460293809240)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(4685173217586809240)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685173654326809240)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(4685172828925809240)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685173827372809240)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(4685173217586809240)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685174042749809240)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(4685172828925809240)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685174236861809241)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(4685173217586809240)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685174482755809241)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(4685172828925809240)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685174617814809241)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(4685173217586809240)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685175092301809241)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(4685174820071809241)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685175463809809242)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(4685175264625809242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685175663749809242)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(4685174820071809241)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685175895131809242)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(4685175264625809242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685176054131809242)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(4685174820071809241)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685176253798809243)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(4685175264625809242)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685176405360809243)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(4685174820071809241)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685176698906809243)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(4685175264625809242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685177001059809243)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(4685176878489809243)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685177457688809244)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(4685177248735809244)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685177629126809244)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(4685176878489809243)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685177808455809244)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(4685177248735809244)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685178039316809244)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(4685176878489809243)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685178280114809244)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(4685177248735809244)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685178434531809245)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(4685176878489809243)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685178665431809245)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(4685177248735809244)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685179039396809245)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(4685178800859809245)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685179439310809245)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(4685179270095809245)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685179838669809246)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(4685179690854809246)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685180260285809246)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(4685180071023809246)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685180600483809247)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(4685180418200809247)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685181094292809247)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(4685180871723809247)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685181406520809248)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(4685181297915809247)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685181688201809248)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(4685181297915809247)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685181834000809248)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(4685179270095809245)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685182072873809248)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(4685179690854809246)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685182218665809249)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(4685180071023809246)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685182402386809249)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(4685180418200809247)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685182874785809249)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(4685182680378809249)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685183087887809250)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(4685182680378809249)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685183281946809250)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(4685182680378809249)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685183447586809250)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(4685178800859809245)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685183672453809250)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(4685181297915809247)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685183898763809250)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(4685180871723809247)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685184235949809251)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(4685184062387809251)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685184405675809251)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(4685178800859809245)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685184651140809251)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(4685180871723809247)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685184811325809251)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(4685178800859809245)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685185282100809251)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(4685185075160809251)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685185669378809252)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(4685185495755809252)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685186013146809252)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(4685185890060809252)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685186439678809252)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(4685186258187809252)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685186665899809253)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(4685186258187809252)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685187088599809253)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(4685186862371809253)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685187225119809253)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(4685185495755809252)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685187662865809255)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(4685187411296809253)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685188054479809255)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(4685187823651809255)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685188433079809255)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(4685188210134809255)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685188857082809255)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(4685188683028809255)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685189006509809256)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685189272654809256)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(4685187411296809253)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4685189642694809256)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(4685189416302809256)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(4685193326304809270)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(4685021147563809117)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/no_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(4685218370410812863)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/item_type/pl_ostrowskibartosz_apex_enhancedlovitem
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(4996577798669061241)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_display_name=>'APEX Enhanced LOV item'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#enhancedLovItem.js',
'#PLUGIN_FILES#mustache.js'))
,p_css_file_urls=>'#PLUGIN_FILES#enhancedLovItem.css'
,p_api_version=>2
,p_render_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.render'
,p_ajax_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.ajax'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:ELEMENT:WIDTH:PLACEHOLDER:ICON:LOV:LOV_DISPLAY_NULL:CASCADING_LOV:FILTER:LINK'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>111
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4996637819530794760)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Autocomplete Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'RS'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996655004349172755)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows to define what functionalities will be available to end-user in autocomplete mode.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996638391482796109)
,p_plugin_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_display_sequence=>10
,p_display_value=>'Use Custom Search Logic'
,p_return_value=>'UCSL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define extra SQL Query conditions for the query provided in <strong>List of Values > SQL query</strong> attribute.',
'</p>',
'<p>',
'<i>See "Custom search logic" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996638810494797132)
,p_plugin_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_display_sequence=>20
,p_display_value=>'Use Custom Template'
,p_return_value=>'UCT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define HTML template for result row. ',
'</p>',
'<p>',
'<i>See "Custom template" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4997915077687646808)
,p_plugin_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_display_sequence=>30
,p_display_value=>'Limit Displayed Tags'
,p_return_value=>'LDT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define how many values will be rendered as tags in input section, after end-user selects values in autocomplete or popup report. ',
'</p>',
'<p>',
'<i>See "Number of tags" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4998426825940115164)
,p_plugin_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_display_sequence=>40
,p_display_value=>'Minimal Input Length'
,p_return_value=>'MIL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define how many characters is required to perform autocomplete. ',
'</p>',
'<p>',
'<i>See "Minimal input length" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4998498922075471146)
,p_plugin_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_display_sequence=>50
,p_display_value=>'Rapid Selection'
,p_return_value=>'RS'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, pressing <code>Enter</code> key results in selecting value and clearing search input. Right after it is possible to search for next value to select.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4996639163083800369)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Custom Search Logic'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'UCSL'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If SQL query is defined as below:',
'</p>',
'<p>',
'<pre>',
'<code>',
'select',
'  EMPNO r,',
'  ENAME d,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DEPTNO',
'from',
'  emp</code>',
'</pre>',
'</p>',
'<p>',
'The example <strong>Custom search logic</strong> can be defined as:',
'</p>',
'<pre><code>',
'and ( ',
'  d like :SEARCH_STRING||''%''',
'  or to_char(r) = :SEARCH_STRING',
'  or job like ''%''||:SEARCH_STRING||''%''',
')',
'order by',
'  d asc',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute can be used to define custom search logic for autocomplete mode. Conditions should start with operator <code>AND</code> and search phrase provided by end-user should be referenced by <code>:SEARCH_STRING</code> bind variable.',
'</p>',
'<p>',
'If column to filter data has defined alias (in SQL Query) then the alias should be referenced in <strong>Custom Search Logic</strong> .',
'</p>',
'<p>',
'Additionaly you can define order by clause to sort autocomplete results.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4996639797759802799)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>45
,p_prompt=>'Custom Autocomplete Template'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'UCT'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If SQL Query is defined as below:',
'</p>',
'<p>',
'<pre><code>select',
'  EMPNO r,',
'  ENAME d,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DEPTNO',
'from',
'  emp</code></pre>',
'</p>',
'<p>',
'The example <strong>Custom template</strong> can be defined as:',
'</p>',
'<pre><code>return ''<span>(''+this.data.R+'') ''+this.data.D+''</span>'';</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows to define custom HTML template for singular row of data rendered in autocomplete mode. Row columns can be referenced using <code>this.data.COLUMN_NAME</code>, where <code>COLUMN_NAME</code> is column name (or column alias if u'
||'sed) defined in <strong>List of Values > SQL Query</strong> item attribute.',
'</p>',
'<p>',
'All columns names / aliases must be in uppercase.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4996648532400153856)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Default Autocomplete Search'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D%'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'UCSL'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute narrows result set of data in autocomplete mode using <code>like</code> logic and phrase (referenced by <code>:SEARCH_STRING</code>) provided by end-user.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996649424181157360)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>10
,p_display_value=>'DISPLAY_COLUMN %'
,p_return_value=>'D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996649763933158169)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>20
,p_display_value=>'% DISPLAY_COLUMN'
,p_return_value=>'%D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996650158675158935)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>30
,p_display_value=>'% DISPLAY_COLUMN %'
,p_return_value=>'%D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996650634398159558)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>40
,p_display_value=>'DISPLAY_COLUMN'
,p_return_value=>'D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996650977722160822)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>50
,p_display_value=>'RETURN_COLUMN %'
,p_return_value=>'R%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996651356921161946)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>60
,p_display_value=>'% RETURN_COLUMN'
,p_return_value=>'%R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996651776637162633)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>70
,p_display_value=>'% RETURN_COLUMN %'
,p_return_value=>'%R%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING||''%'')',
'or upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996652212112163151)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>80
,p_display_value=>'RETURN_COLUMN'
,p_return_value=>'R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996652591375163763)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>90
,p_display_value=>'DISPLAY_OR_RETURN_COLUMN %'
,p_return_value=>'DR%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING||''%'')',
'or upper(d) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996652957499164433)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>100
,p_display_value=>'% DISPLAY_OR_RETURN_COLUMN'
,p_return_value=>'%DR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING)',
'or upper(d) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996653347081165311)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>110
,p_display_value=>'% DISPLAY_OR_RETURN_COLUMN %'
,p_return_value=>'%DR%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING||''%'')',
'or upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996653776976165970)
,p_plugin_attribute_id=>wwv_flow_api.id(4996648532400153856)
,p_display_sequence=>120
,p_display_value=>'DISPLAY_OR_RETURN_COLUMN'
,p_return_value=>'DR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>upper(r) like upper(:SEARCH_STRING)',
'or upper(d) like upper(:SEARCH_STRING)',
'</code></pre>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4996655004349172755)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>1
,p_prompt=>'General Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows you to define what funcionalities will be available to end-user.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996656378791175213)
,p_plugin_attribute_id=>wwv_flow_api.id(4996655004349172755)
,p_display_sequence=>10
,p_display_value=>'Autocomplete'
,p_return_value=>'AUTOCOMPLETE'
,p_help_text=>'When checked the end-user can perform autocomplete.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996656804741177217)
,p_plugin_attribute_id=>wwv_flow_api.id(4996655004349172755)
,p_display_sequence=>20
,p_display_value=>'Popup Report'
,p_return_value=>'POPOUP_REPORT'
,p_help_text=>'When checked the end-user can select values from popup report.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4996909626080139282)
,p_plugin_attribute_id=>wwv_flow_api.id(4996655004349172755)
,p_display_sequence=>30
,p_display_value=>'Multiple Selection'
,p_return_value=>'MS'
,p_help_text=>'When checked end-user can select multiple values in autocomplete and popup report. Otherwise end-user can select singular value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4996799501683575983)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Popup Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996655004349172755)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'POPOUP_REPORT'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute allows to define what functionalities will be available to end-user in popup report mode.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4997292841705433534)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>20
,p_display_value=>'Report Columns Configuration'
,p_return_value=>'RCC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to configure column properties in popup report. Available options are:',
'</p>',
'<ul>',
'<li>set default order and direction for data displayed in popup report,</li>',
'<li>set visibility of column in popup report,</li>',
'<li>set heading of column in popup report,</li>',
'<li>set header aligment of column in popup report,</li>',
'<li>set cell aligment of column in popup report,</li>',
'<li>set whether it is possible to filter column in popup report,</li>',
'<li>set whether it is possible to sort column in popup report.</li>',
'</ul>',
'<p>',
'  If property of column is not defined, the plugin uses default value. ',
'</p>',
'<p>',
'<i>See "Report Columns Configuration" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4997305796843197051)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>50
,p_display_value=>'Clicking On Row Selects It'
,p_return_value=>'CORSI'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, clicking on row in popup report selects radio / checkbox input.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999420661429089811)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>60
,p_display_value=>'Custom Title'
,p_return_value=>'CT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to set custom title for popup report. Otherwise input label is used.',
'</p>',
'<p>',
'See "Custom title" attribute help text to learn more.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999476294229157532)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>70
,p_display_value=>'Resizable'
,p_return_value=>'RESIZABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to resize popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999476643944166208)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>80
,p_display_value=>'Draggable'
,p_return_value=>'DRAGGABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change position of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999477133171167226)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>90
,p_display_value=>'Close On Escape'
,p_return_value=>'COE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible close popup report by pressing <code>Escape</code> key.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999510858805251206)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>100
,p_display_value=>'Rows Per Page'
,p_return_value=>'RPP'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change amount of rows rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999511293640252818)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>110
,p_display_value=>'Search In All Columns'
,p_return_value=>'SIAC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to search for given phrase in all columns of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999664723946953059)
,p_plugin_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_display_sequence=>120
,p_display_value=>'Adjust Height To Report Rows'
,p_return_value=>'AHTRR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, popup report adjusts its height its content height.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4997293315897441923)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Report Columns Configuration'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'RCC'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  If SQL Query is defined as below:',
'</p>',
'<pre><code>select',
'  EMPNO r,',
'  ENAME d,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DEPTNO',
'from',
'  emp</code></pre>',
'<p>',
'  The example JSON object describing popup report might be defined as below:',
'</p>',
'<pre><code>{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Employee name",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "JOB": {',
'      "visible": true,',
'      "heading": "Position",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "HIREDATE": {',
'      "visible": true,',
'      "heading": "Hire date",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    },',
'    "SAL": {',
'      "visible": true,',
'      "heading": "Salary",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    }    ',
'  }',
'}</code></pre>',
'<p>',
'  In result report will show only 4 columns, but all columns from SQL Query will be available in autocomplete custom search. ',
'</p>',
'<p>',
'  Thanks to this you can define SQL Query as',
'</p>',
'<pre><code>select',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp',
'</code></pre>',
'<p>',
'  and define what columns should be available in popup report.',
'</p>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute defines configuration of all columns using JSON syntax.',
'</p>',
'<p>',
'JSON object structure is as below:',
'</p>',
'<pre><code>{',
'  "defaultSort": {',
'    "column": "COLUMN_NAME",',
'    "direction": "DIRECTION"',
'  },',
'  "columns": {',
'    "COLUMN_NAME": {',
'      "heading": "HEADING",',
'      "visible": VISIBILITY,',
'      "thAlign": "ALIGMENT",',
'      "tdAlign": "ALIGMENT",',
'      "sort"   : SORT,',
'      "filter" : FILTER',
'    },',
'    ...',
'}</code></pre>',
'<p>',
'where:',
'<ul>',
'  <li><code>COLUMN_NAME</code> (String);',
'  <li><code>VISIBILITY</code> (Boolean);',
'  <li><code>DIRECTION</code> (String);',
'  <li><code>HEADING</code> (String);',
'  <li><code>ALIGMENT</code> (String);',
'  <li><code>SORT</code> (Boolean);',
'  <li><code>FILTER</code> (Boolean);',
'</ul>',
'</p>',
'',
'<dl>',
'  <dt>defaultSort</dt>',
'  <dd>',
'    <i>',
'      Object is not required.',
'      When provided, all attributes (column and direction) are required. ',
'      When not provided default sort will be applied to first column with direction <code>asc</code>.',
'',
'    </i> ',
'  </dd>',
'  <dt>defaultSort.column</dt>',
'  <dd>',
'    <i>Property is required.</i> <br />',
'    Value should reference column name or alias used in <strong>List of Values > SQL Query</strong>. Column name or alias must be uppercase.',
'  </dd>',
'  <dt>defaultSort.direction</dt>',
'  <dd>',
'    <i>Property is required.</i> <br />',
'    Value can be <code>asc</code> or <code>desc</code>',
'  </dd>',
'  <dt>columns</dt>',
'  <dd>',
'    <i>Object is not required. When not provided all columns from <strong>List of Values > SQL Query</strong> will be rendered with default values for each column property.</i>',
'  </dd>',
'  <dt>columns.COLUMN_NAME</dt>',
'  <dd>',
'    <i>Object is not required.</i> <br />',
'    All columns defined in <strong>List of Values > SQL Query</strong> without definition as <code>COLUMN_NAME</code> object won''t be rendered.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.heading</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the column name / alias will be used for column header text. </i><br />',
'    Given string determines header text for column used in popup report. <br />',
'  </dd>',
'  <dt>columns.COLUMN_NAME.visible</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default value <code>true</code> is set.</i> <br />',
'    Given value determines whether column is rendered.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.thAlign</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default aligment <code>left</code> is set.</i> <br />',
'    Given value determines header aligment.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.tdAlign</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default aligment <code>left</code> is set.</i> <br />',
'    Given value determines cell aligment.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.sort</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default value <code>false</code> is set.</i><br />',
'    Given value determines whether column sorting via column header is available to end-user.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.filter</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default value <code>false</code> is set.</i><br />',
'    Given value determines whether column filtering via column header is available to end-user.',
'  </dd>',
'',
'</dl>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4997915493112652300)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>15
,p_prompt=>'Number Of Tags'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'LDT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Provided numeric value is used to determine how many tags will be rendered after end-user select values. If the number of selected values is greater then provided value, new summary tag will be rendered with text <strong>and X more...</strong> wher'
||'e <strong>X</strong> is number of not rendered (but selected) tags.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4998427224410165272)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>11
,p_prompt=>'Minimal Input Length'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_unit=>'Characters'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996637819530794760)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'MIL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Provided numeric value is used to determine when autocomplete should be performed.</p>',
'<ul>',
'  <li>When value is equal <strong>0</strong> the autocomplete shows message <strong>Start typing to get results.</strong>.</li>',
'  <li>When value is greater then <strong>0</strong> the autocomplete shows message <strong>Please enter X or more characters.</strong> where <strong>X</strong> is provided value.</li>',
'</ul>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4999307032840331947)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Report Basic Configuration'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'DDC:DRC'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'RCC'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute defines whether columns with alias <code>D</code> and <code>R</code> are rendered in popup report.',
'</p>',
'<p>',
'<i>This attribute is available only when <strong>Popup settings > Report Columns Configuration</b> is not checked.</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999307311211332859)
,p_plugin_attribute_id=>wwv_flow_api.id(4999307032840331947)
,p_display_sequence=>10
,p_display_value=>'Display "Display" Column'
,p_return_value=>'DDC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>D</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4999307641407333489)
,p_plugin_attribute_id=>wwv_flow_api.id(4999307032840331947)
,p_display_sequence=>20
,p_display_value=>'Display "Return" Column'
,p_return_value=>'DRC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>R</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4999421057172093092)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Custom Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'CT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5003493278842531502)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>62
,p_prompt=>'Dialog Width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'720'
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996655004349172755)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'POPOUP_REPORT'
,p_help_text=>'This attribute defines popup dialog width.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5003524199523533133)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>64
,p_prompt=>'Dialog Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'541'
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4996799501683575983)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'AHTRR'
,p_help_text=>'This attribute defines popup dialog height.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(4996582505066966884)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'LOV'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969266047483044585)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_popup_data_rendered'
,p_display_name=>'Popup report data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969265390026044584)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_popup_error'
,p_display_name=>'Popup report error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969265695335044585)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_popup_hidden'
,p_display_name=>'Popup report closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969266464729044585)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_popup_shown'
,p_display_name=>'Popup report open'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969268078282044587)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_prompt_data_appended'
,p_display_name=>'Autocomplete data appended'
);
end;
/
begin
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969268454814044587)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_prompt_data_rendered'
,p_display_name=>'Autocomplete data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969267644491044586)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_prompt_error'
,p_display_name=>'Autocomplete error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969267282175044586)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_prompt_hidden'
,p_display_name=>'Autocomplete closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4969266835079044586)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_name=>'paeli_prompt_shown'
,p_display_name=>'Autocomplete open'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E20646566696E654D7573746163686528676C6F62616C2C666163746F7279297B696628747970656F66206578706F7274733D3D3D226F626A6563742226266578706F7274732626747970656F66206578706F7274732E6E6F64654E';
wwv_flow_api.g_varchar2_table(2) := '616D65213D3D22737472696E6722297B666163746F7279286578706F727473297D656C736520696628747970656F6620646566696E653D3D3D2266756E6374696F6E222626646566696E652E616D64297B646566696E65285B226578706F727473225D2C';
wwv_flow_api.g_varchar2_table(3) := '666163746F7279297D656C73657B676C6F62616C2E4D757374616368653D7B7D3B666163746F727928676C6F62616C2E4D75737461636865297D7D2928746869732C66756E6374696F6E206D75737461636865466163746F7279286D7573746163686529';
wwv_flow_api.g_varchar2_table(4) := '7B766172206F626A656374546F537472696E673D4F626A6563742E70726F746F747970652E746F537472696E673B76617220697341727261793D41727261792E697341727261797C7C66756E6374696F6E2069734172726179506F6C7966696C6C286F62';
wwv_flow_api.g_varchar2_table(5) := '6A656374297B72657475726E206F626A656374546F537472696E672E63616C6C286F626A656374293D3D3D225B6F626A6563742041727261795D227D3B66756E6374696F6E20697346756E6374696F6E286F626A656374297B72657475726E2074797065';
wwv_flow_api.g_varchar2_table(6) := '6F66206F626A6563743D3D3D2266756E6374696F6E227D66756E6374696F6E2074797065537472286F626A297B72657475726E2069734172726179286F626A293F226172726179223A747970656F66206F626A7D66756E6374696F6E2065736361706552';
wwv_flow_api.g_varchar2_table(7) := '656745787028737472696E67297B72657475726E20737472696E672E7265706C616365282F5B5C2D5C5B5C5D7B7D28292A2B3F2E2C5C5C5C5E247C235C735D2F672C225C5C242622297D66756E6374696F6E2068617350726F7065727479286F626A2C70';
wwv_flow_api.g_varchar2_table(8) := '726F704E616D65297B72657475726E206F626A213D6E756C6C2626747970656F66206F626A3D3D3D226F626A65637422262670726F704E616D6520696E206F626A7D76617220726567457870546573743D5265674578702E70726F746F747970652E7465';
wwv_flow_api.g_varchar2_table(9) := '73743B66756E6374696F6E20746573745265674578702872652C737472696E67297B72657475726E20726567457870546573742E63616C6C2872652C737472696E67297D766172206E6F6E537061636552653D2F5C532F3B66756E6374696F6E20697357';
wwv_flow_api.g_varchar2_table(10) := '68697465737061636528737472696E67297B72657475726E2174657374526567457870286E6F6E537061636552652C737472696E67297D76617220656E746974794D61703D7B2226223A2226616D703B222C223C223A22266C743B222C223E223A222667';
wwv_flow_api.g_varchar2_table(11) := '743B222C2722273A222671756F743B222C2227223A22262333393B222C222F223A2226237832463B222C2260223A2226237836303B222C223D223A2226237833443B227D3B66756E6374696F6E2065736361706548746D6C28737472696E67297B726574';
wwv_flow_api.g_varchar2_table(12) := '75726E20537472696E6728737472696E67292E7265706C616365282F5B263C3E2227603D5C2F5D2F672C66756E6374696F6E2066726F6D456E746974794D61702873297B72657475726E20656E746974794D61705B735D7D297D76617220776869746552';
wwv_flow_api.g_varchar2_table(13) := '653D2F5C732A2F3B76617220737061636552653D2F5C732B2F3B76617220657175616C7352653D2F5C732A3D2F3B766172206375726C7952653D2F5C732A5C7D2F3B7661722074616752653D2F237C5C5E7C5C2F7C3E7C5C7B7C267C3D7C212F3B66756E';
wwv_flow_api.g_varchar2_table(14) := '6374696F6E20706172736554656D706C6174652874656D706C6174652C74616773297B6966282174656D706C6174652972657475726E5B5D3B7661722073656374696F6E733D5B5D3B76617220746F6B656E733D5B5D3B766172207370616365733D5B5D';
wwv_flow_api.g_varchar2_table(15) := '3B766172206861735461673D66616C73653B766172206E6F6E53706163653D66616C73653B66756E6374696F6E207374726970537061636528297B6966286861735461672626216E6F6E5370616365297B7768696C65287370616365732E6C656E677468';
wwv_flow_api.g_varchar2_table(16) := '2964656C65746520746F6B656E735B7370616365732E706F7028295D7D656C73657B7370616365733D5B5D7D6861735461673D66616C73653B6E6F6E53706163653D66616C73657D766172206F70656E696E6754616752652C636C6F73696E6754616752';
wwv_flow_api.g_varchar2_table(17) := '652C636C6F73696E674375726C7952653B66756E6374696F6E20636F6D70696C65546167732874616773546F436F6D70696C65297B696628747970656F662074616773546F436F6D70696C653D3D3D22737472696E67222974616773546F436F6D70696C';
wwv_flow_api.g_varchar2_table(18) := '653D74616773546F436F6D70696C652E73706C697428737061636552652C32293B69662821697341727261792874616773546F436F6D70696C65297C7C74616773546F436F6D70696C652E6C656E677468213D3D32297468726F77206E6577204572726F';
wwv_flow_api.g_varchar2_table(19) := '722822496E76616C696420746167733A20222B74616773546F436F6D70696C65293B6F70656E696E6754616752653D6E657720526567457870286573636170655265674578702874616773546F436F6D70696C655B305D292B225C5C732A22293B636C6F';
wwv_flow_api.g_varchar2_table(20) := '73696E6754616752653D6E65772052656745787028225C5C732A222B6573636170655265674578702874616773546F436F6D70696C655B315D29293B636C6F73696E674375726C7952653D6E65772052656745787028225C5C732A222B65736361706552';
wwv_flow_api.g_varchar2_table(21) := '656745787028227D222B74616773546F436F6D70696C655B315D29297D636F6D70696C655461677328746167737C7C6D757374616368652E74616773293B766172207363616E6E65723D6E6577205363616E6E65722874656D706C617465293B76617220';
wwv_flow_api.g_varchar2_table(22) := '73746172742C747970652C76616C75652C6368722C746F6B656E2C6F70656E53656374696F6E3B7768696C6528217363616E6E65722E656F732829297B73746172743D7363616E6E65722E706F733B76616C75653D7363616E6E65722E7363616E556E74';
wwv_flow_api.g_varchar2_table(23) := '696C286F70656E696E675461675265293B69662876616C7565297B666F722876617220693D302C76616C75654C656E6774683D76616C75652E6C656E6774683B693C76616C75654C656E6774683B2B2B69297B6368723D76616C75652E63686172417428';
wwv_flow_api.g_varchar2_table(24) := '69293B6966286973576869746573706163652863687229297B7370616365732E7075736828746F6B656E732E6C656E677468297D656C73657B6E6F6E53706163653D747275657D746F6B656E732E70757368285B2274657874222C6368722C7374617274';
wwv_flow_api.g_varchar2_table(25) := '2C73746172742B315D293B73746172742B3D313B6966286368723D3D3D225C6E22297374726970537061636528297D7D696628217363616E6E65722E7363616E286F70656E696E6754616752652929627265616B3B6861735461673D747275653B747970';
wwv_flow_api.g_varchar2_table(26) := '653D7363616E6E65722E7363616E287461675265297C7C226E616D65223B7363616E6E65722E7363616E2877686974655265293B696628747970653D3D3D223D22297B76616C75653D7363616E6E65722E7363616E556E74696C28657175616C73526529';
wwv_flow_api.g_varchar2_table(27) := '3B7363616E6E65722E7363616E28657175616C735265293B7363616E6E65722E7363616E556E74696C28636C6F73696E675461675265297D656C736520696628747970653D3D3D227B22297B76616C75653D7363616E6E65722E7363616E556E74696C28';
wwv_flow_api.g_varchar2_table(28) := '636C6F73696E674375726C795265293B7363616E6E65722E7363616E286375726C795265293B7363616E6E65722E7363616E556E74696C28636C6F73696E675461675265293B747970653D2226227D656C73657B76616C75653D7363616E6E65722E7363';
wwv_flow_api.g_varchar2_table(29) := '616E556E74696C28636C6F73696E675461675265297D696628217363616E6E65722E7363616E28636C6F73696E67546167526529297468726F77206E6577204572726F722822556E636C6F7365642074616720617420222B7363616E6E65722E706F7329';
wwv_flow_api.g_varchar2_table(30) := '3B746F6B656E3D5B747970652C76616C75652C73746172742C7363616E6E65722E706F735D3B746F6B656E732E7075736828746F6B656E293B696628747970653D3D3D2223227C7C747970653D3D3D225E22297B73656374696F6E732E7075736828746F';
wwv_flow_api.g_varchar2_table(31) := '6B656E297D656C736520696628747970653D3D3D222F22297B6F70656E53656374696F6E3D73656374696F6E732E706F7028293B696628216F70656E53656374696F6E297468726F77206E6577204572726F722827556E6F70656E65642073656374696F';
wwv_flow_api.g_varchar2_table(32) := '6E2022272B76616C75652B272220617420272B7374617274293B6966286F70656E53656374696F6E5B315D213D3D76616C7565297468726F77206E6577204572726F722827556E636C6F7365642073656374696F6E2022272B6F70656E53656374696F6E';
wwv_flow_api.g_varchar2_table(33) := '5B315D2B272220617420272B7374617274297D656C736520696628747970653D3D3D226E616D65227C7C747970653D3D3D227B227C7C747970653D3D3D222622297B6E6F6E53706163653D747275657D656C736520696628747970653D3D3D223D22297B';
wwv_flow_api.g_varchar2_table(34) := '636F6D70696C65546167732876616C7565297D7D6F70656E53656374696F6E3D73656374696F6E732E706F7028293B6966286F70656E53656374696F6E297468726F77206E6577204572726F722827556E636C6F7365642073656374696F6E2022272B6F';
wwv_flow_api.g_varchar2_table(35) := '70656E53656374696F6E5B315D2B272220617420272B7363616E6E65722E706F73293B72657475726E206E657374546F6B656E7328737175617368546F6B656E7328746F6B656E7329297D66756E6374696F6E20737175617368546F6B656E7328746F6B';
wwv_flow_api.g_varchar2_table(36) := '656E73297B766172207371756173686564546F6B656E733D5B5D3B76617220746F6B656E2C6C617374546F6B656E3B666F722876617220693D302C6E756D546F6B656E733D746F6B656E732E6C656E6774683B693C6E756D546F6B656E733B2B2B69297B';
wwv_flow_api.g_varchar2_table(37) := '746F6B656E3D746F6B656E735B695D3B696628746F6B656E297B696628746F6B656E5B305D3D3D3D22746578742226266C617374546F6B656E26266C617374546F6B656E5B305D3D3D3D227465787422297B6C617374546F6B656E5B315D2B3D746F6B65';
wwv_flow_api.g_varchar2_table(38) := '6E5B315D3B6C617374546F6B656E5B335D3D746F6B656E5B335D7D656C73657B7371756173686564546F6B656E732E7075736828746F6B656E293B6C617374546F6B656E3D746F6B656E7D7D7D72657475726E207371756173686564546F6B656E737D66';
wwv_flow_api.g_varchar2_table(39) := '756E6374696F6E206E657374546F6B656E7328746F6B656E73297B766172206E6573746564546F6B656E733D5B5D3B76617220636F6C6C6563746F723D6E6573746564546F6B656E733B7661722073656374696F6E733D5B5D3B76617220746F6B656E2C';
wwv_flow_api.g_varchar2_table(40) := '73656374696F6E3B666F722876617220693D302C6E756D546F6B656E733D746F6B656E732E6C656E6774683B693C6E756D546F6B656E733B2B2B69297B746F6B656E3D746F6B656E735B695D3B73776974636828746F6B656E5B305D297B636173652223';
wwv_flow_api.g_varchar2_table(41) := '223A63617365225E223A636F6C6C6563746F722E7075736828746F6B656E293B73656374696F6E732E7075736828746F6B656E293B636F6C6C6563746F723D746F6B656E5B345D3D5B5D3B627265616B3B63617365222F223A73656374696F6E3D736563';
wwv_flow_api.g_varchar2_table(42) := '74696F6E732E706F7028293B73656374696F6E5B355D3D746F6B656E5B325D3B636F6C6C6563746F723D73656374696F6E732E6C656E6774683E303F73656374696F6E735B73656374696F6E732E6C656E6774682D315D5B345D3A6E6573746564546F6B';
wwv_flow_api.g_varchar2_table(43) := '656E733B627265616B3B64656661756C743A636F6C6C6563746F722E7075736828746F6B656E297D7D72657475726E206E6573746564546F6B656E737D66756E6374696F6E205363616E6E657228737472696E67297B746869732E737472696E673D7374';
wwv_flow_api.g_varchar2_table(44) := '72696E673B746869732E7461696C3D737472696E673B746869732E706F733D307D5363616E6E65722E70726F746F747970652E656F733D66756E6374696F6E20656F7328297B72657475726E20746869732E7461696C3D3D3D22227D3B5363616E6E6572';
wwv_flow_api.g_varchar2_table(45) := '2E70726F746F747970652E7363616E3D66756E6374696F6E207363616E287265297B766172206D617463683D746869732E7461696C2E6D61746368287265293B696628216D617463687C7C6D617463682E696E646578213D3D302972657475726E22223B';
wwv_flow_api.g_varchar2_table(46) := '76617220737472696E673D6D617463685B305D3B746869732E7461696C3D746869732E7461696C2E737562737472696E6728737472696E672E6C656E677468293B746869732E706F732B3D737472696E672E6C656E6774683B72657475726E2073747269';
wwv_flow_api.g_varchar2_table(47) := '6E677D3B5363616E6E65722E70726F746F747970652E7363616E556E74696C3D66756E6374696F6E207363616E556E74696C287265297B76617220696E6465783D746869732E7461696C2E736561726368287265292C6D617463683B7377697463682869';
wwv_flow_api.g_varchar2_table(48) := '6E646578297B636173652D313A6D617463683D746869732E7461696C3B746869732E7461696C3D22223B627265616B3B6361736520303A6D617463683D22223B627265616B3B64656661756C743A6D617463683D746869732E7461696C2E737562737472';
wwv_flow_api.g_varchar2_table(49) := '696E6728302C696E646578293B746869732E7461696C3D746869732E7461696C2E737562737472696E6728696E646578297D746869732E706F732B3D6D617463682E6C656E6774683B72657475726E206D617463687D3B66756E6374696F6E20436F6E74';
wwv_flow_api.g_varchar2_table(50) := '65787428766965772C706172656E74436F6E74657874297B746869732E766965773D766965773B746869732E63616368653D7B222E223A746869732E766965777D3B746869732E706172656E743D706172656E74436F6E746578747D436F6E746578742E';
wwv_flow_api.g_varchar2_table(51) := '70726F746F747970652E707573683D66756E6374696F6E20707573682876696577297B72657475726E206E657720436F6E7465787428766965772C74686973297D3B436F6E746578742E70726F746F747970652E6C6F6F6B75703D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(52) := '6C6F6F6B7570286E616D65297B7661722063616368653D746869732E63616368653B7661722076616C75653B69662863616368652E6861734F776E50726F7065727479286E616D6529297B76616C75653D63616368655B6E616D655D7D656C73657B7661';
wwv_flow_api.g_varchar2_table(53) := '7220636F6E746578743D746869732C6E616D65732C696E6465782C6C6F6F6B75704869743D66616C73653B7768696C6528636F6E74657874297B6966286E616D652E696E6465784F6628222E22293E30297B76616C75653D636F6E746578742E76696577';
wwv_flow_api.g_varchar2_table(54) := '3B6E616D65733D6E616D652E73706C697428222E22293B696E6465783D303B7768696C652876616C7565213D6E756C6C2626696E6465783C6E616D65732E6C656E677468297B696628696E6465783D3D3D6E616D65732E6C656E6774682D31296C6F6F6B';
wwv_flow_api.g_varchar2_table(55) := '75704869743D68617350726F70657274792876616C75652C6E616D65735B696E6465785D293B76616C75653D76616C75655B6E616D65735B696E6465782B2B5D5D7D7D656C73657B76616C75653D636F6E746578742E766965775B6E616D655D3B6C6F6F';
wwv_flow_api.g_varchar2_table(56) := '6B75704869743D68617350726F706572747928636F6E746578742E766965772C6E616D65297D6966286C6F6F6B757048697429627265616B3B636F6E746578743D636F6E746578742E706172656E747D63616368655B6E616D655D3D76616C75657D6966';
wwv_flow_api.g_varchar2_table(57) := '28697346756E6374696F6E2876616C7565292976616C75653D76616C75652E63616C6C28746869732E76696577293B72657475726E2076616C75657D3B66756E6374696F6E2057726974657228297B746869732E63616368653D7B7D7D5772697465722E';
wwv_flow_api.g_varchar2_table(58) := '70726F746F747970652E636C65617243616368653D66756E6374696F6E20636C656172436163686528297B746869732E63616368653D7B7D7D3B5772697465722E70726F746F747970652E70617273653D66756E6374696F6E2070617273652874656D70';
wwv_flow_api.g_varchar2_table(59) := '6C6174652C74616773297B7661722063616368653D746869732E63616368653B76617220746F6B656E733D63616368655B74656D706C6174655D3B696628746F6B656E733D3D6E756C6C29746F6B656E733D63616368655B74656D706C6174655D3D7061';
wwv_flow_api.g_varchar2_table(60) := '72736554656D706C6174652874656D706C6174652C74616773293B72657475726E20746F6B656E737D3B5772697465722E70726F746F747970652E72656E6465723D66756E6374696F6E2072656E6465722874656D706C6174652C766965772C70617274';
wwv_flow_api.g_varchar2_table(61) := '69616C73297B76617220746F6B656E733D746869732E70617273652874656D706C617465293B76617220636F6E746578743D7669657720696E7374616E63656F6620436F6E746578743F766965773A6E657720436F6E746578742876696577293B726574';
wwv_flow_api.g_varchar2_table(62) := '75726E20746869732E72656E646572546F6B656E7328746F6B656E732C636F6E746578742C7061727469616C732C74656D706C617465297D3B5772697465722E70726F746F747970652E72656E646572546F6B656E733D66756E6374696F6E2072656E64';
wwv_flow_api.g_varchar2_table(63) := '6572546F6B656E7328746F6B656E732C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297B766172206275666665723D22223B76617220746F6B656E2C73796D626F6C2C76616C75653B666F722876617220693D302C';
wwv_flow_api.g_varchar2_table(64) := '6E756D546F6B656E733D746F6B656E732E6C656E6774683B693C6E756D546F6B656E733B2B2B69297B76616C75653D756E646566696E65643B746F6B656E3D746F6B656E735B695D3B73796D626F6C3D746F6B656E5B305D3B69662873796D626F6C3D3D';
wwv_flow_api.g_varchar2_table(65) := '3D2223222976616C75653D746869732E72656E64657253656374696F6E28746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465293B656C73652069662873796D626F6C3D3D3D225E222976616C75653D7468';
wwv_flow_api.g_varchar2_table(66) := '69732E72656E646572496E76657274656428746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465293B656C73652069662873796D626F6C3D3D3D223E222976616C75653D746869732E72656E646572506172';
wwv_flow_api.g_varchar2_table(67) := '7469616C28746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465293B656C73652069662873796D626F6C3D3D3D2226222976616C75653D746869732E756E6573636170656456616C756528746F6B656E2C63';
wwv_flow_api.g_varchar2_table(68) := '6F6E74657874293B656C73652069662873796D626F6C3D3D3D226E616D65222976616C75653D746869732E6573636170656456616C756528746F6B656E2C636F6E74657874293B656C73652069662873796D626F6C3D3D3D2274657874222976616C7565';
wwv_flow_api.g_varchar2_table(69) := '3D746869732E72617756616C756528746F6B656E293B69662876616C7565213D3D756E646566696E6564296275666665722B3D76616C75657D72657475726E206275666665727D3B5772697465722E70726F746F747970652E72656E6465725365637469';
wwv_flow_api.g_varchar2_table(70) := '6F6E3D66756E6374696F6E2072656E64657253656374696F6E28746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297B7661722073656C663D746869733B766172206275666665723D22223B7661722076';
wwv_flow_api.g_varchar2_table(71) := '616C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B66756E6374696F6E2073756252656E6465722874656D706C617465297B72657475726E2073656C662E72656E6465722874656D706C6174652C636F6E746578742C7061727469';
wwv_flow_api.g_varchar2_table(72) := '616C73297D6966282176616C75652972657475726E3B696628697341727261792876616C756529297B666F7228766172206A3D302C76616C75654C656E6774683D76616C75652E6C656E6774683B6A3C76616C75654C656E6774683B2B2B6A297B627566';
wwv_flow_api.g_varchar2_table(73) := '6665722B3D746869732E72656E646572546F6B656E7328746F6B656E5B345D2C636F6E746578742E707573682876616C75655B6A5D292C7061727469616C732C6F726967696E616C54656D706C617465297D7D656C736520696628747970656F66207661';
wwv_flow_api.g_varchar2_table(74) := '6C75653D3D3D226F626A656374227C7C747970656F662076616C75653D3D3D22737472696E67227C7C747970656F662076616C75653D3D3D226E756D62657222297B6275666665722B3D746869732E72656E646572546F6B656E7328746F6B656E5B345D';
wwv_flow_api.g_varchar2_table(75) := '2C636F6E746578742E707573682876616C7565292C7061727469616C732C6F726967696E616C54656D706C617465297D656C736520696628697346756E6374696F6E2876616C756529297B696628747970656F66206F726967696E616C54656D706C6174';
wwv_flow_api.g_varchar2_table(76) := '65213D3D22737472696E6722297468726F77206E6577204572726F72282243616E6E6F7420757365206869676865722D6F726465722073656374696F6E7320776974686F757420746865206F726967696E616C2074656D706C61746522293B76616C7565';
wwv_flow_api.g_varchar2_table(77) := '3D76616C75652E63616C6C28636F6E746578742E766965772C6F726967696E616C54656D706C6174652E736C69636528746F6B656E5B335D2C746F6B656E5B355D292C73756252656E646572293B69662876616C7565213D6E756C6C296275666665722B';
wwv_flow_api.g_varchar2_table(78) := '3D76616C75657D656C73657B6275666665722B3D746869732E72656E646572546F6B656E7328746F6B656E5B345D2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297D72657475726E206275666665727D3B577269';
wwv_flow_api.g_varchar2_table(79) := '7465722E70726F746F747970652E72656E646572496E7665727465643D66756E6374696F6E2072656E646572496E76657274656428746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297B766172207661';
wwv_flow_api.g_varchar2_table(80) := '6C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B6966282176616C75657C7C697341727261792876616C756529262676616C75652E6C656E6774683D3D3D302972657475726E20746869732E72656E646572546F6B656E7328746F';
wwv_flow_api.g_varchar2_table(81) := '6B656E5B345D2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297D3B5772697465722E70726F746F747970652E72656E6465725061727469616C3D66756E6374696F6E2072656E6465725061727469616C28746F6B';
wwv_flow_api.g_varchar2_table(82) := '656E2C636F6E746578742C7061727469616C73297B696628217061727469616C732972657475726E3B7661722076616C75653D697346756E6374696F6E287061727469616C73293F7061727469616C7328746F6B656E5B315D293A7061727469616C735B';
wwv_flow_api.g_varchar2_table(83) := '746F6B656E5B315D5D3B69662876616C7565213D6E756C6C2972657475726E20746869732E72656E646572546F6B656E7328746869732E70617273652876616C7565292C636F6E746578742C7061727469616C732C76616C7565297D3B5772697465722E';
wwv_flow_api.g_varchar2_table(84) := '70726F746F747970652E756E6573636170656456616C75653D66756E6374696F6E20756E6573636170656456616C756528746F6B656E2C636F6E74657874297B7661722076616C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B69';
wwv_flow_api.g_varchar2_table(85) := '662876616C7565213D6E756C6C2972657475726E2076616C75657D3B5772697465722E70726F746F747970652E6573636170656456616C75653D66756E6374696F6E206573636170656456616C756528746F6B656E2C636F6E74657874297B7661722076';
wwv_flow_api.g_varchar2_table(86) := '616C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B69662876616C7565213D6E756C6C2972657475726E206D757374616368652E6573636170652876616C7565297D3B5772697465722E70726F746F747970652E72617756616C75';
wwv_flow_api.g_varchar2_table(87) := '653D66756E6374696F6E2072617756616C756528746F6B656E297B72657475726E20746F6B656E5B315D7D3B6D757374616368652E6E616D653D226D757374616368652E6A73223B6D757374616368652E76657273696F6E3D22322E322E31223B6D7573';
wwv_flow_api.g_varchar2_table(88) := '74616368652E746167733D5B227B7B222C227D7D225D3B7661722064656661756C745772697465723D6E6577205772697465723B6D757374616368652E636C65617243616368653D66756E6374696F6E20636C656172436163686528297B72657475726E';
wwv_flow_api.g_varchar2_table(89) := '2064656661756C745772697465722E636C656172436163686528297D3B6D757374616368652E70617273653D66756E6374696F6E2070617273652874656D706C6174652C74616773297B72657475726E2064656661756C745772697465722E7061727365';
wwv_flow_api.g_varchar2_table(90) := '2874656D706C6174652C74616773297D3B6D757374616368652E72656E6465723D66756E6374696F6E2072656E6465722874656D706C6174652C766965772C7061727469616C73297B696628747970656F662074656D706C617465213D3D22737472696E';
wwv_flow_api.g_varchar2_table(91) := '6722297B7468726F77206E657720547970654572726F722827496E76616C69642074656D706C617465212054656D706C6174652073686F756C6420626520612022737472696E672220272B276275742022272B747970655374722874656D706C61746529';
wwv_flow_api.g_varchar2_table(92) := '2B27222077617320676976656E2061732074686520666972737420272B22617267756D656E7420666F72206D757374616368652372656E6465722874656D706C6174652C20766965772C207061727469616C732922297D72657475726E2064656661756C';
wwv_flow_api.g_varchar2_table(93) := '745772697465722E72656E6465722874656D706C6174652C766965772C7061727469616C73297D3B6D757374616368652E746F5F68746D6C3D66756E6374696F6E20746F5F68746D6C2874656D706C6174652C766965772C7061727469616C732C73656E';
wwv_flow_api.g_varchar2_table(94) := '64297B76617220726573756C743D6D757374616368652E72656E6465722874656D706C6174652C766965772C7061727469616C73293B696628697346756E6374696F6E2873656E6429297B73656E6428726573756C74297D656C73657B72657475726E20';
wwv_flow_api.g_varchar2_table(95) := '726573756C747D7D3B6D757374616368652E6573636170653D65736361706548746D6C3B6D757374616368652E5363616E6E65723D5363616E6E65723B6D757374616368652E436F6E746578743D436F6E746578743B6D757374616368652E5772697465';
wwv_flow_api.g_varchar2_table(96) := '723D5772697465727D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4996621879900749024)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_file_name=>'mustache.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '242E7769646765742827707265746975732E656E68616E6365644C6F764974656D272C207B0D0A2F2F0D0A2F2F0D0A2020435F56414C55455F534550415241544F5220202020202020202020202020202020202020203A20273A272C0D0A2020435F414A';
wwv_flow_api.g_varchar2_table(2) := '41585F5354415455535F53554343455353202020202020202020202020202020203A202753554343455353272C0D0A2020435F414A41585F5354415455535F4552524F522020202020202020202020202020202020203A20274552524F52272C0D0A2020';
wwv_flow_api.g_varchar2_table(3) := '435F504F5055505F5345415243485F504C414345484F4C44455220202020202020202020203A2027456E746572206120736561726368207465726D272C0D0A2020435F504F5055505F42544E5F53454C4543545F54455854202020202020202020202020';
wwv_flow_api.g_varchar2_table(4) := '20203A202753656C656374272C0D0A2020435F504F5055505F53484F575F53454C45435445445F4C4142454C202020202020202020203A202253686F77206F6E6C792073656C6563746564222C0D0A2020435F504F5055505F544558545F524F57535F53';
wwv_flow_api.g_varchar2_table(5) := '454C454354454420202020202020202020203A2022416C6C20726573756C74732028253029206F6E207468697320706167652068617320626565642073656C65637465642E222C0D0A2020435F504F5055505F544558545F4E4F5F444154415F464F554E';
wwv_flow_api.g_varchar2_table(6) := '445F534541524348202020203A20274E6F206461746120666F756E6420666F7220736561726368207465726D20222530222E272C0D0A2020435F504F5055505F544558545F4E4F5F444154415F464F554E445F515545525920202020203A202744696374';
wwv_flow_api.g_varchar2_table(7) := '696F6E61727920686173206E6F206461746120746F2072656E6465722E272C0D0A2020435F504F5055505F544558545F434C4541525F46494C544552494E472020202020202020203A2027436C69636B203C6120687265663D226A617661736372697074';
wwv_flow_api.g_varchar2_table(8) := '3A20766F69642830292220636C6173733D22636C65617246696C746572696E67223E686572653C2F613E20746F20636C6561722066696C746572696E672E272C0D0A2020435F504F5055505F544558545F554E53415645445F4348414E47455320202020';
wwv_flow_api.g_varchar2_table(9) := '20202020203A2027596F7520686176652073656C65637465642025302076616C7565732E20436C6F73696E6720776974686F757420736176696E672077696C6C206E6F7420736176652073656C65637465642076616C7565732E272C0D0A2020435F504F';
wwv_flow_api.g_varchar2_table(10) := '5055505F544558545F53454143485F494E5F53454C4543544544202020202020203A2027596F7520686176652066696C746572656420253020726F772873292066726F6D2025312073656C656374656420726F772873292E203C2F62723E436C69636B20';
wwv_flow_api.g_varchar2_table(11) := '3C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D2273686F7753656C6563746564223E686572653C2F613E20746F20676574206261636B20746F20616C6C2073656C656374656420726F77732E272C0D0A202043';
wwv_flow_api.g_varchar2_table(12) := '5F504F5055505F544558545F46494C54455245445F494E464F20202020202020202020203A2027253020726573756C747320666F756E6420666F7220736561726368207465726D20222531222E20272C0D0A2020435F504F5055505F544558545F455854';
wwv_flow_api.g_varchar2_table(13) := '52415F56414C5545202020202020202020202020203A202756616C75652022253022206973206E6F742077697468696E2064696374696F6E6172792E272C0D0A2020435F50524F4D50545F4D454E555F455850414E445F5449544C452020202020202020';
wwv_flow_api.g_varchar2_table(14) := '2020203A202753686F77206F72206869646520616C6C2074616773272C0D0A2020435F50524F4D50545F4D454E555F534F52545F5449544C45202020202020202020202020203A2027536F72742074616773272C0D0A2020435F50524F4D50545F4D454E';
wwv_flow_api.g_varchar2_table(15) := '555F434C4541525F5449544C452020202020202020202020203A2027436C65617220616C6C2073656C65637465642076616C756573272C0D0A2020435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F58203A202750';
wwv_flow_api.g_varchar2_table(16) := '6C6561736520656E746572202530206F72206D6F726520636861726163746572732E272C0D0A2020435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F30203A2027537461727420747970696E6720746F2067657420';
wwv_flow_api.g_varchar2_table(17) := '726573756C74732E272C0D0A2020435F50524F4D50545F544558545F4E4F5F444154415F464F554E44202020202020202020203A20274E6F206461746120666F756E642E272C0D0A2020435F50524F4D50545F544558545F534541524348494E47202020';
wwv_flow_api.g_varchar2_table(18) := '20202020202020202020203A2027536561726368696E672E2E2E272C0D0A2020435F50524F4D50545F544558545F52415049445F53454C454354494F4E20202020202020203A2027537461727420747970696E6720746F2073656C656374206D6F72652E';
wwv_flow_api.g_varchar2_table(19) := '2E2E272C0D0A2020435F4552524F525F44454255475F4F464620202020202020202020202020202020202020203A2027506C6561736520636F6E74616374206170706C69636174696F6E2061646D696E6973747261746F7220666F72206D6F726520696E';
wwv_flow_api.g_varchar2_table(20) := '666F726D6174696F6E2E272B225C6E222B2744657461696C656420696E666F726D6174696F6E20617661696C61626C6520696E206465627567206D6F64652E272C0D0A2020435F544147535F4C494D495445445F4F544845525320202020202020202020';
wwv_flow_api.g_varchar2_table(21) := '2020202020203A2027616E64202530206D6F72652E2E2E272C0D0A2020435F544147535F4C494D495445445F302020202020202020202020202020202020202020203A202725302073656C6563746564272C0D0A2020435F504F5055505F504147494E41';
wwv_flow_api.g_varchar2_table(22) := '54494F4E5F5052455620202020202020202020202020203A202750726576696F7573272C0D0A2020435F504F5055505F504147494E4154494F4E5F4E45585420202020202020202020202020203A20274E657874272C0D0A2020435F504F5055505F4845';
wwv_flow_api.g_varchar2_table(23) := '414445525F534F52545F4153435F5449544C4520202020202020203A2027536F727420617363656E64696E67272C0D0A2020435F504F5055505F4845414445525F534F52545F444553435F5449544C45202020202020203A2027536F7274206465736365';
wwv_flow_api.g_varchar2_table(24) := '6E64696E67272C0D0A2020435F504F5055505F544558545F534541524348494E472020202020202020202020202020203A202757616974696E6720666F7220726573756C74732E2E2E272C0D0A0D0A20205F6372656174653A2066756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(25) := '7B0D0A20202020766172200D0A202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D20756E646566696E65642C0D0A20202020202069734261736963436F6E66696775726174696F6E203D2066616C73653B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(26) := '746869732E6C6F67507265666978203D2027232028272B746869732E656C656D656E742E6765742830292E69642B272920272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B273A273B0D0A20202020617065782E64656275672E6C6F67';
wwv_flow_api.g_varchar2_table(27) := '28746869732E6C6F675072656669782C20275F637265617465272C20276F7074696F6E73272C20746869732E6F7074696F6E732C2074686973293B0D0A0D0A20202020746869732E5F73757065722820746869732E6F7074696F6E7320293B0D0A202020';
wwv_flow_api.g_varchar2_table(28) := '20746869732E5F6170706C795472616E736C6174696F6E7328293B0D0A0D0A20202020746869732E706C7567696E53746F70706564203D2066616C73653B0D0A0D0A0D0A202020202F2F746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C';
wwv_flow_api.g_varchar2_table(29) := '5F746578743A20224E756C6C206C6162656C220D0A202020202F2F746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75653A20224E756C6C2076616C756520220D0A0D0A20202020696620280D0A2020202020202F2F706F7075';
wwv_flow_api.g_varchar2_table(30) := '702073657474696E677320697320656D7074790D0A202020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E6773203D3D206E756C6C0D0A2020202020207C7C20280D0A20202020202020202F2F706F7075';
wwv_flow_api.g_varchar2_table(31) := '702073657474696E6773206973206E6F7420656D7074792062757420636865636B626F78206973206E6F7420636865636B65640D0A2020202020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732021';
wwv_flow_api.g_varchar2_table(32) := '3D206E756C6C0D0A2020202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275243432729203D3D202D310D0A202020202020290D0A2020202029207B0D0A202020';
wwv_flow_api.g_varchar2_table(33) := '20202069734261736963436F6E66696775726174696F6E203D20747275653B0D0A202020207D0D0A0D0A2020202069662028200D0A202020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D20';
wwv_flow_api.g_varchar2_table(34) := '6E756C6C200D0A202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282743542729203E202D310D0A2020202029207B0D0A202020202020706F7075705469746C6554';
wwv_flow_api.g_varchar2_table(35) := '657874203D20746869732E6F7074696F6E732E617474726962757465732E706F7075705469746C65546578740D0A202020207D0D0A20202020656C7365207B0D0A202020202020706F7075705469746C6554657874203D20746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(36) := '2E6974656D2E706C61696E5F6C6162656C3B0D0A202020207D0D0A0D0A20202020746869732E706C7567696E53657474696E6773203D207B0D0A20202020202022697344656275674F6E22202020202020202020202020202020203A20746869732E6F70';
wwv_flow_api.g_varchar2_table(37) := '74696F6E732E64656275672C0D0A20202020202022646973706C6179457874726122202020202020202020202020203A20746869732E6F7074696F6E732E6974656D2E6C6F765F646973706C61795F65787472612C0D0A20202020202022706F70757053';
wwv_flow_api.g_varchar2_table(38) := '65617263684465626F756E636554696D652220203A203330302C0D0A2020202020202270726F6D70744D617848656967687422202020202020202020203A203230302C0D0A2020202020202269734175746F636F6D706C657465417661696C61626C6522';
wwv_flow_api.g_varchar2_table(39) := '20203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274155544F434F4D504C45';
wwv_flow_api.g_varchar2_table(40) := '54452729203E202D312C0D0A202020202020226973506F7075705265706F7274417661696C61626C65222020203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F707469';
wwv_flow_api.g_varchar2_table(41) := '6F6E732E617474726962757465732E73657474696E67732E696E6465784F662827504F504F55505F5245504F52542729203E202D312C0D0A2020202020202269734D756C7469706C6553656C656374696F6E222020202020203A20746869732E6F707469';
wwv_flow_api.g_varchar2_table(42) := '6F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274D532729203E202D312C0D0A20202020202022706F7075';
wwv_flow_api.g_varchar2_table(43) := '70223A207B0D0A2020202020202020227769647468222020202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757057696474682C0D0A202020202020202022686569676874222020202020';
wwv_flow_api.g_varchar2_table(44) := '2020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F7075704865696768742C0D0A2020202020202020227469746C65222020202020202020202020202020202020203A20706F7075705469746C65546578';
wwv_flow_api.g_varchar2_table(45) := '742C0D0A202020202020202022726F777350657250616765222020202020202020202020203A2031302C0D0A20202020202020202269735265706F72744261736963436F6E66222020202020203A2069734261736963436F6E66696775726174696F6E2C';
wwv_flow_api.g_varchar2_table(46) := '0D0A20202020202020202269735265706F7274416476616E636564436F6E66222020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E61';
wwv_flow_api.g_varchar2_table(47) := '7474726962757465732E706F70757053657474696E67732E696E6465784F6628275243432729203E202D312C0D0A20202020202020202F2F22636F6C756D6E7353657474696E6773446566696E656422203A20746869732E6F7074696F6E732E61747472';
wwv_flow_api.g_varchar2_table(48) := '6962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275543412729203E202D312C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(49) := '226973446973706C6179436F6C756D6E56697369626C6522203A20746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E756C6C20262620746869732E6F7074696F6E732E61747472';
wwv_flow_api.g_varchar2_table(50) := '6962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F6628274444432729203E202D312C0D0A202020202020202022697352657475726E436F6C756D6E56697369626C652220203A20746869732E6F7074696F6E732E6174';
wwv_flow_api.g_varchar2_table(51) := '74726962757465732E706F7075705265706F72744261736963436F6E6620213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F6628274452432729';
wwv_flow_api.g_varchar2_table(52) := '203E202D312C0D0A202020202020202022636C69636B4F6E526F7753656C65637473497422202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074';
wwv_flow_api.g_varchar2_table(53) := '696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827434F5253492729203E202D312C0D0A202020202020202022647261676761626C652220202020202020202020202020203A20746869732E6F7074696F6E';
wwv_flow_api.g_varchar2_table(54) := '732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827445241474741424C452729203E202D';
wwv_flow_api.g_varchar2_table(55) := '312C0D0A202020202020202022726573697A61626C652220202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(56) := '2E617474726962757465732E706F70757053657474696E67732E696E6465784F662827524553495A41424C452729203E202D312C0D0A202020202020202022636C6F73654F6E45736361706522202020202020202020203A20746869732E6F7074696F6E';
wwv_flow_api.g_varchar2_table(57) := '732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827434F452729203E202D312C0D0A2020';
wwv_flow_api.g_varchar2_table(58) := '2020202020202273686F77526F7773506572506167652220202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E6174747269';
wwv_flow_api.g_varchar2_table(59) := '62757465732E706F70757053657474696E67732E696E6465784F6628275250502729203E202D312C0D0A202020202020202022736561726368496E416C6C436F6C756D6E732220202020203A20746869732E6F7074696F6E732E61747472696275746573';
wwv_flow_api.g_varchar2_table(60) := '2E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827534941432729203E202D312C0D0A20202020202020202261646A75';
wwv_flow_api.g_varchar2_table(61) := '7374486569676874546F526573756C74732220203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F707570';
wwv_flow_api.g_varchar2_table(62) := '53657474696E67732E696E6465784F66282741485452522729203E202D310D0A2020202020207D2C0D0A2020202020202F2F0D0A2020202020202270726F6D7074223A207B0D0A2020202020202020226E617669676174696F6E4465626F756E63655469';
wwv_flow_api.g_varchar2_table(63) := '6D6522203A2031302C0D0A2020202020202020226465626F756E636554696D652220202020202020202020203A203230302C202F2F544244206174727962757420706C7567696E750D0A202020202020202022726F777350657250616765222020202020';
wwv_flow_api.g_varchar2_table(64) := '202020202020203A2032302C202F2F544244206174727962757420706C7567696E750D0A202020202020202022617265546167734C696D69746564222020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F43';
wwv_flow_api.g_varchar2_table(65) := '6F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274C44542729203E202D312C0D0A202020202020';
wwv_flow_api.g_varchar2_table(66) := '2020226973437573746F6D54656D706C61746522202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E6174';
wwv_flow_api.g_varchar2_table(67) := '74726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628275543542729203E202D312C0D0A202020202020202022746167734E6F2220202020202020202020202020202020203A20746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(68) := '617474726962757465732E6175746F436F6D706C657465546167734E6F2C0D0A20202020202020202274656D706C617465222020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C';
wwv_flow_api.g_varchar2_table(69) := '65746553657474696E677354656D706C6174652C0D0A20202020202020202269734D696E696D616C496E7075744C656E677468222020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67';
wwv_flow_api.g_varchar2_table(70) := '7320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274D494C2729203E202D312C0D0A2020202020202020226D696E696D616C496E7075';
wwv_flow_api.g_varchar2_table(71) := '744C656E6774682220202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C6574654D696E496E7075744C656E6774682C0D0A2020202020202020226973526170696453656C656374696F6E22202020202020';
wwv_flow_api.g_varchar2_table(72) := '203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C6574655365747469';
wwv_flow_api.g_varchar2_table(73) := '6E67732E696E6465784F66282752532729203E202D310D0A2020202020207D0D0A202020207D3B0D0A0D0A20202020746869732E696E707574437373203D207B0D0A20202020202022626F72646572436F6C6F7222203A20746869732E656C656D656E74';
wwv_flow_api.g_varchar2_table(74) := '2E6373732827626F72646572436F6C6F7227292C0D0A20202020202022666F6E7453697A6522202020203A20746869732E656C656D656E742E6373732827666F6E7453697A6527292C0D0A202020202020226C696E654865696768742220203A20746869';
wwv_flow_api.g_varchar2_table(75) := '732E656C656D656E742E63737328276C696E6548656967687427290D0A202020207D3B0D0A202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D7320213D20756E646566696E65';
wwv_flow_api.g_varchar2_table(76) := '642029207B0D0A20202020202024282723272B746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D73292E6F6E28276368616E6765272C20242E70726F787928746869732E5F636173636164696E674C';
wwv_flow_api.g_varchar2_table(77) := '6F764974656D2C207468697329293B0D0A202020207D0D0A202020200D0A202020200D0A202020202F2F7574776F727A206D61736B6520777973776965746C616E61207720617065780D0A20202020746869732E6D61736B203D20746869732E5F6D6173';
wwv_flow_api.g_varchar2_table(78) := '6B4372656174654E657728293B0D0A0D0A20202020746869732E6D61736B203D20242E657874656E642820746869732E6D61736B2C207B0D0A202020202020227374617465223A207B0D0A20202020202020202278687222202020202020202020202020';
wwv_flow_api.g_varchar2_table(79) := '20202020203A20756E646566696E65642C0D0A202020202020202022697356697369626C652220202020202020202020203A2066616C73652C0D0A20202020202020202263757272656E7453656172636854657874222020203A2027272C0D0A20202020';
wwv_flow_api.g_varchar2_table(80) := '20202020226C61737446657463686564506167652220202020203A206E756C6C2C0D0A202020202020202022616A617852756E6E696E67222020202020202020203A2066616C73652C0D0A20202020202020202263757272656E7453656C656374696F6E';
wwv_flow_api.g_varchar2_table(81) := '22202020203A20756E646566696E65642C0D0A202020202020202022617265526573756C7473417661696C61626C6522203A2066616C73652C0D0A20202020202020202273656C6563746564222020202020202020202020203A205B5D2C0D0A20202020';
wwv_flow_api.g_varchar2_table(82) := '20202020227461677322202020202020202020202020202020203A205B5D2C0D0A202020202020202022736F727465642220202020202020202020202020203A20756E646566696E65642C0D0A20202020202020202264697361626C6564222020202020';
wwv_flow_api.g_varchar2_table(83) := '202020202020203A2066616C73652C0D0A202020202020202022657874726156616C756573222020202020202020203A205B5D2C0D0A2020202020202020226572726F72222020202020202020202020202020203A2066616C73650D0A2020202020207D';
wwv_flow_api.g_varchar2_table(84) := '0D0A202020207D20293B202020200D0A0D0A202020202F2F746869732E70726F6D70742E637573746F6D54656D706C61746546756E6374696F6E0D0A20202020746869732E70726F6D7074203D207B0D0A20202020202022637573746F6D54656D706C61';
wwv_flow_api.g_varchar2_table(85) := '746546756E6374696F6E223A20746869732E5F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E28292C0D0A20202020202022636F6E7461696E657222202020202020202020202020203A20756E646566696E6564';
wwv_flow_api.g_varchar2_table(86) := '2C0D0A20202020202022666978426F7264657222202020202020202020202020203A20756E646566696E65642C0D0A2020202020202268656164657222202020202020202020202020202020203A20756E646566696E65642C0D0A20202020202022626F';
wwv_flow_api.g_varchar2_table(87) := '6479222020202020202020202020202020202020203A20756E646566696E65642C0D0A20202020202022696E7075742220202020202020202020202020202020203A20756E646566696E65642C0D0A20202020202022697356697369626C652220202020';
wwv_flow_api.g_varchar2_table(88) := '2020202020202020203A2066616C73650D0A202020207D3B0D0A0D0A0D0A202020202F2F70727A657069736163206E61207779776F6C616E696520616E616C6F6769637A6E696520646F2070727A79676F746F777977616E696120637573746F6D54656D';
wwv_flow_api.g_varchar2_table(89) := '706C61746546756E6374696F6E0D0A202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A2020202020206966202820746869732E706C7567696E53657474696E';
wwv_flow_api.g_varchar2_table(90) := '67732E706F7075702E69735265706F7274416476616E636564436F6E662029207B0D0A20202020202020207472797B0D0A20202020202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D204A534F4E2E70617273652874686973';
wwv_flow_api.g_varchar2_table(91) := '2E6F7074696F6E732E617474726962757465732E706F707570436F6C756D6E53657474696E6773293B0D0A20202020202020207D206361746368286572726F7229207B0D0A20202020202020202020746869732E5F6D61736B416A617853746174654275';
wwv_flow_api.g_varchar2_table(92) := '74746F6E5365744572726F72287B0D0A20202020202020202020202022616464496E666F2220203A206572726F722E6E616D652B273A20272B6572726F722E6D6573736167652C0D0A202020202020202020202020226572726F7222202020203A202749';
wwv_flow_api.g_varchar2_table(93) := '6E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B272220636F6E66696775726174696F6E2E272C0D0A2020202020202020202020202274656368496E666F22203A205B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(94) := '20202020207B0D0A20202020202020202020202020202020226E616D65223A2027526561736F6E272C0D0A202020202020202020202020202020202276616C7565223A202750617273696E67204A534F4E206F626A65637420666F7220706F7075702072';
wwv_flow_api.g_varchar2_table(95) := '65706F7274206661696C65643A20696E61766C6964204A534F4E206F626A6563742E270D0A20202020202020202020202020207D2C0D0A20202020202020202020202020207B0D0A20202020202020202020202020202020226E616D65223A20274A534F';
wwv_flow_api.g_varchar2_table(96) := '4E206F626A65637420746F207061727365272C0D0A202020202020202020202020202020202276616C7565223A20746869732E6F7074696F6E732E617474726962757465732E706F707570436F6C756D6E53657474696E67730D0A202020202020202020';
wwv_flow_api.g_varchar2_table(97) := '20202020207D0D0A20202020202020202020202020200D0A2020202020202020202020205D0D0A202020202020202020207D2C2074727565293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E457272';
wwv_flow_api.g_varchar2_table(98) := '6F722820293B0D0A20202020202020207D0D0A2020202020207D0D0A0D0A202020202020746869732E706F707570203D207B0D0A20202020202020202F2F22627574746F6E223A20746869732E5F6372656174654974656D506F707570427574746F6E28';
wwv_flow_api.g_varchar2_table(99) := '292C0D0A20202020202020202264656661756C745265706F727453657474696E6773223A207B0D0A202020202020202020202F2F2268656164696E67223A2022222C0D0A20202020202020202020227468416C69676E223A20226C656674222C0D0A2020';
wwv_flow_api.g_varchar2_table(100) := '2020202020202020227464416C69676E223A20226C656674222C0D0A202020202020202020202276697369626C65223A20747275652C0D0A2020202020202020202022736F7274222020203A20747275652C0D0A202020202020202020202266696C7465';
wwv_flow_api.g_varchar2_table(101) := '7222203A20747275650D0A20202020202020207D2C0D0A202020202020202022686561646572732220203A20706F707570436F6C756D6E53657474696E67734A736F6E2C0D0A202020202020202022636F6E7461696E6572223A20746869732E5F706F70';
wwv_flow_api.g_varchar2_table(102) := '75704372656174654E657728292C0D0A202020202020202022686561646572416374696F6E436F6E7461696E6572223A20756E646566696E65642C0D0A2020202020202020227374617465223A207B0D0A2020202020202020202022696E666F726D6174';
wwv_flow_api.g_varchar2_table(103) := '696F6E546578742220202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022696E666F726D6174696F6E54656D706C61746522202020202020203A20756E646566696E65642C0D0A202020202020202020202273656C65';
wwv_flow_api.g_varchar2_table(104) := '6374696E672220202020202020202020202020202020203A2066616C73652C202F2F746F207265636F676E697A65206D616E75616C2073656C65637420616E6420636C6F73650D0A20202020202020202020227868722220202020202020202020202020';
wwv_flow_api.g_varchar2_table(105) := '202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022697356697369626C652220202020202020202020202020202020203A2066616C73652C0D0A20202020202020202020226C61737446657463686564506167652220';
wwv_flow_api.g_varchar2_table(106) := '202020202020202020203A206E756C6C2C0D0A2020202020202020202022736561726368537472696E672220202020202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022736561726368537472696E674F6E466F6375';
wwv_flow_api.g_varchar2_table(107) := '7322202020202020203A20756E646566696E65642C0D0A2020202020202020202022736F72746564436F6C756D6E4964782220202020202020202020203A206E756C6C2C0D0A2020202020202020202022736F72746564436F6C756D6E44697265637469';
wwv_flow_api.g_varchar2_table(108) := '6F6E2220202020203A2027617363272C0D0A2020202020202020202022616A617852756E6E696E67222020202020202020202020202020203A2066616C73652C0D0A2020202020202020202022736561726368436F6C756D6E4964782220202020202020';
wwv_flow_api.g_varchar2_table(109) := '202020203A20756E646566696E65642C0D0A2020202020202020202022616A61784461746146657463686564436F756E74222020202020203A20302C0D0A2020202020202020202022616A617844617461546F74616C436F756E74222020202020202020';
wwv_flow_api.g_varchar2_table(110) := '3A20756E646566696E65642C0D0A2020202020202020202022616A617853746174757322202020202020202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022616A617843757272656E74506167654461746122202020';
wwv_flow_api.g_varchar2_table(111) := '202020203A205B5D2C0D0A2020202020202020202022616A617853656C65637465644461746122202020202020202020203A205B5D2C0D0A2020202020202020202022616A617843757272656E7450616765526F776E756D5374617274223A20756E6465';
wwv_flow_api.g_varchar2_table(112) := '66696E65642C0D0A2020202020202020202022616A617843757272656E7450616765526F776E756D456E642220203A20756E646566696E65642C0D0A20202020202020202020226361636865222020202020202020202020202020202020202020203A20';
wwv_flow_api.g_varchar2_table(113) := '5B5D2C202F2A20646F20646F706973616E6961206B69656479C59B202A2F0D0A202020202020202020202273656C6563746564222020202020202020202020202020202020203A205B5D2C0D0A202020202020202020202273656C656374656448617368';
wwv_flow_api.g_varchar2_table(114) := '2220202020202020202020202020203A20300D0A20202020202020207D0D0A2020202020207D3B0D0A0D0A202020202020746869732E706F707570203D20242E657874656E642820746869732E706F7075702C207B0D0A2020202020202020226469616C';
wwv_flow_api.g_varchar2_table(115) := '6F6748656164657222202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E706172656E7428292E66696E6428272E75692D6469616C6F672D7469746C6562617227292C0D0A20202020202020202268656164657222202020';
wwv_flow_api.g_varchar2_table(116) := '202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E68656164657227292C0D0A202020202020202022696E666F726D6174696F6E436F6E7461696E65722220203A20746869732E706F7075702E63';
wwv_flow_api.g_varchar2_table(117) := '6F6E7461696E65722E66696E6428272E696E666F726D6174696F6E27292C0D0A202020202020202022696E666F726D6174696F6E5465787422202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E696E666F726D';
wwv_flow_api.g_varchar2_table(118) := '6174696F6E202E7465787427292C0D0A202020202020202022626F6479222020202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E626F647927292C0D0A202020202020202022666F6F74';
wwv_flow_api.g_varchar2_table(119) := '657222202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E666F6F74657227292C0D0A20202020202020202273686F7753656C6563746564436F6E7461696E657222203A20746869732E70';
wwv_flow_api.g_varchar2_table(120) := '6F7075702E636F6E7461696E65722E66696E6428272E666F6F7465722D73686F7753656C656374656427292C0D0A202020202020202022737469636B7948656164657273222020202020202020203A20756E646566696E65642C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(121) := '2273656172636822202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572203A696E70757427292C0D0A20202020202020202F2F746869732E706F7075';
wwv_flow_api.g_varchar2_table(122) := '702E73656C656374416C6C436865636B626F780D0A20202020202020202273656C656374416C6C436865636B626F782220202020203A20756E646566696E65642C0D0A20202020202020202273686F7753656C6563746564436865636B626F782220203A';
wwv_flow_api.g_varchar2_table(123) := '20746869732E706F7075702E636F6E7461696E65722E66696E6428272E666F6F746572203A636865636B626F7827292C0D0A20202020202020202273686F7753656C65637465644C6162656C2220202020203A20746869732E706F7075702E636F6E7461';
wwv_flow_api.g_varchar2_table(124) := '696E65722E66696E6428272E666F6F746572206C6162656C27292C0D0A20202020202020202F2F2273656C656374416C6C4C6162656C222020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E73656C656374436F6E';
wwv_flow_api.g_varchar2_table(125) := '7461696E6572206C6162656C27292C0D0A202020202020202022636C6561722220202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572202E636C6561';
wwv_flow_api.g_varchar2_table(126) := '7227292C0D0A20202020202020202273656C65637422202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E73656C65637427292C0D0A202020202020202022706167696E6174696F6E436F';
wwv_flow_api.g_varchar2_table(127) := '6E7461696E6572222020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E706167696E6174696F6E436F6E7461696E657227292C0D0A202020202020202022706167696E6174696F6E507265765061676522202020203A2074';
wwv_flow_api.g_varchar2_table(128) := '6869732E706F7075702E636F6E7461696E65722E66696E6428272E7072657627292C0D0A202020202020202022706167696E6174696F6E4E6578745061676522202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E6E65';
wwv_flow_api.g_varchar2_table(129) := '787427292C0D0A202020202020202022706167696E6174696F6E43757272656E742220202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E63757272656E7427292C0D0A202020202020202022726F7773506572506167';
wwv_flow_api.g_varchar2_table(130) := '652220202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E64282773656C65637427292C0D0A202020202020202022636F6E74656E745461626C6522202020202020202020203A20756E646566696E65642C0D0A20';
wwv_flow_api.g_varchar2_table(131) := '2020202020202022726F777350657250616765436F6E7461696E65722220203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E726F777350657250616765436F6E7461696E657227290D0A2020202020207D20293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(132) := '20202020202F2F6E6F206C617A79206C6F6164696E6720616E796D6F72650D0A202020202020746869732E706F7075702E626F64792E6F6E28277363726F6C6C272C20242E70726F78792820746869732E5F706F7075705363726F6C6C43616C6C626163';
wwv_flow_api.g_varchar2_table(133) := '6B2C2074686973202920293B2020200D0A202020202020746869732E706F7075702E636C6561722E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F707570536561726368436C6561722C20746869732C2074727565202920293B';
wwv_flow_api.g_varchar2_table(134) := '0D0A2020202020200D0A202020202020746869732E706F7075702E706167696E6174696F6E50726576506167652E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F707570506167696E6174696F6E50726576506167652C207468';
wwv_flow_api.g_varchar2_table(135) := '69732029293B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F707570506167696E6174696F6E4E657874506167652C2074686973';
wwv_flow_api.g_varchar2_table(136) := '2029293B0D0A202020202020746869732E706F7075702E726F7773506572506167652E6F6E28276368616E6765272C20242E70726F78792820746869732E5F706F7075704368616E6765526F7773506572506167652C2074686973202920290D0A0D0A20';
wwv_flow_api.g_varchar2_table(137) := '2020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E6F6E28276368616E6765272C20242E70726F78792820746869732E5F706F70757053686F7753656C6563746564436865636B626F784368616E67652C207468';
wwv_flow_api.g_varchar2_table(138) := '6973202920293B0D0A0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E636C69636B4F6E526F7753656C6563747349742029207B0D0A2020202020202020746869732E706F7075702E636F6E7461696E65';
wwv_flow_api.g_varchar2_table(139) := '722E6F6E2827636C69636B272C20277464272C20242E70726F78792820746869732E5F706F707570436C69636B4F6E43656C6C2C20746869732920293B0D0A2020202020207D0D0A2020202020200D0A202020202020746869732E706F7075702E636F6E';
wwv_flow_api.g_varchar2_table(140) := '7461696E65720D0A20202020202020202E6F6E2827636C69636B272C2020272E66616B65436865636B626F78272C202020202020202020202020242E70726F78792820746869732E5F706F70757046616B65436865636B626F78436C69636B2C20202020';
wwv_flow_api.g_varchar2_table(141) := '202020202020746869732920290D0A20202020202020202E6F6E2827636C69636B272C202027627574746F6E2E73656C656374272C202020202020202020202020242E70726F78792820746869732E5F706F70757053656C656374416E64436C6F73652C';
wwv_flow_api.g_varchar2_table(142) := '20202020202020202020202020746869732920290D0A20202020202020202E6F6E2827636C69636B272C202027612E73686F7753656C6563746564272C2020202020202020202020242E70726F78792820746869732E5F706F70757053686F7753656C65';
wwv_flow_api.g_varchar2_table(143) := '63746564436865636B626F784368616E67652C20746869732920290D0A20202020202020202E6F6E2827636C69636B272C202027612E636C65617246696C746572696E67272C202020202020202020242E70726F78792820746869732E5F706F70757043';
wwv_flow_api.g_varchar2_table(144) := '6C65617246696C746572696E672C20202020202020202020202020746869732920290D0A20202020202020202E6F6E2827636C69636B272C2020272E66616B65526164696F272C202020202020202020202020202020242E70726F78792820746869732E';
wwv_flow_api.g_varchar2_table(145) := '5F706F70757046616B65526164696F436C69636B2C20202020202020202020202020746869732920290D0A20202020202020202E6F6E28276368616E6765272C202774683A66697273742D6368696C64203A636865636B626F78272C20242E70726F7879';
wwv_flow_api.g_varchar2_table(146) := '2820746869732E5F706F7075705468436865636B626F784368616E67652C2020202020202020202020746869732920290D0A20202020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A636865636B626F78272C20';
wwv_flow_api.g_varchar2_table(147) := '242E70726F78792820746869732E5F706F7075705464436865636B626F784368616E67652C2020202020202020202020746869732920290D0A20202020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A72616469';
wwv_flow_api.g_varchar2_table(148) := '6F272C20202020242E70726F78792820746869732E5F706F7075705464526164696F4368616E67652C2020202020202020202020202020746869732920293B0D0A0D0A202020202020746869732E706F7075702E7365617263680D0A2020202020202020';
wwv_flow_api.g_varchar2_table(149) := '2E6F6E28276B65797570272C20746869732E5F6465626F756E636528242E70726F78792820746869732E5F706F7075705365617263684B657955702C20746869732C206E756C6C2C206E756C6C292C20746869732E706C7567696E53657474696E67732E';
wwv_flow_api.g_varchar2_table(150) := '706F7075705365617263684465626F756E636554696D6529290D0A20202020202020202E6F6E28276B65797570272C20242E70726F78792820746869732E5F6D61736B4B657955704D616E61676549636F6E732C20746869732920290D0A202020202020';
wwv_flow_api.g_varchar2_table(151) := '20202F2F2E6F6E2827626C7572272C2020242E70726F78792820746869732E5F706F707570536561726368426C75722C2074686973202920290D0A20202020202020202E6F6E2827666F637573272C20242E70726F78792820746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(152) := '536561726368466F6375732C2074686973202920293B0D0A0D0A0D0A202020207D0D0A0D0A20202020746869732E6D61736B2E6974656D436F6E7461696E65722E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70745365';
wwv_flow_api.g_varchar2_table(153) := '61726368496E707574466F63757348616E646C65722C2074686973202920293B0D0A0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E6F6E2827636C69636B272C20272E72656D6F7665272C20242E70726F7879282074686973';
wwv_flow_api.g_varchar2_table(154) := '2E5F6D61736B52656D6F766554616746726F6D444F4D2C2074686973202920293B0D0A0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E6F6E28276B6579646F776E272C20242E70726F78792820746869732E5F6D61736B506F7075';
wwv_flow_api.g_varchar2_table(155) := '70427574746F6E4B6579446F776E2C2074686973202920290D0A0D0A20202020746869732E776964676574556E69717565496420203D202428273C6469763E3C2F6469763E27292E756E69717565496428292E617474722827696427293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(156) := '2020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F637265617465272C2027506C7567696E20696E7374616E636520637265617465642E20556E69717565206964203D20272B746869732E776964676574556E697175';
wwv_flow_api.g_varchar2_table(157) := '6549642C20746869732E6F7074696F6E73293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020746869732E5F6372656174654D61736B4465627567427574746F6E';
wwv_flow_api.g_varchar2_table(158) := '28293B20200D0A202020207D0D0A0D0A202020202F2F746869732E656C656D656E742E6F6E28276D61736B537461746553656C65637465644368616E676564272C20242E70726F78792820746869732E5F6576656E744D61736B537461746553656C6563';
wwv_flow_api.g_varchar2_table(159) := '7465644368616E6765642C20746869732029293B0D0A0D0A202020206966202820746869732E656C656D656E742E76616C28292E6C656E677468203E20302026262021746869732E706C7567696E53746F707065642029207B0D0A202020202020746869';
wwv_flow_api.g_varchar2_table(160) := '732E5F6765744F6E4C6F61644C6F762820746869732E656C656D656E742E76616C282920293B0D0A202020207D0D0A0D0A20202020746869732E5F696E74656772617465576974684170657841706928293B0D0A0D0A2020202024282077696E646F7720';
wwv_flow_api.g_varchar2_table(161) := '292E726573697A6528242E70726F7879282066756E6374696F6E28297B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C202777696E646F7720726573697A65642C207265706F736974696F6E2070726F6D';
wwv_flow_api.g_varchar2_table(162) := '707427293B0D0A0D0A2020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A20202020202020200D0A2020202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A2020202020207D0D';
wwv_flow_api.g_varchar2_table(163) := '0A202020207D2C207468697329293B0D0A0D0A20202020746869732E656C656D656E742E61667465722820746869732E6D61736B2E636F6E7461696E657220293B0D0A20202020746869732E656C656D656E742E6869646528293B0D0A20202020746869';
wwv_flow_api.g_varchar2_table(164) := '732E656C656D656E742E6F6E28276170657872656672657368272C20242E70726F787928746869732E5F6D616E75616C5265667265736843616C6C6261636B2C207468697329293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E';
wwv_flow_api.g_varchar2_table(165) := '6C6F675072656669782C2027706C7567696E53657474696E6773272C20746869732E706C7567696E53657474696E6773293B202020200D0A0D0A20207D2C0D0A2F2F206A517565727920776964676574206E6174697665206D6574686F64730D0A2F2F0D';
wwv_flow_api.g_varchar2_table(166) := '0A20205F64657374726F793A2066756E6374696F6E28297B0D0A20207D2C0D0A2F2F0D0A20205F7365744F7074696F6E3A2066756E6374696F6E2820704B65792C207056616C75652029207B0D0A202020206966202820704B6579203D3D3D202276616C';
wwv_flow_api.g_varchar2_table(167) := '7565222029207B0D0A2020202020207056616C7565203D20746869732E5F636F6E73747261696E28207056616C756520293B0D0A202020207D0D0A0D0A20202020746869732E5F73757065722820704B65792C207056616C756520293B0D0A20207D2C20';
wwv_flow_api.g_varchar2_table(168) := '200D0A20206F7074696F6E733A2066756E6374696F6E2820704F7074696F6E7320297B0D0A20202020746869732E5F73757065722820704F7074696F6E7320293B0D0A20207D2C0D0A2F2F0D0A20205F7365744F7074696F6E733A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(169) := '2820704F7074696F6E732029207B0D0A20202020746869732E5F73757065722820704F7074696F6E7320293B0D0A20207D2C0D0A20205F636173636164696E674C6F764974656D3A2066756E6374696F6E28297B0D0A20202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(170) := '2E6C6F6728746869732E6C6F675072656669782C20275F636173636164696E674C6F764974656D27293B0D0A0D0A202020207661720D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A2022434153434144494E47';
wwv_flow_api.g_varchar2_table(171) := '4C4F56222C0D0A202020202020202022706167654974656D73223A202723272B746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D730D0A2020202020207D2C0D0A202020202020616A61784F707469';
wwv_flow_api.g_varchar2_table(172) := '6F6E73203D207B0D0A2020202020202020226265666F726553656E64223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E6728293B0D0A20';
wwv_flow_api.g_varchar2_table(173) := '202020202020207D2C2074686973292C0D0A202020202020202022636F6D706C657465223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E486964652829';
wwv_flow_api.g_varchar2_table(174) := '3B202020202020202020200D0A20202020202020207D2C74686973290D0A2020202020207D3B0D0A0D0A20202020617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965';
wwv_flow_api.g_varchar2_table(175) := '722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A20207D2C0D0A20205F747269676765724576656E743A2066756E6374696F6E2820704576656E744E616D652C2070446174612029207B0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(176) := '6C6F6728746869732E6C6F675072656669782C20275F747269676765724576656E7427293B0D0A0D0A20202020617065782E6576656E742E747269676765722820746869732E656C656D656E742E6765742830292C20704576656E744E616D652C207044';
wwv_flow_api.g_varchar2_table(177) := '61746120293B0D0A20207D2C0D0A20205F6D616E75616C5265667265736843616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D616E75616C52656672';
wwv_flow_api.g_varchar2_table(178) := '65736843616C6C6261636B27293B0D0A0D0A20202020746869732E5F6765744F6E4C6F61644C6F7628293B0D0A20207D2C0D0A20205F676574436F6C756D6E4964784279436F6C756D6E4E616D653A2066756E6374696F6E282070436F6C756D6E4E616D';
wwv_flow_api.g_varchar2_table(179) := '6520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D65272C202770436F6C756D6E4E616D65272C2070436F6C756D6E4E616D652C202763';
wwv_flow_api.g_varchar2_table(180) := '6F6C756D6E73272C20746869732E6F7074696F6E732E636F6C756D6E73293B0D0A0D0A20202020766172200D0A20202020202072657475726E56616C7565203D20756E646566696E65643B0D0A0D0A20202020666F722028766172206920696E20746869';
wwv_flow_api.g_varchar2_table(181) := '732E6F7074696F6E732E636F6C756D6E7329207B0D0A2020202020206966202820746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D45203D3D2070436F6C756D6E4E616D6529207B0D0A202020202020202061706578';
wwv_flow_api.g_varchar2_table(182) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D6E2022272B70436F6C756D6E4E616D652B272220666F756E642C2072657475726E2069747320494458';
wwv_flow_api.g_varchar2_table(183) := '2E27293B0D0A202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E4944583B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202069662028';
wwv_flow_api.g_varchar2_table(184) := '2072657475726E56616C7565203D3D20756E646566696E65642029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D';
wwv_flow_api.g_varchar2_table(185) := '6E2022272B70436F6C756D6E4E616D652B2722206E6F7420666F756E642C2072657475726E2031737420636F6C756D6E2E272C20746869732E6F7074696F6E732E636F6C756D6E735B305D2E494458293B0D0A20202020202072657475726E56616C7565';
wwv_flow_api.g_varchar2_table(186) := '203D20746869732E6F7074696F6E732E636F6C756D6E735B305D2E4944583B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E';
wwv_flow_api.g_varchar2_table(187) := '616D652072657475726E732022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20207072696E7446756E6374696F6E546F436F6E736F6C653A2066756E6374';
wwv_flow_api.g_varchar2_table(188) := '696F6E28207046756E6374696F6E426F647920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20277072696E7446756E6374696F6E546F436F6E736F6C6527293B0D0A0D0A202020207661722061727261';
wwv_flow_api.g_varchar2_table(189) := '79203D207046756E6374696F6E426F64792E73706C697428225C6E22293B0D0A0D0A20202020666F722028207661722069203D20303B2069203C2061727261792E6C656E6774683B20692B2B2029207B0D0A202020202020617065782E64656275672E69';
wwv_flow_api.g_varchar2_table(190) := '6E666F28746869732E6C6F675072656669782C202723272C2061727261795B695D293B20200D0A202020207D0D0A20207D2C0D0A20205F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E3A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(191) := '28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E27293B0D0A0D0A202020207661722066756E633B0D0A0D';
wwv_flow_api.g_varchar2_table(192) := '0A20202020747279207B0D0A20202020202066756E63203D206E65772046756E6374696F6E280D0A20202020202020202270526F77222C0D0A202020202020202022746869732E64617461203D2070526F773B5C6E222B0D0A2020202020202020272F2F';
wwv_flow_api.g_varchar2_table(193) := '617065782E64656275672E6C6F672822272B746869732E6C6F675072656669782B27222C202270726F6D7074437573746F6D54656D706C617465222C2070526F77293B272B225C6E222B0D0A2020202020202020746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(194) := '6E67732E70726F6D70742E74656D706C6174650D0A202020202020293B0D0A0D0A202020202020746869732E7072696E7446756E6374696F6E546F436F6E736F6C65282066756E632E746F537472696E67282920293B0D0A0D0A20202020202061706578';
wwv_flow_api.g_varchar2_table(195) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374696F6E206372656174656422293B0D0A202020200D0A202020207D';
wwv_flow_api.g_varchar2_table(196) := '206361746368286572726F7229207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374';
wwv_flow_api.g_varchar2_table(197) := '696F6E2063616E277420626520637265617465643A20222B6572726F722E6D657373616765293B0D0A202020202020746869732E7072696E7446756E6374696F6E546F436F6E736F6C652820746869732E706C7567696E53657474696E67732E70726F6D';
wwv_flow_api.g_varchar2_table(198) := '70742E74656D706C61746520293B0D0A0D0A202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A202020202020202022616464496E666F2220203A202746756E6374696F6E2072657475726E696E';
wwv_flow_api.g_varchar2_table(199) := '672070726F6D70742074656D706C61746520686173206572726F72732E272C0D0A2020202020202020226572726F7222202020203A2027496E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B2722';
wwv_flow_api.g_varchar2_table(200) := '20636F6E66696775726174696F6E2E272C0D0A20202020202020202274656368496E666F22203A205B0D0A202020202020202020207B0D0A202020202020202020202020226E616D65223A206572726F722E6E616D652C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(201) := '202276616C7565223A206572726F722E6D6573736167650D0A202020202020202020207D2C0D0A202020202020202020207B0D0A202020202020202020202020226E616D65223A202746756E6374696F6E272C0D0A202020202020202020202020227661';
wwv_flow_api.g_varchar2_table(202) := '6C7565223A20746869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C6174650D0A202020202020202020207D0D0A0D0A202020202020202020200D0A20202020202020205D0D0A2020202020207D2C2074727565293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(203) := '202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F722820293B0D0A0D0A2F2F202020202020746869732E5F7468726F774572726F725465787428206572726F7220290D0A202020207D0D0A202020200D0A20202020';
wwv_flow_api.g_varchar2_table(204) := '0D0A2020202072657475726E2066756E633B0D0A0D0A20207D2C0D0A20205F6170706C795472616E736C6174696F6E733A2066756E6374696F6E28297B0D0A20202020766172207472616E736C6174696F6E73203D20746869732E6F7074696F6E732E61';
wwv_flow_api.g_varchar2_table(205) := '7474726962757465732E7472616E736C6174696F6E733B0D0A0D0A2020202069662028207472616E736C6174696F6E732E6C656E677468203E20302029207B0D0A202020202020666F72202820766172206920696E207472616E736C6174696F6E732029';
wwv_flow_api.g_varchar2_table(206) := '207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6170706C795472616E736C6174696F6E73272C207472616E736C6174696F6E735B695D2E5452414E534C415441424C455F4D4553534147';
wwv_flow_api.g_varchar2_table(207) := '452C207472616E736C6174696F6E735B695D2E4D4553534147455F54455854293B0D0A2020202020202020746869735B7472616E736C6174696F6E735B695D2E5452414E534C415441424C455F4D4553534147452E7265706C61636528275041454C495F';
wwv_flow_api.g_varchar2_table(208) := '272C2027435F27295D203D207472616E736C6174696F6E735B695D2E4D4553534147455F544558543B0D0A2020202020207D0D0A202020207D0D0A20207D2C0D0A20205F696E7465677261746557697468417065784170693A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(209) := '2029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E676574283029293B0D0A0D0A20202020766172200D';
wwv_flow_api.g_varchar2_table(210) := '0A202020202020704F7074696F6E73203D207B0D0A20202020202020202273657456616C7565223A20242E70726F78792866756E6374696F6E28207056616C75652C2070446973706C617956616C75652029207B0D0A2020202020202020202061706578';
wwv_flow_api.g_varchar2_table(211) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773657456616C7565272C20277056616C75653D22272B7056616C75652B2722272C202770446973706C617956616C75';
wwv_flow_api.g_varchar2_table(212) := '653D22272B70446973706C617956616C75652B272227293B0D0A0D0A202020202020202020202F2F6966205375707072657373204368616E6765206576656E74206F662064796E616D6963205365742076616C756520616374696F6E2069732073657420';
wwv_flow_api.g_varchar2_table(213) := '746F204E4F0D0A20202020202020202020696620282021617267756D656E74735B325D2029207B0D0A202020202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841';
wwv_flow_api.g_varchar2_table(214) := '706578417069272C202773657456616C7565272C20275375707072657373204368616E6765204576656E742069732073657420746F20224E6F222E204368616E6765206576656E742077696C6C20626520646F75626C65642E27293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(215) := '202020207D0D0A0D0A2020202020202020202069662028207056616C75652E6C656E677468203D3D20302029207B0D0A202020202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A2020202020202020202020207468';
wwv_flow_api.g_varchar2_table(216) := '69732E5F70726F6D7074456D7074794D61736B28293B0D0A202020202020202020202020746869732E656C656D656E742E76616C286E756C6C293B0D0A202020202020202020207D0D0A20202020202020202020656C7365207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(217) := '202020202F2F74727565202D3E2074726967676572206368616E6765206576656E740D0A202020202020202020202020746869732E5F6765744F6E4C6F61644C6F7628207056616C756520293B0D0A202020202020202020207D0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(218) := '20200D0A0D0A20202020202020207D2C2074686973292C20202020202020200D0A20202020202020202F2F5370656369667920612076616C7565207468617420746F206265207573656420746F2064657465726D696E6520696620746865206974656D20';
wwv_flow_api.g_varchar2_table(219) := '6973206E756C6C2E200D0A20202020202020202F2F546869732069732075736564207768656E20746865206974656D20737570706F72747320646566696E6974696F6E206F662061204C697374206F662056616C7565732C200D0A20202020202020202F';
wwv_flow_api.g_varchar2_table(220) := '2F7768657265206120646576656C6F7065722063616E20646566696E652061204E756C6C2052657475726E2056616C756520666F7220746865206974656D20616E64200D0A20202020202020202F2F7768657265207468652064656661756C7420697465';
wwv_flow_api.g_varchar2_table(221) := '6D2068616E646C696E67206E6565647320746F206B6E6F77207468697320696E206F7264657220746F2061737365727420696620746865206974656D206973206E756C6C206F7220656D7074792E0D0A20202020202020206E756C6C56616C75653A2020';
wwv_flow_api.g_varchar2_table(222) := '22222C0D0A202020202020202022656E61626C65223A20242E70726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E74656772617465576974';
wwv_flow_api.g_varchar2_table(223) := '6841706578417069272C20746869732E656C656D656E742E6765742830292E69642C2027656E61626C6527293B0D0A0D0A20202020202020202020746869732E5F656E61626C6528293B0D0A20202020202020207D2C2074686973292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(224) := '2020202264697361626C65223A20242E70726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E74656772617465576974684170657841706927';
wwv_flow_api.g_varchar2_table(225) := '2C20746869732E656C656D656E742E6765742830292E69642C202764697361626C6527293B0D0A0D0A20202020202020202020746869732E5F64697361626C6528293B0D0A20202020202020207D2C2074686973292C0D0A202020202020202022616674';
wwv_flow_api.g_varchar2_table(226) := '65724D6F64696679223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C207468';
wwv_flow_api.g_varchar2_table(227) := '69732E656C656D656E742E6765742830292E69642C202761667465724D6F64696679272C20746869732E656C656D656E742E76616C2829293B0D0A202020202020202020200D0A202020202020202020202F2F636F6E736F6C652E6C6F67282761667465';
wwv_flow_api.g_varchar2_table(228) := '724D6F6469667927293B0D0A202020202020202020202F2F20636F646520746F20616C77617973206669726520616674657220746865206974656D20686173206265656E206D6F646966696564202876616C7565207365742C20656E61626C65642C2065';
wwv_flow_api.g_varchar2_table(229) := '74632E290D0A20202020202020207D2C2074686973292C0D0A2020202020202020226C6F6164696E67496E64696361746F72223A20242E70726F78792866756E6374696F6E2820704C6F6164696E67496E64696361746F722420297B0D0A202020202020';
wwv_flow_api.g_varchar2_table(230) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C20276C6F6164696E67496E64696361746F';
wwv_flow_api.g_varchar2_table(231) := '7227293B0D0A202020202020202020202F2F20636F646520746F2061646420746865206C6F6164696E6720696E64696361746F7220696E20746865206265737420706C61636520666F7220746865206974656D0D0A202020202020202020207265747572';
wwv_flow_api.g_varchar2_table(232) := '6E20704C6F6164696E67496E64696361746F72243B0D0A20202020202020207D2C2074686973292C202020202020200D0A20202020202020200D0A20202020202020202F2F736574466F637573546F3A20746869732E6D61736B2E706F70757042757474';
wwv_flow_api.g_varchar2_table(233) := '6F6E2C0D0A202020202020202022736574466F637573546F223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E74656772617465';
wwv_flow_api.g_varchar2_table(234) := '5769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C2027736574466F637573546F27293B0D0A0D0A2020202020202020202072657475726E20746869732E6D61736B2E706F707570427574746F6E3B0D0A202020';
wwv_flow_api.g_varchar2_table(235) := '20202020207D2C2074686973292C0D0A2020202020202020227365745374796C65546F223A20746869732E6D61736B2E636F6E7461696E65722C202020200D0A20202020202020202267657456616C7565223A20242E70726F78792866756E6374696F6E';
wwv_flow_api.g_varchar2_table(236) := '2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C2027676574';
wwv_flow_api.g_varchar2_table(237) := '56616C756527293B0D0A202020202020202020200D0A2020202020202020202072657475726E20746869732E656C656D656E742E76616C28293B0D0A0D0A20202020202020207D2C2074686973292C0D0A20202020202020202273686F77223A20242E70';
wwv_flow_api.g_varchar2_table(238) := '726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765';
wwv_flow_api.g_varchar2_table(239) := '742830292E69642C202773686F7727293B0D0A202020202020202020202F2F636F6E736F6C652E6C6F67282773686F7727293B0D0A202020202020202020202F2F20636F646520746861742073686F777320746865206974656D20747970650D0A202020';
wwv_flow_api.g_varchar2_table(240) := '20202020207D2C2074686973292C0D0A20202020202020202268696465223A20242E70726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E74';
wwv_flow_api.g_varchar2_table(241) := '6567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C20276869646527293B0D0A202020202020202020202F2F636F6E736F6C652E6C6F6728276869646527293B0D0A202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(242) := '20636F6465207468617420686964657320746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A20202020202020202261646456616C7565223A20242E70726F78792866756E6374696F6E28207056616C75652029207B0D';
wwv_flow_api.g_varchar2_table(243) := '0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C202761646456616C7565';
wwv_flow_api.g_varchar2_table(244) := '272C207056616C7565293B0D0A202020202020202020202F2F636F6E736F6C652E6C6F67282761646456616C756527293B0D0A202020202020202020202F2F20636F646520746861742061646473207056616C756520746F207468652076616C75657320';
wwv_flow_api.g_varchar2_table(245) := '616C726561647920696E20746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A2020202020207D3B0D0A0D0A20202020617065782E7769646765742E696E6974506167654974656D2820746869732E656C656D656E742E';
wwv_flow_api.g_varchar2_table(246) := '617474722827696427292C20704F7074696F6E73293B202020200D0A20207D2C0D0A2F2F20200D0A2F2F205075626C696320706C7567696E206D6574686F64730D0A2F2F0D0A0D0A2F2F20200D0A2F2F205072697661746520706C7567696E206D657468';
wwv_flow_api.g_varchar2_table(247) := '6F64730D0A2F2F0D0A20205F64697361626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F64697361626C6527293B0D0A0D0A20202020746869732E656C656D656E';
wwv_flow_api.g_varchar2_table(248) := '742E70726F7028202264697361626C6564222C207472756520293B0D0A20202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E616464436C61737328';
wwv_flow_api.g_varchar2_table(249) := '2764697361626C656427293B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E70726F70282764697361626C6564272C2074727565293B0D0A20207D2C0D0A20205F656E61626C653A2066756E6374696F6E28297B0D0A2020202061';
wwv_flow_api.g_varchar2_table(250) := '7065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F656E61626C6527293B0D0A0D0A20202020746869732E656C656D656E742E70726F7028202264697361626C6564222C2066616C736520293B0D0A20202020746869732E6D';
wwv_flow_api.g_varchar2_table(251) := '61736B2E73746174652E64697361626C6564203D2066616C73653B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C617373282764697361626C656427293B0D0A20202020746869732E6D61736B2E706F7075704275';
wwv_flow_api.g_varchar2_table(252) := '74746F6E2E70726F70282764697361626C6564272C2066616C7365293B0D0A20207D2C0D0A20205F6372656174654D61736B4465627567427574746F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E';
wwv_flow_api.g_varchar2_table(253) := '6C6F675072656669782C20275F6372656174654D61736B4465627567427574746F6E27293B0D0A0D0A0D0A2020202076617220627574746F6E203D202428273C627574746F6E20636C6173733D2264656275674175746F636F6D706C65746520612D4275';
wwv_flow_api.g_varchar2_table(254) := '74746F6E20612D427574746F6E2D2D706F7075704C4F56223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27292E636C69636B28242E70726F7879282066756E6374696F6E28704576656E7429';
wwv_flow_api.g_varchar2_table(255) := '7B0D0A202020202020704576656E742E70726576656E7444656661756C7428293B0D0A0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C202764656275672070726F6D7074272C20746869732E6D61736B29';
wwv_flow_api.g_varchar2_table(256) := '3B0D0A0D0A202020207D2C20746869732029293B0D0A0D0A20202020627574746F6E2E6174747228277469746C65272C202757726974657320746F20636F6E736F6C65206175746F636F6D706C65746520737461746527293B0D0A0D0A202020202F2F74';
wwv_flow_api.g_varchar2_table(257) := '6869732E656C656D656E742E61667465722820627574746F6E20293B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E61667465722820627574746F6E20293B0D0A0D0A20207D2C0D0A20205F676574457874726156616C7565733A';
wwv_flow_api.g_varchar2_table(258) := '2066756E6374696F6E28207056616C75657353656E742C20704461746152657475726E656420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C7565732820272B746869';
wwv_flow_api.g_varchar2_table(259) := '732E656C656D656E742E6765742830292E69642B27202927293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C20277056616C75657353656E74272C20705661';
wwv_flow_api.g_varchar2_table(260) := '6C75657353656E74293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C2027704461746152657475726E6564272C20704461746152657475726E65642E6C656E';
wwv_flow_api.g_varchar2_table(261) := '6774682C20704461746152657475726E6564293B0D0A0D0A2020202076617220657874726156616C756573203D20242E657874656E64285B5D2C207056616C75657353656E74292E66696C7465722866756E6374696F6E2028656C656D656E7429207B0D';
wwv_flow_api.g_varchar2_table(262) := '0A20202020202072657475726E20656C656D656E7420213D206E756C6C20262620656C656D656E742E6C656E677468203E20303B0D0A202020207D293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20704461746152657475726E65';
wwv_flow_api.g_varchar2_table(263) := '642E6C656E6774683B20692B2B2029207B0D0A0D0A202020202020696E6465784F66203D20657874726156616C7565732E696E6465784F662820704461746152657475726E65645B695D2E522E746F537472696E67282920293B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(264) := '6966202820696E6465784F66203E202D312029207B0D0A2020202020202020657874726156616C7565732E73706C6963652820696E6465784F662C203120293B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(265) := '6669782C20275F676574457874726156616C756573272C202772656D6F76696E6720272B704461746152657475726E65645B695D2E522E746F537472696E6728292B272066726F6D20272C20657874726156616C756573293B0D0A2020202020207D0D0A';
wwv_flow_api.g_varchar2_table(266) := '202020202020656C7365207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C20276C6F6F6B696E6720666F7220272B704461746152657475726E6564';
wwv_flow_api.g_varchar2_table(267) := '5B695D2E522E746F537472696E6728292B2720696E20272C20657874726156616C756573293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744578';
wwv_flow_api.g_varchar2_table(268) := '74726156616C756573272C2027657874726156616C756573272C20657874726156616C756573293B202020200D0A0D0A2020202072657475726E20657874726156616C7565733B0D0A20207D2C0D0A20202F2F66612D6578636C616D6174696F6E2D7472';
wwv_flow_api.g_varchar2_table(269) := '69616E676C650D0A20205F6D61736B416A61785374617465427574746F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A6178537461746542';
wwv_flow_api.g_varchar2_table(270) := '7574746F6E4869646527293B0D0A0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E73686F7728293B0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A20207D';
wwv_flow_api.g_varchar2_table(271) := '2C0D0A20205F6D61736B416A61785374617465427574746F6E5365744572726F723A2066756E6374696F6E2820704F626A6563742C207053746F70506C7567696E20297B200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(272) := '656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F7227293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E53657445';
wwv_flow_api.g_varchar2_table(273) := '72726F72272C2027704F626A656374272C20704F626A656374293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F72272C2027705374';
wwv_flow_api.g_varchar2_table(274) := '6F70506C7567696E272C207053746F70506C7567696E293B0D0A202020200D0A20202020242E657874656E6428746869732E6D61736B2E616A61785374617465427574746F6E2C207B226572726F724F626A656374223A704F626A6563747D293B0D0A0D';
wwv_flow_api.g_varchar2_table(275) := '0A202020202F2F6572726F72206F6363757265642062757420646F6E2774206861766520746F2073746F7020706C7567696E2075736167650D0A20202020746869732E6D61736B2E73746174652E6572726F72203D20747275653B0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(276) := '662028207053746F70506C7567696E202920207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F722073746F7020706C7567696E';
wwv_flow_api.g_varchar2_table(277) := '2127293B20200D0A202020202020746869732E706C7567696E53746F70706564203D20747275653B20200D0A202020202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0D0A202020207D0D0A20207D2C0D0A20205F';
wwv_flow_api.g_varchar2_table(278) := '6D61736B416A61785374617465427574746F6E446973706C61794572726F723A2066756E6374696F6E2820297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574';
wwv_flow_api.g_varchar2_table(279) := '746F6E446973706C61794572726F7227293B0D0A0D0A20202020766172200D0A202020202020636F6E7461696E65722020203D202428273C64697620636C6173733D22636F6E7461696E6572223E3C2F6469763E27292C0D0A2020202020206469764572';
wwv_flow_api.g_varchar2_table(280) := '726F72202020203D202428273C64697620636C6173733D226572726F72223E3C2F6469763E27292C0D0A2020202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0D0A202020';
wwv_flow_api.g_varchar2_table(281) := '20202064697654656368496E666F203D202428273C6469763E3C2F6469763E27292C0D0A202020202020707265203D202428273C7072653E3C2F7072653E27292C0D0A2020202020206F7074696F6E7320203D207B0D0A2020202020202020226469616C';
wwv_flow_api.g_varchar2_table(282) := '6F67436C617373222020203A2022707265746975732D2D656E68616E6365644C6F764974656D206572726F72222C0D0A2020202020202020226175746F4F70656E222020202020203A20747275652C0D0A202020202020202022617070656E64546F2220';
wwv_flow_api.g_varchar2_table(283) := '20202020203A2027626F6479272C0D0A2020202020202020226D6F64616C222020202020202020203A20747275652C0D0A202020202020202022706F736974696F6E222020202020203A207B0D0A20202020202020202020226D79223A202263656E7465';
wwv_flow_api.g_varchar2_table(284) := '72222C200D0A20202020202020202020226174223A202263656E746572222C200D0A20202020202020202020226F66223A2077696E646F770D0A20202020202020207D2C0D0A2020202020202020227469746C65222020202020202020203A2074686973';
wwv_flow_api.g_varchar2_table(285) := '2E706C7567696E53657474696E67732E706F7075702E7469746C652C0D0A2020202020202020227769647468222020202020202020203A203830302C0D0A2020202020202020226D696E5769647468222020202020203A203530302C0D0A202020202020';
wwv_flow_api.g_varchar2_table(286) := '2020226865696768742220202020202020203A203534312C0D0A2020202020202020226D696E4865696768742220202020203A203235352C0D0A202020202020202022726573697A61626C652220202020203A2066616C73652C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(287) := '22647261676761626C65222020202020203A2066616C73652C0D0A202020202020202022636C6F73654F6E45736361706520223A20747275652C0D0A2020202020202020226F70656E22202020202020202020203A20242E70726F7879282066756E6374';
wwv_flow_api.g_varchar2_table(288) := '696F6E28297B0D0A20202020202020202020242827626F647927292E616464436C6173732827617065782D6E6F2D7363726F6C6C27293B2020202020202020202020202020202020200D0A20202020202020207D2C207468697320292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(289) := '202020226265666F7265436C6F7365222020203A20242E70726F7879282066756E6374696F6E28297B0D0A20202020202020202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B20202020202020';
wwv_flow_api.g_varchar2_table(290) := '20202020202020202020200D0A20202020202020207D2C207468697320290D0A2020202020207D3B2020202020200D0A0D0A202020206966202820746869732E706C7567696E53746F70706564203D3D2066616C73652029207B0D0A2020202020207468';
wwv_flow_api.g_varchar2_table(291) := '69732E6D61736B2E706F707570427574746F6E2E73686F7728293B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A202020207D0D0A0D0A202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(292) := '706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A20202020202069662028200D0A2020202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20213D';
wwv_flow_api.g_varchar2_table(293) := '20756E646566696E6564200D0A2020202020202020262620746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20696E7374616E63656F662041727261790D0A20202020202029207B0D0A';
wwv_flow_api.g_varchar2_table(294) := '2020202020202020666F72202876617220693D303B2069203C20746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F2E6C656E6774683B20692B2B29207B0D0A2020202020202020202070';
wwv_flow_api.g_varchar2_table(295) := '72652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F5B695D2E6E616D652B273A20272B746869732E6D61736B2E616A61785374617465427574746F6E2E657272';
wwv_flow_api.g_varchar2_table(296) := '6F724F626A6563742E74656368496E666F5B695D2E76616C756520293B0D0A202020202020202020207072652E617070656E6428225C6E22293B0D0A20202020202020207D0D0A2020202020207D0D0A202020202020656C736520696620282074686973';
wwv_flow_api.g_varchar2_table(297) := '2E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20213D20756E646566696E656420297B0D0A20202020202020207072652E617070656E642820746869732E6D61736B2E616A6178537461746542';
wwv_flow_api.g_varchar2_table(298) := '7574746F6E2E6572726F724F626A6563742E74656368496E666F20293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207072652E617070656E6428746869732E435F4552524F525F44454255475F4F4646293B';
wwv_flow_api.g_varchar2_table(299) := '0D0A202020207D0D0A0D0A202020206469764D6573736167652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E6572726F7220293B0D0A202020206469764572726F722E617070656E';
wwv_flow_api.g_varchar2_table(300) := '642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E616464496E666F20293B0D0A0D0A2020202064697654656368496E666F2E617070656E6428707265293B0D0A202020200D0A0D0A20202020636F6E';
wwv_flow_api.g_varchar2_table(301) := '7461696E65720D0A2020202020202E617070656E64286469764D657373616765290D0A2020202020202E617070656E64286469764572726F72290D0A2020202020202E617070656E642864697654656368496E666F290D0A2020202020202E6469616C6F';
wwv_flow_api.g_varchar2_table(302) := '6728206F7074696F6E7320293B0D0A0D0A20207D2C0D0A20205F6D61736B416A61785374617465427574746F6E4572726F723A2066756E6374696F6E2820297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(303) := '20275F6D61736B416A61785374617465427574746F6E4572726F72272C20746869732E706C7567696E53746F70706564293B0D0A0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E6869646528293B0D0A0D0A20202020746869732E';
wwv_flow_api.g_varchar2_table(304) := '6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290D0A2020202020202E72656D6F7665436C61737328290D0A2020202020202E616464436C617373282769636F6E2066612066612D6578636C616D61';
wwv_flow_api.g_varchar2_table(305) := '74696F6E2D747269616E676C652066612D616E696D2D666C617368206572726F7227293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0D0A0D0A202020206966202820746869';
wwv_flow_api.g_varchar2_table(306) := '732E706C7567696E53746F707065642029207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E282027636C69636B272C20242E70726F78792820746869732E5F6D61736B416A617853746174';
wwv_flow_api.g_varchar2_table(307) := '65427574746F6E446973706C61794572726F722C2074686973202920293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E65282027636C6963';
wwv_flow_api.g_varchar2_table(308) := '6B272C20242E70726F78792820746869732E5F6D61736B416A61785374617465427574746F6E446973706C61794572726F722C2074686973202920293B20200D0A202020207D0D0A202020200D0A20207D2C0D0A20205F6D61736B416A61785374617465';
wwv_flow_api.g_varchar2_table(309) := '427574746F6E52756E6E696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E52756E6E696E6727293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(310) := '2020746869732E6D61736B2E706F707570427574746F6E2E6869646528293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290D0A2020202020202E72656D6F7665';
wwv_flow_api.g_varchar2_table(311) := '417474722827636C61737327290D0A2020202020202E616464436C617373282769636F6E2066612066612D726566726573682066612D616E696D2D7370696E27293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E';
wwv_flow_api.g_varchar2_table(312) := '627574746F6E2E73686F7728293B0D0A20207D2C0D0A20205F6D61736B416A61785374617465427574746F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(313) := '6D61736B416A61785374617465427574746F6E53686F7727293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0D0A20207D2C0D0A20205F6765744F6E4C6F61644C6F763A2066';
wwv_flow_api.g_varchar2_table(314) := '756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F7627293B0D0A0D0A202020207661720D0A2020202020206D6F64652020202020';
wwv_flow_api.g_varchar2_table(315) := '3D207056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564203F202747455453455353494F4E535441544527203A20274745544F4E4C5953454C4543544544272C0D0A20202020202076616C7565732020203D2070';
wwv_flow_api.g_varchar2_table(316) := '56616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564203F205B5D203A207056616C75652E73706C697428746869732E435F56414C55455F534550415241544F52292C0D0A202020202020616A617844617461203D20';
wwv_flow_api.g_varchar2_table(317) := '7B0D0A202020202020202022783031223A206D6F64652C20202F2F747279620D0A202020202020202022663031223A2076616C756573202F2F73656C65637465642076616C7565730D0A2020202020207D2C0D0A202020202020616A61784F7074696F6E';
wwv_flow_api.g_varchar2_table(318) := '73203D207B0D0A20202020202020200D0A2020202020202020226265666F726553656E6422203A20242E70726F78792866756E6374696F6E2820704A715848522C207053657474696E677320297B0D0A20202020202020202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(319) := '2E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20276265666F72652073656E6427293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E6728';
wwv_flow_api.g_varchar2_table(320) := '293B0D0A0D0A20202020202020207D2C2074686973292C0D0A2020202020202020227375636365737322202020203A20242E70726F78792866756E6374696F6E2820704D6F64652C207056616C75657353656E742C2070446174612C2070546578745374';
wwv_flow_api.g_varchar2_table(321) := '617475732C20704A71584852297B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C2027704D6F6465272C20704D6F646529';
wwv_flow_api.g_varchar2_table(322) := '3B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20277056616C75657353656E74272C207056616C75657353656E74293B';
wwv_flow_api.g_varchar2_table(323) := '0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20277044617461272C207044617461293B0D0A2020202020202020202061';
wwv_flow_api.g_varchar2_table(324) := '7065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20277054657874537461747573272C207054657874537461747573293B0D0A202020202020202020206170';
wwv_flow_api.g_varchar2_table(325) := '65782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C2027704A71584852272C20704A71584852293B0D0A0D0A20202020202020202020766172200D0A2020202020';
wwv_flow_api.g_varchar2_table(326) := '202020202020206F626A65637454656D702C0D0A20202020202020202020202076616C75657345787472613B0D0A0D0A2020202020202020202070446174612E646174612E736F72742820746869732E5F736F72744A736F6E28202244222C2022617363';
wwv_flow_api.g_varchar2_table(327) := '22202920293B0D0A20202020202020202020746869732E6D61736B2E73746174652E736F72746564203D2022617363223B0D0A0D0A20202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A2020202020202020202074';
wwv_flow_api.g_varchar2_table(328) := '6869732E5F70726F6D7074456D7074794D61736B28293B0D0A0D0A20202020202020202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A2020202020202020202020200D0A2020';
wwv_flow_api.g_varchar2_table(329) := '202020202020202020206F626A65637454656D70203D207B0D0A20202020202020202020202020202276616C75652220203A2070446174612E646174615B695D2E522E746F537472696E6728292C0D0A202020202020202020202020202022646973706C';
wwv_flow_api.g_varchar2_table(330) := '6179223A2070446174612E646174615B695D2E440D0A2020202020202020202020207D3B0D0A0D0A202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428206F626A65637454656D702C2066616C73652C2066';
wwv_flow_api.g_varchar2_table(331) := '616C736520293B0D0A202020202020202020207D0D0A0D0A202020202020202020202F2F6966202820704D6F6465203D3D20274745544F4E4C5953454C4543544544272029207B0D0A202020202020202020206966202820704D6F6465203D3D20274745';
wwv_flow_api.g_varchar2_table(332) := '5453455353494F4E5354415445272029207B0D0A2020202020202020202020207056616C75657353656E74203D2070446174612E73657373696F6E3B0D0A202020202020202020207D0D0A0D0A2020202020202020202069662028200D0A202020202020';
wwv_flow_api.g_varchar2_table(333) := '202020202020746869732E706C7567696E53657474696E67732E646973706C61794578747261200D0A2020202020202020202020202626207056616C75657353656E7420213D20756E646566696E65640D0A202020202020202020202020262620705661';
wwv_flow_api.g_varchar2_table(334) := '6C75657353656E742E6C656E677468203E2030200D0A2020202020202020202029207B0D0A0D0A20202020202020202020202076616C7565734578747261203D20746869732E5F676574457874726156616C75657328207056616C75657353656E742E73';
wwv_flow_api.g_varchar2_table(335) := '706C697428746869732E435F56414C55455F534550415241544F52292C2070446174612E6461746120293B0D0A0D0A202020202020202020202020666F7220282076617220693D303B2069203C2076616C75657345787472612E6C656E6774683B20692B';
wwv_flow_api.g_varchar2_table(336) := '2B2029207B0D0A20202020202020202020202020206F626A65637454656D70203D207B0D0A202020202020202020202020202020202276616C75652220203A2076616C75657345787472615B695D2C0D0A20202020202020202020202020202020226469';
wwv_flow_api.g_varchar2_table(337) := '73706C6179223A2076616C75657345787472615B695D0D0A20202020202020202020202020207D3B0D0A0D0A2020202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428206F626A65637454656D702C206661';
wwv_flow_api.g_varchar2_table(338) := '6C73652C207472756520293B0D0A2020202020202020202020207D0D0A202020202020202020207D0D0A202020202020202020202F2F7D0D0A202020200D0A20202020202020202020746869732E5F70726F6D707452656E6465725461677328293B0D0A';
wwv_flow_api.g_varchar2_table(339) := '0D0A20202020202020202020746869732E5F70726F6D70744170706C7956616C75657328293B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4869646528293B0D0A0D0A202020202020202020202F2F7768';
wwv_flow_api.g_varchar2_table(340) := '656E2041504558206974656D20636F6E7461696E73206D756C7469706C652076616C756573206275740D0A202020202020202020202F2F697420697320636F6E6669677572656420746F20776F726B20776974682073696E67756C61722073656C656374';
wwv_flow_api.g_varchar2_table(341) := '696F6E0D0A2020202020202020202069662028200D0A202020202020202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A20202020202020202020202026262074';
wwv_flow_api.g_varchar2_table(342) := '6869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20310D0A2020202020202020202029207B0D0A202020202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A';
wwv_flow_api.g_varchar2_table(343) := '2020202020202020202020202020226572726F7222202020203A2027496E76616C696420696E7075742076616C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272C0D0A2020202020202020202020202020226164';
wwv_flow_api.g_varchar2_table(344) := '64496E666F2220203A2027546865206974656D20697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272C';
wwv_flow_api.g_varchar2_table(345) := '0D0A20202020202020202020202020202274656368496E666F22203A2027436865636B2073657373696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E742E617474722827696427292B272220616E6420696E';
wwv_flow_api.g_varchar2_table(346) := '73706563742070726F6365737365732068616E646C696E672073657373696F6E2076616C7565206F66206974656D2E270D0A2020202020202020202020207D2C2066616C7365293B0D0A0D0A202020202020202020202020746869732E5F6D61736B416A';
wwv_flow_api.g_varchar2_table(347) := '61785374617465427574746F6E4572726F7228293B0D0A0D0A202020202020202020202020746869732E5F7468726F774572726F725465787428200D0A202020202020202020202020202027496E76616C696420696E7075742076616C7565206163636F';
wwv_flow_api.g_varchar2_table(348) := '7264696E6720746F2069747320636F6E66696775726174696F6E2E272B0D0A202020202020202020202020202027546865206974656D20697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E2062757420';
wwv_flow_api.g_varchar2_table(349) := '73657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272B0D0A202020202020202020202020202027436865636B2073657373696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E';
wwv_flow_api.g_varchar2_table(350) := '742E617474722827696427292B272220616E6420696E73706563742070726F6365737365732068616E646C696E672073657373696F6E2076616C7565206F66206974656D2E270D0A202020202020202020202020293B0D0A202020202020202020207D0D';
wwv_flow_api.g_varchar2_table(351) := '0A0D0A20202020202020207D2C20746869732C206D6F64652C207056616C756520292C0D0A2020202020202020226572726F72222020202020203A20242E70726F78792866756E6374696F6E28704A715848522C2070546578745374617475732C207045';
wwv_flow_api.g_varchar2_table(352) := '72726F725468726F776E297B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20276572726F7227293B0D0A20202020202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(353) := '6275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C2027704A71584852272C20704A71584852293B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(354) := '2C20275F6765744F6E4C6F61644C6F76272C20277054657874537461747573272C207054657874537461747573293B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61';
wwv_flow_api.g_varchar2_table(355) := '644C6F76272C2027704572726F725468726F776E272C20704572726F725468726F776E293B0D0A0D0A202020202020202020202F2F6572726F724D6573736167650D0A202020202020202020206966202820746869732E656C656D656E742E76616C2829';
wwv_flow_api.g_varchar2_table(356) := '2E6C656E677468203E20302029207B0D0A202020202020202020202020746869732E5F6D61736B447261775461677346726F6D496E76616C696456616C75657328293B0D0A202020202020202020207D0D0A0D0A20202020202020202020746869732E5F';
wwv_flow_api.g_varchar2_table(357) := '6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202020202020202022616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E666F2C0D0A2020202020202020202020202265';
wwv_flow_api.g_varchar2_table(358) := '72726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0D0A2020202020202020202020202274656368496E666F22203A20704A715848522E726573706F6E73654A534F4E2E74656368496E666F0D0A202020202020';
wwv_flow_api.g_varchar2_table(359) := '202020207D293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A20202020202020202020746869732E5F7468726F774572726F72546578742820704572726F725468726F';
wwv_flow_api.g_varchar2_table(360) := '776E20293B0D0A202020202020202020200D0A20202020202020207D2C2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F78792866756E6374696F6E28297B0D0A0D0A20202020202020207D2C207468697329';
wwv_flow_api.g_varchar2_table(361) := '0D0A2020202020207D3B202020200D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202776616C75657320746F206765742074616773272C76616C756573293B0D';
wwv_flow_api.g_varchar2_table(362) := '0A202020200D0A20202020617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A20207D2C0D0A';
wwv_flow_api.g_varchar2_table(363) := '20202F2A0D0A20202020504F5055500D0A20202A2F0D0A20205F6D61736B447261775461677346726F6D496E76616C696456616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(364) := '6669782C20275F6D61736B447261775461677346726F6D496E76616C696456616C75657327293B0D0A0D0A202020207661722076616C756573203D20746869732E656C656D656E742E76616C28292E73706C697428746869732E435F56414C55455F5345';
wwv_flow_api.g_varchar2_table(365) := '50415241544F52293B0D0A0D0A20202020696620282076616C7565732E6C656E677468203E20302029207B0D0A202020202020666F722028766172206920696E2076616C75657329207B0D0A20202020202020202F2F5F70726F6D707454616773416464';
wwv_flow_api.g_varchar2_table(366) := '4E65773A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C756520297B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E6577282076616C7565735B695D2C2076616C7565';
wwv_flow_api.g_varchar2_table(367) := '735B695D2C207472756520293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F70726F6D7074506C616365486F6C6465724869646528293B0D0A202020200D0A202020207D0D0A2020202020200D0A20207D2C0D0A20205F706F70757053';
wwv_flow_api.g_varchar2_table(368) := '656C656374656447657456616C75654172723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C656374656447657456616C756541727227293B0D0A20';
wwv_flow_api.g_varchar2_table(369) := '20202076617220617272203D205B5D3B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820217468';
wwv_flow_api.g_varchar2_table(370) := '69732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0D0A20202020202020206172722E707573682820746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C7565';
wwv_flow_api.g_varchar2_table(371) := '20293B20200D0A2020202020207D0D0A2020202020200D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C656374656447657456616C7565417272272C20617272';
wwv_flow_api.g_varchar2_table(372) := '293B0D0A2020202072657475726E206172723B0D0A20207D2C0D0A20205F706F707570416A61784765744F6E6C7953656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(373) := '69782C20275F706F707570416A61784765744F6E6C7953656C656374656427293B0D0A0D0A202020207661720D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A20274745544F4E4C5953454C4543544544272C20';
wwv_flow_api.g_varchar2_table(374) := '20202020202020202020202020202F2F747279620D0A202020202020202022663031223A20746869732E5F706F70757053656C656374656447657456616C75654172722829202F2F73656C65637465642076616C7565730D0A2020202020207D2C0D0A20';
wwv_flow_api.g_varchar2_table(375) := '2020202020616A61784F7074696F6E73203D207B0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0D0A202020202020202022737563';
wwv_flow_api.g_varchar2_table(376) := '6365737322202020203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2020202074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F706F707570416A6178';
wwv_flow_api.g_varchar2_table(377) := '4572726F722C20202020202074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C20202074686973290D0A2020202020207D3B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(378) := '202F2F7462640D0A20202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A617844617461';
wwv_flow_api.g_varchar2_table(379) := '2C20616A61784F7074696F6E7320293B0D0A0D0A20207D2C0D0A20205F706F707570416A6178506572666F726D3A2066756E6374696F6E282070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C20705365617263';
wwv_flow_api.g_varchar2_table(380) := '68537472696E672C2070536561726368436F6C756D6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A6178506572666F726D27293B0D0A0D0A202020207661720D0A20202020';
wwv_flow_api.g_varchar2_table(381) := '2020736561726368537472696E67203D2070536561726368537472696E672C0D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A2027504F505550272C202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(382) := '202F2F747279620D0A202020202020202022783032223A20746869732E5F706F707570476574526F77735065725061676528292C20202020202F2F726F77732070657220706167650D0A202020202020202022783033223A207053656172636853747269';
wwv_flow_api.g_varchar2_table(383) := '6E672C202020202020202020202020202020202020202F2F73656172636820737472696E670D0A202020202020202022783034223A207050616765203D3D20756E646566696E6564203F2031203A2070506167652C20202F2F706167650D0A2020202020';
wwv_flow_api.g_varchar2_table(384) := '20202022783035223A2070536F72744279436F6C756D6E4964782C0D0A202020202020202022783036223A2070446972656374696F6E2C0D0A202020202020202022783037223A2070536561726368436F6C756D6E0D0A2020202020207D2C0D0A0D0A20';
wwv_flow_api.g_varchar2_table(385) := '2020202020616A61784F7074696F6E73203D207B0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0D0A202020202020202022737563';
wwv_flow_api.g_varchar2_table(386) := '6365737322202020203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F706F707570416A6178457272';
wwv_flow_api.g_varchar2_table(387) := '6F722C2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C2074686973290D0A2020202020207D3B0D0A0D0A20202020696620282074686973';
wwv_flow_api.g_varchar2_table(388) := '2E706F7075702E73746174652E616A617852756E6E696E672029207B0D0A202020202020746869732E5F706F707570416A617841626F727428293B0D0A20202020202073657454696D656F75742820242E70726F78792820746869732E5F706F70757041';
wwv_flow_api.g_varchar2_table(389) := '6A6178506572666F726D2C20746869732C2070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C2070536561726368537472696E672C2070536561726368436F6C756D6E20292C2033303020293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(390) := '2072657475726E20766F69642830293B0D0A202020207D0D0A0D0A0D0A202020202F2F69742077696C6C2062652073657420616761696E20616674657220616A61782077696C6C20737563636565640D0A20202020746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(391) := '652E736561726368537472696E67202020202020202020203D2070536561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E6C6173744665746368656450616765202020202020203D207050616765203D3D20756E6465';
wwv_flow_api.g_varchar2_table(392) := '66696E6564203F2031203A2070506167653B0D0A20202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D2070536F72744279436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(393) := '746174652E736F72746564436F6C756D6E446972656374696F6E203D2070446972656374696F6E3B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478202020202020203D2070536561726368436F6C756D6E';
wwv_flow_api.g_varchar2_table(394) := '3B0D0A0D0A0D0A20202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C';
wwv_flow_api.g_varchar2_table(395) := '20616A61784F7074696F6E7320293B0D0A0D0A20207D2C0D0A20205F706F707570416A61784265666F726553656E643A2066756E6374696F6E282020704A715848522C207053657474696E67732029207B0D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(396) := '6728746869732E6C6F675072656669782C20275F706F707570416A61784265666F726553656E6427293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D20747275653B0D0A20202020746869732E706F70';
wwv_flow_api.g_varchar2_table(397) := '75702E636F6E74656E745461626C65203D20756E646566696E65643B0D0A20202020746869732E706F7075702E626F64792E616464436C6173732827736561726368696E6727293B0D0A0D0A202020206966202820746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(398) := '652E697356697369626C6520262620746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E656429207B0D0A202020202020746869732E5F706F7075705265706F7274486561646572576964676574';
wwv_flow_api.g_varchar2_table(399) := '4869646528293B20200D0A202020207D0D0A0D0A20202020746869732E5F706F7075705265706F727452656E646572536561726368696E672830293B0D0A202020200D0A20207D2C0D0A20205F706F707570416A61784461746146696E64496E64657842';
wwv_flow_api.g_varchar2_table(400) := '7952657475726E56616C75653A2066756E6374696F6E282070446174612C207052657475726E56616C75652029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784461746146';
wwv_flow_api.g_varchar2_table(401) := '696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C7565272C207052657475726E56616C7565293B0D0A0D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20';
wwv_flow_api.g_varchar2_table(402) := '692B2B2029207B0D0A202020202020696620282070446174612E646174615B695D2E52203D3D207052657475726E56616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(403) := '707570416A61784461746146696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C756520666F756E6420617420696E64657820272B69293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A';
wwv_flow_api.g_varchar2_table(404) := '202020207D0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C75';
wwv_flow_api.g_varchar2_table(405) := '65206E6F7420666F756E6427293B0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20205F706F707570457874656E6444617461576974684E756C6C56616C7565733A2066756E6374696F6E2820704461746120297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(406) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570457874656E6444617461576974684E756C6C56616C756573272C20277044617461272C207044617461293B0D0A0D0A202020207661720D0A20202020202069735365';
wwv_flow_api.g_varchar2_table(407) := '6C6563746564203D2066616C73653B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B297B0D0A2020202020206966202820746869732E706F';
wwv_flow_api.g_varchar2_table(408) := '7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0D0A2020202020202020697353656C6563746564203D20747275653B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A20202020';
wwv_flow_api.g_varchar2_table(409) := '7D0D0A0D0A2020202070446174612E646174612E756E7368696674287B0D0A2020202020202252223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652C0D0A2020202020202244223A20746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(410) := '2E6974656D2E6C6F765F6E756C6C5F746578742C0D0A202020202020226973415045584E756C6C56616C7565223A20747275652C0D0A2020202020202273656C6563746564223A20697353656C65637465640D0A202020207D293B0D0A0D0A2020202072';
wwv_flow_api.g_varchar2_table(411) := '657475726E2070446174613B0D0A0D0A20207D2C0D0A20205F706F707570457874656E644461746157697468457874726156616C7565733A2066756E6374696F6E282070446174612029207B0D0A20202020617065782E64656275672E6C6F6728746869';
wwv_flow_api.g_varchar2_table(412) := '732E6C6F675072656669782C20275F706F707570457874656E644461746157697468457874726156616C756573272C20277044617461272C207044617461293B0D0A0D0A20202020766172200D0A2020202020206964782C0D0A2020202020206E657741';
wwv_flow_api.g_varchar2_table(413) := '72726179203D20242E657874656E6428205B5D2C2070446174612E6461746120292C0D0A2020202020206E6577526F774F626A6563743B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73';
wwv_flow_api.g_varchar2_table(414) := '656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020696478203D20746869732E5F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565282070446174612C20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(415) := '6174652E73656C65637465645B695D2E76616C756520293B0D0A0D0A2020202020206966202820696478203D3D202D312029207B0D0A0D0A20202020202020206E6577526F774F626A656374203D207B0D0A202020202020202020202252223A20746869';
wwv_flow_api.g_varchar2_table(416) := '732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0D0A202020202020202020202244223A20746869732E706F7075702E73746174652E73656C65637465645B695D2E646973706C61792C0D0A202020202020202020202273';
wwv_flow_api.g_varchar2_table(417) := '656C6563746564223A20747275652C0D0A20202020202020202020226578747261223A20747275650D0A20202020202020207D3B0D0A0D0A202020202020202069662028206E6577526F774F626A6563742E52203D3D20746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(418) := '6974656D2E6C6F765F6E756C6C5F76616C75652029207B0D0A202020202020202020202F2F6E756C6C2076616C75650D0A202020202020202020206E6577526F774F626A6563742E6578747261203D2066616C73653B0D0A202020202020202020206E65';
wwv_flow_api.g_varchar2_table(419) := '77526F774F626A6563742E6973415045584E756C6C56616C7565203D20747275653B0D0A20202020202020207D0D0A0D0A20202020202020206E657741727261792E756E7368696674286E6577526F774F626A656374290D0A2020202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(420) := '20207D0D0A0D0A2020202070446174612E64617461203D206E657741727261793B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20205F706F707570416A6178537563636573733A2066756E6374696F6E282070446174612C20';
wwv_flow_api.g_varchar2_table(421) := '70546578745374617475732C20704A71584852297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A617853756363657373272C20277044617461272C207044617461293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(422) := '202020766172206D657373616765203D20746869732E435F504F5055505F544558545F46494C54455245445F494E464F0D0A202020202020202020202E7265706C61636528272530272C2070446174612E746F74616C436F756E74290D0A202020202020';
wwv_flow_api.g_varchar2_table(423) := '202020202E7265706C61636528272531272C2070446174612E736561726368537472696E6729202B20746869732E435F504F5055505F544558545F434C4541525F46494C544552494E473B0D0A0D0A20202020746869732E706F707570496E666F726D61';
wwv_flow_api.g_varchar2_table(424) := '74696F6E4869646528293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617853746174757320202020202020202020202020202020203D20746869732E435F414A41585F5354415455535F535543434553533B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(425) := '746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2020202020203D2070446174612E736F72744279436F6C756D6E446972656374696F6E3B0D0A20202020746869732E706F7075702E73746174652E736F72';
wwv_flow_api.g_varchar2_table(426) := '746564436F6C756D6E4964782020202020202020202020203D2070446174612E736F72744279436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E6C61737446657463686564506167652020202020202020202020203D20';
wwv_flow_api.g_varchar2_table(427) := '70446174612E726571756573746564506167653B0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E672020202020202020202020202020203D2070446174612E736561726368537472696E673B0D0A20202020746869';
wwv_flow_api.g_varchar2_table(428) := '732E706F7075702E73746174652E736561726368436F6C756D6E4964782020202020202020202020203D2070446174612E736561726368436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E616A617844617461546F7461';
wwv_flow_api.g_varchar2_table(429) := '6C436F756E742020202020202020203D2070446174612E746F74616C436F756E743B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E74506167654461746120202020202020203D20746869732E5F646174614578';
wwv_flow_api.g_varchar2_table(430) := '74656E6453656C656374656446726F6D41727261794F664F626A656374732870446174612C20746869732E706F7075702E73746174652E73656C6563746564292E646174613B0D0A20202020746869732E706F7075702E73746174652E616A6178437572';
wwv_flow_api.g_varchar2_table(431) := '72656E7450616765526F776E756D5374617274203D2070446174612E726F776E756D53746172743B0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D456E642020203D2070446174612E726F';
wwv_flow_api.g_varchar2_table(432) := '776E756D456E643B0D0A0D0A0D0A20202020696620282070446174612E72657175657374203D3D20274745544F4E4C5953454C4543544544272029207B0D0A2020202020207044617461203D20746869732E5F706F707570457874656E64446174615769';
wwv_flow_api.g_varchar2_table(433) := '7468457874726156616C7565732820704461746120293B2020202020200D0A202020202020746869732E706F7075702E73746174652E616A617853656C656374656444617461203D20746869732E706F7075702E73746174652E616A617843757272656E';
wwv_flow_api.g_varchar2_table(434) := '7450616765446174613B0D0A202020202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A202020202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A0D0A202020207D0D0A20202020656C';
wwv_flow_api.g_varchar2_table(435) := '736520696620282070446174612E72657175657374203D3D2027504F505550272029207B0D0A202020202020746869732E5F706F707570526F77735065725061676553686F7728293B0D0A202020202020746869732E5F706F707570506167696E617469';
wwv_flow_api.g_varchar2_table(436) := '6F6E53686F7728293B0D0A0D0A202020202020696620282070446174612E736561726368537472696E6720213D206E756C6C202626202070446174612E646174612E6C656E677468203E20302029207B0D0A2020202020202020746869732E5F706F7075';
wwv_flow_api.g_varchar2_table(437) := '70496E666F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F504F5055505F544558545F46494C54455245445F494E464F293B20200D0A2020202020207D0D0A0D0A2020202020202F2F68616E646C652041504558204C4F56';
wwv_flow_api.g_varchar2_table(438) := '206E756C6C2076616C75650D0A20202020202069662028200D0A2020202020202020746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D2031200D0A202020202020202026262070446174612E736561726368537472';
wwv_flow_api.g_varchar2_table(439) := '696E67203D3D206E756C6C0D0A2020202020202020262620280D0A20202020202020202020746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F7465787420213D20756E646566696E65640D0A202020202020202020207C7C2074686973';
wwv_flow_api.g_varchar2_table(440) := '2E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C756520213D20756E646566696E65640D0A2020202020202020290D0A20202020202029207B0D0A20202020202020207044617461203D20746869732E5F706F707570457874656E644461';
wwv_flow_api.g_varchar2_table(441) := '7461576974684E756C6C56616C7565732820704461746120293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F7075705265706F727452656E6465722820704461746120293B0D0A0D0A202020202F2F69662074686572';
wwv_flow_api.g_varchar2_table(442) := '65206973206E6F2073656172636820737472696E6720636C65617220676C6F62616C20736561726368206974656D0D0A20202020696620282021746869732E706F7075702E73746174652E736561726368537472696E672026262021746869732E706F70';
wwv_flow_api.g_varchar2_table(443) := '75702E73746174652E736561726368436F6C756D6E4964782029207B0D0A202020202020746869732E706F7075702E7365617263682E76616C286E756C6C293B0D0A202020207D0D0A0D0A20202020696620282070446174612E717565727920213D2075';
wwv_flow_api.g_varchar2_table(444) := '6E646566696E65642029207B0D0A202020202020746869732E5F77726974655175657279546F436F6E736F6C65282070446174612E717565727920293B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(445) := '72656669782C20275F706F707570416A617853756363657373272C20277374617465272C20746869732E706F7075702E7374617465293B0D0A20207D2C0D0A20202F2F746869732E5F706F707570416A6178447261774572726F722820704A715848522E';
wwv_flow_api.g_varchar2_table(446) := '726573706F6E73654A534F4E2E6572726F722C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F20293B0D0A20205F706F707570416A6178447261774572726F723A2066756E6374696F6E282070416A6178526573706F6E736520';
wwv_flow_api.g_varchar2_table(447) := '297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A6178447261774572726F72272C2070416A6178526573706F6E7365293B0D0A0D0A20202020766172200D0A202020202020636F6E';
wwv_flow_api.g_varchar2_table(448) := '7461696E65722020203D202428273C64697620636C6173733D22616A61784572726F72223E3C2F6469763E27292C0D0A2020202020206469764572726F72202020203D202428273C64697620636C6173733D226572726F72223E3C2F6469763E27292C0D';
wwv_flow_api.g_varchar2_table(449) := '0A2020202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0D0A20202020202064697654656368496E666F203D202428273C6469763E3C2F6469763E27292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(450) := '20707265203D202428273C7072653E3C2F7072653E27293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020666F72202876617220693D303B2069203C2070416A61';
wwv_flow_api.g_varchar2_table(451) := '78526573706F6E73652E74656368496E666F2E6C656E6774683B20692B2B29207B0D0A20202020202020207072652E617070656E64282070416A6178526573706F6E73652E74656368496E666F5B695D2E6E616D652B273A20272B70416A617852657370';
wwv_flow_api.g_varchar2_table(452) := '6F6E73652E74656368496E666F5B695D2E76616C756520293B0D0A20202020202020207072652E617070656E6428225C6E22293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207072652E617070656E642874';
wwv_flow_api.g_varchar2_table(453) := '6869732E435F4552524F525F44454255475F4F4646293B0D0A202020207D0D0A0D0A202020206469764D6573736167652E617070656E64282070416A6178526573706F6E73652E6572726F7220293B0D0A202020206469764572726F722E617070656E64';
wwv_flow_api.g_varchar2_table(454) := '282070416A6178526573706F6E73652E616464496E666F20293B0D0A0D0A2020202064697654656368496E666F2E617070656E6428707265293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E617070656E64286469764D6573736167';
wwv_flow_api.g_varchar2_table(455) := '65290D0A2020202020202E617070656E64286469764572726F72290D0A2020202020202E617070656E642864697654656368496E666F293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461';
wwv_flow_api.g_varchar2_table(456) := '696E6572293B0D0A20202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A20202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A20207D2C20200D0A20205F706F707570416A6178457272';
wwv_flow_api.g_varchar2_table(457) := '6F723A2066756E6374696F6E28704A715848522C2070546578745374617475732C20704572726F725468726F776E297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784572726F';
wwv_flow_api.g_varchar2_table(458) := '72272C2027704A71584852272C20704A71584852293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C20277054657874537461747573272C2070546578745374';
wwv_flow_api.g_varchar2_table(459) := '61747573293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C2027704572726F725468726F776E272C20704572726F725468726F776E293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(460) := '7661722061727261793B0D0A0D0A202020206966202820704A715848522E73746174757354657874203D3D202761626F7274272029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075';
wwv_flow_api.g_varchar2_table(461) := '70416A61784572726F72272C2027414A41582063616C6C2061626F727465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E73746174652E616A6178537461747573';
wwv_flow_api.g_varchar2_table(462) := '20202020202020202020203D20746869732E435F414A41585F5354415455535F4552524F523B0D0A20202020746869732E706F7075702E73746174652E616A61784461746146657463686564436F756E74203D20756E646566696E65643B0D0A20202020';
wwv_flow_api.g_varchar2_table(463) := '746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742020203D20756E646566696E65643B0D0A0D0A20202020746869732E5F706F7075704865616465724869646528293B0D0A20202020746869732E5F706F70757046';
wwv_flow_api.g_varchar2_table(464) := '6F6F7465724869646528293B0D0A0D0A202020202F2A0D0A2020202069662028207054657874537461747573203D3D20277061727365726572726F72272029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(465) := '69782C2027414A415820726573706E736520656E64656420696E207061727365206572726F7227293B0D0A202020202020746869732E5F706F707570416A6178447261774572726F7228293B0D0A202020207D0D0A20202020656C7365200D0A20202020';
wwv_flow_api.g_varchar2_table(466) := '2A2F0D0A202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F20213D20756E646566696E65642029207B0D0A2020202020200D0A202020202020746869732E5F706F707570416A6178447261774572726F722820';
wwv_flow_api.g_varchar2_table(467) := '704A715848522E726573706F6E73654A534F4E20293B0D0A0D0A202020202020666F72202876617220693D303B2069203C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F2E6C656E6774683B20692B2B2029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(468) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E6E616D652C20704A715848522E726573706F6E73654A53';
wwv_flow_api.g_varchar2_table(469) := '4F4E2E74656368496E666F5B695D2E76616C7565293B0D0A0D0A20202020202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E696E6465784F6628275C6E2729203E202D312029207B0D';
wwv_flow_api.g_varchar2_table(470) := '0A202020202020202020206172726179203D20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E73706C697428275C6E27293B0D0A0D0A20202020202020202020666F722028207661722079203D20303B20';
wwv_flow_api.g_varchar2_table(471) := '79203C2061727261792E6C656E6774683B20792B2B2029207B0D0A202020202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E';
wwv_flow_api.g_varchar2_table(472) := '74656368496E666F5B695D2E6E616D652C2061727261795B795D293B2020202020202020202020200D0A202020202020202020207D0D0A20202020202020207D0D0A2020202020207D2020202020200D0A202020207D0D0A0D0A20202020746869732E5F';
wwv_flow_api.g_varchar2_table(473) := '706F707570416A6178436F6D706C65746528293B0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F6572726F72272C20746869732E5F706F7075704765744576656E74446174612829293B0D0A2020202074';
wwv_flow_api.g_varchar2_table(474) := '6869732E5F7468726F774572726F722820704572726F725468726F776E20293B0D0A20207D2C0D0A20205F706F707570416A6178436F6D706C6574653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C';
wwv_flow_api.g_varchar2_table(475) := '6F675072656669782C20275F706F707570416A6178436F6D706C65746527293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A0D0A202020200D0A0D0A20202020617065782E6465';
wwv_flow_api.g_varchar2_table(476) := '6275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A6178436F6D706C657465272C2027706F707570207374617465272C20746869732E706F7075702E7374617465293B0D0A0D0A20207D2C0D0A0D0A20205F706F70757041';
wwv_flow_api.g_varchar2_table(477) := '6A617841626F72743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A617841626F727427293B0D0A0D0A20202020746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(478) := '652E7868722E61626F727428293B0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A202020200D0A0D0A20207D2C0D0A0D0A20205F706F70757047657453656C6563746564486173683A20';
wwv_flow_api.g_varchar2_table(479) := '66756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757047657453656C65637465644861736827293B0D0A0D0A20202020766172200D0A2020202020206E657741727261';
wwv_flow_api.g_varchar2_table(480) := '79203D20746869732E706F7075702E73746174652E73656C65637465642E6D61702866756E6374696F6E287043757272656E7456616C75652C2070496E6465782C20704172726179297B0D0A202020202020202072657475726E207043757272656E7456';
wwv_flow_api.g_varchar2_table(481) := '616C75652E76616C75653B0D0A2020202020207D292C0D0A20202020202068617368436F6465203D20746869732E5F67657448617368436F646528206E657741727261792E6A6F696E28273A272920293B0D0A0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(482) := '6C6F6728746869732E6C6F675072656669782C20275F706F70757047657453656C6563746564486173682072657475726E7320272C2068617368436F6465293B0D0A0D0A2020202072657475726E2068617368436F64653B0D0A20207D2C0D0A20205F67';
wwv_flow_api.g_varchar2_table(483) := '657448617368436F64653A2066756E6374696F6E282070537472696E672029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F67657448617368436F6465272C2070537472696E67293B0D0A202020';
wwv_flow_api.g_varchar2_table(484) := '202F2F696D706C656D656E746174696F6E206F662068747470733A2F2F737461636B6F766572666C6F772E636F6D2F7175657374696F6E732F373631363436312F67656E65726174652D612D686173682D66726F6D2D737472696E672D696E2D6A617661';
wwv_flow_api.g_varchar2_table(485) := '7363726970740D0A20202020766172200D0A20202020202068617368203D20302C200D0A202020202020692C200D0A2020202020206368723B0D0A0D0A202020206966202870537472696E672E6C656E677468203D3D3D203029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(486) := '72657475726E20686173683B0D0A202020207D0D0A0D0A20202020666F72202869203D20303B2069203C2070537472696E672E6C656E6774683B20692B2B29207B0D0A2020202020206368722020203D2070537472696E672E63686172436F6465417428';
wwv_flow_api.g_varchar2_table(487) := '69293B0D0A2020202020206861736820203D20282868617368203C3C203529202D206861736829202B206368723B0D0A20202020202068617368207C3D20303B202F2F20436F6E7665727420746F20333262697420696E74656765720D0A202020207D0D';
wwv_flow_api.g_varchar2_table(488) := '0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F67657448617368436F64652072657475726E73272C2068617368293B0D0A2020202072657475726E20686173683B0D0A20207D2C0D0A20205F706F70';
wwv_flow_api.g_varchar2_table(489) := '75704469616C6F674265666F7265436C6F736543616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570446961';
wwv_flow_api.g_varchar2_table(490) := '6C6F674265666F7265436C6F736543616C6C6261636B272C20704576656E742C20705569293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E73656C656374696E672029207B0D0A202020202020746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(491) := '73746174652E73656C656374696E67203D2066616C73653B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E73746174652E73656C65637465644861736820213D20746869';
wwv_flow_api.g_varchar2_table(492) := '732E5F706F70757047657453656C65637465644861736828292029207B0D0A202020202F2F6966202820746869732E706F7075702E73746174652E73656C65637465642E6C656E677468203E20302029207B0D0A20202020202072657475726E20636F6E';
wwv_flow_api.g_varchar2_table(493) := '6669726D2820746869732E435F504F5055505F544558545F554E53415645445F4348414E4745532E7265706C61636528272530272C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774682920293B0D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(494) := '202020656C7365207B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074506C616365486F6C64657253686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(495) := '6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074506C616365486F6C64657253686F7727293B0D0A0D0A20202020746869732E6D61736B2E706C616365686F6C6465722E73686F7728293B0D0A20207D2C0D0A20205F70726F6D7074';
wwv_flow_api.g_varchar2_table(496) := '506C616365486F6C646572486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074506C616365486F6C6465724869646527293B0D0A0D0A2020202074';
wwv_flow_api.g_varchar2_table(497) := '6869732E6D61736B2E706C616365686F6C6465722E6869646528293B0D0A20207D2C0D0A20205F70726F6D7074456D707479546167733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(498) := '69782C20275F70726F6D7074456D7074795461677327293B0D0A0D0A20202020746869732E6D61736B2E73746174652E74616773203D205B5D3B0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E656D70747928293B0D0A2020';
wwv_flow_api.g_varchar2_table(499) := '20200D0A20207D2C0D0A20205F70726F6D7074456D7074794D61736B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074456D7074794D61736B27293B0D0A';
wwv_flow_api.g_varchar2_table(500) := '0D0A20202020746869732E6D61736B2E73746174652E73656C6563746564203D205B5D3B0D0A20207D2C0D0A0D0A20205F706F70757053656C656374416E64436C6F73653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(501) := '6728746869732E6C6F675072656669782C20275F706F70757053656C656374416E64436C6F736527293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A20202020746869732E5F70726F6D7074456D707479546167';
wwv_flow_api.g_varchar2_table(502) := '7328293B0D0A0D0A20202020746869732E656C656D656E742E76616C286E756C6C293B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2920';
wwv_flow_api.g_varchar2_table(503) := '7B0D0A202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A20202020202020207B0D0A2020202020202020202022646973706C6179222020202020202020203A20746869732E706F7075702E73746174652E73656C';
wwv_flow_api.g_varchar2_table(504) := '65637465645B695D2E646973706C61792C0D0A202020202020202020202276616C75652220202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0D0A2020202020202020202022697341';
wwv_flow_api.g_varchar2_table(505) := '5045584E756C6C56616C756522203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652C0D0A20202020202020207D2C202F2F704F626A6563740D0A202020202020202066616C73652C20';
wwv_flow_api.g_varchar2_table(506) := '2F2F70547269676765724368616E67654576656E740D0A2020202020202020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973457874726156616C75652C202F2F704973457874726156616C75650D0A202020202020202074';
wwv_flow_api.g_varchar2_table(507) := '6869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C7565202F2F7049734E756C6C56616C75650D0A2020202020202020293B0D0A202020207D0D0A0D0A20202020746869732E5F70726F6D7074417070';
wwv_flow_api.g_varchar2_table(508) := '6C7956616C75657328293B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C656374696E67203D20747275653B0D0A0D0A20202020746869732E5F706F707570436C6F736528293B0D0A202020202F2F0D0A20207D2C0D0A20205F70';
wwv_flow_api.g_varchar2_table(509) := '6F707570436C65617246696C746572696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436C65617246696C746572696E6727293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(510) := '6966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F70757053686F7753656C6563746564436865636B626F784368616E6765';
wwv_flow_api.g_varchar2_table(511) := '28293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570536561726368436C65617228207472756520293B0D0A202020207D0D0A20207D2C0D0A20205F706F707570536561726368436C6561723A2066756E';
wwv_flow_api.g_varchar2_table(512) := '6374696F6E282070506572666F726D416A617820297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368436C656172272C2027666F726365206B6579207570272C2070506572';
wwv_flow_api.g_varchar2_table(513) := '666F726D416A6178293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E67203D206E756C6C3B0D0A20202020746869732E706F7075702E7365617263682E76616C286E756C6C293B0D0A0D0A20202020696620';
wwv_flow_api.g_varchar2_table(514) := '282070506572666F726D416A61782029207B0D0A202020202020746869732E706F7075702E7365617263682E7472696767657228276B6579757027293B0D0A0D0A202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869';
wwv_flow_api.g_varchar2_table(515) := '732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(516) := '20202F2F0D0A202020200D0A20207D2C0D0A20205F706F7075704E65774F7074696F6E3A2066756E6374696F6E28207056616C75652C207054657874297B0D0A2020202072657475726E202428273C6F7074696F6E2076616C75653D22272B7056616C75';
wwv_flow_api.g_varchar2_table(517) := '652B27223E272B70546578742B273C2F6F7074696F6E3E27293B0D0A20207D2C0D0A20205F706F707570446562756753746174654F626A6563743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(518) := '5072656669782C20275F706F707570446562756753746174654F626A656374272C20746869732E706F7075702E7374617465293B0D0A0D0A20202020666F72202820766172206920696E20746869732E706F7075702E73746174652029207B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(519) := '20202020206966202820746869732E706F7075702E73746174655B695D20696E7374616E63656F662041727261792029207B0D0A2020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F';
wwv_flow_api.g_varchar2_table(520) := '7075702E73746174652E272B692B272041525241592053544152542720293B20200D0A0D0A2020202020202020666F72202820766172207820696E20746869732E706F7075702E73746174655B695D2029207B0D0A20202020202020202020617065782E';
wwv_flow_api.g_varchar2_table(521) := '64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B275B272B782B275D272C20746869732E706F7075702E73746174655B695D5B785D20293B20200D0A20202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(522) := '0D0A2020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B2720415252415920454E442720293B20200D0A20202020202020200D0A2020202020207D';
wwv_flow_api.g_varchar2_table(523) := '0D0A202020202020656C7365207B0D0A2020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B27203D2022272B746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(524) := '655B695D2B27222720293B20200D0A2020202020207D0D0A0D0A2020202020200D0A202020207D0D0A0D0A20207D2C0D0A20205F706F707570436C6F73653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(525) := '2E6C6F675072656669782C20275F706F707570436C6F736527293B0D0A0D0A20202020746869732E706F7075702E636F6E7461696E65722E6469616C6F672827636C6F736527293B0D0A0D0A20202020746869732E5F747269676765724576656E742827';
wwv_flow_api.g_varchar2_table(526) := '7061656C695F706F7075705F68696464656E272C20746869732E5F706F7075704765744576656E74446174612829293B0D0A20207D2C0D0A20205F706F7075704765744576656E74446174613A2066756E6374696F6E28297B0D0A202020207265747572';
wwv_flow_api.g_varchar2_table(527) := '6E207B0D0A2020202020202268656164657222202020202020203A20746869732E706F7075702E6865616465722C0D0A20202020202022636F6E7461696E657222202020203A20746869732E706F7075702E636F6E7461696E65722C0D0A202020202020';
wwv_flow_api.g_varchar2_table(528) := '22626F6479222020202020202020203A20746869732E706F7075702E626F64792C0D0A20202020202022666F6F74657222202020202020203A20746869732E706F7075702E666F6F7465722C0D0A20202020202022706167696E6174696F6E222020203A';
wwv_flow_api.g_varchar2_table(529) := '20746869732E706F7075702E706167696E6174696F6E2C0D0A2020202020202273656172636822202020202020203A20746869732E706F7075702E7365617263682C0D0A20202020202022726F7773506572506167652220203A20746869732E706F7075';
wwv_flow_api.g_varchar2_table(530) := '702E726F7773506572506167652C0D0A20202020202022636F6E74656E745461626C6522203A20746869732E706F7075702E636F6E74656E745461626C652C0D0A2020202020202273746174652220202020202020203A207B0D0A202020202020202022';
wwv_flow_api.g_varchar2_table(531) := '73656C65637465642220202020202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465642C0D0A202020202020202022736561726368537472696E6722202020202020202020203A20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(532) := '6174652E736561726368537472696E672C0D0A202020202020202022736561726368436F6C756D6E49647822202020202020203A20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0D0A202020202020202022736F72';
wwv_flow_api.g_varchar2_table(533) := '746564436F6C756D6E49647822202020202020203A20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A202020202020202022736F72746564436F6C756D6E446972656374696F6E22203A20746869732E706F7075';
wwv_flow_api.g_varchar2_table(534) := '702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0D0A202020202020202022616A617852756E6E696E672220202020202020202020203A20746869732E706F7075702E73746174652E616A617852756E6E696E670D0A20202020';
wwv_flow_api.g_varchar2_table(535) := '20207D0D0A202020207D3B0D0A20207D2C0D0A20205F706F7075704F70656E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E27293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(536) := '202020746869732E706F7075702E626F64792E656D70747928293B0D0A20202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F70656E27293B0D0A0D0A20207D2C0D0A20205F706F7075704F70656E4279427574746F6E3A';
wwv_flow_api.g_varchar2_table(537) := '2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E4279427574746F6E27293B0D0A0D0A20202020704576656E742E70726576656E';
wwv_flow_api.g_varchar2_table(538) := '7444656661756C7428293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70';
wwv_flow_api.g_varchar2_table(539) := '656E4279427574746F6E272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(540) := '4F70656E28293B0D0A20207D2C0D0A20205F706F707570437265617465506167696E6174696F6E436F6E7461696E65723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(541) := '706F707570437265617465506167696E6174696F6E436F6E7461696E657227293B0D0A202020207661720D0A2020202020202F2F0D0A202020202020706167696E6174696F6E436F6E7461696E65722020203D202428273C64697620636C6173733D2270';
wwv_flow_api.g_varchar2_table(542) := '6167696E6174696F6E436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020706167696E6174696F6E50726576696F7573202020203D202428273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D';
wwv_flow_api.g_varchar2_table(543) := '2270726576223E3C7370616E20636C6173733D2266612066612D63617265742D6C656674223E3C2F7370616E3E20272B746869732E435F504F5055505F504147494E4154494F4E5F505245562B273C2F613E27292C0D0A202020202020706167696E6174';
wwv_flow_api.g_varchar2_table(544) := '696F6E43757272656E7420202020203D202428273C7370616E20636C6173733D2263757272656E74223E3F3C2F7370616E3E27292C0D0A202020202020706167696E6174696F6E4E65787420202020202020203D202428273C6120687265663D226A6176';
wwv_flow_api.g_varchar2_table(545) := '617363726970743A20766F69642830292220636C6173733D226E657874223E272B746869732E435F504F5055505F504147494E4154494F4E5F4E4558542B27203C7370616E20636C6173733D2266612066612D63617265742D7269676874223E3C2F7370';
wwv_flow_api.g_varchar2_table(546) := '616E3E3C2F613E27293B0D0A0D0A202020202F2F706167696E6174650D0A20202020706167696E6174696F6E436F6E7461696E65720D0A2020202020202E617070656E642820706167696E6174696F6E50726576696F757320290D0A2020202020202E61';
wwv_flow_api.g_varchar2_table(547) := '7070656E642820706167696E6174696F6E43757272656E7420290D0A2020202020202E617070656E642820706167696E6174696F6E4E65787420293B0D0A0D0A2020202072657475726E20706167696E6174696F6E436F6E7461696E65723B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(548) := '207D2C0D0A20205F706F7075704372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704372656174654E657727293B0D0A20202020766172';
wwv_flow_api.g_varchar2_table(549) := '200D0A202020202020686561646572202020202020202020202020202020203D202428273C64697620636C6173733D22686561646572223E3C2F6469763E27292C0D0A202020202020696E666F726D6174696F6E20202020202020202020203D20242827';
wwv_flow_api.g_varchar2_table(550) := '3C64697620636C6173733D22696E666F726D6174696F6E2068696464656E223E203C64697620636C6173733D2274657874223E3C2F6469763E203C2F6469763E27292C0D0A202020202020736561726368436F6E7461696E6572202020202020203D2024';
wwv_flow_api.g_varchar2_table(551) := '28273C64697620636C6173733D22736561726368436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020726F777350657250616765436F6E7461696E657220203D202428273C64697620636C6173733D22726F777350657250616765436F';
wwv_flow_api.g_varchar2_table(552) := '6E7461696E6572223E3C2F6469763E27292C0D0A202020202020726F77735065725061676553656C65637420202020203D202428273C73656C6563743E3C2F73656C65637427292C0D0A0D0A202020202020736561726368496E70757420202020202020';
wwv_flow_api.g_varchar2_table(553) := '202020203D202428273C696E70757420747970653D22746578742220706C616365686F6C6465723D22272B746869732E435F504F5055505F5345415243485F504C414345484F4C4445522B272220636C6173733D22656D707479223E27292C0D0A202020';
wwv_flow_api.g_varchar2_table(554) := '20202073656172636849636F6E2020202020202020202020203D202428273C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E27292C0D0A202020202020736561726368436C65617249636F6E202020';
wwv_flow_api.g_varchar2_table(555) := '202020203D202428273C7370616E20636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E27292C0D0A2020202020202F2F0D0A202020202020626F64792020202020202020202020202020202020203D202428273C64';
wwv_flow_api.g_varchar2_table(556) := '697620636C6173733D22626F6479223E3C2F6469763E27292C0D0A2020202020202F2F0D0A202020202020666F6F746572202020202020202020202020202020203D202428273C64697620636C6173733D22666F6F746572223E3C2F6469763E27292C0D';
wwv_flow_api.g_varchar2_table(557) := '0A202020202020666F6F74657253686F7753656C6563746564202020203D202428273C64697620636C6173733D22666F6F7465722D73686F7753656C6563746564223E3C2F6469763E27292C0D0A202020202020666F6F746572427574746F6E73202020';
wwv_flow_api.g_varchar2_table(558) := '2020202020203D202428273C64697620636C6173733D22666F6F7465722D627574746F6E73223E3C2F6469763E27292C0D0A0D0A202020202020627574746F6E53656C656374202020202020202020203D202428273C627574746F6E20636C6173733D22';
wwv_flow_api.g_varchar2_table(559) := '742D427574746F6E20742D427574746F6E2D2D686F742073656C656374223E272B746869732E435F504F5055505F42544E5F53454C4543545F544558542B273C2F627574746F6E3E27292C0D0A202020202020627574746F6E4465627567202020202020';
wwv_flow_api.g_varchar2_table(560) := '20202020203D202428273C627574746F6E20636C6173733D22742D427574746F6E206465627567223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27292C0D0A0D0A20202020202073686F7753';
wwv_flow_api.g_varchar2_table(561) := '656C6563746564496E70757420202020203D202428273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E';
wwv_flow_api.g_varchar2_table(562) := '3C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0D0A20202020202073686F7753656C65637465644C6162656C20202020203D202428273C6C6162656C3E272B74686973';
wwv_flow_api.g_varchar2_table(563) := '2E435F504F5055505F53484F575F53454C45435445445F4C4142454C2B273C2F6C6162656C3E27292C0D0A202020202020636F6E7461696E6572202020202020202020202020203D202428273C64697620636C6173733D22636F6E7461696E6572222064';
wwv_flow_api.g_varchar2_table(564) := '6174612D617065782D6974656D3D22272B746869732E656C656D656E742E6765742830292E69642B27223E3C2F6469763E27292C0D0A2020202020206578747261436C6173732020202020202020202020203D20746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(565) := '6E67732E706F7075702E636C69636B4F6E526F7753656C656374734974203F202773656C656374566961526F777327203A2027272C0D0A2020202020206F7074696F6E732020202020202020202020202020203D207B0D0A202020202020202022646961';
wwv_flow_api.g_varchar2_table(566) := '6C6F67436C617373222020203A2022707265746975732D2D656E68616E6365644C6F764974656D20222B6578747261436C6173732C0D0A2020202020202020226175746F4F70656E222020202020203A2066616C73652C0D0A2020202020202020226170';
wwv_flow_api.g_varchar2_table(567) := '70656E64546F222020202020203A2027626F6479272C0D0A2020202020202020226D6F64616C222020202020202020203A20747275652C0D0A2020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E';
wwv_flow_api.g_varchar2_table(568) := '67732E706F7075702E7469746C652C0D0A2020202020202020227769647468222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E77696474682C0D0A2020202020202020226D696E5769647468222020202020';
wwv_flow_api.g_varchar2_table(569) := '203A203530302C0D0A2020202020202020226865696768742220202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E61646A757374486569676874546F526573756C7473203F20353030203A20746869732E706C7567';
wwv_flow_api.g_varchar2_table(570) := '696E53657474696E67732E706F7075702E6865696768742C0D0A2020202020202020226D696E4865696768742220202020203A203235352C0D0A202020202020202022726573697A61626C652220202020203A20746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(571) := '6E67732E706F7075702E726573697A61626C652C0D0A202020202020202022647261676761626C652220202020203A20746869732E706C7567696E53657474696E67732E706F7075702E647261676761626C652C0D0A202020202020202022636C6F7365';
wwv_flow_api.g_varchar2_table(572) := '4F6E45736361706522203A20746869732E706C7567696E53657474696E67732E706F7075702E636C6F73654F6E4573636170652C0D0A202020202020202022726573697A6553746F7022202020203A20242E70726F78792820746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(573) := '4469616C6F67526573697A6553746F7043616C6C6261636B2C207468697320292C0D0A2020202020202020226472616722202020202020202020203A20242E70726F78792820746869732E5F706F70757044726167506F736974696F6E46697843616C6C';
wwv_flow_api.g_varchar2_table(574) := '6261636B2C207468697320292C0D0A2020202020202020226472616753746172742220202020203A20242E70726F78792820746869732E5F706F7075704469616C6F6744726167537461727443616C6C6261636B2C207468697320292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(575) := '202020226472616753746F70222020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F674472616753746F7043616C6C6261636B2C207468697320292C0D0A2020202020202020226F70656E22202020202020202020203A20';
wwv_flow_api.g_varchar2_table(576) := '242E70726F78792820746869732E5F706F7075704469616C6F674F70656E43616C6C6261636B2C207468697320292C0D0A202020202020202022636C6F7365222020202020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F';
wwv_flow_api.g_varchar2_table(577) := '67436C6F736543616C6C6261636B2C207468697320292C0D0A2020202020202020226265666F7265436C6F7365222020203A20242E70726F78792820746869732E5F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B2C207468';
wwv_flow_api.g_varchar2_table(578) := '697320290D0A2020202020207D3B0D0A0D0A20202020636F6E7461696E65722E6469616C6F6728206F7074696F6E7320293B0D0A0D0A202020202F2F73656172636820696E20616C6C20636F6C756D6E730D0A202020206966202820746869732E706C75';
wwv_flow_api.g_varchar2_table(579) := '67696E53657474696E67732E706F7075702E736561726368496E416C6C436F6C756D6E732029207B0D0A202020202020736561726368436F6E7461696E65720D0A20202020202020202E617070656E642820736561726368496E70757420290D0A202020';
wwv_flow_api.g_varchar2_table(580) := '20202020202E617070656E64282073656172636849636F6E20290D0A20202020202020202E617070656E642820736561726368436C65617249636F6E20293B0D0A0D0A2020202020206865616465722E617070656E642820736561726368436F6E746169';
wwv_flow_api.g_varchar2_table(581) := '6E657220290D0A202020207D0D0A0D0A202020202F2F726F77732070657220706167650D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167652029207B0D0A20202020202066';
wwv_flow_api.g_varchar2_table(582) := '6F72202876617220693D313B20693C3D31303B20692B2B29207B0D0A2020202020202020726F77735065725061676553656C6563742E617070656E642820746869732E5F706F7075704E65774F7074696F6E28692A31302C692A31302920293B0D0A2020';
wwv_flow_api.g_varchar2_table(583) := '202020207D0D0A0D0A202020202020726F777350657250616765436F6E7461696E65722E617070656E642820726F77735065725061676553656C65637420293B0D0A2020202020206865616465722E617070656E642820726F777350657250616765436F';
wwv_flow_api.g_varchar2_table(584) := '6E7461696E657220290D0A202020207D0D0A0D0A2020202069662028200D0A20202020202021746869732E706C7567696E53657474696E67732E706F7075702E736561726368496E416C6C436F6C756D6E730D0A20202020202026262021746869732E70';
wwv_flow_api.g_varchar2_table(585) := '6C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167650D0A2020202029207B0D0A2020202020206865616465722E616464436C6173732827706167696E6174696F6E4F6E6C7927293B0D0A202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(586) := '202F2F706167696E6174696F6E0D0A202020206865616465722E617070656E642820746869732E5F706F707570437265617465506167696E6174696F6E436F6E7461696E6572282920293B0D0A202020200D0A2020202073686F7753656C656374656449';
wwv_flow_api.g_varchar2_table(587) := '6E7075742E756E69717565496428293B0D0A2020202073686F7753656C65637465644C6162656C2E617474722827666F72272C2073686F7753656C6563746564496E7075742E61747472282769642729293B0D0A0D0A20202020666F6F74657253686F77';
wwv_flow_api.g_varchar2_table(588) := '53656C65637465640D0A2020202020202E617070656E64282073686F7753656C6563746564496E70757420290D0A2020202020202E617070656E64282073686F7753656C65637465644C6162656C20293B0D0A0D0A202020206966202820746869732E70';
wwv_flow_api.g_varchar2_table(589) := '6C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020627574746F6E44656275672E636C69636B2820242E70726F78792820746869732E5F706F707570446562756753746174654F626A6563742C207468697320292029';
wwv_flow_api.g_varchar2_table(590) := '3B0D0A202020202020666F6F746572427574746F6E732E617070656E642820627574746F6E446562756720293B0D0A202020207D0D0A0D0A20202020666F6F746572427574746F6E732E617070656E642820627574746F6E53656C65637420293B0D0A0D';
wwv_flow_api.g_varchar2_table(591) := '0A20202020666F6F7465720D0A2020202020202E617070656E6428666F6F74657253686F7753656C6563746564292020202020200D0A2020202020202E617070656E6428666F6F746572427574746F6E73293B0D0A0D0A20202020636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(592) := '0D0A2020202020202E617070656E64282068656164657220290D0A2020202020202E617070656E642820696E666F726D6174696F6E20290D0A2020202020202E617070656E642820626F647920290D0A2020202020202E617070656E642820666F6F7465';
wwv_flow_api.g_varchar2_table(593) := '7220293B0D0A0D0A2020202072657475726E20636F6E7461696E65723B0D0A20207D2C0D0A20205F706F7075704469616C6F67696E42746E436C69636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(594) := '6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F67696E42746E436C69636B27293B0D0A20207D2C0D0A20205F706F707570536561726368496E53656C6563746564446174613A2066756E6374696F6E282070536561726368';
wwv_flow_api.g_varchar2_table(595) := '436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C2070536561726368537472696E672C20704973536561726368476C6F62616C20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(596) := '275F706F707570536561726368496E53656C656374656444617461272C20746869732E706F7075702E73746174652E616A617843757272656E745061676544617461293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(597) := '6669782C20275F706F707570536561726368496E53656C656374656444617461272C2070536561726368436F6C756D6E4E616D652C2070536561726368537472696E672C20704973536561726368476C6F62616C293B0D0A0D0A20202020766172200D0A';
wwv_flow_api.g_varchar2_table(598) := '2020202020206E6577446174612C0D0A2020202020206D6573736167653B0D0A0D0A202020206966202820704973536561726368476C6F62616C2029207B0D0A2020202020206E657744617461203D20746869732E706F7075702E73746174652E616A61';
wwv_flow_api.g_varchar2_table(599) := '7853656C6563746564446174612E66696C746572282066756E6374696F6E282070526F7720297B0D0A0D0A2020202020202020666F72202820766172206920696E2070526F772029207B0D0A20202020202020202020696620282070526F775B695D2E74';
wwv_flow_api.g_varchar2_table(600) := '6F537472696E6728292E746F55707065724361736528292E696E6465784F66282070536561726368537472696E672E746F55707065724361736528292029203E202D312029207B0D0A20202020202020202020202072657475726E20747275653B0D0A20';
wwv_flow_api.g_varchar2_table(601) := '2020202020202020207D0D0A20202020202020207D0D0A202020202020202072657475726E2066616C73653B0D0A2020202020207D20293B0D0A0D0A202020207D200D0A20202020656C7365207B0D0A2020202020206E657744617461203D2074686973';
wwv_flow_api.g_varchar2_table(602) := '2E706F7075702E73746174652E616A617853656C6563746564446174612E66696C746572282066756E6374696F6E282070526F7720297B0D0A202020202020202072657475726E2070526F775B2070536561726368436F6C756D6E4E616D65205D2E746F';
wwv_flow_api.g_varchar2_table(603) := '55707065724361736528292E696E6465784F66282070536561726368537472696E672E746F55707065724361736528292029203E202D310D0A2020202020207D20293B0D0A202020207D2020200D0A20200D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(604) := '6728746869732E6C6F675072656669782C20275F706F707570536561726368496E53656C656374656444617461272C202766696C7465726564272C206E657744617461293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368';
wwv_flow_api.g_varchar2_table(605) := '537472696E67202020203D2070536561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D2070536561726368436F6C756D6E4964783B0D0A0D0A20202020746869732E706F70';
wwv_flow_api.g_varchar2_table(606) := '75702E73746174652E616A617843757272656E745061676544617461203D206E6577446174613B0D0A20202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A206E6577446174617D20293B0D0A202020200D0A2020';
wwv_flow_api.g_varchar2_table(607) := '20206D657373616765203D20746869732E435F504F5055505F544558545F53454143485F494E5F53454C45435445440D0A20202020202020202E7265706C61636528272530272C206E6577446174612E6C656E677468290D0A20202020202020202E7265';
wwv_flow_api.g_varchar2_table(608) := '706C61636528272531272C20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E6C656E677468293B0D0A0D0A20202020746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C';
wwv_flow_api.g_varchar2_table(609) := '20746869732E435F504F5055505F544558545F53454143485F494E5F53454C4543544544293B0D0A0D0A0D0A20207D2C0D0A20205F706F707570536561726368426C75723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(610) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368426C7572272C2027704576656E74272C20704576656E74293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(611) := '20275F706F707570536561726368426C7572272C202763757272656E742076616C75652022272B746869732E706F7075702E7365617263682E76616C28292B272227293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(612) := '6669782C20275F706F707570536561726368426C7572272C2027666F6375732076616C75652022272B746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375732B2722272020293B0D0A0D0A20202020766172206E6577';
wwv_flow_api.g_varchar2_table(613) := '4576656E74203D20617065782E6A51756572792E4576656E742820276B65797570272C207B2077686963683A20242E75692E6B6579436F64652E454E5445522C206B6579436F64653A203133207D20293B0D0A0D0A202020206966202820746869732E70';
wwv_flow_api.g_varchar2_table(614) := '6F7075702E7365617263682E76616C282920213D20746869732E706F7075702E73746174652E736561726368537472696E674F6E466F63757329207B200D0A202020202020746869732E706F7075702E7365617263682E74726967676572286E65774576';
wwv_flow_api.g_varchar2_table(615) := '656E74293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F706F707570536561726368466F6375733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(616) := '5F706F707570536561726368466F637573272C20704576656E74293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E674F6E466F637573203D20746869732E706F7075702E7365617263682E76616C28293B0D';
wwv_flow_api.g_varchar2_table(617) := '0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368466F637573272C202763757272656E742073656172636820737472696E672069732022272B746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(618) := '746174652E736561726368537472696E674F6E466F6375732B272227293B0D0A20207D2C0D0A20205F706F7075705365617263684B657955703A2066756E6374696F6E282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D';
wwv_flow_api.g_varchar2_table(619) := '6E4964782C20704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705365617263684B65795570272C20704576656E742E6B6579436F6465293B0D0A0D0A20202020766172';
wwv_flow_api.g_varchar2_table(620) := '200D0A2020202020207365617263684974656D20202020203D202428704576656E742E63757272656E74546172676574292C0D0A202020202020736561726368537472696E672020203D207365617263684974656D2E76616C28292C0D0A202020202020';
wwv_flow_api.g_varchar2_table(621) := '6973536561726368476C6F62616C203D20704576656E742E63757272656E74546172676574203D3D20746869732E706F7075702E7365617263682E6765742830293B0D0A0D0A202020202F2F7768656E206F74686572206B6579207468656E2022656E74';
wwv_flow_api.g_varchar2_table(622) := '65722220747269676765726564206B65797570206576656E740D0A202020206966202820704576656E742E6B6579436F646520213D2031332029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020202F2F';
wwv_flow_api.g_varchar2_table(623) := '7768656E206F6E6C792073656C65637465642076616C756573206172652063757272656E746C792070726573656E7465640D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865';
wwv_flow_api.g_varchar2_table(624) := '636B656427292029207B0D0A202020202020746869732E5F706F707570536561726368496E53656C656374656444617461282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C20736561726368537472696E67';
wwv_flow_api.g_varchar2_table(625) := '2C206973536561726368476C6F62616C20293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020202F2F776861742074797065206F6620736561726368206973206265696E6720706572666F726D65640D0A20';
wwv_flow_api.g_varchar2_table(626) := '20202069662028206973536561726368476C6F62616C2029207B0D0A2020202020202F2F736561726368207468726F75676820616C6C20636F6C756D6E732020202020200D0A202020202020746869732E5F706F707570416A6178506572666F726D2820';
wwv_flow_api.g_varchar2_table(627) := '312C206E756C6C2C206E756C6C2C20736561726368537472696E6720293B20200D0A202020207D0D0A20202020656C7365207B0D0A2020202020202F2F736561726368206F6E6C7920696E2073656C656374656420636F6C756D6E0D0A20202020202074';
wwv_flow_api.g_varchar2_table(628) := '6869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C2073';
wwv_flow_api.g_varchar2_table(629) := '6561726368537472696E672C2070536561726368436F6C756D6E496478293B0D0A202020202020746869732E5F706F707570536561726368436C6561722866616C7365293B0D0A202020202020746869732E5F6D61736B4B657955704D616E6167654963';
wwv_flow_api.g_varchar2_table(630) := '6F6E7328293B0D0A202020207D0D0A20207D2C0D0A20205F706F7075704765744D61784469616C6F674865696768743A2066756E6374696F6E2820705265706F727448656967687420297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(631) := '2E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C2027705265706F7274486569676874272C20705265706F7274486569676874293B0D0A202020207661720D0A202020202020706F707570486561646572';
wwv_flow_api.g_varchar2_table(632) := '203D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428292C0D0A202020202020746F74616C486569676874203D20303B0D0A0D0A20202020746F74616C486569676874202B3D20746869732E706F7075702E64';
wwv_flow_api.g_varchar2_table(633) := '69616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0D0A202020202020746F74';
wwv_flow_api.g_varchar2_table(634) := '616C486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E6865616465722E69732827';
wwv_flow_api.g_varchar2_table(635) := '3A76697369626C6527292029207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(636) := '666F6F7465722E697328273A76697369626C6527292029207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A20202020746F74616C';
wwv_flow_api.g_varchar2_table(637) := '486569676874202B3D20705265706F72744865696768743B0D0A0D0A202020206966202820746F74616C486569676874203E20242877696E646F77292E6F7574657248656967687428292029207B0D0A2020202020202F2F726564756365206279207061';
wwv_flow_api.g_varchar2_table(638) := '6464696E6720666F7220746F7020616E6420626F74746F6D0D0A202020202020746F74616C486569676874203D20242877696E646F77292E6F757465724865696768742829202D2034303B0D0A202020207D0D0A0D0A20202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(639) := '2E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C202772657475726E73272C20746F74616C486569676874293B0D0A2020202072657475726E20746F74616C4865696768743B0D0A';
wwv_flow_api.g_varchar2_table(640) := '20207D2C0D0A20205F706F7075704765744D61784865696768745265706F72743A2066756E6374696F6E2820704469616C6F67546F74616C48656967687420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(641) := '2C20275F706F7075704765744D61784865696768745265706F7274272C2027704469616C6F67546F74616C486569676874272C20704469616C6F67546F74616C486569676874293B0D0A0D0A202020207661720D0A2020202020207265706F72744D6178';
wwv_flow_api.g_varchar2_table(642) := '486569676874203D20704469616C6F67546F74616C4865696768742C0D0A2020202020207461626C65576964746820203D20746869732E706F7075702E636F6E74656E745461626C6520213D20756E646566696E6564203F20746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(643) := '636F6E74656E745461626C652E6F7574657257696474682829203A20303B0D0A0D0A202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(644) := '2020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0D0A2020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E696E666F';
wwv_flow_api.g_varchar2_table(645) := '726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0D0A2020202020207265706F72';
wwv_flow_api.g_varchar2_table(646) := '744D6178486569676874202D3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029';
wwv_flow_api.g_varchar2_table(647) := '207B0D0A2020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A2020202069662028207461626C655769647468203E20746869732E70';
wwv_flow_api.g_varchar2_table(648) := '6F7075702E626F64792E6F75746572576964746828292029207B0D0A2020202020202F2F7363726F6C6C6261720D0A2020202020207265706F72744D6178486569676874202B3D2031373B0D0A202020207D0D0A0D0A20202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(649) := '2E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765744D61784865696768745265706F7274272C202772657475726E73272C207265706F72744D6178486569676874293B0D0A2020202072657475726E207265706F72744D617848';
wwv_flow_api.g_varchar2_table(650) := '65696768743B0D0A20207D2C0D0A20205F706F70757041646A757374426F6479486569676874416E696D6174653A2066756E6374696F6E2820704475726174696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(651) := '656669782C20275F706F70757041646A757374426F6479486569676874416E696D617465272C2027704475726174696F6E272C20704475726174696F6E293B0D0A0D0A20202020766172207461626C65486569676874203D20746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(652) := '4765745461626C6548656967687428293B0D0A0D0A2020202069662028207461626C65486569676874203D3D20302029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E62';
wwv_flow_api.g_varchar2_table(653) := '6F64792E73746F7028292E616E696D617465287B0D0A202020202020226D6178486569676874223A207461626C654865696768742C0D0A202020202020226D696E486569676874223A207461626C654865696768740D0A202020207D2C207B0D0A202020';
wwv_flow_api.g_varchar2_table(654) := '202020226475726174696F6E223A2021704475726174696F6E203F20704475726174696F6E203A203130302C0D0A2020202020202273746570223A20242E70726F78792866756E6374696F6E2820704E6F772C207046782029207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(655) := '20766172200D0A20202020202020202020726573756C74506F707570486569676874203D20303B0D0A0D0A20202020202020202F2F63757272656E74207461626C65206865696768740D0A2020202020202020726573756C74506F707570486569676874';
wwv_flow_api.g_varchar2_table(656) := '202B3D20704E6F773B0D0A0D0A20202020202020202F2F696E666F726D6174696F6E206865696768740D0A20202020202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C65';
wwv_flow_api.g_varchar2_table(657) := '27292029207B0D0A20202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0D0A20202020202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(658) := '20202020202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0D0A20202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E6865616465722E';
wwv_flow_api.g_varchar2_table(659) := '6F7574657248656967687428293B0D0A20202020202020207D0D0A0D0A20202020202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0D0A20202020202020202020726573756C74506F7075';
wwv_flow_api.g_varchar2_table(660) := '70486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A20202020202020207D0D0A20202020202020200D0A2020202020202020726573756C74506F707570486569676874202B3D20746869732E';
wwv_flow_api.g_varchar2_table(661) := '706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A2020202020202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F7074696F6E272C27686569676874272C20726573756C74506F';
wwv_flow_api.g_varchar2_table(662) := '707570486569676874293B0D0A2020202020207D2C2074686973292C0D0A20202020202022636F6D706C657465223A20242E70726F78792866756E6374696F6E28297B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(663) := '5072656669782C20275F706F70757041646A757374426F6479486569676874416E696D617465272C2027616E696D6174696F6E20636F6D706C6574656427293B0D0A2020202020207D2C2074686973290D0A202020207D293B0D0A20207D2C0D0A20205F';
wwv_flow_api.g_varchar2_table(664) := '706F7075704765745461626C654865696768743A2066756E6374696F6E28297B0D0A20202020766172200D0A2020202020207461626C65486569676874203D20303B0D0A0D0A202020206966202820746869732E706F7075702E636F6E74656E74546162';
wwv_flow_api.g_varchar2_table(665) := '6C6520213D20756E646566696E65642029207B0D0A2020202020207461626C65486569676874203D20746869732E706F7075702E636F6E74656E745461626C652E6F7574657248656967687428293B0D0A202020202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(666) := '6728746869732E6C6F675072656669782C20275F706F7075704765745461626C65486569676874272C20277461626C65486569676874272C207461626C65486569676874293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746162';
wwv_flow_api.g_varchar2_table(667) := '6C65486569676874203D20746869732E706F7075702E626F64792E6368696C6472656E28292E666972737428292E6F7574657248656967687428293B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(668) := '5F706F7075704765745461626C65486569676874272C20277461626C65486569676874206F66206368696C6472656E272C207461626C65486569676874293B0D0A202020207D0D0A0D0A202020207461626C65486569676874203D20746869732E5F706F';
wwv_flow_api.g_varchar2_table(669) := '7075704765744D61784865696768745265706F72742820746869732E5F706F7075704765744D61784469616C6F6748656967687428207461626C65486569676874202920293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F';
wwv_flow_api.g_varchar2_table(670) := '675072656669782C20275F706F7075704765745461626C654865696768742072657475726E73272C207461626C65486569676874293B0D0A2020202072657475726E207461626C654865696768743B0D0A0D0A20207D2C0D0A20205F706F70757041646A';
wwv_flow_api.g_varchar2_table(671) := '757374426F64794865696768743A2066756E6374696F6E2820704475726174696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757041646A757374426F647948656967687427293B';
wwv_flow_api.g_varchar2_table(672) := '0D0A0D0A20202020766172200D0A2020202020206865696768742C0D0A2020202020207461626C6557696474683B0D0A2020202020200D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E61646A757374486569';
wwv_flow_api.g_varchar2_table(673) := '676874546F526573756C74732029207B0D0A202020202020746869732E5F706F70757041646A757374426F6479486569676874416E696D6174652820704475726174696F6E20293B0D0A202020207D0D0A20202020656C7365207B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(674) := '20686569676874203D20746869732E706F7075702E636F6E7461696E65722E6F7574657248656967687428293B0D0A202020202020686569676874202D3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A';
wwv_flow_api.g_varchar2_table(675) := '76697369626C652729203F20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F757465724865696768742829203A20303B0D0A202020202020686569676874202D3D20746869732E706F7075702E6865616465722E6973';
wwv_flow_api.g_varchar2_table(676) := '28273A76697369626C652729203F20746869732E706F7075702E6865616465722E6F757465724865696768742829203A20303B0D0A202020202020686569676874202D3D20746869732E706F7075702E666F6F7465722E697328273A76697369626C6527';
wwv_flow_api.g_varchar2_table(677) := '29203F20746869732E706F7075702E666F6F7465722E6F757465724865696768742829203A20303B0D0A0D0A202020202020746869732E706F7075702E626F64792E63737328276D6178486569676874272C20686569676874293B0D0A20202020202074';
wwv_flow_api.g_varchar2_table(678) := '6869732E706F7075702E626F64792E63737328276D696E486569676874272C20686569676874293B0D0A202020207D0D0A20207D2C0D0A20205F706F707570486967686C69676874526573756C74733A2066756E6374696F6E282070526573756C74734A';
wwv_flow_api.g_varchar2_table(679) := '717565727920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570486967686C69676874526573756C747327293B0D0A0D0A20202020766172200D0A202020202020726573756C74546578';
wwv_flow_api.g_varchar2_table(680) := '742C0D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368537472696E67417272203D20736561726368537472696E6720213D206E756C';
wwv_flow_api.g_varchar2_table(681) := '6C203F20736561726368537472696E672E73706C69742827252729203A205B5D2C0D0A2020202020207464733B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570486967686C69676874';
wwv_flow_api.g_varchar2_table(682) := '526573756C7473272C20736561726368537472696E67417272293B0D0A0D0A202020202F2F6966207468657265206973206E6F2073656172636820737472696E6720646F6E2774206869676C69686A7420726573756C74733B0D0A202020206966202820';
wwv_flow_api.g_varchar2_table(683) := '736561726368537472696E67203D3D20756E646566696E6564207C7C20736561726368537472696E672E6C656E677468203D3D20302029207B0D0A20202020202072657475726E2070526573756C74734A71756572793B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(684) := '20202F2F6966207365617263682077617320706572666F726D6564206F6E20737065636966696320636F6C756D6E20706572666F726D20736561726368206F6E6C7920696E203120636F6C756D6E0D0A202020206966202820746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(685) := '73746174652E736561726368436F6C756D6E49647820213D20756E646566696E65642029207B0D0A202020202020746473203D2070526573756C74734A71756572792E66696E64282774643A6E74682D6368696C6428272B28746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(686) := '73746174652E736561726368436F6C756D6E4964782B31292B272927293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746473203D2070526573756C74734A71756572792E66696E64282774643A6E6F74283A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(687) := '642831292927293B0D0A202020207D0D0A0D0A202020202F2F666F7220656163682063656C6C20706572666F726D2073656172636820696E2063656C6C20737472696E670D0A202020207464732E6561636828242E70726F78792866756E6374696F6E28';
wwv_flow_api.g_varchar2_table(688) := '70496E6465782C2070456C656D297B0D0A2020202020202F2F7462643A20646F20726563757273697665207365617263682074686F75676820616C6C206368696C6472656E0D0A202020202020726573756C7454657874203D20242870456C656D292E74';
wwv_flow_api.g_varchar2_table(689) := '65787428293B0D0A2020202020200D0A202020202020666F72202820766172206920696E20736561726368537472696E674172722029207B0D0A2020202020202020726573756C7454657874203D20746869732E5F686967686C69676874576F72642820';
wwv_flow_api.g_varchar2_table(690) := '726573756C74546578742C20736561726368537472696E674172725B695D20293B0D0A2020202020207D0D0A2020202020200D0A0D0A202020202020242870456C656D292E68746D6C2820726573756C745465787420293B0D0A0D0A202020207D2C2074';
wwv_flow_api.g_varchar2_table(691) := '68697329293B0D0A0D0A2020202072657475726E2070526573756C74734A71756572793B0D0A20207D2C0D0A20205F706F70757053686F7753656C6563746564436865636B626F784368616E67653A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(692) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053686F7753656C6563746564436865636B626F784368616E676527293B0D0A0D0A202020202F2F7768656E207468657265206973206E6F7468696E6720746F2073';
wwv_flow_api.g_varchar2_table(693) := '686F770D0A202020206966202820746869732E706F7075702E73746174652E73656C65637465642E6C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E70726F7028';
wwv_flow_api.g_varchar2_table(694) := '27636865636B6564272C2066616C7365293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A6368';
wwv_flow_api.g_varchar2_table(695) := '65636B656427292029207B0D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570416A6178506572666F72';
wwv_flow_api.g_varchar2_table(696) := '6D280D0A2020202020202020312C202020202F2F6C61737446657463686564506167652C0D0A2020202020202020312C202020202F2F736F72746564436F6C756D6E4964782C0D0A202020202020202027617363272C2F2F736F72746564436F6C756D6E';
wwv_flow_api.g_varchar2_table(697) := '446972656374696F6E2C0D0A20202020202020206E756C6C2C202F2F736561726368537472696E672C0D0A20202020202020206E756C6C20202F2F736561726368436F6C756D6E4964780D0A202020202020293B0D0A0D0A202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(698) := '200D0A20207D2C0D0A2020706F707570496E666F726D6174696F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F6E4869';
wwv_flow_api.g_varchar2_table(699) := '646527293B0D0A0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D20756E646566696E65643B0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54657874';
wwv_flow_api.g_varchar2_table(700) := '20202020203D20756E646566696E65643B0D0A20202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E616464436C617373282768696464656E27293B0D0A0D0A20207D2C0D0A0D0A2020706F707570496E666F726D61';
wwv_flow_api.g_varchar2_table(701) := '74696F6E53686F773A2066756E6374696F6E28297B0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F6E53686F7727293B0D0A0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(702) := '2E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E72656D6F7665436C617373282768696464656E27293B0D0A0D0A20207D2C0D0A20205F706F707570496E666F726D6174696F6E417070656E643A2066756E6374696F6E2820704D65';
wwv_flow_api.g_varchar2_table(703) := '73736167652C20704D65737361676554656D706C61746520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570496E666F726D6174696F6E417070656E6427293B0D0A0D0A202020207468';
wwv_flow_api.g_varchar2_table(704) := '69732E706F7075702E696E666F726D6174696F6E546578742E656D70747928292E617070656E642820704D65737361676520293B0D0A20202020746869732E706F707570496E666F726D6174696F6E53686F7728293B0D0A0D0A20202020746869732E70';
wwv_flow_api.g_varchar2_table(705) := '6F7075702E73746174652E696E666F726D6174696F6E5465787420202020203D20704D6573736167653B0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D20704D65737361676554656D706C';
wwv_flow_api.g_varchar2_table(706) := '6174653B0D0A20207D2C0D0A20205F706F7075705468436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075';
wwv_flow_api.g_varchar2_table(707) := '705468436865636B626F784368616E6765272C20704576656E74293B0D0A0D0A20202020766172200D0A202020202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E64282774722074643A6669';
wwv_flow_api.g_varchar2_table(708) := '7273742D6368696C64203A636865636B626F7827292C0D0A20202020202073656C6563746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A636865636B65';
wwv_flow_api.g_varchar2_table(709) := '642729207D292E746F417272617928292C0D0A2020202020206E6F7453656C6563746564203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A6E6F74283A636865636B65';
wwv_flow_api.g_varchar2_table(710) := '64292729207D292E746F417272617928292C0D0A2020202020206D65737361676520202020203D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442E7265706C61636528272530272C20636865636B626F7865732E6C656E';
wwv_flow_api.g_varchar2_table(711) := '677468293B0D0A0D0A202020206966202820746869732E706F7075702E73656C656374416C6C436865636B626F782E697328273A636865636B656427292029207B0D0A0D0A202020202020666F72282076617220693D303B2069203C206E6F7453656C65';
wwv_flow_api.g_varchar2_table(712) := '637465642E6C656E6774683B20692B2B2029207B0D0A20202020202020202428206E6F7453656C65637465645B695D20292E747269676765722827636C69636B27293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F706F707570496E66';
wwv_flow_api.g_varchar2_table(713) := '6F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F504F5055505F544558545F524F57535F53454C454354454420293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202020200D0A20202020202069662028';
wwv_flow_api.g_varchar2_table(714) := '20746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D3D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442029207B0D0A2020202020202020746869732E706F707570496E666F';
wwv_flow_api.g_varchar2_table(715) := '726D6174696F6E4869646528293B0D0A2020202020207D0D0A0D0A202020202020666F72282076617220693D303B2069203C2073656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020202024282073656C65637465645B695D20';
wwv_flow_api.g_varchar2_table(716) := '292E747269676765722827636C69636B27293B0D0A2020202020207D0D0A202020207D0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20205F706F707570546F67676C65526F7753746174';
wwv_flow_api.g_varchar2_table(717) := '653A2066756E6374696F6E282070496E70757420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570546F67676C65526F77537461746527293B0D0A0D0A20202020696620282070496E70';
wwv_flow_api.g_varchar2_table(718) := '757420696E7374616E63656F66206A5175657279203D3D2066616C73652029207B0D0A20202020202070496E707574203D2024282070496E70757420293B0D0A202020207D0D0A0D0A20202020696620282070496E7075742E697328273A636865636B65';
wwv_flow_api.g_varchar2_table(719) := '6427292029207B0D0A20202020202070496E7075742E636C6F736573742827747227292E616464436C617373282773656C656374656427293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202070496E7075742E636C6F736573742827';
wwv_flow_api.g_varchar2_table(720) := '747227292E72656D6F7665436C617373282773656C656374656427293B0D0A202020207D0D0A20207D2C0D0A20205F706F7075705464436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020766172200D';
wwv_flow_api.g_varchar2_table(721) := '0A202020202020636865636B626F78203D202428704576656E742E63757272656E74546172676574292C0D0A202020202020636865636B626F78657320203D20756E646566696E65642C0D0A20202020202073656C6563746564202020203D20756E6465';
wwv_flow_api.g_varchar2_table(722) := '66696E65643B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570546443686563';
wwv_flow_api.g_varchar2_table(723) := '6B626F784368616E6765272C20636865636B626F782E676574283029293B0D0A0D0A20202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E64282774722074643A66697273742D6368696C6420';
wwv_flow_api.g_varchar2_table(724) := '3A636865636B626F7827292C0D0A2020202073656C6563746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A636865636B65642729207D293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(725) := '2020206966202820636865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F70757053656C65637456616C75652820636865636B626F78293B0D0A202020207D0D0A20202020656C7365207B0D0A2020';
wwv_flow_api.g_varchar2_table(726) := '20202020746869732E5F706F707570556E73656C65637456616C75652820636865636B626F782E76616C282920293B0D0A0D0A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A63';
wwv_flow_api.g_varchar2_table(727) := '6865636B656427292029207B0D0A2020202020202020636865636B626F782E636C6F736573742827747227292E72656D6F766528293B0D0A2020202020207D0D0A202020207D0D0A0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E';
wwv_flow_api.g_varchar2_table(728) := '6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B626F78657320636E74272C20636865636B626F7865732E6C656E677468293B0D0A20202020617065782E64656275672E6C6F6728746869732E';
wwv_flow_api.g_varchar2_table(729) := '6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B656420636865636B626F78657320636E74272C2073656C65637465642E6C656E677468293B0D0A0D0A202020206966202820636865636B626F';
wwv_flow_api.g_varchar2_table(730) := '7865732E6C656E677468203D3D2073656C65637465642E6C656E6774682029207B0D0A2020202020200D0A202020202020696620282021746869732E706F7075702E73656C656374416C6C436865636B626F782E697328273A636865636B656427292029';
wwv_flow_api.g_varchar2_table(731) := '207B0D0A2020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A2020202020207D0D0A0D0A202020207D200D0A20202020656C7365207B0D0A20202020';
wwv_flow_api.g_varchar2_table(732) := '2020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A202020207D0D0A0D0A20202020746869732E5F706F707570546F67676C65526F775374617465282063686563';
wwv_flow_api.g_varchar2_table(733) := '6B626F7820293B0D0A0D0A20207D2C0D0A0D0A20205F706F7075705464526164696F4368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(734) := '706F7075705464526164696F4368616E676527293B0D0A0D0A2020202076617220726164696F203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020746869732E706F7075702E636F6E7461696E65722E66696E642827';
wwv_flow_api.g_varchar2_table(735) := '2E73656C656374656427292E72656D6F7665436C617373282773656C656374656427293B0D0A0D0A202020206966202820726164696F2E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570526573657456616C';
wwv_flow_api.g_varchar2_table(736) := '75657328293B0D0A202020202020746869732E5F706F70757053656C65637456616C75652820726164696F20293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570556E73656C65637456616C7565282063';
wwv_flow_api.g_varchar2_table(737) := '6865636B626F782E76616C282920293B0D0A0D0A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A2020202020202020726164696F2E636C6F';
wwv_flow_api.g_varchar2_table(738) := '736573742827747227292E72656D6F766528293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F707570546F67676C65526F7753746174652820726164696F20293B0D0A20207D2C0D0A20205F706F707570497356616C';
wwv_flow_api.g_varchar2_table(739) := '756553656C65637465643A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570497356616C756553656C6563746564272C207056616C756529';
wwv_flow_api.g_varchar2_table(740) := '3B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E706F7075702E73746174652E73';
wwv_flow_api.g_varchar2_table(741) := '656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570497356616C756553656C6563746564272C207056616C';
wwv_flow_api.g_varchar2_table(742) := '75652C2074727565293B0D0A202020202020202072657475726E20747275653B0D0A2020202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704973';
wwv_flow_api.g_varchar2_table(743) := '56616C756553656C6563746564272C207056616C75652C2066616C7365293B0D0A0D0A2020202072657475726E2066616C73653B0D0A20207D2C0D0A20205F706F70757056616C756553656C6563746564496E6465783A2066756E6374696F6E28207056';
wwv_flow_api.g_varchar2_table(744) := '616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C7565293B0D0A0D0A20202020666F7220282076617220693D';
wwv_flow_api.g_varchar2_table(745) := '303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C7565203D3D2070';
wwv_flow_api.g_varchar2_table(746) := '56616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C75652C2069293B0D0A202020202020202072';
wwv_flow_api.g_varchar2_table(747) := '657475726E20693B0D0A2020202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C75';
wwv_flow_api.g_varchar2_table(748) := '652C202D31293B0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A0D0A20205F706F707570556E73656C65637456616C75653A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(749) := '69732E6C6F675072656669782C20275F706F707570556E73656C65637456616C756527293B0D0A0D0A20202020766172200D0A202020202020696E6465784F66203D20746869732E5F706F70757056616C756553656C6563746564496E64657828207056';
wwv_flow_api.g_varchar2_table(750) := '616C756520290D0A20202020202072656D6F766564203D206E756C6C3B0D0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B705661';
wwv_flow_api.g_varchar2_table(751) := '6C75652B2722206973206E6F742073656C65637465642127293B0D0A202020207D0D0A0D0A2020202072656D6F766564203D20746869732E706F7075702E73746174652E73656C65637465642E73706C6963652820696E6465784F662C203120293B0D0A';
wwv_flow_api.g_varchar2_table(752) := '0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570556E73656C65637456616C7565272C202772656D6F7665642076616C7565272C2072656D6F766564293B0D0A0D0A20202020746869732E5F';
wwv_flow_api.g_varchar2_table(753) := '706F70757053686F7753656C656374656455706461746528207472756520293B0D0A0D0A20207D2C0D0A20205F706F707570526573657456616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E';
wwv_flow_api.g_varchar2_table(754) := '6C6F675072656669782C20275F706F707570526573657456616C75657327293B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0D0A20207D2C0D0A20205F706F70757053656C65637456616C75653A20';
wwv_flow_api.g_varchar2_table(755) := '66756E6374696F6E282070496E70757420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C65637456616C756527293B0D0A0D0A20202020766172200D0A2020202020206E6577';
wwv_flow_api.g_varchar2_table(756) := '53656C656374696F6E4F626A203D207B0D0A202020202020202022646973706C6179223A2070496E7075742E617474722827617269612D646973706C61792D76616C756527292C0D0A20202020202020202276616C7565223A2070496E7075742E76616C';
wwv_flow_api.g_varchar2_table(757) := '28292C0D0A2020202020202020226973457874726156616C7565223A2070496E7075742E617474722827617269612D65787472612D76616C756527292C0D0A2020202020202020226973415045584E756C6C56616C7565223A2070496E7075742E617474';
wwv_flow_api.g_varchar2_table(758) := '722827617269612D6E756C6C2D76616C756527290D0A2020202020207D3B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C65637465642E7075736828206E657753656C656374696F6E4F626A20293B0D0A0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(759) := '2E5F706F70757053686F7753656C6563746564557064617465282066616C736520293B0D0A20207D2C20200D0A20205F706F70757053686F7753656C65637465645570646174653A2066756E6374696F6E282070506572666F726D416A61784F6E305365';
wwv_flow_api.g_varchar2_table(760) := '6C656374656420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053686F7753656C6563746564557064617465272C2022706572666F726D20616A6178206F6E20302073656C65637465';
wwv_flow_api.g_varchar2_table(761) := '64222C2070506572666F726D416A61784F6E3053656C6563746564293B0D0A202020200D0A202020207661722073656C65637465644C656E677468203D20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(762) := '202020746869732E706F7075702E73686F7753656C65637465644C6162656C2E746578742820746869732E435F504F5055505F53484F575F53454C45435445445F4C4142454C202B272028272B73656C65637465644C656E6774682B27292720293B0D0A';
wwv_flow_api.g_varchar2_table(763) := '0D0A20202020696620282073656C65637465644C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436F6E7461696E65722E616464436C6173732827696E61637469766527293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(764) := '202020202020696620282070506572666F726D416A61784F6E3053656C656374656420262620746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B6564272929207B0D0A2020202020202020746869';
wwv_flow_api.g_varchar2_table(765) := '732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E';
wwv_flow_api.g_varchar2_table(766) := '446972656374696F6E2829293B0D0A2020202020207D0D0A0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A2020202020200D0A202020';
wwv_flow_api.g_varchar2_table(767) := '207D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436F6E7461696E65722E72656D6F7665436C6173732827696E61637469766527293B0D0A202020207D0D0A20207D2C0D0A0D0A20205F70';
wwv_flow_api.g_varchar2_table(768) := '6F707570436C69636B4F6E43656C6C3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436C69636B4F6E43656C6C272C20704576656E74';
wwv_flow_api.g_varchar2_table(769) := '293B0D0A0D0A20202020766172200D0A2020202020207472203D202428704576656E742E746172676574292E636C6F736573742827747227292C0D0A202020202020696E707574203D2074722E66696E64282774643A66697273742D6368696C64203A69';
wwv_flow_api.g_varchar2_table(770) := '6E70757427293B0D0A0D0A202020206966202820696E7075742E697328273A636865636B626F7827292029207B0D0A202020202020696E7075742E747269676765722827636C69636B27293B0D0A202020207D0D0A20202020656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(771) := '202020696E7075742E70726F702827636865636B6564272C207472756529203B0D0A202020202020696E7075742E7472696767657228276368616E676527293B0D0A202020207D0D0A0D0A202020200D0A20207D2C0D0A20205F706F70757046616B6552';
wwv_flow_api.g_varchar2_table(772) := '6164696F436C69636B3A2066756E6374696F6E2820704576656E742029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757046616B65526164696F436C69636B27293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(773) := '7661722074726967676572696E67456C656D656E74203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A202020207472';
wwv_flow_api.g_varchar2_table(774) := '6967676572696E67456C656D656E742E706172656E7428292E66696E6428273A726164696F27292E747269676765722827636C69636B27293B0D0A0D0A20207D2C0D0A20205F706F70757046616B65436865636B626F78436C69636B3A2066756E637469';
wwv_flow_api.g_varchar2_table(775) := '6F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757046616B65436865636B626F78436C69636B27293B0D0A0D0A202020207661722074726967676572696E6745';
wwv_flow_api.g_varchar2_table(776) := '6C656D656E74203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A2020202074726967676572696E67456C656D656E74';
wwv_flow_api.g_varchar2_table(777) := '2E706172656E7428292E66696E6428273A636865636B626F7827292E747269676765722827636C69636B27293B0D0A0D0A20207D2C0D0A0D0A20205F706F707570536F72745265706F72743A2066756E6374696F6E282070436F6C756D6E4E616D652C20';
wwv_flow_api.g_varchar2_table(778) := '70436F6C756D6E4964782C2070536F7274446972656374696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536F72745265706F7274272C202770436F6C756D6E496478272C20';
wwv_flow_api.g_varchar2_table(779) := '70436F6C756D6E4964782C202770536F7274446972656374696F6E272C2070536F7274446972656374696F6E293B0D0A0D0A20202020766172200D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E7365';
wwv_flow_api.g_varchar2_table(780) := '61726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964783B0D0A0D0A202020206966202820746869732E706F7075702E73686F775365';
wwv_flow_api.g_varchar2_table(781) := '6C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E706F7075702E73746174652E616A617843757272656E7450616765446174612E736F72742820746869732E5F736F72744A736F6E2820';
wwv_flow_api.g_varchar2_table(782) := '70436F6C756D6E4E616D652C2070536F7274446972656374696F6E202920293B0D0A0D0A2020202020202F2F6D757374206265207365742062656375617365206F662076697375616C697A6174696F6E20696E20636F6C756D6E206865616465720D0A20';
wwv_flow_api.g_varchar2_table(783) := '2020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D2070536F7274446972656374696F6E3B0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964';
wwv_flow_api.g_varchar2_table(784) := '78202020202020203D2070436F6C756D6E4964783B0D0A0D0A202020202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A20746869732E706F7075702E73746174652E616A617843757272656E7450616765446174';
wwv_flow_api.g_varchar2_table(785) := '617D20293B0D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570416A6178506572666F726D28312C2070436F6C756D6E4964782C2070536F7274446972656374696F6E2C20736561726368537472696E67';
wwv_flow_api.g_varchar2_table(786) := '2C20736561726368436F6C756D6E496478293B20200D0A202020207D0D0A202020200D0A0D0A20207D2C0D0A0D0A20205F706F70757047657448656164696E67733A2066756E6374696F6E2820297B0D0A20202020617065782E64656275672E6C6F6728';
wwv_flow_api.g_varchar2_table(787) := '746869732E6C6F675072656669782C20275F706F70757047657448656164696E677327293B0D0A0D0A20202020766172200D0A2020202020207468656164203D202428273C74686561643E3C74723E3C2F74723E3C2F74686561643E27292C0D0A202020';
wwv_flow_api.g_varchar2_table(788) := '202020746853656C656374416C6C203D202428273C746820636C6173733D22742D5265706F72742D636F6C48656164223E3C2F74683E27292C0D0A202020202020746853656C656374436865636B626F78203D202428273C696E70757420747970653D22';
wwv_flow_api.g_varchar2_table(789) := '636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865';
wwv_flow_api.g_varchar2_table(790) := '636B626F78223E3C2F7370616E3E27292C0D0A202020202020636F6C756D6E5F6E616D652C0D0A202020202020636F6C756D6E5F6964782C0D0A202020202020697355736564546F536F72742C0D0A202020202020697346696C74657265642C0D0A2020';
wwv_flow_api.g_varchar2_table(791) := '20202020736F7274696E67446972656374696F6E2C0D0A2020202020207468416C69676E2C0D0A202020202020636F6C756D6E416C69617365733B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C746970';
wwv_flow_api.g_varchar2_table(792) := '6C6553656C656374696F6E2029207B0D0A202020202020746853656C656374416C6C2E617070656E642820746853656C656374436865636B626F7820293B0D0A202020207D0D0A0D0A2020202074686561642E66696E642827747227292E617070656E64';
wwv_flow_api.g_varchar2_table(793) := '2820746853656C656374416C6C20293B0D0A0D0A20202020666F722028207661722069203D303B2069203C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B0D0A202020202020636F6C756D6E5F6E616D6520';
wwv_flow_api.g_varchar2_table(794) := '203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0D0A202020202020636F6C756D6E5F6964782020203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E4944583B0D0A202020202020636F';
wwv_flow_api.g_varchar2_table(795) := '6C756D6E5F616C696173203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202768656164696E672720293B0D0A0D0A20202020202069662028200D0A2020';
wwv_flow_api.g_varchar2_table(796) := '202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E660D0A202020202020202026262021746869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E';
wwv_flow_api.g_varchar2_table(797) := '5F6E616D652029200D0A20202020202029207B0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A202020202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C';
wwv_flow_api.g_varchar2_table(798) := '61626C652820636F6C756D6E5F6E616D652C202776697369626C652720292029207B0D0A20202020202020202F2F646F6E742072656E64657220636F6C756D6E206265636175736520697420686173206E6F20636F6E666975726174696F6E0D0A202020';
wwv_flow_api.g_varchar2_table(799) := '2020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A20202020';
wwv_flow_api.g_varchar2_table(800) := '20202020262620746869732E706C7567696E53657474696E67732E706F7075702E697352657475726E436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20275227200D0A202020';
wwv_flow_api.g_varchar2_table(801) := '20202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A';
wwv_flow_api.g_varchar2_table(802) := '2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E6973446973706C';
wwv_flow_api.g_varchar2_table(803) := '6179436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20274427200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E';
wwv_flow_api.g_varchar2_table(804) := '6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478203D3D20636F6C756D';
wwv_flow_api.g_varchar2_table(805) := '6E5F6964782029207B0D0A20202020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D3D2027617363272029207B0D0A20202020202020202020697355736564546F536F727420';
wwv_flow_api.g_varchar2_table(806) := '3D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F6E2069636F6E2D7270742D736F72742D617363223E3C2F7370616E3E273B20200D0A20202020202020202020736F7274696E67446972656374696F6E20';
wwv_flow_api.g_varchar2_table(807) := '3D202764657363273B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A20202020202020202020697355736564546F536F7274203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F';
wwv_flow_api.g_varchar2_table(808) := '6E2069636F6E2D7270742D736F72742D64657363223E3C2F7370616E3E273B0D0A20202020202020202020736F7274696E67446972656374696F6E203D2027617363273B0D0A20202020202020207D0D0A2020202020207D0D0A202020202020656C7365';
wwv_flow_api.g_varchar2_table(809) := '207B0D0A2020202020202020697355736564546F536F7274203D2027273B0D0A2020202020202020736F7274696E67446972656374696F6E203D2027617363273B0D0A2020202020207D0D0A0D0A2020202020206966202820746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(810) := '73746174652E736561726368436F6C756D6E496478203D3D20636F6C756D6E5F6964782029207B0D0A2020202020202020697346696C7465726564203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E2066612066612D';
wwv_flow_api.g_varchar2_table(811) := '66696C746572223E3C2F7370616E3E273B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020697346696C7465726564203D2027273B0D0A2020202020207D0D0A0D0A2020202020207468416C69676E203D20746869732E';
wwv_flow_api.g_varchar2_table(812) := '5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277468416C69676E2720293B0D0A0D0A2020202020207468203D2027272B0D0A2020202020202020273C746820636C6173';
wwv_flow_api.g_varchar2_table(813) := '733D22742D5265706F72742D636F6C486561642220616C69676E3D22272B7468416C69676E2B272220617269612D636F6C756D6E2D6E616D653D22272B636F6C756D6E5F6E616D652B27223E272B0D0A20202020202020202720203C64697620636C6173';
wwv_flow_api.g_varchar2_table(814) := '733D22752D5265706F72742D736F7274223E272B0D0A202020202020202027202020203C7370616E20636C6173733D22752D5265706F72742D736F727448656164696E67223E272B0D0A2020202020202020272020202020203C6120687265663D226A61';
wwv_flow_api.g_varchar2_table(815) := '76617363726970743A20766F6964283029223E272B636F6C756D6E5F616C6961732B273C2F613E272B0D0A202020202020202027202020203C2F7370616E3E272B0D0A20202020202020202720202020272B697355736564546F536F72742B27272B0D0A';
wwv_flow_api.g_varchar2_table(816) := '20202020202020202720202020272B697346696C74657265642B27270D0A20202020202020202720203C2F6469763E272B0D0A2020202020202020273C2F74683E272B0D0A202020202020202027273B0D0A0D0A2020202020207468203D202428746829';
wwv_flow_api.g_varchar2_table(817) := '3B0D0A0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757047657448656164696E67732066696C746572696E67206F7220736F7274696E6720617661696C61626C652C2062696E6420636C';
wwv_flow_api.g_varchar2_table(818) := '69636B2063616C6C6261636B27293B0D0A0D0A20202020202074682E62696E642827636C69636B272C20242E70726F787928746869732E5F706F7075705265706F7274486561646572436C69636B43616C6C6261636B2C20746869732C20746869732E6F';
wwv_flow_api.g_varchar2_table(819) := '7074696F6E732E636F6C756D6E735B695D2C20736F7274696E67446972656374696F6E29293B0D0A0D0A20202020202074686561642E66696E642827747227292E617070656E642820746820293B0D0A202020207D0D0A0D0A2020202072657475726E20';
wwv_flow_api.g_varchar2_table(820) := '74686561643B0D0A0D0A20207D2C0D0A20205F706F7075705265706F7274486561646572436F6E7461696E65724372656174653A2066756E6374696F6E28207043757272656E7454682C2070436F6C756D6E4F626A65637420297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(821) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436F6E7461696E6572437265617465272C20277043757272656E745468272C207043757272656E745468293B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(822) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436F6E7461696E6572437265617465272C202770436F6C756D6E4F626A656374272C2070436F6C756D6E4F626A656374293B0D0A0D';
wwv_flow_api.g_varchar2_table(823) := '0A20202020766172200D0A20202020202074657874203D207043757272656E7454682E7465787428292E7472696D28292C0D0A202020202020636F6E7461696E657220203D202428273C64697620636C6173733D22636F6C756D6E4F7065726174696F6E';
wwv_flow_api.g_varchar2_table(824) := '73223E3C64697620636C6173733D22736F7274696E67223E3C2F6469763E3C64697620636C6173733D2266696C746572696E67223E3C2F6469763E3C2F6469763E27292C0D0A202020202020736F7274417363202020203D202428273C6120687265663D';
wwv_flow_api.g_varchar2_table(825) := '226A6176617363726970743A20766F696428302922207469746C653D22272B746869732E435F504F5055505F4845414445525F534F52545F4153435F5449544C452B27223E3C7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D736F';
wwv_flow_api.g_varchar2_table(826) := '72742D617363223E3C2F7370616E3E3C2F613E27292C0D0A202020202020736F727444657363202020203D202428273C6120687265663D226A6176617363726970743A20766F696428302922207469746C653D22272B746869732E435F504F5055505F48';
wwv_flow_api.g_varchar2_table(827) := '45414445525F534F52545F444553435F5449544C452B27223E3C7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D736F72742D64657363223E3C2F7370616E3E3C2F613E27292C0D0A20202020202073656172636849636F6E73203D';
wwv_flow_api.g_varchar2_table(828) := '202428273C6469763E3C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E3C2F6469763E27290D';
wwv_flow_api.g_varchar2_table(829) := '0A2020202020207365617263684974656D203D202428273C696E70757420747970653D22746578742220636C6173733D22656D707479223E27292C0D0A2020202020206462436F6C756D6E4E616D65203D207043757272656E7454682E61747472282761';
wwv_flow_api.g_varchar2_table(830) := '7269612D636F6C756D6E2D6E616D6527293B0D0A0D0A2020202073656172636849636F6E732E66696E6428272E636C65617227292E62696E642827636C69636B272C20242E70726F78792820746869732E5F686561646572576964676574436C65617246';
wwv_flow_api.g_varchar2_table(831) := '696C746572696E672C207468697329293B0D0A0D0A202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65282070436F6C756D6E4F626A6563742E434F4C554D4E5F4E414D452C20';
wwv_flow_api.g_varchar2_table(832) := '27736F72742720292029207B0D0A202020202020736F7274417363202E62696E642827636C69636B272C20242E70726F787928746869732E5F706F707570536F72745265706F72742C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D';
wwv_flow_api.g_varchar2_table(833) := '6E4F626A6563742E4944582C20276173632729293B0D0A202020202020736F7274446573632E62696E642827636C69636B272C20242E70726F787928746869732E5F706F707570536F72745265706F72742C20746869732C206462436F6C756D6E4E616D';
wwv_flow_api.g_varchar2_table(834) := '652C2070436F6C756D6E4F626A6563742E4944582C2027646573632729293B0D0A0D0A202020202020636F6E7461696E65722E66696E6428272E736F7274696E6727292E617070656E642820736F727441736320292E617070656E642820736F72744465';
wwv_flow_api.g_varchar2_table(835) := '736320293B2020202020200D0A202020207D0D0A0D0A202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65282070436F6C756D6E4F626A6563742E434F4C554D4E5F4E414D452C';
wwv_flow_api.g_varchar2_table(836) := '202766696C7465722720292029207B0D0A2020202020207365617263684974656D0D0A20202020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E636528242E70726F78792820746869732E5F706F7075705365617263684B6579';
wwv_flow_api.g_varchar2_table(837) := '55702C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E494458292C20746869732E706C7567696E53657474696E67732E706F7075705365617263684465626F756E636554696D6529290D0A20202020202020202E';
wwv_flow_api.g_varchar2_table(838) := '6F6E28276B65797570272C20242E70726F78792820746869732E5F6865616465725769646765744B657955704D616E61676549636F6E732C20746869732920293B0D0A0D0A2020202020202F2F6966202820746869732E706F7075702E73746174652E73';
wwv_flow_api.g_varchar2_table(839) := '6561726368537472696E6720213D20756E646566696E65642026262070436F6C756D6E496478203D3D20746869732E706F7075702E73746174652E736561726368436F6C756D6E49647829207B0D0A2020202020206966202820746869732E706F707570';
wwv_flow_api.g_varchar2_table(840) := '2E73746174652E736561726368537472696E6720213D20756E646566696E65642026262070436F6C756D6E4F626A6563742E494458203D3D20746869732E706F7075702E73746174652E736561726368436F6C756D6E49647829207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(841) := '20207365617263684974656D2E76616C2820746869732E706F7075702E73746174652E736561726368537472696E6720293B0D0A20202020202020207365617263684974656D2E72656D6F7665436C6173732827656D70747927293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(842) := '7D0D0A0D0A202020202020636F6E7461696E65722E66696E6428272E66696C746572696E6727292E617070656E6428207365617263684974656D20292E617070656E64282073656172636849636F6E7320293B0D0A202020207D0D0A0D0A20202020636F';
wwv_flow_api.g_varchar2_table(843) := '6E7461696E65722E66696E6428272E68656164696E6727292E63737328276D61785769647468272C207043757272656E7454682E6F7574657257696474682829290D0A0D0A20202020636F6E7461696E65722E637373287B0D0A202020202020226D696E';
wwv_flow_api.g_varchar2_table(844) := '5769647468223A207043757272656E7454682E6F75746572576964746828292C0D0A202020202020226C656674223A207043757272656E7454682E706F736974696F6E28292E6C6566742C0D0A20202020202022746F70223A207043757272656E745468';
wwv_flow_api.g_varchar2_table(845) := '2E6F7574657248656967687428290D0A202020207D293B0D0A0D0A20202020636F6E7461696E65722E66696E6428272E68656164696E6727292E637373282770616464696E67272C207043757272656E7454682E637373282770616464696E672729290D';
wwv_flow_api.g_varchar2_table(846) := '0A0D0A2020202072657475726E20636F6E7461696E65723B0D0A0D0A20207D2C0D0A20205F706F7075705265706F7274486561646572576964676574486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(847) := '69732E6C6F675072656669782C20275F706F7075705265706F72744865616465725769646765744869646527293B0D0A0D0A20202020746869732E706F7075702E737469636B79486561646572732E66696E642827746827292E72656D6F7665436C6173';
wwv_flow_api.g_varchar2_table(848) := '73282769732D61637469766527293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E72656D6F766528293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65';
wwv_flow_api.g_varchar2_table(849) := '72203D20756E646566696E65640D0A202020202428646F63756D656E74292E6F66662827636C69636B2E707265746975732D2D656E68616E6365644C6F764974656D27293B0D0A20207D2C0D0A0D0A20205F706F7075705265706F727448656164657257';
wwv_flow_api.g_varchar2_table(850) := '696467657453686F773A2066756E6374696F6E28207054682C2070576964676574297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727448656164657257696467657453686F';
wwv_flow_api.g_varchar2_table(851) := '7727293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E6564202029207B0D0A202020202020746869732E5F706F7075705265706F72744865616465725769';
wwv_flow_api.g_varchar2_table(852) := '646765744869646528293B0D0A202020207D0D0A0D0A202020207054682E616464436C617373282769732D61637469766527293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E6572203D2070576964676574';
wwv_flow_api.g_varchar2_table(853) := '3B0D0A20202020746869732E706F7075702E626F64792E617070656E6428207057696467657420293B0D0A0D0A20202020705769646765742E66696E6428273A696E70757427292E666F63757328293B0D0A20207D2C0D0A20205F706F7075705265706F';
wwv_flow_api.g_varchar2_table(854) := '7274486561646572436C69636B43616C6C6261636B3A2066756E6374696F6E282070436F6C756D6E4F626A6563742C2070536F7274446972656374696F6E2C20704576656E7420297B0D0A0D0A20202020704576656E742E73746F70496D6D6564696174';
wwv_flow_api.g_varchar2_table(855) := '6550726F7061676174696F6E28293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B43616C6C6261636B272C20704576656E74293B0D0A20';
wwv_flow_api.g_varchar2_table(856) := '202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B43616C6C6261636B20636F6C756D6E2064617461272C207B22636F6C756D6E206F626A656374223A2070';
wwv_flow_api.g_varchar2_table(857) := '436F6C756D6E4F626A6563742C2022736F72745F646972656374696F6E223A2070536F7274446972656374696F6E7D293B0D0A0D0A20202020766172200D0A2020202020207468203D202428704576656E742E63757272656E74546172676574292C0D0A';
wwv_flow_api.g_varchar2_table(858) := '202020202020636F6E7461696E6572203D20746869732E5F706F7075705265706F7274486561646572436F6E7461696E6572437265617465282074682C2070436F6C756D6E4F626A65637420293B0D0A0D0A20202020746869732E5F706F707570526570';
wwv_flow_api.g_varchar2_table(859) := '6F727448656164657257696467657453686F77282074682C20636F6E7461696E657220293B0D0A0D0A202020200D0A202020202428646F63756D656E74292E62696E642827636C69636B2E707265746975732D2D656E68616E6365644C6F764974656D27';
wwv_flow_api.g_varchar2_table(860) := '2C20242E70726F78792820746869732E5F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B2C20746869732029293B0D0A20207D2C0D0A20205F706F7075705265706F7274486561646572436C69636B4F7574736964';
wwv_flow_api.g_varchar2_table(861) := '65436865636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B';
wwv_flow_api.g_varchar2_table(862) := '272C20704576656E74293B0D0A2020202076617220746172676574203D202428704576656E742E746172676574293B0D0A0D0A20202020696620282021242E636F6E7461696E732820746869732E706F7075702E686561646572416374696F6E436F6E74';
wwv_flow_api.g_varchar2_table(863) := '61696E65722E6765742830292C207461726765742E67657428302920292029207B0D0A2020202020202F2F636C69636B206F75747369646520666F756E640D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(864) := '20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C2027636C69636B6564206F757473696465206865616465722077696467657427293B0D0A202020202020746869732E5F706F7075705265706F72744865';
wwv_flow_api.g_varchar2_table(865) := '616465725769646765744869646528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F';
wwv_flow_api.g_varchar2_table(866) := '757473696465436865636B272C2027636C69636B656420696E73696465206865616465722077696467657427293B0D0A202020207D0D0A202020200D0A20207D2C0D0A20205F706F707570437265617465537469636B79486561646572733A2066756E63';
wwv_flow_api.g_varchar2_table(867) := '74696F6E2829207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570437265617465537469636B794865616465727327293B0D0A0D0A202020207661720D0A2020202020207461626C65203D';
wwv_flow_api.g_varchar2_table(868) := '202428273C7461626C653E3C2F7461626C653E27292C0D0A2020202020207468656164203D20746869732E706F7075702E626F64792E66696E6428272E7265706F727420746865616427292E636C6F6E6528747275652C2074727565292C0D0A20202020';
wwv_flow_api.g_varchar2_table(869) := '2020746873203D20746869732E706F7075702E626F64792E66696E6428277461626C6520746827292C0D0A202020202020737469636B794865616465723B0D0A0D0A202020206966202820746869732E706F7075702E737469636B794865616465727320';
wwv_flow_api.g_varchar2_table(870) := '213D20756E646566696E65642029207B0D0A202020202020746869732E706F7075702E737469636B79486561646572732E72656D6F766528293B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(871) := '6F707570437265617465537469636B7948656164657273272C202772656D6F76696E67206578697374696E6720737469636B794865616465727327293B0D0A202020207D0D0A0D0A2020202074686561642E66696E642827746827292E65616368282066';
wwv_flow_api.g_varchar2_table(872) := '756E6374696F6E282070496E6465782C2070456C656D20297B0D0A202020202020242870456C656D292E637373287B0D0A2020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A20';
wwv_flow_api.g_varchar2_table(873) := '20202020202020276D61785769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020277769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A20202020';
wwv_flow_api.g_varchar2_table(874) := '20207D293B0D0A0D0A2020202020207468732E65712870496E646578292E637373287B0D0A2020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020276D617857';
wwv_flow_api.g_varchar2_table(875) := '69647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020277769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A0D0A2020202020207D290D0A20202020';
wwv_flow_api.g_varchar2_table(876) := '7D293B0D0A0D0A0D0A202020207461626C650D0A2020202020202E616464436C6173732822742D5265706F72742D7265706F727420737469636B794865616465727322292E61747472282273756D6D617279222C20746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(877) := '696E67732E706F7075702E7469746C65290D0A2020202020202E6373732827746F70272C2030290D0A2020202020202E617070656E642820746865616420293B0D0A0D0A20202020746869732E706F7075702E737469636B7948656164657273203D2074';
wwv_flow_api.g_varchar2_table(878) := '61626C653B0D0A20202020746869732E706F7075702E73656C656374416C6C436865636B626F78203D20746869732E706F7075702E737469636B79486561646572732E66696E64282774683A66697273742D6368696C64203A636865636B626F7827293B';
wwv_flow_api.g_varchar2_table(879) := '0D0A0D0A20202020746869732E706F7075702E626F64792E617070656E6428207461626C6520293B0D0A20207D2C0D0A20205F706F7075705265706F727452656E646572536561726368696E673A2066756E6374696F6E28297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(880) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572536561726368696E6727293B0D0A0D0A20202020766172200D0A2020202020207365617263685465726D203D20746869732E706F7075';
wwv_flow_api.g_varchar2_table(881) := '702E73746174652E736561726368537472696E672C0D0A202020202020736561726368696E6754657874203D20746869732E435F504F5055505F544558545F534541524348494E472E7265706C61636528272530272C207365617263685465726D292C0D';
wwv_flow_api.g_varchar2_table(882) := '0A202020202020636F6E7461696E6572203D20242827202020202020202020202020202020202020202020202020202020202020202020272B0D0A2020202020202020273C64697620636C6173733D22736561726368696E67466F72526573756C747322';
wwv_flow_api.g_varchar2_table(883) := '3E202020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020202020202020202020202020272B0D0A202020202020202027202020203C7370616E20636C6173733D';
wwv_flow_api.g_varchar2_table(884) := '2266612066612D726566726573682066612D616E696D2D7370696E223E3C2F7370616E3E20272B0D0A20202020202020202720203C2F6469763E20202020202020202020202020202020202020202020202020202020202020202020202020272B0D0A20';
wwv_flow_api.g_varchar2_table(885) := '202020202020202720203C64697620636C6173733D2274657874223E272B736561726368696E67546578742B273C2F6469763E272B0D0A2020202020202020273C2F6469763E202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(886) := '202020202020202020272B0D0A202020202020202027270D0A202020202020293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461696E6572293B0D0A0D0A20202020746869732E5F706F70';
wwv_flow_api.g_varchar2_table(887) := '75704865616465724869646528293B0D0A20202020746869732E5F706F707570466F6F7465724869646528293B0D0A20202020746869732E706F707570496E666F726D6174696F6E4869646528293B0D0A20202020746869732E5F706F70757041646A75';
wwv_flow_api.g_varchar2_table(888) := '7374426F647948656967687428293B0D0A20207D2C0D0A0D0A20205F706F7075705265706F727452656E6465724E6F64617461466F756E643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(889) := '656669782C20275F706F7075705265706F727452656E6465724E6F64617461466F756E6427293B0D0A0D0A20202020766172200D0A2020202020207365617263685465726D203D20746869732E706F7075702E73746174652E736561726368537472696E';
wwv_flow_api.g_varchar2_table(890) := '672C0D0A2020202020206E6F44617461466F756E64546578742C0D0A202020202020636F6E7461696E6572203D20242827202020202020202020202020202020202020202020202020202020202020202020272B0D0A2020202020202020273C64697620';
wwv_flow_api.g_varchar2_table(891) := '636C6173733D226E6F64617461666F756E64436F6E7461696E6572223E2020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020202020202020202020202020272B';
wwv_flow_api.g_varchar2_table(892) := '0D0A202020202020202027202020203C7370616E20636C6173733D2266612066612D7461626C652D736561726368223E3C2F7370616E3E20272B0D0A20202020202020202720203C2F6469763E2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(893) := '2020202020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2274657874223E2354455854233C2F6469763E272B0D0A2020202020202020273C2F6469763E20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(894) := '2020202020202020202020202020202020272B0D0A202020202020202027270D0A202020202020293B0D0A0D0A2020202069662028207365617263685465726D203D3D206E756C6C2029207B0D0A2020202020206E6F44617461466F756E645465787420';
wwv_flow_api.g_varchar2_table(895) := '3D20746869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F51554552593B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206E6F44617461466F756E6454657874203D20746869732E435F504F5055505F5445';
wwv_flow_api.g_varchar2_table(896) := '58545F4E4F5F444154415F464F554E445F5345415243482E7265706C61636528272530272C207365617263685465726D29202B20273C2F62723E272B746869732E435F504F5055505F544558545F434C4541525F46494C544552494E473B0D0A20202020';
wwv_flow_api.g_varchar2_table(897) := '7D0D0A0D0A20202020636F6E7461696E65722E66696E6428272E7465787427292E68746D6C286E6F44617461466F756E6454657874293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E746169';
wwv_flow_api.g_varchar2_table(898) := '6E6572293B0D0A20202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A20202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A20202020746869732E5F706F70757041646A757374426F64';
wwv_flow_api.g_varchar2_table(899) := '7948656967687428293B0D0A20207D2C0D0A20205F706F7075705265706F7274426F64794765743A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(900) := '7075705265706F7274426F6479476574272C207044617461293B0D0A0D0A202020207661720D0A20202020202074626F647954656D706C617465203D2027272B0D0A2020202020202020277B7B23646174617D7D272B0D0A2020202020202020273C7472';
wwv_flow_api.g_varchar2_table(901) := '272B0D0A202020202020202027207B7B2365787472617D7D636C6173733D22657874726156616C7565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D636C6173733D226E756C6C56616C';
wwv_flow_api.g_varchar2_table(902) := '7565227B7B2F6973415045584E756C6C56616C75657D7D3E272C0D0A202020202020636F6C756D6E5F6E616D652C0D0A202020202020696E70757453656C6563746F723B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E6773';
wwv_flow_api.g_varchar2_table(903) := '2E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020696E70757453656C6563746F72203D2027272B0D0A2020202020202020273C696E707574272B0D0A20202020202020202720747970653D22636865636B626F7822272B0D';
wwv_flow_api.g_varchar2_table(904) := '0A2020202020202020272076616C75653D227B7B7B527D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D636865636B65643D2274727565227B7B2F73656C65637465647D7D272B0D0A202020202020202027207B7B23657874';
wwv_flow_api.g_varchar2_table(905) := '72617D7D617269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75653D2274727565227B7B2F69734150';
wwv_flow_api.g_varchar2_table(906) := '45584E756C6C56616C75657D7D272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0D0A202020202020202027206E616D653D226D756C7469706C6522272B0D0A2020202020202020273E272B';
wwv_flow_api.g_varchar2_table(907) := '0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066';
wwv_flow_api.g_varchar2_table(908) := '612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0D0A202020202020202027273B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020696E70757453656C6563746F72203D2027272B0D0A2020202020';
wwv_flow_api.g_varchar2_table(909) := '202020273C696E707574272B0D0A20202020202020202720747970653D22726164696F22272B0D0A2020202020202020272076616C75653D227B7B7B527D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D636865636B65643D';
wwv_flow_api.g_varchar2_table(910) := '2274727565227B7B2F73656C65637465647D7D272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0D0A202020202020202027207B7B2365787472617D7D617269612D65787472612D76616C75';
wwv_flow_api.g_varchar2_table(911) := '653D2274727565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A2020';
wwv_flow_api.g_varchar2_table(912) := '20202020202027206E616D653D2273696E676C6522272B0D0A2020202020202020273E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D646F742D636972636C652D6F2066616B65526164696F223E3C2F7370616E3E';
wwv_flow_api.g_varchar2_table(913) := '272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D636972636C652D6F2066616B65526164696F223E3C2F7370616E3E272B0D0A202020202020202027273B0D0A202020207D0D0A0D0A2020202074626F647954656D70';
wwv_flow_api.g_varchar2_table(914) := '6C617465202B3D2027272B0D0A202020202020273C746420636C6173733D22742D5265706F72742D63656C6C223E272B0D0A20202020202027272B696E70757453656C6563746F722B27272B0D0A202020202020273C2F74643E273B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(915) := '666F722028207661722069203D303B2069203C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B0D0A202020202020636F6C756D6E5F6E616D65203D20746869732E6F7074696F6E732E636F6C756D6E735B69';
wwv_flow_api.g_varchar2_table(916) := '5D2E434F4C554D4E5F4E414D453B0D0A0D0A20202020202069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E660D0A20202020202020202626202174';
wwv_flow_api.g_varchar2_table(917) := '6869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E5F6E616D652029200D0A20202020202029207B0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028202174686973';
wwv_flow_api.g_varchar2_table(918) := '2E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202776697369626C652720292029207B0D0A20202020202020202F2F636F6C756D6E207669736962696C697479206E6F74';
wwv_flow_api.g_varchar2_table(919) := '20646566696E65640D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028202F2F0D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274';
wwv_flow_api.g_varchar2_table(920) := '4261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E697352657475726E436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E61';
wwv_flow_api.g_varchar2_table(921) := '6D65203D3D20275227200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A';
wwv_flow_api.g_varchar2_table(922) := '0D0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67';
wwv_flow_api.g_varchar2_table(923) := '732E706F7075702E6973446973706C6179436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20274427200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072';
wwv_flow_api.g_varchar2_table(924) := '656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A2020202020207464416C69676E203D20746869732E5F706F707570436F6C756D6E4973436F';
wwv_flow_api.g_varchar2_table(925) := '6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277464416C69676E2720293B0D0A20202020202074626F647954656D706C617465202B3D20273C746420636C6173733D22742D5265706F72742D63656C6C222061';
wwv_flow_api.g_varchar2_table(926) := '6C69676E3D22272B7464416C69676E2B272220686561646572733D22272B636F6C756D6E5F6E616D652B27223E7B7B7B272B636F6C756D6E5F6E616D652B277D7D7D3C2F74643E273B0D0A202020207D0D0A0D0A2020202074626F647954656D706C6174';
wwv_flow_api.g_varchar2_table(927) := '65202B3D20273C2F74723E7B7B2F646174617D7D273B0D0A0D0A20202020747279207B0D0A20202020202072656E6465726564203D2024284D757374616368652E72656E646572282074626F647954656D706C6174652C20704461746129293B0D0A2020';
wwv_flow_api.g_varchar2_table(928) := '20207D20636174636828206572726F722029207B0D0A202020202020746869732E5F7468726F774572726F72286572726F72293B0D0A202020207D0D0A0D0A202020202F2F686967686C6967687420726573756C74730D0A202020206966202820746869';
wwv_flow_api.g_varchar2_table(929) := '732E706F7075702E73746174652E736561726368537472696E672029207B0D0A20202020202072656E6465726564203D20746869732E5F706F707570486967686C69676874526573756C74732872656E6465726564293B20200D0A202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(930) := '2020202072656E6465726564203D20746869732E5F706F7075704D61726B4173457874726156616C7565282072656E646572656420293B0D0A2020202072656E6465726564203D20746869732E5F706F7075704D61726B41734E756C6C56616C75652820';
wwv_flow_api.g_varchar2_table(931) := '72656E646572656420293B0D0A0D0A2020202072657475726E2072656E64657265643B0D0A20207D2C0D0A20205F706F7075704D61726B41734E756C6C56616C75653A2066756E6374696F6E28207052656E646572656420297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(932) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704D61726B41734E756C6C56616C7565272C207052656E6465726564293B0D0A0D0A202020207661720D0A2020202020207464436E74203D207052656E64657265642E';
wwv_flow_api.g_varchar2_table(933) := '66696E642827746427292E6C656E6774683B0D0A0D0A202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C2070496E6465782C2070456C656D20297B0D0A202020202020766172200D0A2020';
wwv_flow_api.g_varchar2_table(934) := '20202020202073656C66203D20242870456C656D292C0D0A20202020202020206E756C6C56616C7565203D2073656C662E66696E6428273A696E70757427292E76616C28292C0D0A202020202020202074657874203D2073656C662E66696E6428273A69';
wwv_flow_api.g_varchar2_table(935) := '6E70757427292E617474722827617269612D646973706C61792D76616C756527293B0D0A0D0A202020202020696620282073656C662E697328272E6E756C6C56616C756527292029207B0D0A202020202020202073656C662E66696E642827746427292E';
wwv_flow_api.g_varchar2_table(936) := '6E6F7428273A66697273742D6368696C6427292E72656D6F766528293B0D0A202020202020202073656C662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D22272B28705464436E742D31292B';
wwv_flow_api.g_varchar2_table(937) := '27223E272B746578742B273C2F74643E27293B0D0A2020202020200D0A2020202020207D0D0A0D0A202020207D2C20746869732C207464436E742920293B0D0A0D0A2020202072657475726E207052656E64657265643B0D0A0D0A20207D2C0D0A20205F';
wwv_flow_api.g_varchar2_table(938) := '706F7075704D61726B4173457874726156616C75653A2066756E6374696F6E28207052656E646572656420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704D61726B41734578747261';
wwv_flow_api.g_varchar2_table(939) := '56616C7565272C207052656E6465726564293B0D0A0D0A20202020766172200D0A20202020202063656C6C54657874203D20746869732E435F504F5055505F544558545F45585452415F56414C55453B0D0A2020202020207464436E74203D207052656E';
wwv_flow_api.g_varchar2_table(940) := '64657265642E66696E642827746427292E6C656E6774683B0D0A0D0A202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C2070546578742C2070496E6465782C2070456C656D20297B0D0A20';
wwv_flow_api.g_varchar2_table(941) := '2020202020766172200D0A202020202020202073656C66203D20242870456C656D292C0D0A2020202020202020657874726156616C7565203D2073656C662E66696E6428273A696E70757427292E76616C28292C0D0A202020202020202074657874203D';
wwv_flow_api.g_varchar2_table(942) := '2070546578742E7265706C61636528272530272C20657874726156616C7565293B0D0A0D0A202020202020696620282073656C662E697328272E657874726156616C756527292029207B0D0A202020202020202073656C662E66696E642827746427292E';
wwv_flow_api.g_varchar2_table(943) := '6E6F7428273A66697273742D6368696C6427292E72656D6F766528293B0D0A202020202020202073656C662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D22272B28705464436E742D31292B';
wwv_flow_api.g_varchar2_table(944) := '27223E272B746578742B273C2F74643E27293B0D0A2020202020200D0A2020202020207D0D0A0D0A202020207D2C20746869732C207464436E742C2063656C6C546578742920293B0D0A0D0A2020202072657475726E207052656E64657265643B0D0A20';
wwv_flow_api.g_varchar2_table(945) := '207D2C0D0A20205F706F7075705265706F727452656E6465723A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E6465';
wwv_flow_api.g_varchar2_table(946) := '72272C207044617461293B0D0A0D0A20202020766172200D0A2020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27';
wwv_flow_api.g_varchar2_table(947) := '292C0D0A20202020202074686561642C0D0A20202020202074626F6479203D202428273C74626F64793E3C2F74626F64793E27292C0D0A20202020202073656C6563746564436E74203D20303B0D0A0D0A20202020696620282070446174612E64617461';
wwv_flow_api.g_varchar2_table(948) := '2E6C656E677468203D3D20302029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572272C20276E6F20726F777320746F2072656E6465722C20646973';
wwv_flow_api.g_varchar2_table(949) := '706C6179206E6F206461746120666F756E6427293B0D0A202020202020746869732E706F7075702E626F64792E616464436C61737328276E6F64617461666F756E6427293B0D0A202020202020746869732E5F706F7075705265706F727452656E646572';
wwv_flow_api.g_varchar2_table(950) := '4E6F64617461466F756E6428293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020207468656164203D20746869732E5F706F70757047657448656164696E677328293B0D0A0D0A202020207461626C650D0A';
wwv_flow_api.g_varchar2_table(951) := '2020202020202E616464436C6173732822742D5265706F72742D7265706F7274207265706F727422290D0A2020202020202E61747472282273756D6D617279222C20746869732E706C7567696E53657474696E67732E706F7075702E7469746C65290D0A';
wwv_flow_api.g_varchar2_table(952) := '2020202020202E617070656E642820746865616420290D0A2020202020202E617070656E64282074626F64792E617070656E642820746869732E5F706F7075705265706F7274426F6479476574282070446174612029202920293B0D0A0D0A2020202074';
wwv_flow_api.g_varchar2_table(953) := '61626C65436F6E7461696E65720D0A2020202020202E616464436C6173732827742D5265706F727420742D5265706F72742D2D616C74526F777344656661756C7420742D5265706F72742D2D726F77486967686C6967687420742D5265706F72742D2D73';
wwv_flow_api.g_varchar2_table(954) := '74726574636827290D0A2020202020202E617070656E6428207461626C6520293B0D0A202020200D0A20202020746869732E706F7075702E636F6E74656E745461626C65203D207461626C653B0D0A0D0A20202020746869732E706F7075702E626F6479';
wwv_flow_api.g_varchar2_table(955) := '0D0A2020202020202E72656D6F7665436C61737328276E6F64617461666F756E6427290D0A2020202020202E72656D6F7665436C6173732827736561726368696E6727290D0A2020202020202E656D70747928290D0A2020202020202E617070656E6428';
wwv_flow_api.g_varchar2_table(956) := '207461626C65436F6E7461696E657220290D0A2020202020202E7363726F6C6C546F702830293B0D0A0D0A202020202F2F7570646174652073656C656374696F6E2073746174650D0A202020206966202820746869732E706C7567696E53657474696E67';
wwv_flow_api.g_varchar2_table(957) := '732E69734D756C7469706C6553656C656374696F6E2029207B0D0A20202020202074626F64792E66696E64282774643A66697273742D6368696C64203A636865636B626F783A636865636B656427292E6561636828242E70726F7879282066756E637469';
wwv_flow_api.g_varchar2_table(958) := '6F6E282070496E6465782C2070456C656D20297B0D0A202020202020202073656C6563746564436E742B2B3B0D0A2020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0D0A2020202020207D2C20';
wwv_flow_api.g_varchar2_table(959) := '746869732029293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202074626F64792E66696E64282774643A66697273742D6368696C64203A726164696F3A636865636B656427292E6561636828242E70726F7879282066756E6374696F';
wwv_flow_api.g_varchar2_table(960) := '6E282070496E6465782C2070456C656D20297B0D0A2020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0D0A2020202020207D2C20746869732029293B0D0A202020207D0D0A200D0A202020200D';
wwv_flow_api.g_varchar2_table(961) := '0A20202020746869732E5F706F707570506167696E6174696F6E55706461746528293B0D0A20202020746869732E5F706F70757048656164657253686F7728293B0D0A20202020746869732E5F706F707570466F6F74657253686F7728293B0D0A202020';
wwv_flow_api.g_varchar2_table(962) := '20746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20202020746869732E5F706F707570437265617465537469636B794865616465727328293B0D0A0D0A20202020746869732E706F7075702E7365617263682E666F6375';
wwv_flow_api.g_varchar2_table(963) := '7328293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020696620282070446174612E646174612E6C656E677468203D3D2073656C656374';
wwv_flow_api.g_varchar2_table(964) := '6564436E742029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E677468206D617463682073656C65637465';
wwv_flow_api.g_varchar2_table(965) := '6420726F777327293B0D0A2020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(966) := '202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E67746820646F65736E5C2774206D617463682073656C656374656420726F777327';
wwv_flow_api.g_varchar2_table(967) := '2C2027616A61782064617461206C656E677468203D2022272B70446174612E646174612E6C656E6774682B2722272C202773656C656374656420726F7773203D2022272B73656C6563746564436E742B272227293B0D0A2020202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(968) := '20207D0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F646174615F72656E6465726564272C20746869732E5F706F7075704765744576656E74446174612829293B0D0A20207D2C0D0A0D0A20205F70';
wwv_flow_api.g_varchar2_table(969) := '6F707570476574526F7773506572506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570476574526F77735065725061676527293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(970) := '7661722076616C7565203D20746869732E706F7075702E726F7773506572506167652E76616C28293B0D0A0D0A20202020696620282076616C7565203D3D202725272029207B0D0A20202020202072657475726E20746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(971) := '696E67732E706F7075702E726F7773506572506167653B0D0A202020207D0D0A20202020656C736520696620282076616C7565203D3D20756E646566696E65642029207B0D0A20202020202072657475726E20746869732E706C7567696E53657474696E';
wwv_flow_api.g_varchar2_table(972) := '67732E706F7075702E726F7773506572506167653B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E2076616C75653B0D0A202020207D0D0A20207D2C0D0A20200D0A20205F706F7075704368616E6765526F77735065';
wwv_flow_api.g_varchar2_table(973) := '72506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704368616E6765526F77735065725061676527293B0D0A0D0A202020207661720D0A2020202020';
wwv_flow_api.g_varchar2_table(974) := '20736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D';
wwv_flow_api.g_varchar2_table(975) := '6E4964783B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C75';
wwv_flow_api.g_varchar2_table(976) := '6D6E446972656374696F6E2C20736561726368537472696E672C20746869732E706F7075702E73746174652E736561726368436F6C756D6E496478293B0D0A20207D2C0D0A0D0A20205F706F707570486561646572486964653A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(977) := '297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757048656164657248696465272C20746869732E706F7075702E686561646572293B0D0A0D0A20202020746869732E706F7075702E686561';
wwv_flow_api.g_varchar2_table(978) := '6465722E616464436C617373282768696464656E27293B0D0A20207D2C0D0A20205F706F70757048656164657253686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(979) := '5F706F70757048656164657253686F7727293B0D0A0D0A20202020746869732E706F7075702E6865616465722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20205F706F707570466F6F746572486964653A2066756E6374';
wwv_flow_api.g_varchar2_table(980) := '696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570466F6F7465724869646527293B0D0A0D0A20202020746869732E706F7075702E666F6F7465722E616464436C617373282768';
wwv_flow_api.g_varchar2_table(981) := '696464656E27293B202020200D0A20207D2C0D0A20205F706F707570466F6F74657253686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570466F6F7465';
wwv_flow_api.g_varchar2_table(982) := '7253686F7727293B0D0A0D0A20202020746869732E706F7075702E666F6F7465722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20205F706F707570526F777350657250616765486964653A2066756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(983) := '0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570526F7773506572506167654869646527293B0D0A0D0A20202020746869732E706F7075702E726F777350657250616765436F6E7461696E65';
wwv_flow_api.g_varchar2_table(984) := '722E6869646528293B0D0A20207D2C0D0A20205F706F707570526F77735065725061676553686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570526F77';
wwv_flow_api.g_varchar2_table(985) := '735065725061676553686F7727293B0D0A0D0A20202020746869732E706F7075702E726F777350657250616765436F6E7461696E65722E73686F7728293B0D0A20207D2C0D0A20205F706F707570506167696E6174696F6E486964653A2066756E637469';
wwv_flow_api.g_varchar2_table(986) := '6F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E4869646527293B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E436F6E7461';
wwv_flow_api.g_varchar2_table(987) := '696E65722E6869646528293B0D0A0D0A20207D2C0D0A20205F706F707570506167696E6174696F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075';
wwv_flow_api.g_varchar2_table(988) := '70506167696E6174696F6E53686F7727293B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E436F6E7461696E65722E73686F7728293B0D0A0D0A20207D2C0D0A20205F706F707570506167696E6174696F6E5072657650616765';
wwv_flow_api.g_varchar2_table(989) := '3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E507265765061676527293B0D0A0D0A20202020746869732E5F706F707570416A61';
wwv_flow_api.g_varchar2_table(990) := '78506572666F726D280D0A2020202020202D2D746869732E706F7075702E73746174652E6C61737446657463686564506167652C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A2020202020';
wwv_flow_api.g_varchar2_table(991) := '20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0D0A202020202020746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020746869732E706F7075702E737461';
wwv_flow_api.g_varchar2_table(992) := '74652E736561726368436F6C756D6E4964780D0A20202020293B0D0A0D0A20207D2C0D0A0D0A20205F706F707570506167696E6174696F6E4E657874506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(993) := '69732E6C6F675072656669782C20275F706F707570506167696E6174696F6E4E6578745061676527293B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D280D0A2020202020202B2B746869732E706F7075702E73746174652E';
wwv_flow_api.g_varchar2_table(994) := '6C61737446657463686564506167652C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374';
wwv_flow_api.g_varchar2_table(995) := '696F6E2C0D0A202020202020746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780D0A20202020293B0D0A20207D2C0D0A2020';
wwv_flow_api.g_varchar2_table(996) := '5F706F707570506167696E6174696F6E5570646174653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E55706461746527293B0D0A';
wwv_flow_api.g_varchar2_table(997) := '0D0A20202020766172200D0A2020202020207374617274203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D53746172742C0D0A202020202020656E642020203D20746869732E706F7075702E737461';
wwv_flow_api.g_varchar2_table(998) := '74652E616A617843757272656E7450616765526F776E756D456E642C0D0A202020202020746F74616C203D20746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E743B0D0A0D0A0D0A20202020656E64203D20656E6420';
wwv_flow_api.g_varchar2_table(999) := '3E20746F74616C203F20746F74616C203A20656E643B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E43757272656E742E746578742873746172742B27202D20272B656E642B27206F6620272B746F74616C293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1000) := '20202F2F6D616E61676520707265762070616765206C696E6B207669736962696C6974790D0A202020206966202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D20312029207B0D0A20202020202074686973';
wwv_flow_api.g_varchar2_table(1001) := '2E706F7075702E706167696E6174696F6E50726576506167652E6869646528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E50726576506167652E73686F7728293B200D0A';
wwv_flow_api.g_varchar2_table(1002) := '202020207D0D0A0D0A202020206966202820656E64203D3D20746F74616C2029207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E6869646528293B200D0A202020207D0D0A20202020656C7365207B0D';
wwv_flow_api.g_varchar2_table(1003) := '0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E73686F7728293B20200D0A202020207D0D0A0D0A20207D2C0D0A20205F706F707570497346696C74657265643A2066756E6374696F6E28297B0D0A20202020';
wwv_flow_api.g_varchar2_table(1004) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570497346696C746572656427293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E736561726368537472696E6720213D20756E64';
wwv_flow_api.g_varchar2_table(1005) := '6566696E656420262620746869732E706F7075702E73746174652E736561726368537472696E672E6C656E677468203E20302029207B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A2020202072657475726E2066616C73';
wwv_flow_api.g_varchar2_table(1006) := '653B0D0A20207D2C0D0A20205F706F7075705363726F6C6C43616C6C6261636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536372';
wwv_flow_api.g_varchar2_table(1007) := '6F6C6C43616C6C6261636B27293B0D0A0D0A20202020766172200D0A20202020202070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E7428202428704576656E742E63757272656E74546172676574292C202428704576656E';
wwv_flow_api.g_varchar2_table(1008) := '742E63757272656E74546172676574292E6F75746572486569676874282920292C0D0A202020202020736F72746564436F6C756D6E496478203D20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A202020202020';
wwv_flow_api.g_varchar2_table(1009) := '736F72746564436F6C756D6E446972656374696F6E203D20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C200D0A202020202020736561726368537472696E67203D20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(1010) := '6174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0D0A2020202020207363726F6C6C546F70203D2024287045';
wwv_flow_api.g_varchar2_table(1011) := '76656E742E63757272656E74546172676574292E7363726F6C6C546F7028293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E616A6178537461747573203D3D20746869732E435F414A41585F5354415455535F4552524F52';
wwv_flow_api.g_varchar2_table(1012) := '2029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E737469636B79486561646572732E6373732827746F70272C207363726F6C6C546F70293B0D0A0D0A20202020696620';
wwv_flow_api.g_varchar2_table(1013) := '2820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E6373732827746F70';
wwv_flow_api.g_varchar2_table(1014) := '272C207363726F6C6C546F70202B20746869732E706F7075702E626F64792E66696E642827746827292E666972737428292E6F757465724865696768742829293B20200D0A202020207D0D0A20207D2C0D0A20205F706F70757044726167506F73697469';
wwv_flow_api.g_varchar2_table(1015) := '6F6E46697843616C6C6261636B3A2066756E6374696F6E28704576656E742C20705569297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757044726167506F736974696F6E46697843616C6C';
wwv_flow_api.g_varchar2_table(1016) := '6261636B27293B0D0A20202020766172200D0A202020202020646F63756D656E745363726F6C6C546F70203D202428646F63756D656E74292E7363726F6C6C546F7028292C0D0A202020202020706F736974696F6E3B0D0A0D0A20202020696620282064';
wwv_flow_api.g_varchar2_table(1017) := '6F63756D656E745363726F6C6C546F70203E20302029207B0D0A202020202020706F736974696F6E203D207055692E706F736974696F6E3B0D0A202020202020706F736974696F6E2E746F70203D20706F736974696F6E2E746F70202D20646F63756D65';
wwv_flow_api.g_varchar2_table(1018) := '6E745363726F6C6C546F703B0D0A0D0A202020202020746869732E706F7075702E636F6E7461696E65722E706172656E7428292E636C6F7365737428222E75692D6469616C6F6722292E6373732822746F70222C20706F736974696F6E2E746F70202B20';
wwv_flow_api.g_varchar2_table(1019) := '22707822293B202020200D0A202020207D2020202020200D0A0D0A20207D2C0D0A20205F706F7075704469616C6F6744726167537461727443616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(1020) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F6744726167537461727443616C6C6261636B27293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E74';
wwv_flow_api.g_varchar2_table(1021) := '61696E657220213D756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E6869646528293B20200D0A202020207D0D0A0D0A20207D2C0D0A0D0A20205F706F7075704469';
wwv_flow_api.g_varchar2_table(1022) := '616C6F674472616753746F7043616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F6744726167';
wwv_flow_api.g_varchar2_table(1023) := '53746F7043616C6C6261636B27293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D756E646566696E65642029207B0D0A202020202020746869732E706F7075702E6865616465';
wwv_flow_api.g_varchar2_table(1024) := '72416374696F6E436F6E7461696E65722E73686F7728293B20200D0A202020207D0D0A0D0A20207D2C20200D0A20205F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B3A2066756E6374696F6E28297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(1025) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B27293B0D0A0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D';
wwv_flow_api.g_varchar2_table(1026) := '0A20207D2C0D0A20205F706F707570436F6C756D6E4973446566696E65643A2066756E6374696F6E282070436F6C756D6E4E616D6520297B0D0A202020207661722072657475726E56616C7565203D2066616C73653B0D0A0D0A20202020696620280D0A';
wwv_flow_api.g_varchar2_table(1027) := '202020202020746869732E706F7075702E68656164657273202020202020202020202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E63';
wwv_flow_api.g_varchar2_table(1028) := '6F6C756D6E7320202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D2020202020';
wwv_flow_api.g_varchar2_table(1029) := '2020202020213D20756E646566696E65640D0A2020202029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E202227';
wwv_flow_api.g_varchar2_table(1030) := '2B70436F6C756D6E4E616D652B272220697320646566696E65642E27293B0D0A20202020202072657475726E56616C7565203D20747275653B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F672874';
wwv_flow_api.g_varchar2_table(1031) := '6869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B2722206973206E6F7420646566696E65642E27293B0D0A20202020202072657475726E5661';
wwv_flow_api.g_varchar2_table(1032) := '6C7565203D2066616C73653B0D0A202020207D0D0A0D0A202020200D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20205F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65';
wwv_flow_api.g_varchar2_table(1033) := '3A2066756E6374696F6E282070436F6C756D6E4E616D652C20704174747220297B0D0A202020207661722072657475726E56616C75653B0D0A0D0A20202020696620280D0A202020202020202020746869732E706C7567696E53657474696E67732E706F';
wwv_flow_api.g_varchar2_table(1034) := '7075702E69735265706F7274416476616E636564436F6E6620202020203D3D20747275650D0A202020202020262620746869732E706F7075702E68656164657273202020202020202020202020202020202020202020202020202020202020202020213D';
wwv_flow_api.g_varchar2_table(1035) := '20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E7320202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E';
wwv_flow_api.g_varchar2_table(1036) := '706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D20202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F';
wwv_flow_api.g_varchar2_table(1037) := '6C756D6E4E616D65205D5B207041747472205D20213D20756E646566696E65642020202020200D0A2020202029207B0D0A20202020202072657475726E56616C7565203D20746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F';
wwv_flow_api.g_varchar2_table(1038) := '6C756D6E4E616D65205D5B207041747472205D3B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027';
wwv_flow_api.g_varchar2_table(1039) := '436F6C756D6E2022272B70436F6C756D6E4E616D652B27223A20617474722022272B70417474722B2722203D2022272B72657475726E56616C75652B272227293B0D0A20202020202072657475726E2072657475726E56616C75653B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(1040) := '0A20202020656C7365207B0D0A20202020202069662028207041747472203D3D202768656164696E67272029207B0D0A202020202020202072657475726E56616C7565203D2070436F6C756D6E4E616D653B0D0A2020202020207D0D0A20202020202065';
wwv_flow_api.g_varchar2_table(1041) := '6C7365207B0D0A202020202020202072657475726E56616C7565203D20746869732E706F7075702E64656661756C745265706F727453657474696E67735B207041747472205D3B0D0A2020202020207D0D0A0D0A202020202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(1042) := '2E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B27223A2064656661756C742061747472';
wwv_flow_api.g_varchar2_table(1043) := '2022272B70417474722B2722203D2022272B72657475726E56616C75652B272227293B0D0A20202020202072657475726E2072657475726E56616C75653B0D0A202020207D0D0A20207D2C0D0A0D0A20200D0A20205F706F7075704F70656E4765744465';
wwv_flow_api.g_varchar2_table(1044) := '6661756C74536F7274436F6C756D6E4964783A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49';
wwv_flow_api.g_varchar2_table(1045) := '647827293B0D0A0D0A202020207661720D0A20202020202072657475726E56616C7565203D20312C0D0A202020202020636F6C756D6E3B2020202020200D0A0D0A2020202069662028200D0A202020202020202020746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(1046) := '696E67732E706F7075702E69735265706F7274416476616E636564436F6E66200D0A202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D20756E646566696E65640D0A2020';
wwv_flow_api.g_varchar2_table(1047) := '20202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F';
wwv_flow_api.g_varchar2_table(1048) := '72742E636F6C756D6E20202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E646566696E65640D0A2020202029207B0D0A';
wwv_flow_api.g_varchar2_table(1049) := '202020202020636F6C756D6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E636F6C756D6E3B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F';
wwv_flow_api.g_varchar2_table(1050) := '70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420627920636F6C756D6E2022272B636F6C756D6E2B272227293B0D0A20202020202072657475726E56616C7565203D20746869732E5F676574436F6C756D';
wwv_flow_api.g_varchar2_table(1051) := '6E4964784279436F6C756D6E4E616D652820636F6C756D6E20293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444';
wwv_flow_api.g_varchar2_table(1052) := '656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F72742062792031737420636F6C756D6E2E27293B0D0A20202020202072657475726E5661';
wwv_flow_api.g_varchar2_table(1053) := '6C7565203D20313B2020202020200D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E496478207265747572';
wwv_flow_api.g_varchar2_table(1054) := '6E2022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E3A20';
wwv_flow_api.g_varchar2_table(1055) := '66756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E27293B0D0A0D0A2020202076';
wwv_flow_api.g_varchar2_table(1056) := '61720D0A20202020202072657475726E56616C7565203D2022617363222C0D0A202020202020646972656374696F6E3B0D0A0D0A2020202069662028200D0A202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E6973';
wwv_flow_api.g_varchar2_table(1057) := '5265706F7274416476616E636564436F6E66200D0A202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E70';
wwv_flow_api.g_varchar2_table(1058) := '6F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E636F6C756D6E20202020';
wwv_flow_api.g_varchar2_table(1059) := '213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E646566696E65640D0A2020202029207B0D0A20202020202064697265637469';
wwv_flow_api.g_varchar2_table(1060) := '6F6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E3B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444';
wwv_flow_api.g_varchar2_table(1061) := '656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420646972656374696F6E20646566696E65642061732022272B646972656374696F6E2B27222E27293B0D0A20202020202072657475726E56616C7565203D20';
wwv_flow_api.g_varchar2_table(1062) := '746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1063) := '706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F727420646972656374696F6E206173632E';
wwv_flow_api.g_varchar2_table(1064) := '27293B0D0A20202020202072657475726E56616C7565203D2022617363223B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F';
wwv_flow_api.g_varchar2_table(1065) := '7274436F6C756D6E446972656374696F6E2072657475726E2022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20205F706F7075704469616C6F674F70656E';
wwv_flow_api.g_varchar2_table(1066) := '43616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F674F70656E43616C6C6261636B27293B0D0A0D0A20202020746869732E70';
wwv_flow_api.g_varchar2_table(1067) := '6F7075702E73746174652E697356697369626C65203D20747275653B0D0A20202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0D0A0D0A20202020242827626F647927292E616464436C6173732827617065782D6E6F';
wwv_flow_api.g_varchar2_table(1068) := '2D7363726F6C6C27293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(1069) := '652E73656C65637465642E7075736828207B0D0A202020202020202022646973706C6179223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C0D0A20202020202020202276616C7565223A20746869732E6D';
wwv_flow_api.g_varchar2_table(1070) := '61736B2E73746174652E73656C65637465645B695D2E76616C75652C0D0A2020202020202020226973415045584E756C6C56616C7565223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C7565';
wwv_flow_api.g_varchar2_table(1071) := '0D0A2020202020207D20293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E73746174652E73656C656374656448617368203D20746869732E5F706F70757047657453656C65637465644861736828293B200D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(1072) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F674F70656E43616C6C6261636B20686173682022272B746869732E706F7075702E73746174652E73656C6563746564486173682B272227293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1073) := '2020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D';
wwv_flow_api.g_varchar2_table(1074) := '0A202020207D0D0A20202020656C7365207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D206E756C6C2029207B0D0A2020202020202020746869732E5F706F707570416A';
wwv_flow_api.g_varchar2_table(1075) := '6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E28';
wwv_flow_api.g_varchar2_table(1076) := '29293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F706F707570416A6178506572666F726D2820746869732E706F7075702E73746174652E6C61737446657463686564506167652C20746869732E70';
wwv_flow_api.g_varchar2_table(1077) := '6F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E20293B0D0A2020202020207D202020200D0A202020207D0D0A0D0A20202020746869';
wwv_flow_api.g_varchar2_table(1078) := '732E5F706F70757053686F7753656C6563746564557064617465282066616C736520293B0D0A0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F73686F776E272C20746869732E5F706F707570476574';
wwv_flow_api.g_varchar2_table(1079) := '4576656E74446174612829293B0D0A20207D2C0D0A20205F706F7075704469616C6F67436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1080) := '706F7075704469616C6F67436C6F736543616C6C6261636B27293B0D0A0D0A20202020746869732E706F7075702E73746174652E697356697369626C65203D2066616C73653B0D0A20202020746869732E706F7075702E73686F7753656C656374656443';
wwv_flow_api.g_varchar2_table(1081) := '6865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A0D0A20202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B0D0A20207D2C0D0A20205F68656164657257696467';
wwv_flow_api.g_varchar2_table(1082) := '6574436C65617246696C746572696E673A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F686561646572576964676574436C65617246696C74657269';
wwv_flow_api.g_varchar2_table(1083) := '6E6727293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D20756E646566696E65643B0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B62';
wwv_flow_api.g_varchar2_table(1084) := '6F782E697328273A636865636B656427292029207B0D0A2020202020202F2F696620636865636B626F78202273686F772073656C65637465642220697320636865636B6564207468656E2073686F77207265706F7274206F662073656C65637465642076';
wwv_flow_api.g_varchar2_table(1085) := '616C7565730D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D0A202020207D0D0A20202020656C7365207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E736F72';
wwv_flow_api.g_varchar2_table(1086) := '746564436F6C756D6E49647820213D20756E646566696E65642029207B0D0A20202020202020202F2F696620737065636966696320636F6C756D6E20776173207573656420746F20736F727420726573756C7473207468656E20706572666F726D20616A';
wwv_flow_api.g_varchar2_table(1087) := '617820696E636C7564696E6720736F7274696E670D0A2020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F707570';
wwv_flow_api.g_varchar2_table(1088) := '2E73746174652E736F72746564436F6C756D6E446972656374696F6E2C206E756C6C2C206E756C6C293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020202020202F2F6F746865727769736520666574636820616E6420646973';
wwv_flow_api.g_varchar2_table(1089) := '706C6179206669727374207061676520776974682064656661756C7420736F7274696E670D0A2020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F72';
wwv_flow_api.g_varchar2_table(1090) := '74436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0D0A2020202020207D0D0A202020207D0D0A0D0A20200D0A20207D2C0D0A20205F6865616465';
wwv_flow_api.g_varchar2_table(1091) := '725769646765744B657955704D616E61676549636F6E733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6865616465725769646765744B65795570';
wwv_flow_api.g_varchar2_table(1092) := '4D616E61676549636F6E73272C20704576656E74293B0D0A0D0A20202020766172206974656D203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A2020202069662028206974656D2E76616C28292E6C656E677468203D3D2030';
wwv_flow_api.g_varchar2_table(1093) := '2029207B0D0A2020202020206974656D2E616464436C6173732827656D70747927293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206974656D2E72656D6F7665436C6173732827656D70747927293B0D0A202020207D0D0A20207D';
wwv_flow_api.g_varchar2_table(1094) := '2C20200D0A20202F2A0D0A2020202050524F4D50540D0A20202A2F0D0A20205F70726F6D70745265706F736974696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1095) := '70726F6D70745265706F736974696F6E27293B0D0A0D0A20202020766172200D0A2020202020206F6666736574203D20746869732E6D61736B2E636F6E7461696E65722E6F666673657428292C0D0A20202020202077696E646F775769647468203D2024';
wwv_flow_api.g_varchar2_table(1096) := '2877696E646F77292E6F75746572576964746828292C0D0A202020202020746F70203D206F66667365742E746F70202B20746869732E6D61736B2E636F6E7461696E65722E6F757465724865696768742829202D312C0D0A2020202020206C656674203D';
wwv_flow_api.g_varchar2_table(1097) := '206F66667365742E6C6566742C0D0A20202020202070726F6D7074526573756C745769647468203D20303B0D0A0D0A20202020696620282021746869732E70726F6D70742E697356697369626C65202920207B0D0A202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(1098) := '672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745265706F736974696F6E2070726F6D7074206E6F742076697369626C652C20646F206E74682E27293B0D0A20202020202072657475726E20766F69642830293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1099) := '7D0D0A0D0A20202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0D0A20202020202022746F70223A20746F702C0D0A202020202020226C656674223A206C6566740D0A202020207D293B0D0A0D0A2020202070726F6D70745265';
wwv_flow_api.g_varchar2_table(1100) := '73756C745769647468203D20746869732E70726F6D70742E636F6E7461696E65722E6F75746572576964746828293B0D0A0D0A20202020696620282070726F6D7074526573756C745769647468202B206C656674203E2077696E646F7757696474682029';
wwv_flow_api.g_varchar2_table(1101) := '207B0D0A202020202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0D0A2020202020202020226D696E5769647468223A2070726F6D7074526573756C7457696474682C0D0A2020202020202020226C656674223A2022222C0D0A';
wwv_flow_api.g_varchar2_table(1102) := '2020202020202020227269676874223A2077696E646F775769647468202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828292D6C6566740D0A2020202020207D293B0D0A0D0A202020202020746869732E70726F6D7074';
wwv_flow_api.g_varchar2_table(1103) := '2E666978426F726465722E637373287B0D0A2020202020202020227269676874223A20226175746F222C0D0A2020202020202020226C656674223A20300D0A2020202020207D290D0A202020207D0D0A0D0A0D0A20207D2C0D0A20205F70726F6D707443';
wwv_flow_api.g_varchar2_table(1104) := '72656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744372656174654E657727293B0D0A0D0A20202020766172200D0A2020202020206174';
wwv_flow_api.g_varchar2_table(1105) := '747269627574657320203D20746869732E656C656D656E742E6765742830292E617474726962757465732C0D0A202020202020636C617373657320202020203D20617474726962757465732E636C61737320213D20756E646566696E6564203F20617474';
wwv_flow_api.g_varchar2_table(1106) := '726962757465732E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0D0A202020202020666978426F726465722020203D202428273C64697620636C6173733D22666978426F72646572223E3C2F6469763E27292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(1107) := '20636F6E7461696E65722020203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206865616465722020202020203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206D656E7520202020202020203D202428273C646976';
wwv_flow_api.g_varchar2_table(1108) := '20636C6173733D226D656E75223E3C2F6469763E27292C0D0A2020202020206D656E75457870616E642020202020203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C617373';
wwv_flow_api.g_varchar2_table(1109) := '3D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C207669657722207469746C653D22272B746869732E435F50524F4D50545F4D454E555F455850414E445F544954';
wwv_flow_api.g_varchar2_table(1110) := '4C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D636F6D707265737320636F6C6C6170736564223E3C2F7370616E3E272B0D0A20202020202020202720';
wwv_flow_api.g_varchar2_table(1111) := '203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D657870616E6420657870616E646564223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A2020202020206D656E75536F727420';
wwv_flow_api.g_varchar2_table(1112) := '2020203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D42';
wwv_flow_api.g_varchar2_table(1113) := '7574746F6E2D2D70696C6C20736F727422207469746C653D22272B746869732E435F50524F4D50545F4D454E555F534F52545F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220';
wwv_flow_api.g_varchar2_table(1114) := '636C6173733D22612D49636F6E2069636F6E2D7270742D736F72742D61736320617363223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D22612D49636F6E206963';
wwv_flow_api.g_varchar2_table(1115) := '6F6E2D7270742D736F72742D646573632064657363223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A2020202020206D656E75436C656172202020203D20242827272B0D0A2020202020202020273C6120687265663D226A61';
wwv_flow_api.g_varchar2_table(1116) := '76617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C653D22272B746869732E435F50524F';
wwv_flow_api.g_varchar2_table(1117) := '4D50545F4D454E555F434C4541525F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E27';
wwv_flow_api.g_varchar2_table(1118) := '2B0D0A2020202020202020273C2F613E27292C0D0A0D0A202020202020696E707574536561726368203D202428273C696E70757420747970653D22746578742220746162696E6465783D2230223E27292C0D0A20202020202069636F6E20202020202020';
wwv_flow_api.g_varchar2_table(1119) := '203D202428273C7370616E20636C6173733D2266612066612D736561726368223E3C2F7370616E3E27292C0D0A202020202020626F647920202020202020203D202428273C6469763E3C212D2D64656661756C7420626F64792D2D3E3C2F6469763E2729';
wwv_flow_api.g_varchar2_table(1120) := '2C0D0A2020202020206F66667365742020202020203D20746869732E6D61736B2E636F6E7461696E65722E6F666673657428293B0D0A0D0A202020206966202820746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E6465642729';
wwv_flow_api.g_varchar2_table(1121) := '2029207B0D0A2020202020206D656E75457870616E642E616464436C6173732827657870616E64656427290D0A202020207D0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E736F72746564203D3D20756E646566696E65642029';
wwv_flow_api.g_varchar2_table(1122) := '207B0D0A2020202020206D656E75536F72742E616464436C617373282761736327293B0D0A202020207D0D0A20202020656C7365206966202820746869732E6D61736B2E73746174652E736F72746564203D3D2027617363272029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1123) := '206D656E75536F72742E616464436C617373282761736327293B200D0A202020207D0D0A20202020656C7365207B0D0A2020202020206D656E75536F72742E616464436C61737328276465736327293B0D0A202020207D0D0A0D0A202020206D656E750D';
wwv_flow_api.g_varchar2_table(1124) := '0A2020202020202E617070656E64286D656E75457870616E64290D0A2020202020202E617070656E64286D656E75536F7274290D0A2020202020202E617070656E64286D656E75436C656172293B0D0A0D0A20202020636F6E7461696E65720D0A202020';
wwv_flow_api.g_varchar2_table(1125) := '2020202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D2070726F6D707427290D0A2020202020202E637373287B0D0A2020202020202020226D696E5769647468222020203A20746869732E6D61736B2E636F6E74';
wwv_flow_api.g_varchar2_table(1126) := '61696E65722E6F75746572576964746828292C0D0A202020202020202022626F72646572436F6C6F72223A20746869732E696E7075744373732E626F72646572436F6C6F722C0D0A202020202020202022666F6E7453697A65222020203A20746869732E';
wwv_flow_api.g_varchar2_table(1127) := '696E7075744373732E666F6E7453697A652C0D0A2020202020202020226C696E6548656967687422203A20746869732E696E7075744373732E6C696E654865696768740D0A2020202020207D290D0A2020202020202E617070656E6428666978426F7264';
wwv_flow_api.g_varchar2_table(1128) := '65722E6373732822626F72646572436F6C6F72222C20746869732E696E7075744373732E626F72646572436F6C6F7229290D0A202020203B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F';
wwv_flow_api.g_varchar2_table(1129) := '6D70744372656174654E6577272C20276F6666736574272C206F6666736574293B0D0A0D0A20202020626F64790D0A2020202020202E616464436C6173732827626F647927290D0A2020202020202E637373287B0D0A2020202020202020276D61784865';
wwv_flow_api.g_varchar2_table(1130) := '69676874273A20746869732E706C7567696E53657474696E67732E70726F6D70744D61784865696768740D0A2020202020207D293B0D0A0D0A202020206966202820617474726962757465732E6D61786C656E67746820213D20756E646566696E656420';
wwv_flow_api.g_varchar2_table(1131) := '29207B0D0A202020202020696E7075745365617263682E6174747228276D61786C656E677468272C20617474726962757465732E6D61786C656E6774682E76616C7565293B20200D0A202020207D0D0A202020200D0A2020202069662028206174747269';
wwv_flow_api.g_varchar2_table(1132) := '62757465732E706C616365686F6C64657220213D20756E646566696E65642029207B0D0A202020202020696E7075745365617263682E617474722827706C616365686F6C646572272C20617474726962757465732E706C616365686F6C6465722E76616C';
wwv_flow_api.g_varchar2_table(1133) := '7565293B20200D0A202020207D0D0A0D0A20202020666F722028766172206920696E20636C617373657329207B0D0A202020202020696E7075745365617263682E616464436C6173732820636C61737365735B695D2B272D696E7075742720293B20200D';
wwv_flow_api.g_varchar2_table(1134) := '0A202020207D0D0A0D0A20202020696E7075745365617263682E6174747228276175746F636F6D706C657465272C20276F666627293B0D0A202020200D0A0D0A202020206865616465720D0A2020202020202E616464436C617373282768656164657227';
wwv_flow_api.g_varchar2_table(1135) := '290D0A2020202020202E617070656E642820696E70757453656172636820290D0A2020202020202E617070656E64282069636F6E20293B0D0A0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C65';
wwv_flow_api.g_varchar2_table(1136) := '53656C656374696F6E2029207B0D0A202020202020636F6E7461696E65722E617070656E64286D656E75293B0D0A0D0A202020207D0D0A20202020636F6E7461696E65720D0A2020202020202E617070656E6428686561646572290D0A2020202020202E';
wwv_flow_api.g_varchar2_table(1137) := '617070656E6428626F6479293B0D0A202020200D0A20202020242E657874656E6428746869732E70726F6D70742C207B0D0A20202020202022636F6E7461696E657222203A20636F6E7461696E65722C0D0A202020202020226865616465722220202020';
wwv_flow_api.g_varchar2_table(1138) := '3A206865616465722C0D0A20202020202022626F6479222020202020203A20626F64792C0D0A20202020202022696E7075742220202020203A20696E7075745365617263682C0D0A2020202020202269636F6E222020202020203A2069636F6E2C0D0A20';
wwv_flow_api.g_varchar2_table(1139) := '202020202022666978426F7264657222203A20666978426F726465722C0D0A202020202020226D656E75222020202020203A207B0D0A202020202020202022636F6E7461696E6572223A206D656E752C0D0A202020202020202022657870616E64222020';
wwv_flow_api.g_varchar2_table(1140) := '203A206D656E75457870616E642C0D0A202020202020202022736F72742220202020203A206D656E75536F72742C0D0A202020202020202022636C65617222202020203A206D656E75436C6561720D0A2020202020207D0D0A202020207D293B0D0A2020';
wwv_flow_api.g_varchar2_table(1141) := '7D2C0D0A20205F70726F6D7074506F707570427574746F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074506F707570427574746F6E486964';
wwv_flow_api.g_varchar2_table(1142) := '6527293B0D0A2020202076617220627574746F6E5769647468203D20746869732E706F7075702E627574746F6E2E6F75746572576964746828293B0D0A0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E6869646528293B0D0A2020';
wwv_flow_api.g_varchar2_table(1143) := '20200D0A20207D2C0D0A20205F70726F6D707453686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707453686F7727293B0D0A0D0A202020202428646F';
wwv_flow_api.g_varchar2_table(1144) := '63756D656E74292E6F6E2827636C69636B2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765742830292E69642C20242E70726F787928746869732E5F70726F6D7074436865636B436C69636B4F7574736964652C207468697329';
wwv_flow_api.g_varchar2_table(1145) := '293B0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E616464436C6173732827666F637573656427293B0D0A0D0A20202020746869732E70726F6D70';
wwv_flow_api.g_varchar2_table(1146) := '742E697356697369626C65203D20747275653B0D0A0D0A20202020242827626F647927292E70726570656E642820746869732E70726F6D70742E636F6E7461696E657220293B0D0A0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E';
wwv_flow_api.g_varchar2_table(1147) := '6869646528293B0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E6572726F7220262620746869732E706C7567696E53746F70706564203D3D206661';
wwv_flow_api.g_varchar2_table(1148) := '6C73652029207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A202020202020746869732E6D61736B2E73746174652E6572726F72203D2066616C73653B0D0A202020207D';
wwv_flow_api.g_varchar2_table(1149) := '0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F73686F776E272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20207D2C0D0A20205F70726F6D7074486964653A20';
wwv_flow_api.g_varchar2_table(1150) := '66756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744869646527293B0D0A0D0A20202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C61';
wwv_flow_api.g_varchar2_table(1151) := '73732827666F637573656427293B0D0A20202020746869732E70726F6D70742E636F6E7461696E65722E72656D6F766528293B0D0A20202020746869732E70726F6D70742E636F6E7461696E6572203D20756E646566696E65643B0D0A20202020746869';
wwv_flow_api.g_varchar2_table(1152) := '732E70726F6D70742E697356697369626C65203D2066616C73653B0D0A0D0A202020202428646F63756D656E74292E6F66662827636C69636B2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765742830292E6964293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1153) := '20202020746869732E6D61736B2E706F707570427574746F6E2E73686F7728293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F68696464656E272C20746869732E5F70726F6D70744765744576';
wwv_flow_api.g_varchar2_table(1154) := '656E74446174612829293B0D0A202020200D0A20207D2C0D0A20205F70726F6D7074416A6178506572666F726D3A2066756E6374696F6E2820705061676520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(1155) := '2C20275F70726F6D7074416A6178506572666F726D27293B0D0A0D0A202020207661720D0A2020202020207265717565737450616765203D207050616765203D3D20756E646566696E6564203F2031203A2070506167652C0D0A202020202020616A6178';
wwv_flow_api.g_varchar2_table(1156) := '44617461203D207B0D0A202020202020202022783031223A20274155544F434F4D504C455445272C20202020202020202020202020202020202020202020202020202F2F747279620D0A202020202020202022783032223A20746869732E706C7567696E';
wwv_flow_api.g_varchar2_table(1157) := '53657474696E67732E70726F6D70742E726F7773506572506167652C2020202F2F726F77732070657220706167650D0A202020202020202022783033223A20746869732E5F6D61736B47657456616C756528292C20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1158) := '202020202F2F73656172636820737472696E670D0A202020202020202022783034223A20726571756573745061676520202020202020202020202F2F706167650D0A2020202020207D2C0D0A0D0A202020202020616A61784F7074696F6E73203D207B0D';
wwv_flow_api.g_varchar2_table(1159) := '0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F70726F6D7074416A61784265666F726553656E642C20746869732C207265717565737450616765292C0D0A20202020202020202273756363657373222020';
wwv_flow_api.g_varchar2_table(1160) := '20203A20242E70726F787928746869732E5F70726F6D7074416A6178537563636573732C2074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F70726F6D7074416A61784572726F722C2074';
wwv_flow_api.g_varchar2_table(1161) := '686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F70726F6D7074416A6178436F6D706C6574652C2074686973290D0A2020202020207D3B0D0A202020200D0A20202020696620282074686973';
wwv_flow_api.g_varchar2_table(1162) := '2E6D61736B2E73746174652E616A617852756E6E696E672029207B0D0A202020202020746869732E6D61736B2E73746174652E7868722E61626F727428293B0D0A202020202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D';
wwv_flow_api.g_varchar2_table(1163) := '2066616C73653B0D0A202020202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D73656172636827293B0D0A202020207D0D0A0D0A20202020746869732E6D6173';
wwv_flow_api.g_varchar2_table(1164) := '6B2E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A202020';
wwv_flow_api.g_varchar2_table(1165) := '200D0A20207D2C0D0A20205F70726F6D7074416A61784265666F726553656E643A2066756E6374696F6E282070526571756573746564506167652C20704A715848522C207053657474696E67732029207B0D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(1166) := '6728746869732E6C6F675072656669782C20275F70726F6D7074416A61784265666F726553656E64272C20704A715848522C207053657474696E67732C207052657175657374656450616765293B0D0A0D0A20202020766172200D0A2020202020206D65';
wwv_flow_api.g_varchar2_table(1167) := '737361676520203D20746869732E435F50524F4D50545F544558545F534541524348494E472C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D22736561726368696E67223E272B0D0A2020';
wwv_flow_api.g_varchar2_table(1168) := '2020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E6D61736B2E73746174652E616A617852756E6E69';
wwv_flow_api.g_varchar2_table(1169) := '6E67203D20747275653B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0D0A0D0A202020206966202820746869732E70726F6D70742E636F6E7461696E6572203D3D20756E';
wwv_flow_api.g_varchar2_table(1170) := '646566696E65642029207B0D0A202020202020746869732E5F70726F6D70744372656174654E657728293B0D0A202020202020746869732E5F70726F6D70744164644C697374656E65727328293B0D0A202020202020746869732E5F70726F6D70745368';
wwv_flow_api.g_varchar2_table(1171) := '6F7728293B0D0A202020207D0D0A0D0A2020202069662028207052657175657374656450616765203D3D20312029207B0D0A202020202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B20200D0A202020207D0D';
wwv_flow_api.g_varchar2_table(1172) := '0A0D0A20202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D616E696D2D7370696E2066612D7265667265736827293B0D0A20207D2C20200D0A20205F70726F6D';
wwv_flow_api.g_varchar2_table(1173) := '7074416A6178537563636573733A2066756E6374696F6E2870446174612C2070546578745374617475732C20704A71584852297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F616A61785375636365';
wwv_flow_api.g_varchar2_table(1174) := '7373272C20277044617461272C207044617461293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F616A617853756363657373272C20277054657874537461747573272C207054657874537461747573';
wwv_flow_api.g_varchar2_table(1175) := '293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F616A617853756363657373272C2027704A71584852272C20704A71584852293B0D0A0D0A0D0A20202020746869732E6D61736B2E73746174652E6C';
wwv_flow_api.g_varchar2_table(1176) := '6173744665746368656450616765203D2070446174612E726571756573746564506167653B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D20747275653B0D0A0D0A202020200D0A20202020';
wwv_flow_api.g_varchar2_table(1177) := '746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D73656172636827293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E6C6173744665746368';
wwv_flow_api.g_varchar2_table(1178) := '656450616765203E20312029207B0D0A202020202020746869732E5F70726F6D7074417070656E64446174612820704461746120293B0D0A202020207D0D0A20202020656C7365207B0D0A0D0A20202020202069662028200D0A20202020202020207468';
wwv_flow_api.g_varchar2_table(1179) := '69732E5F6D61736B47657456616C756528292E6C656E677468203D3D2030200D0A2020202020202020262620280D0A20202020202020202020746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F7465787420213D20756E646566696E65';
wwv_flow_api.g_varchar2_table(1180) := '640D0A202020202020202020207C7C20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C756520213D20756E646566696E65640D0A2020202020202020290D0A20202020202029207B0D0A202020202020202070446174612E64';
wwv_flow_api.g_varchar2_table(1181) := '6174612E756E7368696674287B0D0A202020202020202020202252223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652C0D0A202020202020202020202244223A20746869732E6F7074696F6E732E6974656D2E6C6F';
wwv_flow_api.g_varchar2_table(1182) := '765F6E756C6C5F746578742C0D0A20202020202020202020226973415045584E756C6C56616C7565223A20747275650D0A20202020202020207D293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F70726F6D707452656E646572446174';
wwv_flow_api.g_varchar2_table(1183) := '61496E44656661756C7454656D706C6174652820704461746120293B0D0A202020207D0D0A0D0A20202020696620282070446174612E717565727920213D20756E646566696E65642029207B0D0A202020202020746869732E5F77726974655175657279';
wwv_flow_api.g_varchar2_table(1184) := '546F436F6E736F6C65282070446174612E717565727920293B0D0A202020207D0D0A202020200D0A0D0A20207D2C0D0A20205F70726F6D7074416A61784572726F723A2066756E6374696F6E28704A715848522C2070546578745374617475732C207045';
wwv_flow_api.g_varchar2_table(1185) := '72726F725468726F776E297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A61784572726F72272C2027704A71584852272C20704A715848522C2027705465787453746174757327';
wwv_flow_api.g_varchar2_table(1186) := '2C2070546578745374617475732C2027704572726F725468726F776E272C20704572726F725468726F776E293B0D0A0D0A0D0A202020206966202820704A715848522E73746174757354657874203D3D202761626F7274272029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1187) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A61784572726F72272C2027414A41582063616C6C2061626F727465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A2020';
wwv_flow_api.g_varchar2_table(1188) := '20207D0D0A0D0A202020207661722061727261793B0D0A0D0A20202020746869732E5F70726F6D70744869646528293B0D0A0D0A20202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202022';
wwv_flow_api.g_varchar2_table(1189) := '616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E666F2C0D0A202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0D0A2020202020202274656368';
wwv_flow_api.g_varchar2_table(1190) := '496E666F22203A20704A715848522E726573706F6E73654A534F4E2E74656368496E666F0D0A202020207D293B0D0A0D0A20202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A202020200D0A20202020';
wwv_flow_api.g_varchar2_table(1191) := '746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F6572726F72272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20202020746869732E5F7468726F774572726F72546578742820704572';
wwv_flow_api.g_varchar2_table(1192) := '726F725468726F776E20293B0D0A0D0A20207D2C0D0A20205F70726F6D70744765744576656E74446174613A2066756E6374696F6E28297B0D0A2020202072657475726E207B0D0A2020202020202270726F6D7074223A207B0D0A202020202020202022';
wwv_flow_api.g_varchar2_table(1193) := '636F6E7461696E6572223A20746869732E70726F6D70742E636F6E7461696E65722C0D0A202020202020202022686561646572222020203A20746869732E70726F6D70742E6865616465722C0D0A202020202020202022626F64792220202020203A2074';
wwv_flow_api.g_varchar2_table(1194) := '6869732E70726F6D70742E626F64792C0D0A202020202020202022696E70757422202020203A20746869732E70726F6D70742E696E7075740D0A0D0A2020202020207D2C0D0A202020202020226D61736B223A207B0D0A20202020202020202273656C65';
wwv_flow_api.g_varchar2_table(1195) := '637465642220202020203A20746869732E6D61736B2E73746174652E73656C65637465642C0D0A20202020202020202264617461417661696C61626C65223A20746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C650D';
wwv_flow_api.g_varchar2_table(1196) := '0A2020202020207D0D0A0D0A202020207D3B0D0A20207D2C0D0A20205F70726F6D7074416A6178436F6D706C6574653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(1197) := '726F6D7074416A6178436F6D706C65746527293B0D0A0D0A20202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A0D0A20202020746869732E5F70726F6D7074436865636B5769647468446966666572';
wwv_flow_api.g_varchar2_table(1198) := '656E636528293B0D0A20207D2C0D0A20205F70726F6D7074436865636B5769647468446966666572656E63653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D';
wwv_flow_api.g_varchar2_table(1199) := '7074436865636B5769647468446966666572656E636527293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E6365272C2027636F6E74';
wwv_flow_api.g_varchar2_table(1200) := '61696E6572207769647468272C20746869732E6D61736B2E636F6E7461696E65722E6F7574657257696474682829293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B';
wwv_flow_api.g_varchar2_table(1201) := '5769647468446966666572656E6365272C202770726F6D7074207769647468272C20746869732E70726F6D70742E636F6E7461696E65722E6F7574657257696474682829293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F';
wwv_flow_api.g_varchar2_table(1202) := '675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E6365272C202770726F6D707420636F6E7461696E6572272C20746869732E70726F6D70742E636F6E7461696E65722E676574283029293B0D0A0D0A202020207661';
wwv_flow_api.g_varchar2_table(1203) := '7220646966666572656E63653B0D0A0D0A20202020696620282021746869732E70726F6D70742E697356697369626C652029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707443';
wwv_flow_api.g_varchar2_table(1204) := '6865636B5769647468446966666572656E63652070726F6D7074206E6F742076697369626C652C20646F206E746827293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020646966666572656E6365203D20';
wwv_flow_api.g_varchar2_table(1205) := '746869732E70726F6D70742E636F6E7461696E65722E6F7574657257696474682829202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828293B202020200D0A0D0A202020206966202820646966666572656E6365203E20';
wwv_flow_api.g_varchar2_table(1206) := '302029207B0D0A202020202020746869732E70726F6D70742E666978426F726465722E63737328277769647468272C20646966666572656E63652B31293B0D0A202020202020746869732E70726F6D70742E666978426F726465722E73686F7728293B0D';
wwv_flow_api.g_varchar2_table(1207) := '0A202020207D202020200D0A20202020656C7365207B0D0A202020202020746869732E70726F6D70742E666978426F726465722E6869646528293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074416A617841626F72743A2066756E63';
wwv_flow_api.g_varchar2_table(1208) := '74696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A617841626F727427293B0D0A0D0A20202020746869732E6D61736B2E73746174652E7868722E61626F727428293B';
wwv_flow_api.g_varchar2_table(1209) := '0D0A20202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A20207D2C0D0A20205F70726F6D70744164644C697374656E6572733A2066756E6374696F6E28297B0D0A20202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(1210) := '2E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744164644C697374656E65727327293B0D0A0D0A20202020746869732E70726F6D70742E626F64790D0A2020202020202E6F6E2827636C69636B272C20276C69272C20242E70726F';
wwv_flow_api.g_varchar2_table(1211) := '78792820746869732E5F70726F6D70744C69436C69636B48616E6C6465722C20746869732029290D0A2020202020202E6F6E28277363726F6C6C272C20746869732E5F6465626F756E636528242E70726F787928746869732E5F70726F6D70745363726F';
wwv_flow_api.g_varchar2_table(1212) := '6C6C43616C6C6261636B2C2074686973292C203130302920290D0A2020202020202E6F6E28276D6F757365656E746572272C20276C69272C242E70726F787928746869732E5F70726F6D7074556E686967686C696768744F746865722C20746869732929';
wwv_flow_api.g_varchar2_table(1213) := '0D0A0D0A20202020746869732E70726F6D70742E696E7075740D0A2020202020202E6F6E2827626C7572272C20242E70726F787928746869732E5F70726F6D7074496E707574426C75722C7468697329290D0A2020202020202E6F6E2827666F63757327';
wwv_flow_api.g_varchar2_table(1214) := '2C20242E70726F787928746869732E5F70726F6D7074496E707574466F6375732C7468697329290D0A2020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E63652820242E70726F78792820746869732E5F6D61736B4B65795570';
wwv_flow_api.g_varchar2_table(1215) := '2C2074686973292C20746869732E706C7567696E53657474696E67732E70726F6D70742E6465626F756E636554696D65202920290D0A2020202020202E6F6E28276B6579646F776E272C20746869732E5F6465626F756E636528200D0A20202020202020';
wwv_flow_api.g_varchar2_table(1216) := '202020242E70726F787928200D0A202020202020202020202020746869732E5F6D61736B4B6579446F776E48616E646C65722C20746869730D0A20202020202020202020292C200D0A20202020202020202020746869732E706C7567696E53657474696E';
wwv_flow_api.g_varchar2_table(1217) := '67732E70726F6D70742E6E617669676174696F6E4465626F756E636554696D650D0A202020202020202029200D0A202020202020293B0D0A0D0A20202020746869732E70726F6D70742E6D656E752E657870616E642E6F6E2827636C69636B272C20242E';
wwv_flow_api.g_varchar2_table(1218) := '70726F78792820746869732E5F70726F6D70744D656E754368616E6765566965772C2074686973202920293B0D0A20202020746869732E70726F6D70742E6D656E752E736F727420202E6F6E2827636C69636B272C20242E70726F78792820746869732E';
wwv_flow_api.g_varchar2_table(1219) := '5F70726F6D70744D656E75536F7274546167732C2074686973202920293B0D0A20202020746869732E70726F6D70742E6D656E752E636C656172202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E75436C65';
wwv_flow_api.g_varchar2_table(1220) := '617256616C7565732C2074686973202920293B0D0A0D0A20207D2C0D0A20205F70726F6D70744D656E75536F7274546167733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(1221) := '5072656669782C20275F70726F6D70744D656E75536F727454616773272C20704576656E74293B0D0A0D0A20202020766172200D0A202020202020746172676574203D202428704576656E742E746172676574292C0D0A20202020202064697265637469';
wwv_flow_api.g_varchar2_table(1222) := '6F6E203D20746869732E6D61736B2E73746174652E736F72746564203D3D202761736327203F20276465736327203A2027617363273B202020200D0A0D0A20202020746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869';
wwv_flow_api.g_varchar2_table(1223) := '732E5F736F72744A736F6E282022646973706C6179222C20646972656374696F6E202920293B0D0A0D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A202020202F2F736574207374617465206F66206D61736B0D0A';
wwv_flow_api.g_varchar2_table(1224) := '20202020746869732E6D61736B2E73746174652E736F72746564203D20646972656374696F6E3B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A2020202020202F2F736574207374617465206F6620';
wwv_flow_api.g_varchar2_table(1225) := '70726F6D70740D0A202020202020746869732E70726F6D70742E6D656E752E736F72742E72656D6F7665436C6173732827617363206465736327292E616464436C6173732820646972656374696F6E20293B0D0A202020207D0D0A0D0A20202020746869';
wwv_flow_api.g_varchar2_table(1226) := '732E70726F6D70742E696E7075742E666F63757328293B0D0A20207D2C0D0A20205F70726F6D70744D656E75436C65617256616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1227) := '6669782C20275F70726F6D70744D656E75436C65617256616C75657327293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202F';
wwv_flow_api.g_varchar2_table(1228) := '2F746869732E5F70726F6D70744869676C6967687452656D6F766543757272656E744C6928293B0D0A20202020746869732E5F70726F6D70744C6952656D6F766553656C656374696F6E28293B0D0A20202020746869732E5F70726F6D70745265706F73';
wwv_flow_api.g_varchar2_table(1229) := '6974696F6E28293B0D0A20202020746869732E5F70726F6D707453656C6563744669727374526F7728293B0D0A20202020746869732E5F70726F6D70744170706C7956616C75657328293B0D0A0D0A20202020746869732E70726F6D70742E696E707574';
wwv_flow_api.g_varchar2_table(1230) := '2E666F63757328293B0D0A20207D2C0D0A20205F70726F6D707452656E646572546167733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656E646572';
wwv_flow_api.g_varchar2_table(1231) := '5461677327293B0D0A0D0A202020207661722072656E6465726564203D20303B0D0A20202020766172206C696D697454616773203D20746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F3B0D0A0D0A202020202F2F656D';
wwv_flow_api.g_varchar2_table(1232) := '707479206172726179206F66207461677320696E206D61736B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A0D0A202020202F2F7265637265617465206172726179206F6620746167732066726F6D2073656C65637465';
wwv_flow_api.g_varchar2_table(1233) := '642076616C7565730D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B20297B0D0A0D0A2020202020206966202820746869732E706C7567696E5365';
wwv_flow_api.g_varchar2_table(1234) := '7474696E67732E70726F6D70742E617265546167734C696D697465642026262069203E3D206C696D6974546167732029207B0D0A20202020202020202F2F72656E6465722073756D6D617279207461670D0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1235) := '70745461677353756D6D6172792820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468202D2072656E646572656420293B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A0D0A2020202020206966202820';
wwv_flow_api.g_varchar2_table(1236) := '746869732E706C7567696E53657474696E67732E646973706C6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0D0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1237) := '7074546167734164644E65772820746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174';
wwv_flow_api.g_varchar2_table(1238) := '652E73656C65637465645B695D2E6973457874726156616C756520293B0D0A202020202020202072656E64657265642B2B3B0D0A2020202020207D0D0A202020202020656C736520696620282021746869732E706C7567696E53657474696E67732E6469';
wwv_flow_api.g_varchar2_table(1239) := '73706C6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(1240) := '5F70726F6D707452656E64657254616773272C202776616C75652022272B746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652B2722206973206E6F7420696E2076616C75652066726F6D2073716C2071756572792E2729';
wwv_flow_api.g_varchar2_table(1241) := '3B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E65772820746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C20746869732E';
wwv_flow_api.g_varchar2_table(1242) := '6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C756520293B0D0A202020202020202072656E64657265642B2B3B0D0A20202020';
wwv_flow_api.g_varchar2_table(1243) := '20207D0D0A0D0A202020207D0D0A0D0A20202020696620282072656E6465726564203D3D20302026262021746869732E706C7567696E53657474696E67732E70726F6D70742E617265546167734C696D697465642029207B0D0A20202020202074686973';
wwv_flow_api.g_varchar2_table(1244) := '2E5F70726F6D7074506C616365486F6C64657253686F7728293B0D0A202020207D2020200D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C6465724869646528293B0D0A202020207D0D0A0D0A20207D';
wwv_flow_api.g_varchar2_table(1245) := '2C0D0A20205F70726F6D70744D656E754368616E6765566965773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744D656E754368616E6765566965772729';
wwv_flow_api.g_varchar2_table(1246) := '3B0D0A0D0A202020206966202820746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E64656427292029207B0D0A202020202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C6173732827657870616E64';
wwv_flow_api.g_varchar2_table(1247) := '656427293B0D0A202020202020746869732E70726F6D70742E6D656E752E657870616E642E72656D6F7665436C6173732827657870616E64656427290D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E6D61736B2E63';
wwv_flow_api.g_varchar2_table(1248) := '6F6E7461696E65722E616464436C6173732827657870616E64656427293B0D0A202020202020746869732E70726F6D70742E6D656E752E657870616E642E616464436C6173732827657870616E64656427290D0A202020207D0D0A0D0A20202020746869';
wwv_flow_api.g_varchar2_table(1249) := '732E5F70726F6D70745265706F736974696F6E28293B0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A0D0A0D0A20207D2C0D0A20205F70726F6D7074556E686967686C696768744F746865723A2066756E6374';
wwv_flow_api.g_varchar2_table(1250) := '696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074556E686967686C696768744F7468657227293B0D0A0D0A20202020746869732E70726F6D70742E626F';
wwv_flow_api.g_varchar2_table(1251) := '64792E66696E6428276C6927292E6E6F742820704576656E742E74617267657420292E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A0D0A20207D2C0D0A20205F70726F6D70745363726F6C6C43616C6C6261636B3A';
wwv_flow_api.g_varchar2_table(1252) := '2066756E6374696F6E2820704576656E7429207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C2027704576656E74272C20704576656E742C20';
wwv_flow_api.g_varchar2_table(1253) := '277363726F6C6C546F70272C20746869732E70726F6D70742E626F64792E7363726F6C6C546F702829293B0D0A0D0A20202020766172200D0A20202020202070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E742820746869';
wwv_flow_api.g_varchar2_table(1254) := '732E70726F6D70742E626F64792C20746869732E706C7567696E53657474696E67732E70726F6D70744D617848656967687420293B0D0A0D0A20202020696620282070657263656E74203E20393020262620746869732E6D61736B2E73746174652E616A';
wwv_flow_api.g_varchar2_table(1255) := '617852756E6E696E67203D3D2066616C73652029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C202752656163686564206F76657220';
wwv_flow_api.g_varchar2_table(1256) := '393025206F6620636F6E7461696E6572207363726F6C6C2E20506572666F726D20414A415827293B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C6173744665746368';
wwv_flow_api.g_varchar2_table(1257) := '65645061676520293B0D0A202020207D0D0A20202020656C736520696620282070657263656E74203E20393020262620746869732E6D61736B2E73746174652E616A617852756E6E696E67203D3D20747275652029207B0D0A202020202020617065782E';
wwv_flow_api.g_varchar2_table(1258) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C2027546865726520697320414A4158206177616974696E6720666F7220726573756C74732E20414A4158206E6F7420706572';
wwv_flow_api.g_varchar2_table(1259) := '666F726D656427293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C20274A757374207363';
wwv_flow_api.g_varchar2_table(1260) := '726F6C6C2E20646F206E6F7468696E6727293B200D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074496E707574426C75723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1261) := '6669782C20275F70726F6D7074496E707574426C757227293B0D0A20207D2C0D0A20205F70726F6D7074496E707574466F6375733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(1262) := '2C20275F70726F6D7074496E707574466F63757327293B0D0A20207D2C0D0A20205F70726F6D7074446973706C61794572726F723A2066756E6374696F6E2820705465787420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F';
wwv_flow_api.g_varchar2_table(1263) := '675072656669782C20275F70726F6D7074446973706C61794572726F72272C20227054657874222C2070546578742C20746869732E70726F6D7074293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C2820273C64697620636C';
wwv_flow_api.g_varchar2_table(1264) := '6173733D2270726F6D70744572726F72223E3C7370616E20636C6173733D2266612066612D6578636C616D6174696F6E2D747269616E676C65223E3C2F7370616E3E20272B70546578742B273C2F6469763E2720293B0D0A20207D2C0D0A20205F70726F';
wwv_flow_api.g_varchar2_table(1265) := '6D70744C6952656D6F766553656C656374696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744869676C6967687452656D6F7665416C6C27293B0D0A';
wwv_flow_api.g_varchar2_table(1266) := '0D0A20202020746869732E70726F6D70742E626F64792E66696E6428275B617269612D73656C65637465643D747275655D27292E72656D6F7665417474722827617269612D73656C656374656427293B0D0A20207D2C0D0A20205F70726F6D7074486967';
wwv_flow_api.g_varchar2_table(1267) := '6C6967687452656D6F766543757272656E744C693A2066756E6374696F6E28297B0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E72656D6F7665417474722827617269612D686967686C696768746564';
wwv_flow_api.g_varchar2_table(1268) := '27293B0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20756E646566696E65643B0D0A20207D2C0D0A20205F70726F6D7074486967686C696768744C693A2066756E6374696F6E2820704C69456C65';
wwv_flow_api.g_varchar2_table(1269) := '6D656E7420297B0D0A202020202F2F72656D6F76652073656C656374696F6E20696E20616C6C20736574206F6620646174610D0A202020206966202820746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E20213D20756E64';
wwv_flow_api.g_varchar2_table(1270) := '6566696E65642029207B0D0A202020202020746869732E5F70726F6D70744869676C6967687452656D6F766543757272656E744C6928293B20200D0A202020207D202020200D0A0D0A20202020746869732E6D61736B2E73746174652E63757272656E74';
wwv_flow_api.g_varchar2_table(1271) := '53656C656374696F6E203D20704C69456C656D656E743B0D0A0D0A20202020704C69456C656D656E742E617474722827617269612D686967686C696768746564272C2074727565293B0D0A20207D2C0D0A20205F70726F6D707453656C65637446697273';
wwv_flow_api.g_varchar2_table(1272) := '74526F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707453656C6563744669727374526F7727293B0D0A0D0A202020207661722066697273744C696E65';
wwv_flow_api.g_varchar2_table(1273) := '203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E666972737428293B0D0A0D0A20202020746869732E5F70726F6D7074486967686C696768744C69282066697273744C696E6520293B0D0A20207D2C0D0A20205F6461746145';
wwv_flow_api.g_varchar2_table(1274) := '7874656E6453656C656374656446726F6D41727261794F664F626A656374733A2066756E6374696F6E282070446174612C207053656C656374656420297B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(1275) := '20275F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C20227044617461222C207044617461293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F64';
wwv_flow_api.g_varchar2_table(1276) := '617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C20227053656C6563746564222C207053656C6563746564293B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D';
wwv_flow_api.g_varchar2_table(1277) := '0A202020202020666F7220282076617220793D303B2079203C207053656C65637465642E6C656E6774683B20792B2B2029207B0D0A0D0A202020202020202069662028207053656C65637465645B795D2E76616C75652E746F537472696E672829203D3D';
wwv_flow_api.g_varchar2_table(1278) := '2070446174612E646174615B695D2E522E746F537472696E6728292029207B0D0A2020202020202020202070446174612E646174615B695D2E73656C6563746564203D20747275653B0D0A20202020202020202020636F6E74696E75653B0D0A20202020';
wwv_flow_api.g_varchar2_table(1279) := '202020207D0D0A0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473';
wwv_flow_api.g_varchar2_table(1280) := '272C202272657475726E6564207044617461222C207044617461293B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20205F70726F6D707454656D706C61746544656661756C743A2066756E6374696F6E28297B0D0A20202020';
wwv_flow_api.g_varchar2_table(1281) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454656D706C61746544656661756C7427293B0D0A0D0A202020207661720D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1282) := '277B7B23646174617D7D272B0D0A2020202020202020273C6C69272B0D0A20202020202020202720617269612D72657475726E2D76616C75653D227B7B7B527D7D7D22272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D';
wwv_flow_api.g_varchar2_table(1283) := '227B7B7B447D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D617269612D73656C65637465643D2274727565227B7B2F73656C65637465647D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75';
wwv_flow_api.g_varchar2_table(1284) := '657D7D617269612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A202020202020202027207469746C653D227B7B7B447D7D7D22272B0D0A20202020202020202720636C6173733D226465666175';
wwv_flow_api.g_varchar2_table(1285) := '6C7422272B0D0A2020202020202020273E272B0D0A202020202020202027207B7B7B447D7D7D272B0D0A2020202020202020273C2F6C693E272B0D0A2020202020202020277B7B2F646174617D7D273B0D0A0D0A2020202072657475726E2074656D706C';
wwv_flow_api.g_varchar2_table(1286) := '6174653B0D0A20207D2C0D0A20205F70726F6D707452656E64657244617461496E437573746F6D54656D706C6174653A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1287) := '69782C20275F70726F6D707452656E64657244617461496E437573746F6D54656D706C617465272C20227044617461222C207044617461293B0D0A0D0A20202020766172200D0A20202020202072656E6465726564203D2027272C0D0A2020202020206C';
wwv_flow_api.g_varchar2_table(1288) := '692C0D0A202020202020697353656C6563746564203D2066616C73652C0D0A202020202020726F7748746D6C3B0D0A0D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A';
wwv_flow_api.g_varchar2_table(1289) := '202020202020697353656C6563746564203D2070446174612E646174615B695D2E73656C6563746564203F2074727565203A2066616C73653B0D0A202020202020726F7748746D6C203D20746869732E70726F6D70742E637573746F6D54656D706C6174';
wwv_flow_api.g_varchar2_table(1290) := '6546756E6374696F6E2E63616C6C28746869732C2070446174612E646174615B695D20293B0D0A2020202020206C69203D2027272B0D0A2020202020202020273C6C69272020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1291) := '2020202020202B0D0A202020202020202027207469746C653D22272B70446174612E646174615B695D2E442B272227202020202020202020202020202B0D0A20202020202020202720636C6173733D22637573746F6D2227202020202020202020202020';
wwv_flow_api.g_varchar2_table(1292) := '20202020202020202020202020202B0D0A20202020202020202720617269612D72657475726E2D76616C75653D22272B70446174612E646174615B695D2E522B272227202B0D0A20202020202020202720617269612D646973706C61792D76616C75653D';
wwv_flow_api.g_varchar2_table(1293) := '22272B70446174612E646174615B695D2E442B2722272B0D0A20202020202020202720617269612D73656C65637465643D22272B697353656C65637465642B272227202020202020202020202B0D0A2020202020202020273E272B726F7748746D6C2B27';
wwv_flow_api.g_varchar2_table(1294) := '3C2F6C693E273B0D0A20202020202072656E6465726564202B3D206C693B0D0A202020207D0D0A0D0A2020202072657475726E2072656E64657265643B0D0A0D0A20207D2C0D0A20205F70726F6D7074417070656E64446174613A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1295) := '2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C20227044617461222C207044617461293B0D0A0D0A20202020766172200D0A2020';
wwv_flow_api.g_varchar2_table(1296) := '2020202072656E64657265642C0D0A20202020202074656D706C617465203D20746869732E5F70726F6D707454656D706C61746544656661756C7428293B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D2030202920';
wwv_flow_api.g_varchar2_table(1297) := '7B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C73652029207B';
wwv_flow_api.g_varchar2_table(1298) := '0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C202272656E646572206461746120696E2064656661756C742074656D706C61746522293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1299) := '2020202020747279207B0D0A202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282074656D706C6174652C20704461746129293B0D0A2020202020207D20636174636828206572726F722029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1300) := '20202020746869732E5F7468726F774572726F72286572726F72293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F';
wwv_flow_api.g_varchar2_table(1301) := '6D7074417070656E6444617461272C202272656E646572206461746120696E20637573746F6D2074656D706C61746522293B0D0A0D0A20202020202072656E6465726564203D20746869732E5F70726F6D707452656E64657244617461496E437573746F';
wwv_flow_api.g_varchar2_table(1302) := '6D54656D706C6174652820704461746120293B0D0A202020207D0D0A20200D0A20202020746869732E70726F6D70742E626F64792E66696E642827756C27292E617070656E64282072656E646572656420293B0D0A20202020746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(1303) := '745265706F736974696F6E28293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F646174615F617070656E646564272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D';
wwv_flow_api.g_varchar2_table(1304) := '0A20207D2C0D0A20205F70726F6D7074447261774D696E696D616C496E7075744C656E6774683A2066756E6374696F6E2820704D65737361676520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1305) := '70726F6D7074447261774D696E696D616C496E7075744C656E67746827293B0D0A0D0A20202020766172200D0A2020202020206D657373616765203D20704D6573736167652E7265706C61636528272530272C20746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(1306) := '6E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468292C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D226E6F64617461666F756E64223E272B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1307) := '202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C6174';
wwv_flow_api.g_varchar2_table(1308) := '6520293B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0D0A0D0A20207D2C0D0A20205F70726F6D7074447261774E6F64617461466F756E643A2066756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(1309) := '7B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074447261774E6F64617461466F756E6427293B0D0A202020202F2F0D0A20202020766172200D0A2020202020206D657373616765203D20';
wwv_flow_api.g_varchar2_table(1310) := '746869732E435F50524F4D50545F544558545F4E4F5F444154415F464F554E442C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D226E6F64617461666F756E64223E272B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1311) := '2020202720203C7370616E20636C6173733D2266612066612D7461626C652D7365617263682069636F6E223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370';
wwv_flow_api.g_varchar2_table(1312) := '616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C74734176';
wwv_flow_api.g_varchar2_table(1313) := '61696C61626C65203D2066616C73653B0D0A20207D2C0D0A20205F70726F6D707452656E64657244617461496E44656661756C7454656D706C6174653A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F67';
wwv_flow_api.g_varchar2_table(1314) := '28746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461496E44656661756C7454656D706C617465272C20227044617461222C207044617461293B0D0A0D0A20202020766172200D0A20202020202072656E64657265642C';
wwv_flow_api.g_varchar2_table(1315) := '0D0A20202020202064656661756C7454656D706C617465203D20746869732E5F70726F6D707454656D706C61746544656661756C7428293B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A202020';
wwv_flow_api.g_varchar2_table(1316) := '202020746869732E5F70726F6D7074447261774E6F64617461466F756E6428293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020696620282021746869732E5F636865636B496644617461436F6E746169';
wwv_flow_api.g_varchar2_table(1317) := '6E73446973706C6179436F6C756D6E2820704461746120292026262021746869732E5F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E2820704461746120292029207B0D0A202020202020746869732E5F70726F6D707444';
wwv_flow_api.g_varchar2_table(1318) := '6973706C61794572726F722827496E76616C69642053514C20717565727927293B0D0A202020202020746869732E5F7468726F774572726F7254657874282753514C207175657279206C61636B7320646973706C617920616E642072657475726E20636F';
wwv_flow_api.g_varchar2_table(1319) := '6C756D6E732E20416C69617365732022642220616E6420227222206172652072657175697265642127293B0D0A202020207D0D0A0D0A202020207044617461203D20746869732E5F64617461457874656E6453656C656374656446726F6D41727261794F';
wwv_flow_api.g_varchar2_table(1320) := '664F626A65637473282070446174612C20746869732E6D61736B2E73746174652E73656C656374656420293B0D0A0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C61';
wwv_flow_api.g_varchar2_table(1321) := '7465203D3D2066616C73652029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461496E44656661756C7454656D706C617465272C202272656E64657220';
wwv_flow_api.g_varchar2_table(1322) := '6461746120696E2064656661756C742074656D706C61746522293B0D0A0D0A20202020202064656661756C7454656D706C617465203D20273C756C3E272B64656661756C7454656D706C6174652B273C2F756C3E273B20200D0A0D0A2020202020207472';
wwv_flow_api.g_varchar2_table(1323) := '79207B0D0A202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282064656661756C7454656D706C6174652C20704461746129293B0D0A2020202020207D20636174636828206572726F722029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1324) := '20202020746869732E5F7468726F774572726F72286572726F72293B0D0A2020202020207D0D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(1325) := '726F6D707452656E64657244617461496E44656661756C7454656D706C617465272C202272656E646572206461746120696E20637573746F6D2074656D706C61746522293B0D0A0D0A20202020202072656E6465726564203D20746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1326) := '707452656E64657244617461496E437573746F6D54656D706C6174652820704461746120293B0D0A20202020202072656E6465726564203D20273C756C3E272B72656E64657265642B273C2F756C3E273B0D0A202020207D0D0A0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(1327) := '2E70726F6D70742E626F64792E68746D6C282072656E646572656420293B0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C6162';
wwv_flow_api.g_varchar2_table(1328) := '6C65203D20747275653B0D0A20202020746869732E5F70726F6D707453656C6563744669727374526F7728293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F646174615F72656E646572656427';
wwv_flow_api.g_varchar2_table(1329) := '2C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20207D2C0D0A0D0A20205F70726F6D70744765744869676C6967687465643A2066756E6374696F6E28297B0D0A2020202072657475726E20746869732E70726F6D70742E';
wwv_flow_api.g_varchar2_table(1330) := '626F64792E66696E6428275B617269612D686967686C6967687465643D2274727565225D27293B0D0A20207D2C0D0A20205F6D61736B506F707570427574746F6E4B6579446F776E3A2066756E6374696F6E2820704576656E742029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1331) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E4B6579446F776E272C20704576656E74293B0D0A0D0A202020207661720D0A2020202020206B6579436F6465203D20704576656E';
wwv_flow_api.g_varchar2_table(1332) := '742E6B6579436F64653B0D0A0D0A202020206966202820746869732E5F69734E617669676174696F6E4B657928206B6579436F64652029203D3D2027444F574E272029207B0D0A202020202020746869732E5F70726F6D7074536561726368496E707574';
wwv_flow_api.g_varchar2_table(1333) := '466F63757348616E646C657228293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F6D61736B537461746553656C656374656452656D6F76653A2066756E6374696F6E282070496E6465782C2070547269676765724368616E67654576656E74202920';
wwv_flow_api.g_varchar2_table(1334) := '7B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C202770496E646578272C2070496E646578293B0D0A0D0A202020207661722072656D6F';
wwv_flow_api.g_varchar2_table(1335) := '7665643B0D0A0D0A2020202072656D6F766564203D20746869732E6D61736B2E73746174652E73656C65637465642E73706C696365282070496E6465782C203120293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(1336) := '656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C202772656D6F766564206F626A656374272C2072656D6F766564293B0D0A0D0A20202020696620282070547269676765724368616E67654576656E742029207B0D0A20';
wwv_flow_api.g_varchar2_table(1337) := '2020202020746869732E5F70726F6D70744170706C7956616C75657328293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F6D61736B537461746553656C65637465644164643A2066756E6374696F6E2820704F626A6563742C207054726967676572';
wwv_flow_api.g_varchar2_table(1338) := '4368616E67654576656E742C20704973457874726156616C75652C207049734E756C6C56616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C656374656441';
wwv_flow_api.g_varchar2_table(1339) := '6464272C2027704F626A656374272C20704F626A6563742C202770547269676765724368616E67654576656E74272C2070547269676765724368616E67654576656E742C20704973457874726156616C7565293B0D0A0D0A202020206966202820704973';
wwv_flow_api.g_varchar2_table(1340) := '457874726156616C75652029207B0D0A202020202020704F626A6563742E6973457874726156616C7565203D20747275653B2020202020200D0A202020207D0D0A0D0A2020202069662028207049734E756C6C56616C75652029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1341) := '704F626A6563742E6973415045584E756C6C56616C7565203D20747275653B200D0A202020207D0D0A0D0A20202020746869732E6D61736B2E73746174652E73656C65637465642E707573682820704F626A65637420293B0D0A0D0A2020202069662028';
wwv_flow_api.g_varchar2_table(1342) := '2070547269676765724368616E67654576656E742029207B0D0A202020202020746869732E5F70726F6D70744170706C7956616C75657328293B0D0A202020207D0D0A202020200D0A20207D2C0D0A0D0A20205F6D61736B537461746553656C65637465';
wwv_flow_api.g_varchar2_table(1343) := '64476574496E6465783A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564476574496E646578272C20705661';
wwv_flow_api.g_varchar2_table(1344) := '6C7565293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E7374617465';
wwv_flow_api.g_varchar2_table(1345) := '2E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20205F70726F6D';
wwv_flow_api.g_varchar2_table(1346) := '7074497356616C756553656C65637465643A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074497356616C756553656C6563746564272C';
wwv_flow_api.g_varchar2_table(1347) := '207056616C7565293B0D0A0D0A2020202072657475726E20746869732E6D61736B2E73746174652E73656C65637465642E696E6465784F6628207056616C75652029203E202D313B0D0A20207D2C0D0A20205F70726F6D707452656D6F7665486967686C';
wwv_flow_api.g_varchar2_table(1348) := '69676874656466726F6D416C6C4C693A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C6927';
wwv_flow_api.g_varchar2_table(1349) := '20293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E66696E642820276C695B617269612D686967686C6967687465645D2720292E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A20207D2C0D0A2020';
wwv_flow_api.g_varchar2_table(1350) := '5F70726F6D707452656D6F7665486967686C69676874656446726F6D4C693A2066756E6374696F6E2820704C6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656D6F766548';
wwv_flow_api.g_varchar2_table(1351) := '6967686C69676874656446726F6D4C69272C2027704C69272C20704C69293B0D0A0D0A20202020704C692E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A20207D2C0D0A20205F70726F6D7074556E73656C65637456';
wwv_flow_api.g_varchar2_table(1352) := '616C75653A2066756E6374696F6E28207056616C75652C20704C6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074556E73656C65637456616C7565272C20277056616C7565272C';
wwv_flow_api.g_varchar2_table(1353) := '207056616C7565293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074556E73656C65637456616C7565272C2027704C69272C20704C69293B0D0A0D0A20202020766172200D0A20202020';
wwv_flow_api.g_varchar2_table(1354) := '202076616C7565203D207056616C75652C0D0A202020202020696E6465784F66203D20746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C756520292C0D0A20202020202072656D6F766564203D206E756C6C3B0D';
wwv_flow_api.g_varchar2_table(1355) := '0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0D0A2020';
wwv_flow_api.g_varchar2_table(1356) := '20207D0D0A0D0A20202020746869732E5F6D61736B537461746553656C656374656452656D6F76652820696E6465784F662C207472756520293B202020200D0A0D0A202020206966202820704C6920213D20756E646566696E65642029207B0D0A202020';
wwv_flow_api.g_varchar2_table(1357) := '202020704C692E72656D6F7665417474722827617269612D73656C656374656427290D0A202020207D0D0A0D0A20202020746869732E5F6D61736B54616752656D6F7665282076616C756520293B0D0A0D0A202020206966202820746869732E70726F6D';
wwv_flow_api.g_varchar2_table(1358) := '70742E697356697369626C652029207B0D0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B20200D0A202020207D0D0A20207D2C0D0A20205F70726F6D70744765744C6953656C65637465643A2066756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(1359) := '7B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744765744C6953656C656374656427293B0D0A0D0A2020202072657475726E20746869732E70726F6D70742E626F64792E66696E642827';
wwv_flow_api.g_varchar2_table(1360) := '6C6927292E66696C746572282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A20202020202072657475726E20242870456C656D292E697328275B617269612D73656C65637465643D747275655D27293B0D0A202020207D20293B';
wwv_flow_api.g_varchar2_table(1361) := '0D0A20207D2C0D0A20205F70726F6D707453656C65637456616C75653A2066756E6374696F6E2820704C6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C';
wwv_flow_api.g_varchar2_table(1362) := '7565272C20704C692E676574283029293B0D0A0D0A202020207661720D0A20202020202076616C756552657475726E20203D20704C692E617474722827617269612D72657475726E2D76616C756527292C0D0A20202020202076616C7565446973706C61';
wwv_flow_api.g_varchar2_table(1363) := '79203D20704C692E617474722827617269612D646973706C61792D76616C756527292C0D0A2020202020206973415045584E756C6C56616C7565203D20704C692E617474722827617269612D6E756C6C2D76616C756527292C0D0A202020202020637572';
wwv_flow_api.g_varchar2_table(1364) := '72656E74203D20746869732E5F70726F6D70744765744C6953656C656374656428292E666972737428293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C7365';
wwv_flow_api.g_varchar2_table(1365) := '29207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C646572206E6F20726573756C747320746F2062652073656C65637465642127293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1366) := '202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A2020202069662028200D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A2020202020';
wwv_flow_api.g_varchar2_table(1367) := '20262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203D3D20310D0A2020202029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744C69436C';
wwv_flow_api.g_varchar2_table(1368) := '69636B48616E6C64657220646573656C65637420616E642073656C656374206E657727293B0D0A0D0A202020202020747279207B0D0A2020202020202020746869732E5F70726F6D7074556E73656C65637456616C7565282063757272656E742E617474';
wwv_flow_api.g_varchar2_table(1369) := '722827617269612D72657475726E2D76616C756527292C2063757272656E7420293B0D0A2020202020207D20636174636828206572726F722029207B0D0A2020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1370) := '20202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A2020202020207D0D0A2020202020200D0A202020207D0D0A20202020656C736520696620280D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C';
wwv_flow_api.g_varchar2_table(1371) := '7469706C6553656C656374696F6E203D3D2066616C73650D0A202020202020262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20310D0A2020202029207B0D0A202020202020746869732E5F70726F6D70745265';
wwv_flow_api.g_varchar2_table(1372) := '6D6F7665486967686C69676874656466726F6D416C6C4C6928293B0D0A202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A0D0A202020207D';
wwv_flow_api.g_varchar2_table(1373) := '0D0A0D0A20202020746869732E5F6D61736B537461746553656C6563746564416464280D0A2020202020207B0D0A202020202020202022646973706C6179223A2076616C7565446973706C61792C0D0A20202020202020202276616C75652220203A2076';
wwv_flow_api.g_varchar2_table(1374) := '616C756552657475726E0D0A2020202020207D2C200D0A202020202020747275652C20202F2F74726967676572206368616E6765206576656E740D0A20202020202066616C73652C202F2F6973206E6F742065787472612076616C75652C0D0A20202020';
wwv_flow_api.g_varchar2_table(1375) := '2020286973415045584E756C6C56616C7565203D3D20227472756522290D0A20202020293B0D0A0D0A20202020704C692E617474722827617269612D73656C6563746564272C2074727565293B0D0A0D0A20202020746869732E5F70726F6D7074486967';
wwv_flow_api.g_varchar2_table(1376) := '686C696768744C6928704C69293B0D0A0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20704C693B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D';
wwv_flow_api.g_varchar2_table(1377) := '0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A202020202020746869732E70726F6D70742E696E7075742E666F63757328290D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(1378) := '696E67732E70726F6D70742E6973526170696453656C656374696F6E2029207B0D0A202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D70744170706C7956';
wwv_flow_api.g_varchar2_table(1379) := '616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744170706C7956616C756573272C202776616C756573272C20746869732E6D61736B2E737461';
wwv_flow_api.g_varchar2_table(1380) := '74652E73656C65637465642E6C656E677468293B0D0A0D0A202020207661722061727261794F6656616C756573203D205B5D3B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E203020';
wwv_flow_api.g_varchar2_table(1381) := '29207B0D0A0D0A202020202020666F7220282076617220693D303B20693C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020202061727261794F6656616C7565732E7075736828';
wwv_flow_api.g_varchar2_table(1382) := '20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C756520293B0D0A2020202020207D0D0A0D0A202020202020746869732E656C656D656E742E76616C282061727261794F6656616C7565732E6A6F696E28746869732E435F';
wwv_flow_api.g_varchar2_table(1383) := '56414C55455F534550415241544F522920293B0D0A0D0A202020202020746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869732E5F736F72744A736F6E282022646973706C6179222C20746869732E6D61736B2E737461';
wwv_flow_api.g_varchar2_table(1384) := '74652E736F72746564202920293B0D0A0D0A202020202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E656C656D656E742E76616C286E756C6C29';
wwv_flow_api.g_varchar2_table(1385) := '3B0D0A202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0D0A202020207D0D0A0D0A20202020617065782E6576656E742E747269';
wwv_flow_api.g_varchar2_table(1386) := '676765722820746869732E656C656D656E742E6765742830292C20276368616E6765272C207468697320293B0D0A20207D2C0D0A20205F70726F6D7074546167734765744F626A6563743A2066756E6374696F6E28207052657475726E20297B0D0A2020';
wwv_flow_api.g_varchar2_table(1387) := '2020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C207052657475726E293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61';
wwv_flow_api.g_varchar2_table(1388) := '736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E73746174652E746167735B695D2E76616C7565203D3D207052657475726E2029207B0D0A202020202020202061706578';
wwv_flow_api.g_varchar2_table(1389) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C20277052657475726E2068617320696E64657820272B69293B0D0A202020202020202072657475726E20746869732E6D6173';
wwv_flow_api.g_varchar2_table(1390) := '6B2E73746174652E746167735B695D3B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C202770526574';
wwv_flow_api.g_varchar2_table(1391) := '75726E206973206E6F7420696E2074616773206C69737427293B0D0A0D0A2020202072657475726E20756E646566696E65643B0D0A0D0A20207D2C0D0A20205F70726F6D707454616773476574496E6465783A2066756E6374696F6E2820705265747572';
wwv_flow_api.g_varchar2_table(1392) := '6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C207052657475726E2C2027696E272C20746869732E6D61736B2E73746174652E7461677329';
wwv_flow_api.g_varchar2_table(1393) := '3B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E73746174652E746167735B695D';
wwv_flow_api.g_varchar2_table(1394) := '2E76616C7565203D3D207052657475726E2029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C20277052657475726E2068617320696E';
wwv_flow_api.g_varchar2_table(1395) := '64657820272B69293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E';
wwv_flow_api.g_varchar2_table(1396) := '646578272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20205F70726F6D70744765744C69427952657475726E56616C75653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1397) := '28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C207056616C7565293B0D0A0D0A20202020766172206C6920';
wwv_flow_api.g_varchar2_table(1398) := '3D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E66696C746572282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A20202020202072657475726E20242870456C656D292E617474722827617269612D72';
wwv_flow_api.g_varchar2_table(1399) := '657475726E2D76616C756527292E746F537472696E672829203D3D207056616C75652E746F537472696E6728293B0D0A202020207D20293B0D0A0D0A2020202069662028206C692E6C656E677468203E20302029207B0D0A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(1400) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C2027666F756E64206C6920656C656D656E74272C206C69293B0D0A202020207D0D0A20202020656C7365207B0D0A20';
wwv_flow_api.g_varchar2_table(1401) := '2020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C20277468657265206973206E6F206C6920656C656D656E7420776974682072657475726E';
wwv_flow_api.g_varchar2_table(1402) := '2076616C7565272C207056616C7565293B200D0A202020207D0D0A2020202072657475726E206C693B0D0A20207D2C0D0A20205F6D61736B52656D6F766554616746726F6D444F4D3A2066756E6374696F6E2820704576656E7420297B0D0A2020202061';
wwv_flow_api.g_varchar2_table(1403) := '7065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B52656D6F766554616746726F6D444F4D272C20704576656E74293B0D0A0D0A20202020766172200D0A20202020202076616C7565203D202428704576656E742E';
wwv_flow_api.g_varchar2_table(1404) := '746172676574292E636C6F73657374282764697627292E617474722827617269612D72657475726E2D76616C756527293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A2020202020206170';
wwv_flow_api.g_varchar2_table(1405) := '65782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B52656D6F766554616746726F6D444F4D272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1406) := '704576656E742E70726576656E7444656661756C7428293B0D0A202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(1407) := '0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A202020202020746869732E5F70726F6D70744765744C69427952657475';
wwv_flow_api.g_varchar2_table(1408) := '726E56616C7565282076616C756520292E72656D6F7665417474722827617269612D73656C656374656427290D0A202020207D0D0A0D0A20202020746869732E5F6D61736B537461746553656C656374656452656D6F76652820746869732E5F6D61736B';
wwv_flow_api.g_varchar2_table(1409) := '537461746553656C6563746564476574496E646578282076616C7565202920293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020746869732E5F70726F6D70744170706C79';
wwv_flow_api.g_varchar2_table(1410) := '56616C75657328293B0D0A20207D2C0D0A20205F6D61736B54616752656D6F76653A2066756E6374696F6E28207052657475726E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B5461';
wwv_flow_api.g_varchar2_table(1411) := '6752656D6F7665272C207052657475726E293B0D0A0D0A20202020766172200D0A202020202020696E6465784F66203D20746869732E5F70726F6D707454616773476574496E64657828207052657475726E20292C0D0A202020202020746167203D2075';
wwv_flow_api.g_varchar2_table(1412) := '6E646566696E65643B0D0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B54616752656D6F7665272C2027546167206E';
wwv_flow_api.g_varchar2_table(1413) := '6F7420666F756E6427293B2020202020200D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746167203D20746869732E6D61736B2E73746174652E746167735B696E6465784F665D3B0D0A0D0A202020202F';
wwv_flow_api.g_varchar2_table(1414) := '2F72656D6F7665207461672066726F6D20646F6D0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B54616752656D6F7665272C202774616720746F2062652072656D6F7665642066726F6D2044';
wwv_flow_api.g_varchar2_table(1415) := '4F4D272C20746167293B0D0A202020207461672E636F6E7461696E65722E72656D6F766528293B0D0A0D0A202020202F2F72656D6F7665207461672066726F6D206C697374206F6620746167730D0A20202020746869732E6D61736B2E73746174652E74';
wwv_flow_api.g_varchar2_table(1416) := '6167732E73706C6963652820696E6465784F662C203120293B0D0A0D0A20207D2C0D0A20205F70726F6D7074546167734164644E65773A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C75652029';
wwv_flow_api.g_varchar2_table(1417) := '7B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074546167734164644E6577272C2070446973706C61792C207052657475726E2C20704973457874726156616C7565293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1418) := '20766172200D0A202020202020657874726156616C7565436C617373203D20704973457874726156616C7565203F202720657874726127203A2027272C0D0A2020202020206E6577546167203D20242827272B0D0A2020202020202020273C6469762063';
wwv_flow_api.g_varchar2_table(1419) := '6C6173733D22746167272B657874726156616C7565436C6173732B272220617269612D72657475726E2D76616C75653D22272B7052657475726E2B2722207469746C653D22272B70446973706C61792B27223E272B0D0A20202020202020202720203C73';
wwv_flow_api.g_varchar2_table(1420) := '70616E20636C6173733D2276616C7565223E272B70446973706C61792B273C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D74696D65732072656D6F7665223E3C2F7370616E3E272B0D0A20202020';
wwv_flow_api.g_varchar2_table(1421) := '20202020273C2F6469763E272B0D0A20202020202020202727292C0D0A2020202020206E65775461674F626A656374203D207B0D0A20202020202020202276616C7565223A207052657475726E2C0D0A202020202020202022646973706C6179223A2070';
wwv_flow_api.g_varchar2_table(1422) := '446973706C61792C0D0A202020202020202022636F6E7461696E6572223A206E65775461672C0D0A2020202020202020226973457874726156616C7565223A20704973457874726156616C7565203F2074727565203A2066616C73650D0A202020202020';
wwv_flow_api.g_varchar2_table(1423) := '7D3B0D0A0D0A20202020746869732E6D61736B2E73746174652E746167732E7075736828206E65775461674F626A65637420293B0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E617070656E6428206E657754616720293B0D';
wwv_flow_api.g_varchar2_table(1424) := '0A20207D2C0D0A20205F70726F6D70745461677353756D6D6172794F70656E53656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074546167';
wwv_flow_api.g_varchar2_table(1425) := '7353756D6D6172794F70656E53656C656374656427293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A202020202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(1426) := '2E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D6172794F70656E53656C65637465642C20706F707570206E6F7420617661696C61626C652C20646F206E746827293B0D0A0D0A202020202020746869732E70';
wwv_flow_api.g_varchar2_table(1427) := '6F7075702E73686F7753656C6563746564436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A202020202020746869732E5F706F7075704F70656E28293B0D0A202020200D0A202020207D0D0A0D0A20207D2C0D0A20205F';
wwv_flow_api.g_varchar2_table(1428) := '70726F6D70745461677353756D6D6172793A2066756E6374696F6E2820704E6F7452656E6465726564436E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D';
wwv_flow_api.g_varchar2_table(1429) := '617279272C20704E6F7452656E6465726564436E74293B0D0A0D0A20202020766172200D0A202020202020746578743B0D0A20202020202073756D6D617279546167203D20242827272B0D0A2020202020202020273C64697620636C6173733D22746167';
wwv_flow_api.g_varchar2_table(1430) := '2073756D6D617279223E64656661756C742073756D6D6172793C2F6469763E270D0A202020202020293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E617265546167734C696D6974656420262620';
wwv_flow_api.g_varchar2_table(1431) := '746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F203E20302029207B0D0A20202020202074657874203D20746869732E435F544147535F4C494D495445445F4F54484552532E7265706C6163652820272530272C20704E';
wwv_flow_api.g_varchar2_table(1432) := '6F7452656E6465726564436E7420293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202074657874203D20746869732E435F544147535F4C494D495445445F302E7265706C6163652820272530272C20704E6F7452656E646572656443';
wwv_flow_api.g_varchar2_table(1433) := '6E74293B0D0A202020207D0D0A0D0A2020202073756D6D6172795461672E7465787428207465787420293B0D0A0D0A2020202073756D6D6172795461672E6F6E2827636C69636B272C2066756E6374696F6E28704576656E74297B20704576656E742E73';
wwv_flow_api.g_varchar2_table(1434) := '746F70496D6D65646961746550726F7061676174696F6E28293B207D293B0D0A2020202073756D6D6172795461672E6F6E282764626C636C69636B272C20242E70726F787928746869732E5F70726F6D70745461677353756D6D6172794F70656E53656C';
wwv_flow_api.g_varchar2_table(1435) := '65637465642C207468697329293B0D0A0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E617070656E64282073756D6D61727954616720293B0D0A20207D2C0D0A20205F70726F6D7074436865636B436C69636B4F7574736964';
wwv_flow_api.g_varchar2_table(1436) := '653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B436C69636B4F757473696465272C20704576656E742E63757272656E';
wwv_flow_api.g_varchar2_table(1437) := '745461726765742C20704576656E742E746172676574293B0D0A0D0A2020202069662028200D0A202020202020242E636F6E7461696E732820746869732E70726F6D70742E636F6E7461696E65722E6765742830292C20704576656E742E746172676574';
wwv_flow_api.g_varchar2_table(1438) := '2029200D0A2020202020207C7C20242E636F6E7461696E732820746869732E6D61736B2E636F6E7461696E65722E6765742830292C20704576656E742E74617267657420290D0A2020202020207C7C202428704576656E742E746172676574292E697328';
wwv_flow_api.g_varchar2_table(1439) := '272E72656D6F766527290D0A2020202020207C7C2077696E646F772E67657453656C656374696F6E28292E746F537472696E6728292E6C656E677468203E20300D0A2020202029207B0D0A20202020202072657475726E20766F69642830293B0D0A2020';
wwv_flow_api.g_varchar2_table(1440) := '20207D0D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D70744869646528293B0D0A202020207D0D0A0D0A20207D2C20200D0A20202F2A0D0A202020204155544F434F4D504C45544520746F2062652072656D61707065642061';
wwv_flow_api.g_varchar2_table(1441) := '73205F70726F6D70742A0D0A20202A2F0D0A20205F6765744E657874466F63757341626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744E657874466F6375';
wwv_flow_api.g_varchar2_table(1442) := '7341626C6527293B0D0A0D0A20202020766172207461626261626C654172722C20696E6465784F662C206E6578743B0D0A0D0A20202020746869732E656C656D656E742E73686F7728293B0D0A202020200D0A202020207461626261626C65417272203D';
wwv_flow_api.g_varchar2_table(1443) := '202428273A7461626261626C6527292E746F417272617928293B0D0A20202020696E6465784F66203D207461626261626C654172722E696E6465784F662820746869732E656C656D656E742E67657428302920293B0D0A202020206E657874203D207461';
wwv_flow_api.g_varchar2_table(1444) := '626261626C654172725B20696E6465784F662B31205D3B0D0A0D0A20202020746869732E656C656D656E742E6869646528293B0D0A0D0A2020202072657475726E2024286E657874293B0D0A0D0A20207D2C0D0A0D0A20205F70726F6D70744E61766967';
wwv_flow_api.g_varchar2_table(1445) := '6174654172726F77733A2066756E6374696F6E282070446972656374696F6E20297B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744E617669676174654172726F7773272C207044';
wwv_flow_api.g_varchar2_table(1446) := '6972656374696F6E293B0D0A0D0A20202020766172200D0A202020202020616C6C50726576203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E70726576416C6C28292E6C656E6774682C0D0A202020202020616C';
wwv_flow_api.g_varchar2_table(1447) := '6C4E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E657874416C6C28292E6C656E6774682C0D0A2020202020207363726F6C6C746F70203D20746869732E70726F6D70742E626F64792E7363726F6C';
wwv_flow_api.g_varchar2_table(1448) := '6C546F7028292C0D0A2020202020206865676874546F546F70426F726465722C0D0A2020202020206E6578742C0D0A202020202020706F736974696F6E2C0D0A2020202020207363726F6C6C56616C75653B0D0A0D0A2020202069662028207044697265';
wwv_flow_api.g_varchar2_table(1449) := '6374696F6E203D3D2027444F574E272029207B0D0A2020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E65787428293B0D0A202020207D0D0A20202020656C7365206966202820704469';
wwv_flow_api.g_varchar2_table(1450) := '72656374696F6E203D3D202755502720297B0D0A2020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E7072657628293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1451) := '72657475726E20766F69642830293B0D0A2020202020202F2F0D0A202020207D0D0A0D0A20202020706F736974696F6E203D206E6578742E706F736974696F6E28293B0D0A0D0A2020202069662028206E6578742E6C656E677468203E20302029207B0D';
wwv_flow_api.g_varchar2_table(1452) := '0A202020202020746869732E5F70726F6D7074486967686C696768744C6928206E65787420293B20200D0A0D0A2020202020206865676874546F546F70426F72646572203D20706F736974696F6E2E746F702D7363726F6C6C746F703B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1453) := '20202069662028206865676874546F546F70426F72646572203E3D2030202626206865676874546F546F70426F72646572203C3D20746869732E706C7567696E53657474696E67732E70726F6D70744D61784865696768742D6E6578742E6F7574657248';
wwv_flow_api.g_varchar2_table(1454) := '656967687428292029207B0D0A20202020202020202F2F646F206E6F7468696E672C206C6920656C656D656E742069732066756C6C792076697369626C650D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020202020206966202820';
wwv_flow_api.g_varchar2_table(1455) := '70446972656374696F6E203D3D2027444F574E272029207B0D0A202020202020202020207363726F6C6C56616C7565203D2028207363726F6C6C746F70202B20286865676874546F546F70426F726465722B6E6578742E6F757465724865696768742829';
wwv_flow_api.g_varchar2_table(1456) := '202D20746869732E706C7567696E53657474696E67732E70726F6D70744D617848656967687429202920200D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A202020202020202020207363726F6C6C56616C7565203D207363726F';
wwv_flow_api.g_varchar2_table(1457) := '6C6C746F70202B206865676874546F546F70426F726465723B0D0A20202020202020207D0D0A0D0A2020202020202020746869732E70726F6D70742E626F64792E7363726F6C6C546F7028207363726F6C6C56616C756520293B20200D0A202020202020';
wwv_flow_api.g_varchar2_table(1458) := '7D0D0A202020207D0D0A202020200D0A20207D2C0D0A20205F70726F6D70744C69436C69636B48616E6C6465723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1459) := '782C20275F70726F6D70744C69436C69636B48616E6C646572272C20704576656E74293B0D0A0D0A20202020766172200D0A202020202020746172676574203D202428704576656E742E746172676574292E697328276C692729203F202428704576656E';
wwv_flow_api.g_varchar2_table(1460) := '742E74617267657429203A202428704576656E742E746172676574292E636C6F7365737428276C6927293B0D0A2020202020200D0A0D0A2020202069662028207461726765742E697328275B617269612D73656C65637465643D2274727565225D272920';
wwv_flow_api.g_varchar2_table(1461) := '29207B0D0A202020202020746869732E5F70726F6D7074556E73656C65637456616C756528207461726765742E617474722827617269612D72657475726E2D76616C756527292C2074617267657420293B20200D0A202020207D0D0A20202020656C7365';
wwv_flow_api.g_varchar2_table(1462) := '207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C6465722063757272656E746C792073656C6563746564206974656D733A20272C20746869732E6D61';
wwv_flow_api.g_varchar2_table(1463) := '736B2E73746174652E73656C65637465642E6C656E6774682C20746869732E6D61736B2E73746174652E73656C6563746564293B0D0A0D0A202020202020746869732E5F70726F6D707453656C65637456616C7565282074617267657420293B0D0A2020';
wwv_flow_api.g_varchar2_table(1464) := '20207D0D0A202020200D0A0D0A20207D2C0D0A20205F70726F6D7074536561726368496E707574466F63757348616E646C65723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F';
wwv_flow_api.g_varchar2_table(1465) := '675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C657227293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(1466) := '75672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A202020';
wwv_flow_api.g_varchar2_table(1467) := '20202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020696620282021746869732E706C7567696E53657474696E67732E69734175746F636F6D706C657465417661696C61626C652029207B0D0A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(1468) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C20274175746F636F6D706C657465206973206E6F7420617661696C61626C6527293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1469) := '72657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E70726F6D70742E636F6E7461696E6572203D3D20756E646566696E65642029207B0D0A0D0A202020202020746869732E5F70726F6D70744372656174';
wwv_flow_api.g_varchar2_table(1470) := '654E657728293B0D0A202020202020746869732E5F70726F6D70744164644C697374656E65727328293B0D0A0D0A202020202020746869732E5F70726F6D707453686F7728293B0D0A0D0A202020202020696620280D0A2020202020202020746869732E';
wwv_flow_api.g_varchar2_table(1471) := '706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774680D0A2020202020202020262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468';
wwv_flow_api.g_varchar2_table(1472) := '203D3D20300D0A202020202020297B0D0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E475448';
wwv_flow_api.g_varchar2_table(1473) := '5F3020293B0D0A2020202020207D0D0A202020202020656C73652069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E677468200D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1474) := '262620746869732E5F70726F6D707449734D696E696D616C496E7075744C656E6774684D61746368656428290D0A20202020202029207B0D0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E67746828';
wwv_flow_api.g_varchar2_table(1475) := '20746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F5820293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074416A6178506572666F72';
wwv_flow_api.g_varchar2_table(1476) := '6D28293B0D0A2020202020207D0D0A0D0A202020202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A202020207D202020200D0A20207D2C0D0A0D0A0D0A20202F2A0D0A202020204F544845520D0A20202A2F0D0A20205F7072';
wwv_flow_api.g_varchar2_table(1477) := '6F6D707449734D696E696D616C496E7075744C656E6774684D6174636865643A2066756E6374696F6E28297B0D0A202020207661722072657475726E56616C7565203D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D';
wwv_flow_api.g_varchar2_table(1478) := '616C496E7075744C656E677468203E20746869732E70726F6D70742E696E7075742E76616C28292E6C656E6774683B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707449734D696E69';
wwv_flow_api.g_varchar2_table(1479) := '6D616C496E7075744C656E6774684D6174636865642072657475726E73272C2072657475726E56616C7565293B0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F736F72744A736F6E3A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(1480) := '207050726F70657274792C2070446972656374696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F736F72744A736F6E272C207050726F70657274792C2070446972656374696F6E293B0D0A';
wwv_flow_api.g_varchar2_table(1481) := '0D0A2020202076617220736F72744F726465723B0D0A0D0A20202020696620282070446972656374696F6E203D3D2027617363272029207B0D0A202020202020736F72744F72646572203D20313B0D0A202020207D0D0A20202020656C7365207B0D0A20';
wwv_flow_api.g_varchar2_table(1482) := '2020202020736F72744F72646572203D202D313B0D0A202020207D0D0A0D0A2020202072657475726E2066756E6374696F6E2028612C6229207B0D0A202020202020202076617220726573756C74203D2028615B7050726F70657274795D203C20625B70';
wwv_flow_api.g_varchar2_table(1483) := '50726F70657274795D29203F202D31203A2028615B7050726F70657274795D203E20625B7050726F70657274795D29203F2031203A20303B0D0A202020202020202072657475726E20726573756C74202A20736F72744F726465723B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(1484) := '0A0D0A20207D2C0D0A20205F686967686C69676874576F72643A2066756E6374696F6E282070546578742C2070536561726368537472696E6720297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F68';
wwv_flow_api.g_varchar2_table(1485) := '6967686C69676874576F7264272C2070546578742C2070536561726368537472696E67293B0D0A0D0A20202020766172200D0A20202020202074657874203D2070546578742C0D0A202020202020736561726368537472696E67203D2070536561726368';
wwv_flow_api.g_varchar2_table(1486) := '537472696E672C0D0A202020202020726573756C74546578742C0D0A202020202020706F736974696F6E203D20746578742E746F55707065724361736528292E696E6465784F662820736561726368537472696E672E746F557070657243617365282920';
wwv_flow_api.g_varchar2_table(1487) := '292C0D0A20202020202073746172742C0D0A2020202020206D6964646C652C0D0A202020202020656E643B0D0A0D0A0D0A202020206966202820706F736974696F6E203E202D312029207B0D0A20202020202073746172742020203D20746578742E7375';
wwv_flow_api.g_varchar2_table(1488) := '6273747228302C20706F736974696F6E20293B0D0A2020202020206D6964646C6520203D20746578742E7375627374722873746172742E6C656E6774682C20736561726368537472696E672E6C656E677468293B0D0A202020202020656E642020202020';
wwv_flow_api.g_varchar2_table(1489) := '3D20746578742E73756273747228706F736974696F6E2B6D6964646C652E6C656E6774682C20746578742E6C656E677468293B0D0A20202020202072657475726E2073746172742B273C7370616E20636C6173733D22686967686C69676874223E272B6D';
wwv_flow_api.g_varchar2_table(1490) := '6964646C652B273C2F7370616E3E272B656E643B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E2070546578743B0D0A202020207D0D0A20207D2C0D0A20205F6765744974656D436F6E7461696E65723A2066756E63';
wwv_flow_api.g_varchar2_table(1491) := '74696F6E28297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E6974656D436F6E7461696E657227293B0D0A20207D2C0D0A20205F6765744974656D436F6E7461696E6572426F64793A2066756E63';
wwv_flow_api.g_varchar2_table(1492) := '74696F6E28297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E6974656D436F6E7461696E6572426F647927293B0D0A20207D2C0D0A20205F67657454616773436F6E7461696E65723A2066756E63';
wwv_flow_api.g_varchar2_table(1493) := '74696F6E28297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E7461677327293B0D0A20207D2C0D0A20205F6765744D61736B496E7075743A2066756E6374696F6E28297B0D0A2020202072657475';
wwv_flow_api.g_varchar2_table(1494) := '726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E66616B65496E70757427293B0D0A20207D2C0D0A20205F69734E617669676174696F6E4B65793A2066756E6374696F6E2820704B6579436F64652029207B0D0A202020202F2F';
wwv_flow_api.g_varchar2_table(1495) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F69734E617669676174696F6E4B6579272C20704B6579436F6465293B0D0A0D0A202020207661722072657475726E56616C7565203D2066616C73653B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1496) := '206966202820704B6579436F6465203D3D2034302029207B0D0A20202020202072657475726E56616C7565203D2027444F574E273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033382029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1497) := '202072657475726E56616C7565203D20275550273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033372029207B0D0A20202020202072657475726E56616C7565203D20274C454654273B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(1498) := '20202020656C7365206966202820704B6579436F6465203D3D2033392029207B0D0A20202020202072657475726E56616C7565203D20275249474854273B0D0A202020207D0D0A0D0A20202020656C7365207B0D0A20202020202072657475726E56616C';
wwv_flow_api.g_varchar2_table(1499) := '7565203D2066616C73653B0D0A202020207D0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F6D61736B47657456616C75653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(1500) := '6728746869732E6C6F675072656669782C20275F6D61736B47657456616C756527293B0D0A0D0A2020202072657475726E20746869732E70726F6D70742E696E7075742E76616C28293B0D0A20207D2C0D0A20205F6D61736B4B657955704D616E616765';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '49636F6E733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B657955704D616E61676549636F6E7327293B0D0A0D0A202020206966202820746869732E706F';
wwv_flow_api.g_varchar2_table(1502) := '7075702E7365617263682E76616C28292E6C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E7365617263682E616464436C6173732827656D70747927293B0D0A202020207D0D0A20202020656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(1503) := '202020746869732E706F7075702E7365617263682E72656D6F7665436C6173732827656D70747927293B0D0A202020207D0D0A20207D2C0D0A20205F6D61736B4B6579446F776E48616E646C65723A2066756E6374696F6E2820704576656E7420297B0D';
wwv_flow_api.g_varchar2_table(1504) := '0A20202020766172200D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579';
wwv_flow_api.g_varchar2_table(1505) := '436F646520293B0D0A0D0A0D0A202020206966202820704576656E742E73686966744B65792029207B0D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A0D0A2020202069662028206B6579436F6465203D3D2039207C7C206B65';
wwv_flow_api.g_varchar2_table(1506) := '79436F6465203D3D20323729207B0D0A2020202020202F2F7768656E20656E746572206F722074616220707265737365640D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B6579446F77';
wwv_flow_api.g_varchar2_table(1507) := '6E48616E646C6572272C2027544142206F7220455343415045206B657920707265737365642E27293B0D0A202020202020746869732E5F70726F6D70744869646528293B0D0A202020202020746869732E5F6765744E657874466F63757341626C652829';
wwv_flow_api.g_varchar2_table(1508) := '2E666F63757328293B20200D0A2020202020200D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A20202020656C736520696620282069734E617669676174696F6E446972656374696F6E2029207B0D0A0D0A2020202020206966';
wwv_flow_api.g_varchar2_table(1509) := '202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C652029207B0D0A2020202020202020704576656E742E70726576656E7444656661756C7428293B0D0A2020202020202020704576656E742E73746F70496D6D';
wwv_flow_api.g_varchar2_table(1510) := '65646961746550726F7061676174696F6E28293B0D0A0D0A2020202020202020746869732E5F70726F6D70744E617669676174654172726F7773282069734E617669676174696F6E446972656374696F6E20293B20200D0A2020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(1511) := '202020656C7365207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B6579446F776E48616E646C6572272C20276E6F20726573756C747320617661696C61626C6527293B202020';
wwv_flow_api.g_varchar2_table(1512) := '20202020200D0A2020202020207D0D0A202020207D0D0A20207D2C20200D0A20205F6D61736B4B657955703A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(1513) := '20275F6D61736B4B65795570272C20704576656E74293B0D0A0D0A20202020766172200D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20';
wwv_flow_api.g_varchar2_table(1514) := '746869732E5F69734E617669676174696F6E4B657928206B6579436F646520292C0D0A202020202020686967686C696768746564203D20746869732E5F70726F6D70744765744869676C69676874656428293B0D0A0D0A2020202069662028206B657943';
wwv_flow_api.g_varchar2_table(1515) := '6F6465203D3D2031362029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C20275348494654206B65792072656C65617365642E20446F206E6F7420706572666F72';
wwv_flow_api.g_varchar2_table(1516) := '6D206175746F636F6D706C65746527293B0D0A20202020202072657475726E2066616C73653B200D0A202020207D0D0A0D0A20202020696620282069734E617669676174696F6E446972656374696F6E2029207B0D0A20202020202072657475726E2066';
wwv_flow_api.g_varchar2_table(1517) := '616C73653B0D0A202020207D0D0A20202020656C73652069662028206B6579436F6465203D3D2031332029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C202765';
wwv_flow_api.g_varchar2_table(1518) := '6E746572207072657373656427293B0D0A0D0A2020202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C73652029207B0D0A2020202020202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(1519) := '6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027726573756C747320617265206E6F742079657420617661696C61626C6527293B20202020202020200D0A202020202020202072657475726E2066616C73653B0D0A20';
wwv_flow_api.g_varchar2_table(1520) := '20202020207D0D0A0D0A2020202020206966202820686967686C6967687465642E697328275B617269612D73656C65637465643D2274727565225D27292029207B0D0A2020202020202020746869732E5F70726F6D7074556E73656C65637456616C7565';
wwv_flow_api.g_varchar2_table(1521) := '2820686967686C6967687465642E617474722827617269612D72657475726E2D76616C756527292C20686967686C69676874656420293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(1522) := '53656C65637456616C75652820686967686C69676874656420293B0D0A2020202020207D0D0A2020202020200D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A0D0A20202020696620280D0A202020202020746869732E706C75';
wwv_flow_api.g_varchar2_table(1523) := '67696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774680D0A202020202020262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203D3D2030';
wwv_flow_api.g_varchar2_table(1524) := '0D0A202020202020262620746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203D3D20300D0A20202020297B0D0A202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E67746828207468';
wwv_flow_api.g_varchar2_table(1525) := '69732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020293B0D0A202020207D0D0A20202020656C73652069662028200D0A202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E';
wwv_flow_api.g_varchar2_table(1526) := '69734D696E696D616C496E7075744C656E677468200D0A202020202020262620746869732E5F70726F6D707449734D696E696D616C496E7075744C656E6774684D61746368656428290D0A2020202029207B0D0A202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1527) := '7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F5820293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869';
wwv_flow_api.g_varchar2_table(1528) := '732E5F70726F6D7074416A6178506572666F726D28293B20200D0A202020207D0D0A202020200D0A202020200D0A20207D2C0D0A20205F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E3A2066756E6374696F6E282070';
wwv_flow_api.g_varchar2_table(1529) := '446174612029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E272C20227044617461222C207044617461293B0D0A';
wwv_flow_api.g_varchar2_table(1530) := '0D0A2020202076617220657869737473203D2066616C73653B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D0A2020202020206966202870446174612E646174615B695D2E4420213D20756E646566696E';
wwv_flow_api.g_varchar2_table(1531) := '656429207B0D0A2020202020202020657869737473203D20747275653B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E206578697374733B0D0A20207D2C0D0A20205F636865636B49';
wwv_flow_api.g_varchar2_table(1532) := '6644617461436F6E7461696E7352657475726E436F6C756D6E3A2066756E6374696F6E282070446174612029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F636865636B496644617461436F6E74';
wwv_flow_api.g_varchar2_table(1533) := '61696E7352657475726E436F6C756D6E272C20227044617461222C207044617461293B0D0A0D0A2020202076617220657869737473203D2066616C73653B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D';
wwv_flow_api.g_varchar2_table(1534) := '0A2020202020206966202870446174612E646174615B695D2E5220213D20756E646566696E656429207B0D0A2020202020202020657869737473203D20747275653B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(1535) := '0D0A2020202072657475726E206578697374733B0D0A20207D2C0D0A20205F6765745363726F6C6C50657263656E743A2066756E6374696F6E282070456C656D656E742C20704D617848656967687420297B0D0A20202020766172200D0A202020202020';
wwv_flow_api.g_varchar2_table(1536) := '7363726F6C6C6564203D2070456C656D656E742E7363726F6C6C546F7028292C0D0A2020202020207265616C486569676874203D2070456C656D656E742E6368696C6472656E28292E6F757465724865696768742829202D20704D61784865696768742C';
wwv_flow_api.g_varchar2_table(1537) := '0D0A20202020202070657263656E74203B0D0A0D0A2020202070657263656E74203D207363726F6C6C6564202A20313030202F207265616C4865696768743B0D0A2020202070657263656E74203D2070657263656E74203E20313030203F20313030203A';
wwv_flow_api.g_varchar2_table(1538) := '2070657263656E743B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765745363726F6C6C50657263656E74272C2027726573756C74272C2070657263656E74293B0D0A0D0A2020202072657475';
wwv_flow_api.g_varchar2_table(1539) := '726E2070657263656E743B0D0A20207D2C0D0A0D0A20205F6372656174654974656D506F707570427574746F6E3A2066756E6374696F6E282020297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F63';
wwv_flow_api.g_varchar2_table(1540) := '72656174654974656D506F707570427574746F6E27293B0D0A0D0A202020202F2F0D0A2020202076617220627574746F6E203D202428273C627574746F6E3E3C2F627574746F6E3E27293B0D0A202020207661722069636F6E203D202428273C7370616E';
wwv_flow_api.g_varchar2_table(1541) := '3E3C2F7370616E3E27293B0D0A0D0A2020202069636F6E2E616464436C617373282027666120272B746869732E6F7074696F6E732E6974656D2E69636F6E20293B0D0A0D0A20202020627574746F6E2E616464436C6173732827612D427574746F6E2061';
wwv_flow_api.g_varchar2_table(1542) := '2D427574746F6E2D2D706F7075704C4F5627293B0D0A20202020627574746F6E2E6174747228276964272C20746869732E6F7074696F6E732E6974656D2E6E616D652B275F425554544F4E2720293B0D0A20202020627574746F6E2E6174747228276F6E';
wwv_flow_api.g_varchar2_table(1543) := '636C69636B272C20276A6176617363726970743A2072657475726E2066616C73653B27290D0A20202020627574746F6E2E617070656E64282069636F6E20293B0D0A0D0A2020202072657475726E20627574746F6E3B0D0A20207D2C0D0A20205F637265';
wwv_flow_api.g_varchar2_table(1544) := '6174654974656D416A6178427574746F6E3A2066756E6374696F6E282020297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6372656174654974656D416A6178427574746F6E27293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1545) := '0D0A20202020766172200D0A202020202020627574746F6E203D202428273C627574746F6E3E3C2F627574746F6E3E27292C0D0A20202020202069636F6E203D202428273C7370616E3E3C2F7370616E3E27293B0D0A0D0A2020202069636F6E2E616464';
wwv_flow_api.g_varchar2_table(1546) := '436C61737328202766612066612D7365617263682069636F6E2720293B0D0A0D0A20202020627574746F6E2E616464436C6173732827612D427574746F6E20612D427574746F6E2D2D616A6178496E64696361746F7220612D427574746F6E2D2D706F70';
wwv_flow_api.g_varchar2_table(1547) := '75704C4F5627293B0D0A20202020627574746F6E2E6174747228276964272C20746869732E6F7074696F6E732E6974656D2E6E616D652B275F425554544F4E5F414A41582720293B0D0A20202020627574746F6E2E6174747228276F6E636C69636B272C';
wwv_flow_api.g_varchar2_table(1548) := '20276A6176617363726970743A2072657475726E2066616C73653B27290D0A20202020627574746F6E2E617070656E64282069636F6E20293B0D0A0D0A2020202072657475726E20627574746F6E3B0D0A20207D2C20200D0A20205F6D61736B43726561';
wwv_flow_api.g_varchar2_table(1549) := '74654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C2027656C656D656E74272C20746869732E656C656D656E742E676574';
wwv_flow_api.g_varchar2_table(1550) := '283029293B0D0A202020200D0A20202020766172200D0A202020202020636C617373657320202020203D20746869732E656C656D656E742E6765742830292E617474726962757465732E636C61737320213D20756E646566696E6564203F20746869732E';
wwv_flow_api.g_varchar2_table(1551) := '656C656D656E742E6765742830292E617474726962757465732E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0D0A2020202020206D61736B4C617965722020203D202428273C64697620636C6173733D226D61736B696E67223E';
wwv_flow_api.g_varchar2_table(1552) := '3C2F6469763E27292C0D0A202020202020706F707570427574746F6E203D20746869732E5F6372656174654974656D506F707570427574746F6E28292C0D0A202020202020616A61785374617465427574746F6E203D20746869732E5F63726561746549';
wwv_flow_api.g_varchar2_table(1553) := '74656D416A6178427574746F6E28292C0D0A202020202020706C616365686F6C646572203D202428273C64697620636C6173733D22706C616365686F6C646572223E272B746869732E656C656D656E742E617474722827706C616365686F6C6465722729';
wwv_flow_api.g_varchar2_table(1554) := '2B273C2F6469763E27292C0D0A202020202020636F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206974656D436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A202020202020697465';
wwv_flow_api.g_varchar2_table(1555) := '6D436F6E7461696E6572426F6479203D202428273C6469763E3C2F6469763E27292C0D0A20202020202074616773436F6E7465696E6572203D202428273C6469763E3C2F6469763E27293B0D0A0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(1556) := '69732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C2027636C6173736573272C20636C6173736573293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E616464436C6173732827707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(1557) := '616E6365644C6F764974656D206D61736B27293B0D0A0D0A20202020666F722028766172206920696E20636C617373657329207B0D0A202020202020636F6E7461696E65722E616464436C6173732820636C61737365735B695D2B272D6D61736B272029';
wwv_flow_api.g_varchar2_table(1558) := '3B20200D0A202020207D0D0A2020202020200D0A202020206974656D436F6E7461696E65720D0A2020202020202E616464436C61737328276974656D436F6E7461696E657227290D0A2020202020202E6373732827626F72646572436F6C6F72272C2074';
wwv_flow_api.g_varchar2_table(1559) := '6869732E696E7075744373732E626F72646572436F6C6F72293B0D0A0D0A202020206974656D436F6E7461696E6572426F64790D0A2020202020202E616464436C61737328276974656D436F6E7461696E6572426F647927290D0A2020202020202E6170';
wwv_flow_api.g_varchar2_table(1560) := '70656E64282074616773436F6E7465696E65722E616464436C617373282774616773272920290D0A2020202020202E617070656E6428206D61736B4C6179657220290D0A2020202020202E617070656E64546F28206974656D436F6E7461696E65722029';
wwv_flow_api.g_varchar2_table(1561) := '3B0D0A0D0A202020206974656D436F6E7461696E65722E617070656E642820706C616365686F6C64657220293B0D0A0D0A202020206974656D436F6E7461696E65722E617070656E64546F2820636F6E7461696E657220293B0D0A0D0A20202020696620';
wwv_flow_api.g_varchar2_table(1562) := '2820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A202020202020706F707570427574746F6E2E6F6E2827636C69636B272C20242E70726F787928746869732E5F706F7075704F';
wwv_flow_api.g_varchar2_table(1563) := '70656E4279427574746F6E2C207468697329293B0D0A2020202020206974656D436F6E7461696E65722E61667465722820706F707570427574746F6E20293B0D0A202020207D0D0A20200D0A202020206974656D436F6E7461696E65722E616674657228';
wwv_flow_api.g_varchar2_table(1564) := '20616A61785374617465427574746F6E2E68696465282920293B0D0A0D0A202020202F2F7472616E7366657220726573756C74207769647468206F662041504558206974656D2061667465722072656E646572696E672074686520656C656D656E740D0A';
wwv_flow_api.g_varchar2_table(1565) := '202020206966202820746869732E656C656D656E742E636C6F7365737428272E636F6C27292E6F7574657257696474682829203E3D20746869732E656C656D656E742E6F75746572576964746828292029207B0D0A202020202020636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(1566) := '2E63737328276D696E5769647468272C20746869732E656C656D656E742E6F7574657257696474682829293B0D0A202020207D0D0A202020200D0A20202020636F6E7461696E65722E63737328276D696E486569676874272C20746869732E656C656D65';
wwv_flow_api.g_varchar2_table(1567) := '6E742E6F75746572486569676874282920293B0D0A0D0A2020202072657475726E207B0D0A20202020202022636F6E7461696E6572222020202020202020203A20636F6E7461696E65722C0D0A202020202020226974656D436F6E7461696E6572222020';
wwv_flow_api.g_varchar2_table(1568) := '2020203A206974656D436F6E7461696E65722C0D0A202020202020226974656D436F6E7461696E6572426F647922203A206974656D436F6E7461696E6572426F64792C0D0A2020202020202274616773436F6E7461696E65722220202020203A20746167';
wwv_flow_api.g_varchar2_table(1569) := '73436F6E7465696E65722C0D0A20202020202022706C616365686F6C64657222202020202020203A20706C616365686F6C6465722C0D0A20202020202022706F707570427574746F6E22202020202020203A20706F707570427574746F6E2C0D0A202020';
wwv_flow_api.g_varchar2_table(1570) := '20202022616A61785374617465427574746F6E222020203A207B0D0A202020202020202022627574746F6E223A20616A61785374617465427574746F6E2C0D0A2020202020202020226572726F724D657373616765223A20756E646566696E65642C0D0A';
wwv_flow_api.g_varchar2_table(1571) := '20202020202020202269734572726F72223A2066616C73650D0A2020202020207D0D0A202020207D0D0A0D0A20207D2C0D0A2F2F0D0A20205F77726974655175657279546F436F6E736F6C653A2066756E6374696F6E28207051756572792029207B0D0A';
wwv_flow_api.g_varchar2_table(1572) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027737461727427293B200D0A0D0A20202020766172206172726179203D207051756572792E73706C69';
wwv_flow_api.g_varchar2_table(1573) := '7428225C6E22293B0D0A0D0A20202020666F7220282076617220693D303B2069203C2061727261792E6C656E6774683B20692B2B2029207B0D0A202020202020617065782E64656275672E6C6F67282723272C2061727261795B695D293B202020202020';
wwv_flow_api.g_varchar2_table(1574) := '200D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027656E6427293B200D0A20207D2C0D0A20205F7468726F774572726F72';
wwv_flow_api.g_varchar2_table(1575) := '546578743A2066756E6374696F6E2820705465787420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F7468726F774572726F7254657874272C20277054657874272C207054657874293B200D0A20';
wwv_flow_api.g_varchar2_table(1576) := '2020207468726F772070546578743B0D0A0D0A20207D2C0D0A0D0A20205F6465626F756E63653A2066756E6374696F6E2866756E632C20776169742C20696D6D65646961746529207B0D0A202020202F2F617065782E64656275672E6C6F672827646562';
wwv_flow_api.g_varchar2_table(1577) := '6F756E6365272C202766756E63272C2066756E632C202777616974272C20776169742C2027696D6D656469617465272C20696D6D656469617465293B0D0A0D0A202020207661722074696D656F75743B0D0A2020202072657475726E2066756E6374696F';
wwv_flow_api.g_varchar2_table(1578) := '6E2829207B0D0A20202020202076617220636F6E74657874203D20746869732C2061726773203D20617267756D656E74733B0D0A202020202020766172206C61746572203D2066756E6374696F6E2829207B0D0A202020202020202074696D656F757420';
wwv_flow_api.g_varchar2_table(1579) := '3D206E756C6C3B0D0A20202020202020206966202821696D6D656469617465292066756E632E6170706C7928636F6E746578742C2061726773293B0D0A2020202020207D3B0D0A2020202020207661722063616C6C4E6F77203D20696D6D656469617465';
wwv_flow_api.g_varchar2_table(1580) := '202626202174696D656F75743B0D0A202020202020636C65617254696D656F75742874696D656F7574293B0D0A20202020202074696D656F7574203D2073657454696D656F7574286C617465722C2077616974293B0D0A2020202020206966202863616C';
wwv_flow_api.g_varchar2_table(1581) := '6C4E6F77292066756E632E6170706C7928636F6E746578742C2061726773293B0D0A202020207D3B0D0A20207D2C0D0A20205F7468726F774572726F723A2066756E6374696F6E2820704572726F725468726F776E2029207B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(1582) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F7468726F774572726F72272C2027704572726F725468726F776E272C20704572726F725468726F776E293B200D0A202020207468726F7720704572726F725468726F776E3B0D0A20';
wwv_flow_api.g_varchar2_table(1583) := '207D0D0A0D0A7D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(5003982330766970021)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_file_name=>'enhancedLovItem.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '0D0A2E6974656D436F6E7461696E6572207E20627574746F6E207B0D0A20206F726465723A20343B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D202E64656275672C0D0A2E6974656D436F6E7461696E6572207E202E';
wwv_flow_api.g_varchar2_table(2) := '64656275674175746F636F6D706C657465207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0D0A20206D61782D77696474683A20313030253B0D0A202064';
wwv_flow_api.g_varchar2_table(3) := '6973706C61793A20666C65783B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20206F726465723A20333B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3A686F7665722C';
wwv_flow_api.g_varchar2_table(4) := '0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A0D0A0D0A2E6974656D436F6E7461696E6572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(5) := '726465723A2031707820736F6C6964207267626128302C302C302C2E313235293B0D0A20206D696E2D77696474683A203070783B0D0A2020666C65782D67726F773A20313B0D0A2020637572736F723A20746578743B0D0A2020706F736974696F6E3A20';
wwv_flow_api.g_varchar2_table(6) := '72656C61746976653B0D0A7D0D0A0D0A2E742D466F726D2D2D73747265746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D73747265';
wwv_flow_api.g_varchar2_table(7) := '746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0D0A2020666C65783A20313B20200D0A7D0D0A0D0A2F2A2064697361626C6564202A2F0D0A2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(8) := '4974656D2E6D61736B2E64697361626C6564207B0D0A20206F7061636974793A20302E353B20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(9) := '207B0D0A2020637572736F723A2064656661756C743B0D0A7D0D0A0D0A2E6974656D436F6E7461696E6572426F6479202E6D61736B696E67207B0D0A20206261636B67726F756E643A2072676261283235352C3235352C3235352C30293B0D0A20206261';
wwv_flow_api.g_varchar2_table(10) := '636B67726F756E643A202D6D6F7A2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(11) := '643A202D7765626B69742D6772616469656E74286C65667420746F702C20726967687420746F702C20636F6C6F722D73746F702830252C2072676261283235352C3235352C3235352C3029292C20636F6C6F722D73746F7028313030252C207267626128';
wwv_flow_api.g_varchar2_table(12) := '3235352C3235352C3235352C312929293B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C';
wwv_flow_api.g_varchar2_table(13) := '3235352C31292031303025293B0D0A20206261636B67726F756E643A202D6F2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C3129203130';
wwv_flow_api.g_varchar2_table(14) := '3025293B0D0A20206261636B67726F756E643A202D6D732D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A2020';
wwv_flow_api.g_varchar2_table(15) := '6261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A202066696C7465723A20';
wwv_flow_api.g_varchar2_table(16) := '70726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E7428207374617274436F6C6F727374723D2723666666666666272C20656E64436F6C6F727374723D2723666666666666272C204772616469656E74';
wwv_flow_api.g_varchar2_table(17) := '547970653D3120293B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A203070783B0D0A202072696768743A203070783B0D0A202077696474683A20313070783B0D0A20206865696768743A20313030253B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(18) := '2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F647920696E7075745B747970653D746578745D207B0D0A2020626F726465723A206E6F6E653B0D0A20206261636B67726F756E643A206E6F6E653B0D0A2020666C6578';
wwv_flow_api.g_varchar2_table(19) := '2D67726F773A20313B0D0A2020666C65782D736872696E6B3A20313B0D0A20206D617267696E3A203070783B0D0A202070616464696E673A203070783B0D0A20206865696768743A20312E3872656D3B0D0A7D0D0A0D0A2E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(20) := '72203E202E6974656D436F6E7461696E6572426F6479206469762E66616B65496E707574207B0D0A2020666C65782D67726F773A20313B0D0A20206261636B67726F756E643A2073696C7665723B0D0A20206D696E2D77696474683A20323070783B0D0A';
wwv_flow_api.g_varchar2_table(21) := '7D0D0A0D0A2F2A206974656D2064697361626C6564202D3E2074616773202A2F0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564206469762E74616773203E206469762E7461673A686F766572';
wwv_flow_api.g_varchar2_table(22) := '207B0D0A2020626F726465722D636F6C6F723A2072676261283231342C3231342C323134293B0D0A20206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B20200D0A7D0D0A0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(23) := '6E6365644C6F764974656D2E6D61736B2E64697361626C6564206469762E74616773203E206469762E746167203E202E72656D6F7665207B0D0A2020637572736F723A2064656661756C743B0D0A7D0D0A0D0A2F2A206974656D202D3E2074616773202D';
wwv_flow_api.g_varchar2_table(24) := '3E207374617465202D3E20657870616E646564202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E657870616E646564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F647920';
wwv_flow_api.g_varchar2_table(25) := '3E206469762E74616773207B0D0A2020666C65782D777261703A20777261703B200D0A20206F766572666C6F773A2076697369626C653B0D0A7D0D0A0D0A2F2A206974656D202D3E2074616773202D3E202A2F0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(26) := '6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0D0A2020646973706C61793A20666C65783B0D0A2020666C65782D777261703A206E6F77';
wwv_flow_api.g_varchar2_table(27) := '7261703B0D0A20206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E';
wwv_flow_api.g_varchar2_table(28) := '206469762E74616773203E206469762E746167203E202E76616C75657B0D0A2020666C65782D736872696E6B3A20313B0D0A2020666C65782D67726F773A20313B0D0A2020746578742D6F766572666C6F773A20656C6C69707369733B0D0A20206F7665';
wwv_flow_api.g_varchar2_table(29) := '72666C6F773A2068696464656E3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E';
wwv_flow_api.g_varchar2_table(30) := '206469762E746167203E202E72656D6F7665207B0D0A2020666C65782D736872696E6B3A20303B0D0A2020666C65782D67726F773A20303B20200D0A2020666F6E742D73697A653A203172656D3B0D0A20206C696E652D6865696768743A203272656D3B';
wwv_flow_api.g_varchar2_table(31) := '0D0A202070616464696E672D6C6566743A20302E3272656D3B0D0A2020637572736F723A20706F696E7465723B0D0A2020636F6C6F723A207267626128302C302C302C31293B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(32) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461672E6578747261207B0D0A202062';
wwv_flow_api.g_varchar2_table(33) := '61636B67726F756E643A20236666646664663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74';
wwv_flow_api.g_varchar2_table(34) := '616773203E206469762E746167207B0D0A20202F2A646973706C61793A20696E6C696E652D626C6F636B3B2A2F0D0A2020646973706C61793A20666C65783B0D0A20206D61782D77696474683A20313030253B0D0A2020626F726465723A203170782073';
wwv_flow_api.g_varchar2_table(35) := '6F6C69642072676261283231342C3231342C323134293B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020626F726465722D7261646975733A203670783B0D0A20206261636B67726F756E643A2072676261283231342C3231342C3231';
wwv_flow_api.g_varchar2_table(36) := '342C20302E35293B0D0A2020666C65782D736872696E6B3A20303B0D0A2020636F6C6F723A207267626128302C302C302C302E35293B0D0A20202D7765626B69742D746F7563682D63616C6C6F75743A206E6F6E653B202F2A20694F5320536166617269';
wwv_flow_api.g_varchar2_table(37) := '202A2F0D0A202020202D7765626B69742D757365722D73656C6563743A206E6F6E653B202F2A20536166617269202A2F0D0A20202020202D6B68746D6C2D757365722D73656C6563743A206E6F6E653B202F2A204B6F6E717565726F722048544D4C202A';
wwv_flow_api.g_varchar2_table(38) := '2F0D0A202020202020202D6D6F7A2D757365722D73656C6563743A206E6F6E653B202F2A2046697265666F78202A2F0D0A20202020202020202D6D732D757365722D73656C6563743A206E6F6E653B202F2A20496E7465726E6574204578706C6F726572';
wwv_flow_api.g_varchar2_table(39) := '2F45646765202A2F0D0A202020202020202020202020757365722D73656C6563743A206E6F6E653B202F2A204E6F6E2D70726566697865642076657273696F6E2C2063757272656E746C790D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(40) := '2020202020202020202020737570706F72746564206279204368726F6D6520616E64204F70657261202A2F20200D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(41) := '3E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A686F766572207B0D0A2020626F726465722D636F6C6F723A20236231623162313B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(42) := '4C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0D0A20206D617267696E2D72';
wwv_flow_api.g_varchar2_table(43) := '696768743A20302E3272656D3B0D0A7D0D0A0D0A0D0A0D0A2E6974656D436F6E7461696E6572203E20696E7075745B747970653D746578745D3A666F6375732C0D0A2E6974656D436F6E7461696E6572203E20696E7075745B747970653D746578745D3A';
wwv_flow_api.g_varchar2_table(44) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(45) := '6465722D636F6C6F723A207267626128302C302C302C302E313235293B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A20206261636B67726F756E643A20236666663B0D0A20207A2D696E6465783A203430303B0D0A7D0D0A2E70726574';
wwv_flow_api.g_varchar2_table(46) := '6975732D2D656E68616E6365644C6F764974656D2E70726F6D70742E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D';
wwv_flow_api.g_varchar2_table(47) := '656E75202E6661207B0D0A2020666F6E742D73697A653A20313270783B0D0A20206C696E652D6865696768743A20313270783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572';
wwv_flow_api.g_varchar2_table(48) := '2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E752C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(49) := '6F6C6F723A20696E68657269743B0D0A2020626F726465722D77696474683A203170783B0D0A2020626F726465722D7374796C653A20736F6C69643B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420';
wwv_flow_api.g_varchar2_table(50) := '3E202E6865616465722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75207B0D0A202070616464696E673A20302E3472656D3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(51) := '6F764974656D2E70726F6D7074203E202E6D656E752C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70';
wwv_flow_api.g_varchar2_table(52) := '74203E202E626F6479207B0D0A2020626F726465722D746F703A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572207B0D0A2020706F736974696F6E3A2072';
wwv_flow_api.g_varchar2_table(53) := '656C61746976653B0D0A2020646973706C61793A20666C65783B0D0A0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572203E202E6661207B0D0A2020616C69676E2D73656C663A';
wwv_flow_api.g_varchar2_table(54) := '2063656E7465723B0D0A2020666F6E742D73697A653A20312E3372656D3B0D0A2020666C65782D736872696E6B3A20303B0D0A2020666C65782D67726F773A20303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70';
wwv_flow_api.g_varchar2_table(55) := '726F6D7074203E202E686561646572203E20696E707574207B0D0A2020626F726465723A206E6F6E653B0D0A20206F75746C696E653A206E6F6E653B0D0A20206D617267696E2D72696768743A20302E3472656D3B0D0A2020666C65782D67726F773A20';
wwv_flow_api.g_varchar2_table(56) := '313B0D0A2020666C65782D736872696E6B3A20303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A7D0D0A0D0A2E707265';
wwv_flow_api.g_varchar2_table(57) := '746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E666978426F72646572207B0D0A2020646973706C61793A206E6F6E653B0D0A2020626F726465722D746F702D77696474683A203170783B0D0A2020626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(58) := '7374796C653A20736F6C69643B0D0A2020626F726465722D636F6C6F723A207267626128302C302C302C2E313235293B0D0A20206865696768743A203070783B0D0A202077696474683A20353070783B0D0A2020706F736974696F6E3A206162736F6C75';
wwv_flow_api.g_varchar2_table(59) := '74653B0D0A2020746F703A203070783B0D0A202072696768743A203070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E672C0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(60) := '65644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A202070616464696E673A203670783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(61) := '74656D2E70726F6D7074202E736561726368696E67202E69636F6E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E746578742C0D0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(62) := '4C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E69636F6E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E74657874207B0D0A2020646973706C6179';
wwv_flow_api.g_varchar2_table(63) := '3A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C207B0D0A20206C6973742D7374796C653A206E6F6E653B0D0A20206D617267696E3A20303B0D0A2020706F736974696F6E3A';
wwv_flow_api.g_varchar2_table(64) := '2072656C61746976653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D207B0D0A202070616464696E673A203072656D3B0D0A2020637572736F723A20706F696E7465';
wwv_flow_api.g_varchar2_table(65) := '723B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C74207B0D0A202070616464696E673A20302E3372656D3B0D0A20206F766572666C6F773A2068696464656E3B0D0A';
wwv_flow_api.g_varchar2_table(66) := '2020746578742D6F766572666C6F773A20656C6C69707369733B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D';
wwv_flow_api.g_varchar2_table(67) := '3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(68) := '6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(69) := '6E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(70) := '6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C74';
wwv_flow_api.g_varchar2_table(71) := '3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(72) := '6E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(73) := '68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(74) := '65644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0D0A20206261636B67726F756E643A20236535653565353B0D0A7D0D0A0D0A2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(75) := '68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E646566';
wwv_flow_api.g_varchar2_table(76) := '61756C745B617269612D73656C65637465643D2274727565225D207B0D0A20202F2A746578742D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B2A2F0D0A20202F2A626F726465722D72696768743A203170';
wwv_flow_api.g_varchar2_table(77) := '7820736F6C696420236563663366663B2A2F0D0A20206261636B67726F756E643A20236632663266323B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75207B0D0A0D0A7D0D0A0D0A2E70';
wwv_flow_api.g_varchar2_table(78) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E636F6C6C6170736564207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(79) := '764974656D2E70726F6D7074202E6D656E75202E76696577202E657870616E646564207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D65';
wwv_flow_api.g_varchar2_table(80) := '6E75202E766965772E657870616E646564202E636F6C6C6170736564207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577';
wwv_flow_api.g_varchar2_table(81) := '2E657870616E646564202E657870616E646564207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2F2A2064656661756C7420736F7274207374617465202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7072';
wwv_flow_api.g_varchar2_table(82) := '6F6D7074202E6D656E75202E736F7274202E64657363207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E61736320';
wwv_flow_api.g_varchar2_table(83) := '7B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2F2A20736F72746564207374617465202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E646573';
wwv_flow_api.g_varchar2_table(84) := '632C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E617363207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(85) := '65644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E6173632C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E64657363207B0D0A20';
wwv_flow_api.g_varchar2_table(86) := '20646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A0D0A2F2A706F7075702A2F0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A';
wwv_flow_api.g_varchar2_table(87) := '2020706F736974696F6E3A2072656C61746976653B0D0A0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C0D0A2E75692D';
wwv_flow_api.g_varchar2_table(88) := '6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E736561726368696E67466F72526573756C7473207B0D0A202070616464696E673A203230707820303B0D0A7D0D0A0D0A2E75692D6469616C6F672E7072';
wwv_flow_api.g_varchar2_table(89) := '65746975732D2D656E68616E6365644C6F764974656D202E626F64792E736561726368696E672C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F64792E6E6F64617461666F756E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(90) := '646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A202070616464696E673A203070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(91) := '6D202E626F6479202E736561726368696E67466F72526573756C74732C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572207B0D0A2020';
wwv_flow_api.g_varchar2_table(92) := '616C69676E2D73656C663A2063656E7465723B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E736561726368696E';
wwv_flow_api.g_varchar2_table(93) := '67466F72526573756C747320202E69636F6E203E202E6661202C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E69636F6E203E20';
wwv_flow_api.g_varchar2_table(94) := '2E6661207B0D0A2020666F6E742D73697A653A2031323070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E736561726368696E67466F72526573756C7473202E746578';
wwv_flow_api.g_varchar2_table(95) := '742C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E74657874207B0D0A202070616464696E672D746F703A20313070783B0D0A20';
wwv_flow_api.g_varchar2_table(96) := '20666F6E742D73697A653A20313470783B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E73656C656374566961526F7773207464207B';
wwv_flow_api.g_varchar2_table(97) := '0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572207B0D0A2020626F726465722D746F703A2031707820736F6C6964207267';
wwv_flow_api.g_varchar2_table(98) := '626128302C302C302C302E3035293B0D0A2020646973706C61793A20666C65783B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572206C6162656C207B0D0A20206D';
wwv_flow_api.g_varchar2_table(99) := '617267696E2D6C6566743A20313070783B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572206C6162656C207B0D0A20206C';
wwv_flow_api.g_varchar2_table(100) := '696E652D6865696768743A20333270783B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E66616B65436865636B626F';
wwv_flow_api.g_varchar2_table(101) := '78207B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D627574746F6E73207B0D0A202074';
wwv_flow_api.g_varchar2_table(102) := '6578742D616C69676E3A2072696768743B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E6865616465722E706167696E6174696F6E4F6E6C79202E706167696E6174696F6E436F6E746169';
wwv_flow_api.g_varchar2_table(103) := '6E6572207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(104) := '2E66612C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F6E7461696E6572207B0D0A2020746578742D616C69676E3A2072696768743B0D0A2020666F';
wwv_flow_api.g_varchar2_table(105) := '6E742D73697A653A20313270783B0D0A20206C696E652D6865696768743A20333070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F';
wwv_flow_api.g_varchar2_table(106) := '6E7461696E6572202E70726576207B0D0A20206D617267696E2D72696768743A203570783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E43';
wwv_flow_api.g_varchar2_table(107) := '6F6E7461696E6572202E6E657874207B0D0A20206D617267696E2D6C6566743A203570783B200D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D73';
wwv_flow_api.g_varchar2_table(108) := '686F7753656C65637465642E696E616374697665207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D7368';
wwv_flow_api.g_varchar2_table(109) := '6F7753656C65637465642C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D627574746F6E73207B0D0A2020666C65782D736872696E6B3A20313B0D0A2020666C65';
wwv_flow_api.g_varchar2_table(110) := '782D67726F773A20313B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C';
wwv_flow_api.g_varchar2_table(111) := '302C302E3035293B0D0A2020646973706C61793A20666C65783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572203E20646976207B0D0A2020666C65782D736872696E6B3A';
wwv_flow_api.g_varchar2_table(112) := '20313B0D0A2020666C65782D67726F773A20313B0D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736561726368436F6E7461696E6572207B0D0A2020706F736974696F6E3A2072656C';
wwv_flow_api.g_varchar2_table(113) := '61746976653B0D0A2020746578742D616C69676E3A206C6566743B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736561726368436F6E7461696E657220696E707574207B0D0A20207061';
wwv_flow_api.g_varchar2_table(114) := '6464696E673A203570783B0D0A20206C696E652D6865696768743A20313670783B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E726F7773506572';
wwv_flow_api.g_varchar2_table(115) := '50616765436F6E7461696E65722073656C656374207B0D0A202070616464696E673A203570783B0D0A20206C696E652D6865696768743A20313670783B0D0A7D0D0A0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(116) := '4C6F764974656D202E736561726368436F6E7461696E65722E6D756C7469706C6520696E707574207B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20';
wwv_flow_api.g_varchar2_table(117) := '2E736561726368436F6E7461696E6572202E6661207B0D0A2020746F703A203070783B0D0A20206C696E652D6865696768743A20333470783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202072696768743A20313570783B0D0A2020';
wwv_flow_api.g_varchar2_table(118) := '6F7061636974793A20302E353B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E202E7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(119) := '65644C6F764974656D20696E7075742E656D707479207E202E636C656172207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075742E65';
wwv_flow_api.g_varchar2_table(120) := '6D707479207E202E7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E202E636C656172207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E75692D64';
wwv_flow_api.g_varchar2_table(121) := '69616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E20646976207B0D0A2020746F703A203070783B0D0A20206C696E652D6865696768743A20333470783B0D0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(122) := '653B0D0A202072696768743A203070783B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E20646976203E202E7365617263682C0D0A2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(123) := '7265746975732D2D656E68616E6365644C6F764974656D20696E7075742E656D707479207E20646976203E202E636C656172207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(124) := '616E6365644C6F764974656D20696E7075742E656D707479207E20646976203E202E7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E20646976203E202E636C65617220';
wwv_flow_api.g_varchar2_table(125) := '7B0D0A20206F7061636974793A20302E353B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636C656172207B0D0A2020637572736F723A20';
wwv_flow_api.g_varchar2_table(126) := '706F696E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636C6561723A686F766572207B0D0A20206F7061636974793A20313B0D0A7D0D0A0D0A2E75692D6469616C6F672E7072';
wwv_flow_api.g_varchar2_table(127) := '65746975732D2D656E68616E6365644C6F764974656D202E6865616465722C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572207B0D0A202070616464696E673A20313070782031357078';
wwv_flow_api.g_varchar2_table(128) := '3B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E6865616465722E68696464656E2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F';
wwv_flow_api.g_varchar2_table(129) := '6F7465722E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479207461626C65207B0D0A20200D0A7D0D0A0D0A2E75';
wwv_flow_api.g_varchar2_table(130) := '692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E752D5265706F72742D736F7274207B0D0A202077686974652D73706163653A206E6F777261703B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D';
wwv_flow_api.g_varchar2_table(131) := '2D656E68616E6365644C6F764974656D2074683A66697273742D6368696C642C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074683A66697273742D63';
wwv_flow_api.g_varchar2_table(132) := '68696C642C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074642E742D5265706F72742D63656C6C3A66697273742D6368696C64207B0D0A20200D0A202077696474683A20343270783B0D0A20206D696E';
wwv_flow_api.g_varchar2_table(133) := '2D77696474683A20343270783B0D0A20206D61782D77696474683A20343270783B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207468207B0D0A2020626F726465722D746F703A6E';
wwv_flow_api.g_varchar2_table(134) := '6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B794865616465727320207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A';
wwv_flow_api.g_varchar2_table(135) := '203070783B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B7948656164657273207468207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(136) := '6E643A20236666663B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E68696464656E447565546F46696C746572207B0D0A20';
wwv_flow_api.g_varchar2_table(137) := '20646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E686967686C69676874207B0D0A20206261636B67726F756E643A2079656C6C6F773B0D0A7D0D0A0D0A0D0A2F2A20696E666F726D6174696F6E20726567696F6E202A2F0D0A2E75692D6469616C';
wwv_flow_api.g_varchar2_table(138) := '6F672E707265746975732D2D656E68616E6365644C6F764974656D202E696E666F726D6174696F6E2E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(139) := '65644C6F764974656D202E696E666F726D6174696F6E207B0D0A20206261636B67726F756E643A20236633663366333B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A20206D696E2D6865696768743A20333070783B0D0A202074657874';
wwv_flow_api.g_varchar2_table(140) := '2D616C69676E3A2063656E7465723B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(141) := '74656D202E696E666F726D6174696F6E202E74657874207B0D0A202070616464696E672D746F703A203570783B0D0A202070616464696E672D626F74746F6D3A203570783B0D0A20206C696E652D6865696768743A20323070783B0D0A2020666F6E742D';
wwv_flow_api.g_varchar2_table(142) := '73697A653A20313270783B0D0A7D0D0A0D0A2F2A20636F6C756D6E2066696C746572696E6720616E6420736F7274696E67202A2F0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E7374';
wwv_flow_api.g_varchar2_table(143) := '69636B79486561646572732074682E69732D616374697665202E612D49636F6E2C200D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074682E69732D6163';
wwv_flow_api.g_varchar2_table(144) := '74697665202E6661207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074682E69732D6163746976';
wwv_flow_api.g_varchar2_table(145) := '652C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636F6C756D6E4F7065726174696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20233465346534653B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(146) := '636F6C6F723A20233465346534653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074682E69732D6163746976652061207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(147) := '6C6F723A20236666663B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636F6C756D6E4F7065726174696F6E73207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202074';
wwv_flow_api.g_varchar2_table(148) := '6F703A203070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636F6C756D6E4F7065726174696F6E73202E612D49636F6E207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(149) := '0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736F7274696E672C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E67207B0D0A2020';
wwv_flow_api.g_varchar2_table(150) := '706F736974696F6E3A2072656C61746976653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E67202E6661207B0D0A2020706F736974696F6E3A206162736F6C757465';
wwv_flow_api.g_varchar2_table(151) := '3B0D0A202072696768743A203770783B0D0A2020746F703A203770783B0D0A2020636F6C6F723A20236666663B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(152) := '4974656D202E736F7274696E672061207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202077696474683A206175746F3B0D0A202070616464696E673A2035707820313070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(153) := '7265746975732D2D656E68616E6365644C6F764974656D202E736F7274696E67207B0D0A2020626F726465722D6C6566743A2031707820736F6C69643B0D0A2020626F726465722D72696768743A2031707820736F6C69643B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(154) := '746F703A2031707820736F6C69643B0D0A0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E67207B0D0A2020626F726465723A2031707820736F6C69643B20200D0A2020';
wwv_flow_api.g_varchar2_table(155) := '6261636B67726F756E643A20233631363136313B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E6720696E707574207B0D0A2020626F726465723A206E6F6E653B0D0A';
wwv_flow_api.g_varchar2_table(156) := '20206261636B67726F756E643A207472616E73706172656E743B0D0A202070616464696E673A203570783B0D0A202077696474683A20313030253B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E75692D6469616C6F672E70726574697573';
wwv_flow_api.g_varchar2_table(157) := '2D2D656E68616E6365644C6F764974656D202E66616B65526164696F2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66616B65436865636B626F78207B0D0A2020637572736F723A20706F696E7465';
wwv_flow_api.g_varchar2_table(158) := '723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D636972636C652D6F2C0D0A2E75692D6469';
wwv_flow_api.g_varchar2_table(159) := '616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D646F742D636972636C652D6F207B0D0A2020646973706C61793A20696E6C696E652D626C6F63';
wwv_flow_api.g_varchar2_table(160) := '6B3B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(161) := '20696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D636972636C652D6F2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D3A6E6F';
wwv_flow_api.g_varchar2_table(162) := '74283A636865636B656429207E202E66612D646F742D636972636C652D6F207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574';
wwv_flow_api.g_varchar2_table(163) := '5B747970653D636865636B626F785D3A6E6F74283A636865636B656429207E202E66612D7371756172652D6F2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D636865636B62';
wwv_flow_api.g_varchar2_table(164) := '6F785D3A636865636B6564207E202E66612D636865636B2D7371756172652D6F207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A7D0D0A0D0A2F2A206861636B20746F206D616B65206C6162656C20616E6420636865636B626F';
wwv_flow_api.g_varchar2_table(165) := '7820776F726B2C20627574206E6F7420746F2073686F7720636865636B626F7820697473656C662A2F0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F74657220696E7075745B747970653D6368';
wwv_flow_api.g_varchar2_table(166) := '65636B626F785D207B0D0A2020706F736974696F6E3A2066697865643B0D0A20206F7061636974793A20303B0D0A2020746F703A202D313070783B0D0A20206C6566743A202D313070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E70726574697573';
wwv_flow_api.g_varchar2_table(167) := '2D2D656E68616E6365644C6F764974656D20746820696E7075745B747970653D636865636B626F785D2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20746420696E7075745B747970653D636865636B62';
wwv_flow_api.g_varchar2_table(168) := '6F785D2C0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D636865636B626F785D3A636865636B6564207E202E66612D7371756172652D6F2C0D0A2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(169) := '2E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B656429207E202E66612D636865636B2D7371756172652D6F207B0D0A2020646973706C61793A206E6F6E65';
wwv_flow_api.g_varchar2_table(170) := '3B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074723A6E74682D6368696C64286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0D0A2E75692D646961';
wwv_flow_api.g_varchar2_table(171) := '6C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074723A6E74682D6368696C64286576656E292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E7072';
wwv_flow_api.g_varchar2_table(172) := '65746975732D2D656E68616E6365644C6F764974656D2074723A6E74682D6368696C64286F6464292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(173) := '6F764974656D2074723A6E74682D6368696C64286F6464292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A20236666646664663B0D0A7D0D0A0D0A2E75692D6469';
wwv_flow_api.g_varchar2_table(174) := '616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722074642E742D5265706F72742D63656C6C207B0D0A202077686974652D73706163653A206E6F777261703B20200D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265';
wwv_flow_api.g_varchar2_table(175) := '746975732D2D656E68616E6365644C6F764974656D2074723A6E74682D6368696C64286F6464292E73656C65637465642074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(176) := '74656D2074722E73656C65637465642074642E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E3035293B0D0A2020746578742D736861646F773A2030203020302E303031';
wwv_flow_api.g_varchar2_table(177) := '7078207267626128302C302C302C20302E35293B0D0A0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73656C65637465643A686F766572202E742D5265706F72742D63656C6C2C200D';
wwv_flow_api.g_varchar2_table(178) := '0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73656C65637465643A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(179) := '3A2072676261283235352C203234392C20302C20302E31292021696D706F7274616E743B200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73656C65637465642074642E742D526570';
wwv_flow_api.g_varchar2_table(180) := '6F72742D63656C6C202E66616B65436865636B626F78207B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2F2A2073697A6573202A2F0D0A0D0A2F2A2064656661756C74202A2F0D0A2E6974656D436F6E7461696E6572203E20';
wwv_flow_api.g_varchar2_table(181) := '2E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3572656D203020302E3572656D3B0D0A20206D617267696E2D746F703A20302E3272656D3B0D0A202068';
wwv_flow_api.g_varchar2_table(182) := '65696768743A203272656D3B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A653A20312E3172656D3B0D0A7D0D0A0D0A2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E';
wwv_flow_api.g_varchar2_table(183) := '206469762E74616773203E206469762E7461672E73756D6D617279207B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E6974656D436F6E7461696E6572207B0D0A202070616464696E673A203020302E3272656D20302E3272656D';
wwv_flow_api.g_varchar2_table(184) := '20302E3272656D3B0D0A20206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A2E6974656D436F6E7461696E6572202E706C616365686F6C646572207B0D0A20206C696E652D6865696768743A20322E3272656D3B0D0A2020666F6E742D7369';
wwv_flow_api.g_varchar2_table(185) := '7A653A20312E3272656D3B0D0A20206F7061636974793A20302E353B0D0A202077686974652D73706163653A206E6F777261703B0D0A2020746578742D6F766572666C6F773A20656C6C69707369733B0D0A20206F766572666C6F773A2068696464656E';
wwv_flow_api.g_varchar2_table(186) := '3B20200D0A7D0D0A0D0A2F2A206C61726765202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E7461677320';
wwv_flow_api.g_varchar2_table(187) := '3E206469762E746167207B0D0A202070616464696E673A203020302E3672656D203020302E3672656D3B0D0A20206D617267696E2D746F703A20302E3372656D3B0D0A20206865696768743A20322E3472656D3B0D0A20206C696E652D6865696768743A';
wwv_flow_api.g_varchar2_table(188) := '20322E3472656D3B0D0A2020666F6E742D73697A653A20312E3372656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F';
wwv_flow_api.g_varchar2_table(189) := '6479203E206469762E74616773203E206469762E746167203E202E72656D6F7665207B0D0A20206C696E652D6865696768743A20322E3872656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C6443';
wwv_flow_api.g_varchar2_table(190) := '6F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E6572207B0D0A202070616464696E673A203020302E3372656D20302E3372656D20302E3372656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C';
wwv_flow_api.g_varchar2_table(191) := '61726765202E6974656D436F6E7461696E6572202E706C616365686F6C646572207B0D0A202070616464696E673A20302E3272656D20302E3572656D203020302E3572656D3B0D0A20206C696E652D6865696768743A20322E3472656D3B0D0A2020666F';
wwv_flow_api.g_varchar2_table(192) := '6E742D73697A653A20312E3472656D3B0D0A7D0D0A0D0A0D0A2F2A20782D6C61726765202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E';
wwv_flow_api.g_varchar2_table(193) := '6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3772656D203020302E3772656D3B0D0A20206D617267696E2D746F703A20302E3472656D3B0D0A20206865696768743A203372656D3B';
wwv_flow_api.g_varchar2_table(194) := '0D0A20206C696E652D6865696768743A203372656D3B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572203E202E';
wwv_flow_api.g_varchar2_table(195) := '6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E202E72656D6F7665207B0D0A2020666F6E742D73697A653A20312E3272656D3B0D0A20206C696E652D6865696768743A20322E3872656D3B0D0A7D0D';
wwv_flow_api.g_varchar2_table(196) := '0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572207B0D0A202070616464696E673A203020302E3472656D20302E3472656D20302E3472656D3B0D0A7D0D0A0D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(197) := '2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572202E706C616365686F6C646572207B0D0A202070616464696E673A20302E3272656D20302E3772656D203020302E3772656D3B0D0A20206C696E652D6865';
wwv_flow_api.g_varchar2_table(198) := '696768743A20332E3272656D3B0D0A2020666F6E742D73697A653A20312E3672656D3B0D0A7D0D0A0D0A2F2A0D0A20206572726F7220706F7075700D0A2A2F0D0A0D0A2E66612E6572726F72207B0D0A2020636F6C6F723A207265643B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(199) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6572726F72202E636F6E7461696E6572207B0D0A2020706164';
wwv_flow_api.g_varchar2_table(200) := '64696E673A20313570783B0D0A20206F766572666C6F773A206175746F3B0D0A7D0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72202E6572726F72207B0D0A202077686974652D';
wwv_flow_api.g_varchar2_table(201) := '73706163653A207072653B20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72207072652C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E65';
wwv_flow_api.g_varchar2_table(202) := '72726F72207072657B0D0A202070616464696E673A20313570783B0D0A2020626F726465723A2031707820736F6C6964207267626128302C302C302C302E33293B0D0A20206261636B67726F756E643A207267626128302C302C302C302E3038293B3B0D';
wwv_flow_api.g_varchar2_table(203) := '0A2020626F726465722D7261646975733A203570783B0D0A20206F766572666C6F772D783A206175746F3B0D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(5003982589388970023)
,p_plugin_id=>wwv_flow_api.id(4996577798669061241)
,p_file_name=>'enhancedLovItem.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(4685190312744809258)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(4685061927331809119)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(4685159838041809222)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(4685190052364809258)
,p_nav_bar_list_template_id=>wwv_flow_api.id(4685159601151809222)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(4685190312744809258)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'OSTROWSKI.BARTOSZ@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20190405162354'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(4685190312744809258)
,p_name=>'Description'
,p_alias=>'HOME'
,p_step_title=>'Plugin visualization'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.tpn-ename {',
'  font-weight: 600;',
'}',
'',
'.tpl-job {',
'  font-size: 80%;',
'}',
'',
'.tpl-sal {',
'  font-size: 80%; ',
'}',
'',
'.tpl-sal .fa {',
'  font-size: 95%;',
'  vertical-align: middle;',
'}',
'/* developer need to style custom template */',
'.pretius--enhancedLovItem.prompt ul li.custom {',
'  padding: 0.3rem',
'}',
'pre {',
'  background: #efefef;',
'  padding: 8px;',
'  border-radius: 4px;',
'}',
'code {',
'    background: #efefef;',
'    padding: 2px 4px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OSTROWSKI.BARTOSZ@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20190407142708'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4685201175905809289)
,p_plug_name=>'Enhanced LOV item'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4685104318524809165)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727222166614230905)
,p_plug_name=>'Autocomplete'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727224030309230924)
,p_plug_name=>'Default settings'
,p_parent_plug_id=>wwv_flow_api.id(4727222166614230905)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Default settings for autocomplete mode. Developer can define what type of filtering will be used. In this example end-user is able to:',
'<ul>',
'  <li>Select singular / multiple value(s) from list</li>',
'  <li>Filter data on display column using <code>:SEACH_STRING||''%''</code></li>',
'</ul>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727224233413230926)
,p_plug_name=>'Rapid selection'
,p_parent_plug_id=>wwv_flow_api.id(4727222166614230905)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'When rapid selection attribute is checked end-user is able to filter data, select value and type next search term to select more values.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727224477482230928)
,p_plug_name=>'Minimal input'
,p_parent_plug_id=>wwv_flow_api.id(4727222166614230905)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Minimal input attribute forces end-user to type defined number of characters before filtering data.<br/>',
'Minimal input attribute provides different messages for different configuration:',
'<ul>',
'  <li>When set to 0 then "Start typing to get results."</li>',
'  <li>When set to value greater then 0 then "Please enter %0 or more characters."</code></li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727224719070230931)
,p_plug_name=>'Tags limitation'
,p_parent_plug_id=>wwv_flow_api.id(4727222166614230905)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'When tags limitation is turned on then the plugin renders given number of tags and then wrap other selected values in summary tag.<br/>',
'When summary tag is rendered and the plugin support popup report then double clicking on summary tag opens popup report in "Show selected" mode.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727225007387230934)
,p_plug_name=>'Custom template'
,p_parent_plug_id=>wwv_flow_api.id(4727222166614230905)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Custom template attribute allows developer to define HTML template within annonymouse function that will be used to render autocomplete results. Custom template is defined as follows:',
'<pre><code>return ''''+',
'  ''&lt;div class="tpl-ename"&gt;''+this.data.D+''&lt;/div&gt;''+',
'  ''&lt;span&lt;span class="tpl-job"&gt;''+this.data.JOB+''&lt;/span&gt; ''+',
'  ''&lt;span class="tpl-sal"&gt;(&lt;span class="fa fa-usd"&gt;&lt;/span&gt;''+this.data.SAL+'')&lt;/span&gt;''+',
''''';</code></pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727225372502230937)
,p_plug_name=>'Custom search'
,p_parent_plug_id=>wwv_flow_api.id(4727222166614230905)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Custom search allows developer to define SQL conditions that will filter data. In this case custom search is defined as follows:',
'<pre><code>upper(d) like upper(:SEARCH_STRING||''%'')',
'or upper(JOB) like upper(:SEARCH_STRING||''%'')</code></pre>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727222479426230908)
,p_plug_name=>'Popup'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727222738925230911)
,p_plug_name=>'Default settings'
,p_parent_plug_id=>wwv_flow_api.id(4727222479426230908)
,p_icon_css_classes=>'fa-info-circle'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Default settings for popup report. ',
'<ul>',
'  <li>All columns from SQL query are visible</li>',
'  <li>All columns are filterable via column heading</li>',
'  <li>All columns are searchable via column heading</li>',
'  <li>Clicking on row selects value</li>',
'  <li>Popup report title is set as item label text</li>',
'  <li>Popup report is resizable</li>',
'  <li>Popup report is draggable</li>',
'  <li>Pressing <code>Escape</code> key closes popup</li>',
'  <li>Number of rows is available to end-user</li>',
'  <li>Global search (in all columns) is available to end-user</li>',
'  <li>Popup size is static (width set to 720px, height set to 541px)</li>',
'  <li>Display (D) and return (R) column are displayed</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727225874041230942)
,p_plug_name=>'Custom settings'
,p_parent_plug_id=>wwv_flow_api.id(4727222479426230908)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Custom settings for popup report. ',
'<ul>',
'  <li>Only described columns (by JSON object) are visible and its attributes are defined by developer (heading, th aligment, td aligment, sorting and filtering)</li>',
'  <li>Selecting value is possible only by clicking on checkbox / radio input</li>',
'  <li>Popup report title is defined via the plugin attribute</li>',
'  <li>Popup report is not resizable</li>',
'  <li>Popup report is not draggable</li>',
'  <li>Pressing <code>Escape</code> key has no effect</li>',
'  <li>Changing number of rows is not available to end-user</li>',
'  <li>Global search (in all columns) is not available to end-user</li>',
'  <li>Popup height is adjusting to its content</li>',
'  <li>Popup width is set to 480px</li>',
'  <li>Default sorting is set to column "Salary" with direction "descending"</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4787368388147280916)
,p_plug_name=>'Other'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4787368400454280917)
,p_plug_name=>'Translations'
,p_parent_plug_id=>wwv_flow_api.id(4787368388147280916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  The plugin support translations via <strong>Shared Components \ Translate \ Text Messages</strong>. Available strings are listed below:',
'</p>',
'<div class="t-Report t-Report--altRowsDefault t-Report--rowHighlight t-Report--stretch t-Report--horizontalBorders t-Report--hideNoPagination">',
'  <table class="t-Report-report">',
'    <thead>',
'      <tr>',
'        <th class="t-Report-colHead">Translation code</td>',
'        <th class="t-Report-colHead">Translation text</td>',
'      </tr>',
'    </thead>',
'',
'    <tbody>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_SEARCH_PLACEHOLDER</td>',
'        <td class="t-Report-cell">Enter a search term</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_BTN_SELECT_TEXT</td>',
'        <td class="t-Report-cell">Select</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_SHOW_SELECTED_LABEL</td>',
'        <td class="t-Report-cell">Show only selected</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_ROWS_SELECTED</td>',
'        <td class="t-Report-cell">All results (%0) on this page has beed selected.</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_NO_DATA_FOUND_SEARCH</td>',
'        <td class="t-Report-cell">No data found for search term "%0".</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_NO_DATA_FOUND_QUERY</td>',
'        <td class="t-Report-cell">Dictionary has no data to render.</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_CLEAR_FILTERING</td>',
'        <td class="t-Report-cell">Click &lt;a href="javascript: void(0)" class="clearFiltering"&gt;here&lt;/a&gt; to clear filtering.</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_UNSAVED_CHANGES</td>',
'        <td class="t-Report-cell">You have selected %0 values. Closing without saving will not save selected values.</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_SEACH_IN_SELECTED</td>',
'        <td class="t-Report-cell">You have filtered %0 row(s) from %1 selected row(s). </br>Click &lt;a href="javascript: void(0)" class="showSelected"&gt;here</a> to get back to all selected rows.</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_FILTERED_INFO</td>',
'        <td class="t-Report-cell">%0 results found for search term "%1". </td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_EXTRA_VALUE</td>',
'        <td class="t-Report-cell">Value "%0" is not within dictionary.</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_MENU_EXPAND_TITLE</td>',
'        <td class="t-Report-cell">Show or hide all tags</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_MENU_SORT_TITLE</td>',
'        <td class="t-Report-cell">Sort tags</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_MENU_CLEAR_TITLE</td>',
'        <td class="t-Report-cell">Clear all selected values</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_X</td>',
'        <td class="t-Report-cell">Please enter %0 or more characters.</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_0</td>',
'        <td class="t-Report-cell">Start typing to get results.</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_TEXT_NO_DATA_FOUND</td>',
'        <td class="t-Report-cell">No data found.</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_TEXT_SEARCHING</td>',
'        <td class="t-Report-cell">Searching...</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_PROMPT_TEXT_RAPID_SELECTION</td>',
'        <td class="t-Report-cell">Start typing to select more...</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_TAGS_LIMITED_OTHERS</td>',
'        <td class="t-Report-cell">and %0 more...</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_TAGS_LIMITED_0</td>',
'        <td class="t-Report-cell">%0 selected</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_PAGINATION_PREV</td>',
'        <td class="t-Report-cell">Previous</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_PAGINATION_NEXT</td>',
'        <td class="t-Report-cell">Next</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_HEADER_SORT_ASC_TITLE</td>',
'        <td class="t-Report-cell">Sort ascending</td> ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_HEADER_SORT_DESC_TITLE</td>',
'        <td class="t-Report-cell">Sort descending</td>  ',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">PAELI_POPUP_TEXT_SEARCHING</td>',
'        <td class="t-Report-cell">Waiting for results...</td> ',
'      </tr>',
'        ',
'    </tbody>',
'  </table>',
'</div>  '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831070676531701626)
,p_plug_name=>'Events'
,p_parent_plug_id=>wwv_flow_api.id(4787368388147280916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831071697231701636)
,p_plug_name=>'Autocomplete'
,p_parent_plug_id=>wwv_flow_api.id(4831070676531701626)
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Each autocomplete event has access through <code>this.data</code> to following information:',
'  <pre><code>{',
'  "prompt": {',
'    "container": jQuery object, //autocomplete container',
'    "header"   : jQuery object, //autocomplete header with action menu',
'    "body"     : jQuery object, //autocomplete body containing rendered data',
'    "input"    : jQuery object  //autocomplete search input',
'  },',
'  "mask": {',
'    "selected"     : Array,  //array of already selected data',
'    "dataAvailable": Boolean //boolean value indicates whether there is data to render',
'  }',
'};</code></pre>',
'</p>',
'<div class="t-Report t-Report--altRowsDefault t-Report--rowHighlight t-Report--stretch t-Report--horizontalBorders t-Report--hideNoPagination">',
'  <table class="t-Report-report">',
'    <thead>',
'      <tr>',
'        <th class="t-Report-colHead">Event</td>',
'        <th class="t-Report-colHead">Description</td>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <td class="t-Report-cell">Autocomplete closed</td>',
'        <td class="t-Report-cell">Triggered each time autocomplete is closed.</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Autocomplete data appended</td>',
'        <td class="t-Report-cell">Triggered each time new data is being loaded after scrolling autocomplete results/</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Autocomplete data rendered</td>',
'        <td class="t-Report-cell">Triggered each time first set of data is being rendered</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Autocomplete error</td>',
'        <td class="t-Report-cell">Triggered each time autocomplete has error</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Autocomplete open</td>',
'        <td class="t-Report-cell">Triggered each time autocomplete is beind opened</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>  ',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831071810195701638)
,p_plug_name=>'Popup'
,p_parent_plug_id=>wwv_flow_api.id(4831070676531701626)
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Each popup report event has access through <code>this.data</code> to following information:',
'<pre><code>{',
'  "header"       : jQuery Object, //reference to container for global search, rows per page and pagination',
'  "container"    : jQuery Object, //reference to parent container of popup report',
'  "body"         : jQuery Object, //reference to body container of popup report',
'  "footer"       : jQuery Object, //reference to container for Show only selecte and button Select',
'  "pagination"   : jQuery Object, //reference to container for pagination',
'  "search"       : jQuery Object, //reference to input performing search in all columns',
'  "rowsPerPage"  : jQuery Object, //reference to select list',
'  "contentTable" : jQuery Object, //reference to result table of data currently rendered',
'  "state"        : {',
'    "selected"              : Array,  //Array of currently selected values in popup',
'    "searchString"          : String, //Currently provided search string',
'    "searchColumnIdx"       : Number, //Index (starting from 1) of column in SQL Query',
'    "sortedColumnIdx"       : Number, //Index (starting from 1) of column in SQL Query',
'    "sortedColumnDirection" : String, //String "asc" / "desc"',
'    "ajaxRunning"           : Boolean //If true then AJAX is currently running',
'  }',
'};</code></pre>',
'    ',
'<div class="t-Report t-Report--altRowsDefault t-Report--rowHighlight t-Report--stretch t-Report--horizontalBorders t-Report--hideNoPagination">',
'  <table class="t-Report-report">',
'    <thead>',
'      <tr>',
'        <th class="t-Report-colHead">Event</td>',
'        <th class="t-Report-colHead">Description</td>',
'      </tr>',
'    </thead>',
'    <tbody>',
'',
'      <tr>',
'        <td class="t-Report-cell">Popup report closed</td>',
'        <td class="t-Report-cell">Triggered each time popup report is closed</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Popup report data rendered</td>',
'        <td class="t-Report-cell">Triggered each time the popup report renders set of data</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Popup report error</td>',
'        <td class="t-Report-cell">Triggered each time the popup report has error</td>',
'      </tr>',
'      <tr>',
'        <td class="t-Report-cell">Popup report open</td>',
'        <td class="t-Report-cell">Triggered each time the popup report is opened</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>  '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4787369482361280927)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4787370906898280942)
,p_plug_name=>'Installation guide'
,p_parent_plug_id=>wwv_flow_api.id(4787369482361280927)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'To successfully install the plugin follow those steps:',
'<ol>',
'  <li>Install package <code>APEX_ENHANCED_LOV_ITEM</code> in Oracle APEX Schema</li>',
'  <li>Install the plugin file <code>item_type_plugin_pl_ostrowskibartosz_apex_enhancedlovitem.sql</code></li>',
'  <li>Create APEX page item type <code>Enhanced LOV item</code></li>',
'  <li>Provide SQL query and mark display column with alias <code>d</code> and return column with alias <code>r</code> *</li>',
'  <li>Explore the plugin capabilities by reading Help Texts within APEX Application Builder</li>',
'  <li>Configure the plugin according to your requirements</li>',
'</ol>',
'<p>',
'  <i>',
'    * the plugin uses aliases <code>d</code> and <code>r</code> to recognize which column should be returned and which is general display column. ',
'    Don''t use aliases enclosed with quote character!',
'    See example below:',
'  </i> ',
'</p>',
'<pre><code>select',
'  emp.empno r,',
'  emp.ename d,',
'  emp.*',
'from',
'  emp    ',
'</code></pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831070849989701628)
,p_plug_name=>'Container'
,p_parent_plug_id=>wwv_flow_api.id(4787369482361280927)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4685086535039809147)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4787369552095280928)
,p_plug_name=>'General'
,p_parent_plug_id=>wwv_flow_api.id(4831070849989701628)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'  <li>The plugin is available under MIT License</li>',
'  <li>First supported version is Oracle APEX is <strong>5.1+</strong></li>',
'  <li>The plugin has two modes: Autocomplete and popup report</li>',
'  <li>Autocomplete <strong>custom</strong> filtering rules can be defined as SQL where clause</li>',
'  <li>Autocomplete can render data in <strong>custom HTML template</strong> returned from JavaScript annonymouse function</li>',
'  <li>Popup report columns can be configurable: sorting, filtering, aligment and heading text</li>',
'  <li>The plugin texts are translatable</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831071014790701630)
,p_plug_name=>'Roadmap'
,p_parent_plug_id=>wwv_flow_api.id(4831070849989701628)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'  <li>RTL support</li>',
'  <li>Mobile devices support</li>',
'  <li>Show only selected in autocomplete mode</li>',
'  <li>Support for pasting values (for example from Excell file)</li>',
'  <li>Different types of pagination in popup report</li>',
'  <li>Creating new values in autocomplete mode</li>',
'  <li>Oracle APEX Theme roller integration</li>',
'  <li>Keyboard shortcuts</li>',
'  <li>Highlighting search term in autocomplete</li>',
'  <li>Columns order configurable in JSON</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831070739864701627)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(4685118598729809175)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'JUMP'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27033558865502818517)
,p_plug_name=>'Oracle APEX integration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4727225673098230940)
,p_plug_name=>'Dynamic actions'
,p_parent_plug_id=>wwv_flow_api.id(27033558865502818517)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'The plugin support native dynamic actions. The plugin was extended to support event <strong>apexrefresh</strong> to retrieve value from session.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4787371088159280943)
,p_plug_name=>'List Of Values Types'
,p_parent_plug_id=>wwv_flow_api.id(27033558865502818517)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The plugin support different types of List of Values:',
'<ul>',
'  <li>Shared Componenets</li>',
'  <li>SQL Query</li>',
'  <li>Static values</li>',
'  <li>PL/SQL Function Body returning SQL Query</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831068877916701608)
,p_plug_name=>'Cascading LOV'
,p_parent_plug_id=>wwv_flow_api.id(27033558865502818517)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>'The plugin supports Cascading LOV funcionality to filter SQL query with parent item.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831070162156701621)
,p_plug_name=>'Extra values'
,p_parent_plug_id=>wwv_flow_api.id(27033558865502818517)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>'The plugin renders extra values that are not within dictionary with custom look. Additionaly the values are presented in popup report in <strong>Show only selected</strong> mode.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831071100511701631)
,p_plug_name=>'Null values'
,p_parent_plug_id=>wwv_flow_api.id(27033558865502818517)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'The plugin renders null value defined by the deveoper in both modes: autocomplete and popup report.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831071333522701633)
,p_plug_name=>'Container'
,p_parent_plug_id=>wwv_flow_api.id(27033558865502818517)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4685086535039809147)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831069570912701615)
,p_plug_name=>'Readonly'
,p_parent_plug_id=>wwv_flow_api.id(4831071333522701633)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'When item is <strong>Readonly</strong> the plugin renders display values based on return values.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4831070387329701623)
,p_plug_name=>'Custom icon'
,p_parent_plug_id=>wwv_flow_api.id(4831071333522701633)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(4685111758667809170)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'Developer can change popup report icon by selecting icon in item attributes <strong>Appearance \ Icon</strong>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559134392818520)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_SHOW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559219838818521)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Hide'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559329727818522)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_ENABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559463862818523)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_DISABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Disable'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559687977818525)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_SET_VALUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set value'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559804595818527)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_SET_VALUE_INVALID'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Set value (Invalid)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559971920818528)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_SET_VALUE_NOT_EXISTS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Set value (Not exists)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559526709818524)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033559791652818526)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_SET_FOCUS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Set focus'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033560080660818529)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_SET_SESSION_STATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Set Session State'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27033560117499818530)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_button_name=>'BTN_REFRESH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_image_alt=>'Refresh'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727222296960230906)
,p_name=>'P1_AUTOCOMPLETE_MULTIPLE_DEFAULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727224030309230924)
,p_prompt=>'Multiple selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727222537140230909)
,p_name=>'P1_POPUP_DEFAULT_SINGULAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727222738925230911)
,p_prompt=>'Singular selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Null Display Value'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_05=>'POPOUP_REPORT'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'720'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727222662312230910)
,p_name=>'P1_POPUP_CUSTOM_SINGULAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727225874041230942)
,p_prompt=>'Singular selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Null Display Value'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_05=>'POPOUP_REPORT'
,p_attribute_06=>'RCC:CT:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "SAL",',
'    "direction": "desc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Employee name",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "JOB": {',
'      "visible": true,',
'      "heading": "Position",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": false,',
'      "filter": true',
'    }, ',
'    "HIREDATE": {',
'      "visible": true,',
'      "heading": "Hire date",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    },',
'    "SAL": {',
'      "visible": true,',
'      "heading": "Salary",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    }    ',
'  }',
'}'))
,p_attribute_11=>'Custom title text'
,p_attribute_12=>'480'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727223451484230918)
,p_name=>'P1_AUTOCOMPLETE_RAPID_SELECTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727224233413230926)
,p_prompt=>'Rapid selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727223594625230919)
,p_name=>'P1_AUTOCOMPLETE_MINIMAL_INPUT_0'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727224477482230928)
,p_prompt=>'Minimal input'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MIL'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
,p_attribute_09=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727223680996230920)
,p_name=>'P1_AUTOCOMPLETE_LIMIT_TAGS_0'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727224719070230931)
,p_prompt=>'0 tags'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'LDT'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
,p_attribute_08=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727223795338230921)
,p_name=>'P1_AUTOCOMPLETE_CUSTOM_TEMPLETE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727225007387230934)
,p_prompt=>'Custom template'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'UCT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''''+',
'  ''<div class="tpl-ename">''+this.data.D+''</div>''+',
'  ''<span<span class="tpl-job">''+this.data.JOB+''</span> ''+',
'  ''<span class="tpl-sal">(<span class="fa fa-usd"></span>''+this.data.SAL+'')</span>''+',
''''';',
'',
''))
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727223855029230922)
,p_name=>'P1_AUTOCOMPLETE_CUSTOM_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727225372502230937)
,p_prompt=>'Custom search'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'UCSL:UCT'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'and (',
'  upper(d) like upper(:SEARCH_STRING||''%'')',
'  or upper(JOB) like upper(:SEARCH_STRING||''%'')',
')',
'order by d asc',
''))
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''''+',
'  ''<div class="tpl-ename">''+this.data.D+''</div>''+',
'  ''<span<span class="tpl-job">''+this.data.JOB+''</span> ''+',
'  ''<span class="tpl-sal">(<span class="fa fa-usd"></span>''+this.data.SAL+'')</span>''+',
''''';',
'',
''))
,p_attribute_05=>'AUTOCOMPLETE:MS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727224157877230925)
,p_name=>'P1_AUTOCOMPLETE_SINGLE_DEFAULT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4727224030309230924)
,p_prompt=>'Singular selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727224604083230930)
,p_name=>'P1_AUTOCOMPLETE_MINIMAL_INPUT_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4727224477482230928)
,p_prompt=>'Minimal input'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MIL'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
,p_attribute_09=>'2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727224912305230933)
,p_name=>'P1_AUTOCOMPLETE_LIMIT_TAGS_3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4727224719070230931)
,p_prompt=>'3 tags'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'LDT'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:MS'
,p_attribute_08=>'3'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727225700603230941)
,p_name=>'P1_POPUP_DEFAULT_MULTIPLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4727222738925230911)
,p_prompt=>'Multiple selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Null Display Value'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_05=>'POPOUP_REPORT:MS'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'720'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727226273387230946)
,p_name=>'P1_POPUP_CUSTOM_MULTIPLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4727225874041230942)
,p_prompt=>'Multiple selection'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Null Display Value'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_05=>'POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CT:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "SAL",',
'    "direction": "desc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Employee name",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "JOB": {',
'      "visible": true,',
'      "heading": "Position",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": false,',
'      "filter": true',
'    }, ',
'',
'    "HIREDATE": {',
'      "visible": true,',
'      "heading": "Hire date",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    },',
'    "SAL": {',
'      "visible": true,',
'      "heading": "Salary",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    }    ',
'  }',
'}'))
,p_attribute_11=>'Custom title text'
,p_attribute_12=>'480'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4787368235610280915)
,p_name=>'P1_AUTOCOMPLETE_LIMIT_TAGS_3_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4727224719070230931)
,p_prompt=>'tags limitation and popup'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'LDT'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_08=>'1'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'800'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4787371116144280944)
,p_name=>'P1_STATIC_VALUES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4787371088159280943)
,p_prompt=>'Static values'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>'STATIC:Display1;Return1,Display2;Return2,Display3;Return3,Display4;Return4'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Display",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831068619638701606)
,p_name=>'P1_LOV_STATIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4787371088159280943)
,p_prompt=>'LOV Static'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_named_lov=>'LOV_STATIC'
,p_lov=>'.'||wwv_flow_api.id(4831449204860729531)||'.'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Display",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831068728780701607)
,p_name=>'P1_LOV_DYNAMIC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4787371088159280943)
,p_prompt=>'LOV Dynamic'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_named_lov=>'LOV_DYNAMIC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename as d,',
'       empno as r',
'  from emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Display",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831069274074701612)
,p_name=>'P1_MASTER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4831068877916701608)
,p_prompt=>'Master'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  DNAME d,',
'  deptno r',
'from',
'  dept'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All departments'
,p_lov_null_value=>'%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831069317027701613)
,p_name=>'P1_SLAVE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4831068877916701608)
,p_prompt=>'Slave'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp',
'where',
'  deptno = replace(NVL(:P1_MASTER, ''%''), ''%'', deptno)'))
,p_lov_cascade_parent_items=>'P1_MASTER'
,p_ajax_items_to_submit=>'P1_MASTER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'720'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831069618567701616)
,p_name=>'P1_MULTIPLE_EMPTY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4831069570912701615)
,p_prompt=>'Empty Session State'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Display",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831069934483701619)
,p_name=>'P1_MULTIPLE_NOTEMPTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4831069570912701615)
,p_prompt=>'Not Empty Session State'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Display",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831070211816701622)
,p_name=>'P1_EXTRA_VALUES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4831070162156701621)
,p_prompt=>'LOV Extra Values'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'720'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831070416132701624)
,p_name=>'P1_CUSTOM_ICON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4831070387329701623)
,p_prompt=>'Custom icon'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_icon_css_classes=>'fa-box-arrow-in-ne'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'720'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831070568693701625)
,p_name=>'P1_PLSQL_FUNCTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4787371088159280943)
,p_prompt=>'PL/SQL Function Body returning SQL Query'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''',
'  select ',
'    emp.empno r,',
'    emp.ename d,',
'    emp.*',
'  from',
'    emp',
''';'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Display",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4831071213221701632)
,p_name=>'P1_NUL_VALUES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4831071100511701631)
,p_prompt=>'LOV Null Value'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Null Display Value'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_10=>'DDC:DRC'
,p_attribute_12=>'720'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27033558958945818518)
,p_name=>'P1_DA_INTEGRATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4727225673098230940)
,p_prompt=>'Da Integration'
,p_placeholder=>'Placeholder'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Null Display Value'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'RS'
,p_attribute_04=>'D%'
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Employee name",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "JOB": {',
'      "visible": true,',
'      "heading": "Position",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "HIREDATE": {',
'      "visible": true,',
'      "heading": "Hire date",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    },',
'    "SAL": {',
'      "visible": true,',
'      "heading": "Salary",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    }    ',
'  }',
'}'))
,p_attribute_12=>'800'
,p_attribute_13=>'541'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033560265788818531)
,p_name=>'DA | Show'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559134392818520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033560348185818532)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367301200280906)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559329727818522)
,p_attribute_01=>'N'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367436809280907)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559463862818523)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367550134280908)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559526709818524)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367607716280909)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033560117499818530)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367747481280910)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559791652818526)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367803589280911)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033560080660818529)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367977882280912)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559687977818525)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787368019737280913)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559804595818527)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787368187557280914)
,p_event_id=>wwv_flow_api.id(27033560265788818531)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559971920818528)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033560411342818533)
,p_name=>'DA | Hide'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559219838818521)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033560545280818534)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4727226337822230947)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559329727818522)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4727226465258230948)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559463862818523)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4727226568202230949)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559526709818524)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4727226672960230950)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033560117499818530)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787366841537280901)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559791652818526)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787366917573280902)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033560080660818529)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367011277280903)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559687977818525)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367178040280904)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559804595818527)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4787367243393280905)
,p_event_id=>wwv_flow_api.id(27033560411342818533)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(27033559971920818528)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033560693175818535)
,p_name=>'DA | Enable'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559329727818522)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033560732199818536)
,p_event_id=>wwv_flow_api.id(27033560693175818535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033560891156818537)
,p_name=>'DA | Disable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559463862818523)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033560937125818538)
,p_event_id=>wwv_flow_api.id(27033560891156818537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033561026535818539)
,p_name=>'DA | Clear'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559526709818524)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033561152996818540)
,p_event_id=>wwv_flow_api.id(27033561026535818539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033561237621818541)
,p_name=>'DA | Set value'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559687977818525)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033561341470818542)
,p_event_id=>wwv_flow_api.id(27033561237621818541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'7698'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033561474885818543)
,p_name=>'DA | Set value (Invalid)'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559804595818527)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033561513705818544)
,p_event_id=>wwv_flow_api.id(27033561474885818543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'invalid'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033561675550818545)
,p_name=>'DA | Set value (Not exists)'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559971920818528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033561936503818548)
,p_event_id=>wwv_flow_api.id(27033561675550818545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'76981'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27033562084976818549)
,p_name=>'DA | Set focus'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033559791652818526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27033562187046818550)
,p_event_id=>wwv_flow_api.id(27033562084976818549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4727191761207230901)
,p_name=>'DA | Set session state'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033560080660818529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4727191841063230902)
,p_event_id=>wwv_flow_api.id(4727191761207230901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P1_DA_INTEGRATION'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4727221912924230903)
,p_name=>'DA | Refresh'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27033560117499818530)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4727222015313230904)
,p_event_id=>wwv_flow_api.id(4727221912924230903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DA_INTEGRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4831071920267701639)
,p_name=>'Event | Autocomplete closed'
,p_event_sequence=>120
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_prompt_hidden'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4831072061928701640)
,p_event_id=>wwv_flow_api.id(4831071920267701639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4831072159401701641)
,p_name=>'Event | Autocomplete data appended'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_prompt_data_appended'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4831072203693701642)
,p_event_id=>wwv_flow_api.id(4831072159401701641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4831072386583701643)
,p_name=>'Event | Autocomplete data rendered'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_prompt_data_rendered'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4831072447560701644)
,p_event_id=>wwv_flow_api.id(4831072386583701643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4831072542414701645)
,p_name=>'Event | Autocomplete Error'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_prompt_error'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4831072622881701646)
,p_event_id=>wwv_flow_api.id(4831072542414701645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4831072738713701647)
,p_name=>'Event | Autocomplete Open'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_prompt_shown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4831072868398701648)
,p_event_id=>wwv_flow_api.id(4831072738713701647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4831072989509701649)
,p_name=>'Event | Popup report open'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_popup_shown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4831073038128701650)
,p_event_id=>wwv_flow_api.id(4831072989509701649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4930044417928278801)
,p_name=>'Event | Popup report Error'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_popup_error'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4930044542669278802)
,p_event_id=>wwv_flow_api.id(4930044417928278801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4930044678084278803)
,p_name=>'Event | Popup Report Data Rendered'
,p_event_sequence=>190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_popup_data_rendered'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4930044711928278804)
,p_event_id=>wwv_flow_api.id(4930044678084278803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4930044827654278805)
,p_name=>'Event | Popup Report Data Closed'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM|ITEM TYPE|paeli_popup_hidden'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4930044918310278806)
,p_event_id=>wwv_flow_api.id(4930044827654278805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug.log(''event'', this.browserEvent);',
'apex.debug.log(''this.data'', this.data);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4831070039701701620)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P1_MULTIPLE_NOTEMPTY := ''7839:7566'';',
':P1_EXTRA_VALUES := ''7839:7566:-1:123456'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(4685190312744809258)
,p_name=>'Visualization'
,p_step_title=>'Visualization'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.prompt-row {',
'  border-bottom: 1px solid rgba(0,0,0,0.15);',
'  padding: 7px;',
'}',
'',
'li.custom:nth-child(odd) .prompt-row {',
'  background-color: rgba(0,0,0,0.04);',
'}',
'',
'li.custom[aria-selected=true] {',
'  background-color: #ffffec!important;',
'}',
'',
'.details {',
'  display: flex;',
'}',
'',
'.details > div {',
'  flex-grow: 1;',
'  flex-shrink: 1;',
'  display: inline-flex;',
'}',
'',
'.ename {',
'  font-size: 1.4rem;',
'  font-weight: 500;',
'}',
'',
'.dname,',
'.loc {',
'      font-size: 1.2rem;',
'}',
'',
'.ename,',
'.dname,',
'.loc {',
'  display: flex;',
'  line-height: 2rem;',
'}',
'',
'.icon {',
'  align-self: center;',
'  min-width: 30px;',
'  opacity: 0.5;',
'  text-align: center;  ',
'}',
'',
'.loc {',
'  justify-content: flex-end;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OSTROWSKI.BARTOSZ@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20190407183226'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4930045328288278810)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(4685111758667809170)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  EMPNO,',
'  ENAME,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DNAME,',
'  LOC',
'from',
'  emp e',
'left join',
'  dept d',
'on',
'  e.deptno = d.deptno  ',
'where',
'  instr('':''||NVL(:P2_EMPLOYEES, e.empno)||'':'', '':''||e.empno||'':'') > 0'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_EMPLOYEES'
,p_query_row_template=>wwv_flow_api.id(4685137484989809198)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930045410956278811)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Employee ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930045558485278812)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930045636498278813)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930045704838278814)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930045884539278815)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_column_format=>'YYYY-MM-DD'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930045943012278816)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930046003371278817)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Commision'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930046287103278819)
,p_query_column_id=>8
,p_column_alias=>'DNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4930046311195278820)
,p_query_column_id=>9
,p_column_alias=>'LOC'
,p_column_display_sequence=>9
,p_column_heading=>'Localization'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9689077505114667016)
,p_plug_name=>'Enhanced LOV item'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4685104318524809165)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4930046482823278821)
,p_name=>'P2_EMPLOYEES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4930045328288278810)
,p_prompt=>'Employees'
,p_placeholder=>'Search for names, cities or departments'
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  emp.ename d,',
'  emp.empno r,  ',
'  emp.ENAME,',
'  emp.JOB,',
'  emp.SAL,',
'  emp.COMM,',
'  dept.dname,',
'  dept.loc,',
'  to_char(emp.HIREDATE, ''YYYY-MM-DD'') HIREDATE,',
'  decode(',
'    dept.dname,',
'    ''RESEARCH'', ''fa-lightbulb-o'',',
'    ''SALES'', ''fa-money'',',
'    ''ACCOUNTING'', ''fa-calculator'',',
'    ''fa-question''',
'  ) icon',
'from',
'  emp',
'left join',
'  dept',
'on',
'  emp.deptno = dept.deptno  '))
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(4685166693750809229)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'UCSL:UCT:LDT:RS'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'and ( ',
'  d like upper(:SEARCH_STRING||''%'')',
'  or job like upper(:SEARCH_STRING||''%'')',
'  or loc like upper(:SEARCH_STRING||''%'')',
'  or dname like upper(:SEARCH_STRING||''%'')',
')  ',
'order by',
'  ename asc',
''))
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''''+',
'  ''<div class="prompt-row">''+',
'  ''  <div class="ename"><span class="fa fa-user icon"></span> ''+this.data.D+''</div>''+',
'  ''  <div class="details">''+',
'  ''    <div class="dname"><span class="fa ''+this.data.ICON+'' icon"></span> <span>''+this.data.DNAME+''</span></div>''+',
'  ''    <div class="loc"><span>''+this.data.LOC+''</span> <span class="fa fa-building-o icon"></span></div>''+',
'  ''  </div>''+',
'  ''</div>''+',
'  '''';'))
,p_attribute_05=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_attribute_06=>'RCC:CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC:AHTRR'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "defaultSort": {',
'    "column": "DNAME",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "DNAME": {',
'      "visible": true,',
'      "heading": "Department",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "LOC": {',
'      "visible": true,',
'      "heading": "Localization",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "D": {',
'      "visible": true,',
'      "heading": "Employee name",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    },',
'    "HIREDATE": {',
'      "visible": true,',
'      "heading": "Hired",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    }    ',
'  }',
'}'))
,p_attribute_08=>'9'
,p_attribute_12=>'720'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4930046930446278826)
,p_name=>'Refresh report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_EMPLOYEES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4930047044522278827)
,p_event_id=>wwv_flow_api.id(4930046930446278826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4930045328288278810)
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(4685190312744809258)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'APEX Competition 2019 - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(4685068193746809128)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'OSTROWSKI.BARTOSZ@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20190405162355'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4685194491881809274)
,p_plug_name=>'APEX Competition 2019'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4685111215611809170)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4685199092791809284)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(4685194491881809274)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(4685086535039809147)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4685197117150809280)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4685194491881809274)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(4685167880364809231)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4685194876465809275)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4685194491881809274)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(4685166476043809229)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4685195281698809276)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4685194491881809274)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(4685166476043809229)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4685196320729809279)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4685194491881809274)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(4685195589247809276)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(4685166476043809229)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4685197914035809282)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4685197552226809281)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4685198704186809283)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4685198344320809283)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
