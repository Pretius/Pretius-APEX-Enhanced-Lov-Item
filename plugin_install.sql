prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_release=>'18.1.0.00.45'
,p_default_workspace_id=>22540303903578961
,p_default_application_id=>100
,p_default_owner=>'ENHANCED_LOV_ITEM'
);
end;
/
prompt --application/shared_components/plugins/item_type/pl_ostrowskibartosz_apex_enhancedlovitem
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(502801666440273201)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_display_name=>'Pretius Enhanced LOV item'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#enhancedLovItem.js',
'#PLUGIN_FILES#mustache.js'))
,p_api_version=>2
,p_render_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.render'
,p_meta_data_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.meta_data'
,p_ajax_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.ajax'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:ESCAPE_OUTPUT:QUICKPICK:SOURCE:ELEMENT:WIDTH:PLACEHOLDER:ICON:LOV:LOV_DISPLAY_NULL:CASCADING_LOV:JOIN_LOV:FILTER:LINK'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'APEX Enhanced LOV item is powerful combobox to select singular / multiple values in two modes: autocomplete and popup report. The plugin provides high customization possibilities through its attributes. ',
'</p>',
'<p>',
'  Author: Bartosz Ostrowski, Twitter: bostrowsk1, E-mail: ostrowski.bartosz@gmail.com',
'</p>'))
,p_version_identifier=>'1.1.2'
,p_about_url=>'https://github.com/bostrowski/APEX-Enhanced-Lov-Item'
,p_files_version=>206
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(502861687302006720)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
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
,p_depending_on_attribute_id=>wwv_flow_api.id(502878872120384715)
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
 p_id=>wwv_flow_api.id(502862259254008069)
,p_plugin_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(502862678266009092)
,p_plugin_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(504138945458858768)
,p_plugin_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(504650693711327124)
,p_plugin_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(504722789846683106)
,p_plugin_attribute_id=>wwv_flow_api.id(502861687302006720)
,p_display_sequence=>50
,p_display_value=>'Rapid Selection'
,p_return_value=>'RS'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Rapid Selection attributes describes behaviour of the plugin while selecting values (via <code>Enter key</code> or <code>Left Mouse Button</code>) in Autocomplete mode.',
'  Behaviour is different for singular and multiple selection.',
'</p>',
'<dl>',
'  <dt>Singular selection</dt>',
'  <dd>',
'    <p>',
'      When <strong>checked</strong>, selecting value is followed by clearing search input without closing autocomplete. ',
'    </p>',
'    <p>',
'      When <strong>not checked</strong>, selecting value is followed by closing autocomplete.',
'    </p>',
'  </dd>',
'  <dt>Multiple selection</dt>',
'  <dd>',
'    <p>',
'      When <strong>checked</strong>, selecting value is followed by clearing search input without closing autocomplete. ',
'    </p>',
'    <p>',
'      When <strong>not checked</strong>, selecting value doesn''t result in clearing search input without closing autocomplete.',
'    </p>',
'',
'  </dd>',
'</dl>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(297720111376125163)
,p_plugin_attribute_id=>wwv_flow_api.id(502861687302006720)
,p_display_sequence=>60
,p_display_value=>'Hide Toolbar'
,p_return_value=>'HT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(502863030855012329)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Custom Search Logic'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(502863665531014759)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>45
,p_prompt=>'Custom Autocomplete Template'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502861687302006720)
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
'<pre><code>if (this.data.selected) {',
'  return ''(''+this.data.R+'') ''+this.data.D+'' (selected)'';  ',
'}',
'else {',
'  return ''(''+this.data.R+'') ''+this.data.D;',
'}',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows to define custom HTML template for singular row of data rendered in autocomplete mode. Row columns can be referenced using <code>this.data.COLUMN_NAME</code>, where <code>COLUMN_NAME</code> is column name (or column alias if u'
||'sed) defined in <strong>List of Values > SQL Query</strong> item attribute. Use <code>this.data.selected</code> <i>(Boolean)</i> to determine whether particular row is selected.',
'</p>',
'<p>',
'All columns names / aliases must be in uppercase.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(502872400171365816)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Default Autocomplete Search'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D%'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(502873291952369320)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>10
,p_display_value=>'DISPLAY_COLUMN %'
,p_return_value=>'D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502873631704370129)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>20
,p_display_value=>'% DISPLAY_COLUMN'
,p_return_value=>'%D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502874026446370895)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>30
,p_display_value=>'% DISPLAY_COLUMN %'
,p_return_value=>'%D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502874502169371518)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>40
,p_display_value=>'DISPLAY_COLUMN'
,p_return_value=>'D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502874845493372782)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>50
,p_display_value=>'RETURN_COLUMN %'
,p_return_value=>'R%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502875224692373906)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>60
,p_display_value=>'% RETURN_COLUMN'
,p_return_value=>'%R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502875644408374593)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
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
 p_id=>wwv_flow_api.id(502876079883375111)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>80
,p_display_value=>'RETURN_COLUMN'
,p_return_value=>'R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502876459146375723)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
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
 p_id=>wwv_flow_api.id(502876825270376393)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
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
 p_id=>wwv_flow_api.id(502877214852377271)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
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
 p_id=>wwv_flow_api.id(502877644747377930)
,p_plugin_attribute_id=>wwv_flow_api.id(502872400171365816)
,p_display_sequence=>120
,p_display_value=>'DISPLAY_OR_RETURN_COLUMN'
,p_return_value=>'DR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>upper(r) like upper(:SEARCH_STRING)',
'or upper(d) like upper(:SEARCH_STRING)',
'</code></pre>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(502878872120384715)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>1
,p_prompt=>'General Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows you to define what funcionalities will be available to end-user.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502880246562387173)
,p_plugin_attribute_id=>wwv_flow_api.id(502878872120384715)
,p_display_sequence=>10
,p_display_value=>'Autocomplete'
,p_return_value=>'AUTOCOMPLETE'
,p_help_text=>'When checked the end-user can perform autocomplete.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(502880672512389177)
,p_plugin_attribute_id=>wwv_flow_api.id(502878872120384715)
,p_display_sequence=>20
,p_display_value=>'Popup Report'
,p_return_value=>'POPOUP_REPORT'
,p_help_text=>'When checked the end-user can select values from popup report.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(503133493851351242)
,p_plugin_attribute_id=>wwv_flow_api.id(502878872120384715)
,p_display_sequence=>30
,p_display_value=>'Multiple Selection'
,p_return_value=>'MS'
,p_help_text=>'When checked end-user can select multiple values in autocomplete and popup report. Otherwise end-user can select singular value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(503023369454787943)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Popup Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502878872120384715)
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
 p_id=>wwv_flow_api.id(503516709476645494)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
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
 p_id=>wwv_flow_api.id(503529664614409011)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>50
,p_display_value=>'Clicking On Row Selects It'
,p_return_value=>'CORSI'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, clicking on row in popup report selects radio / checkbox input.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505644529200301771)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
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
 p_id=>wwv_flow_api.id(505700162000369492)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>70
,p_display_value=>'Resizable'
,p_return_value=>'RESIZABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to resize popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505700511715378168)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>80
,p_display_value=>'Draggable'
,p_return_value=>'DRAGGABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change position of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505701000942379186)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>90
,p_display_value=>'Close On Escape'
,p_return_value=>'COE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible close popup report by pressing <code>Escape</code> key.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505734726576463166)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>100
,p_display_value=>'Rows Per Page'
,p_return_value=>'RPP'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change amount of rows rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505735161411464778)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>110
,p_display_value=>'Search In All Columns'
,p_return_value=>'SIAC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to search for given phrase in all columns of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505888591718165019)
,p_plugin_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_display_sequence=>120
,p_display_value=>'Adjust Height To Report Rows'
,p_return_value=>'AHTRR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, popup report adjusts its height its content height.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(503517183668653883)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Report Columns Configuration'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(503023369454787943)
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
 p_id=>wwv_flow_api.id(504139360883864260)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>15
,p_prompt=>'Number Of Tags'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(504651092181377232)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>11
,p_prompt=>'Minimal Input Length'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_unit=>'Characters'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502861687302006720)
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
 p_id=>wwv_flow_api.id(505530900611543907)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Report Basic Configuration'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'DDC:DRC'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(503023369454787943)
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
 p_id=>wwv_flow_api.id(505531178982544819)
,p_plugin_attribute_id=>wwv_flow_api.id(505530900611543907)
,p_display_sequence=>10
,p_display_value=>'Display "Display" Column'
,p_return_value=>'DDC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>D</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(505531509178545449)
,p_plugin_attribute_id=>wwv_flow_api.id(505530900611543907)
,p_display_sequence=>20
,p_display_value=>'Display "Return" Column'
,p_return_value=>'DRC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>R</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(505644924943305052)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Custom Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'CT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(509717146613743462)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>62
,p_prompt=>'Dialog Width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'720'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502878872120384715)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'POPOUP_REPORT'
,p_help_text=>'This attribute defines popup dialog width.'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(509748067294745093)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>64
,p_prompt=>'Dialog Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'541'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(503023369454787943)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'AHTRR'
,p_help_text=>'This attribute defines popup dialog height.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(404820570499583319)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Autocomplete Results Max Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'200'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502878872120384715)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_help_text=>'This attribute defines maximum height in pixels for autocomplete.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(404849017745812542)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Autocomplete Rows To Fetch'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'20'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(502878872120384715)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute defines how many rows will be fetched during one AJAX request.',
'  Scrolling Autocomplete or clicking on <code>Load more...</code> results in fetching next set of data.',
'</p>',
'<ul>',
'  <li>',
'    If fetched data don''t exceed maximum height defined as <strong>Autocomplete Results Max Height</strong>, link <code>Load more ...</code> is displayed.',
'  </li>',
'  <li>',
'    If fetched data exceed maximum height autocomplete uses scroll event for autocomplete container to load next set of data.',
'  </li>',
'</ul>'))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(502806372838178844)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'LOV'
,p_sql_min_column_count=>2
,p_supported_ui_types=>'DESKTOP'
,p_depending_on_has_to_exist=>true
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475489915254256545)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_popup_data_rendered'
,p_display_name=>'Popup report data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475489257797256544)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_popup_error'
,p_display_name=>'Popup report error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475489563106256545)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_popup_hidden'
,p_display_name=>'Popup report closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475490332500256545)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_popup_shown'
,p_display_name=>'Popup report open'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475491946053256547)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_prompt_data_appended'
,p_display_name=>'Autocomplete data appended'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475492322585256547)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_prompt_data_rendered'
,p_display_name=>'Autocomplete data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475491512262256546)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_prompt_error'
,p_display_name=>'Autocomplete error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475491149946256546)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_prompt_hidden'
,p_display_name=>'Autocomplete closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(475490702850256546)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_name=>'paeli_prompt_shown'
,p_display_name=>'Autocomplete open'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207E20627574746F6E207B0A20206F726465723A20343B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(2) := '656D202E64656275672C0A2E6974656D436F6E7461696E6572207E202E64656275674175746F636F6D706C657465207B0A20206F7061636974793A20302E353B0A7D0A0A2F2A206974656D206D61736B202A2F0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(3) := '65644C6F764974656D2E6D61736B207B0A20206D61782D77696474683A20313030253B0A2020646973706C61793A20666C65783B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A20206F726465723A20333B0A7D0A0A2E7072';
wwv_flow_api.g_varchar2_table(4) := '65746975732D2D656E68616E6365644C6F764974656D2E6D61736B3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(5) := '3B0A7D0A0A0A2F2A204974656D2064697361626C6564202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564203E206469762E6974656D436F6E7461696E6572207B0A2020637572736F723A206465';
wwv_flow_api.g_varchar2_table(6) := '6661756C743B0A7D0A0A2F2A204974656D20436F6E7461696E6572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0A2020626F726465723A2031707820736F';
wwv_flow_api.g_varchar2_table(7) := '6C6964207267626128302C302C302C2E313235293B0A20206D696E2D77696474683A203070783B0A2020666C65782D67726F773A20313B0A2020637572736F723A20746578743B0A2020706F736974696F6E3A2072656C61746976653B0A20206F766572';
wwv_flow_api.g_varchar2_table(8) := '666C6F773A2068696464656E3B0A7D0A0A20202F2A204974656D20436F6E7461696E657220426F6479202A2F0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E20';
wwv_flow_api.g_varchar2_table(9) := '6469762E6974656D436F6E7461696E6572426F6479207B0A202020206865696768743A20313030253B0A20207D0A0A202020202F2A206D61736B696E6720646976202A2F0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(10) := '61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479202E6D61736B696E67207B0A2020202020206261636B67726F756E643A2072676261283235352C3235352C3235352C30293B0A2020';
wwv_flow_api.g_varchar2_table(11) := '202020206261636B67726F756E643A202D6D6F7A2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0A202020202020';
wwv_flow_api.g_varchar2_table(12) := '6261636B67726F756E643A202D7765626B69742D6772616469656E74286C65667420746F702C20726967687420746F702C20636F6C6F722D73746F702830252C2072676261283235352C3235352C3235352C3029292C20636F6C6F722D73746F70283130';
wwv_flow_api.g_varchar2_table(13) := '30252C2072676261283235352C3235352C3235352C312929293B0A2020202020206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072';
wwv_flow_api.g_varchar2_table(14) := '676261283235352C3235352C3235352C31292031303025293B0A2020202020206261636B67726F756E643A202D6F2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235';
wwv_flow_api.g_varchar2_table(15) := '352C3235352C3235352C31292031303025293B0A2020202020206261636B67726F756E643A202D6D732D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C323535';
wwv_flow_api.g_varchar2_table(16) := '2C3235352C31292031303025293B0A2020202020206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C';
wwv_flow_api.g_varchar2_table(17) := '31292031303025293B0A20202020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E7428207374617274436F6C6F727374723D2723666666666666272C20656E64436F6C6F';
wwv_flow_api.g_varchar2_table(18) := '727374723D2723666666666666272C204772616469656E74547970653D3120293B0A202020202020706F736974696F6E3A206162736F6C7574653B0A202020202020746F703A203070783B0A20202020202072696768743A203070783B0A202020202020';
wwv_flow_api.g_varchar2_table(19) := '77696474683A20313070783B0A2020202020206865696768743A20313030253B0A202020207D0A0A20200A20202F2A20706C616365686F6C646572202A2F0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469';
wwv_flow_api.g_varchar2_table(20) := '762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0A202020206F7061636974793A20302E353B0A2020202077686974652D73706163653A206E6F777261703B0A20202020746578742D6F766572666C6F773A20656C';
wwv_flow_api.g_varchar2_table(21) := '6C69707369733B0A202020206F766572666C6F773A2068696464656E3B20200A20207D0A0A2F2A20737472656368206974656D2A2F0A2E742D466F726D2D2D73747265746368496E70757473202020202020202020202020202020202E70726574697573';
wwv_flow_api.g_varchar2_table(22) := '2D2D656E68616E6365644C6F764974656D2E6D61736B2C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D73747265746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0A2020666C65';
wwv_flow_api.g_varchar2_table(23) := '783A20313B20200A7D0A0A2F2A2064697361626C6564202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564207B0A20206F7061636974793A20302E353B20200A7D0A0A0A2F2A20636F6D6D6F6E20';
wwv_flow_api.g_varchar2_table(24) := '2A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D203E206469762E6974656D436F6E7461696E65722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742C0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(25) := '65644C6F764974656D2E70726F6D7074203E206469762E666978426F726465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E206469762E626F6479203E206469762E6C6F61644D6F7265207B0A2020626F72';
wwv_flow_api.g_varchar2_table(26) := '6465722D636F6C6F723A20726762283232332C203232332C20323233293B0A7D0A0A2F2A0A202070617374650A2A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F6479207B0A20206F766572666C6F773A20';
wwv_flow_api.g_varchar2_table(27) := '6175746F3B0A2020706F736974696F6E3A2072656C61746976653B0A202070616464696E673A203070783B0A20206D696E2D6865696768743A2032303670783B0A20206865696768743A2032303670783B0A20206D61782D6865696768743A2032303670';
wwv_flow_api.g_varchar2_table(28) := '783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465207465787461726561207B0A202070616464696E673A20313070783B0A2020726573697A653A206E6F6E653B0A202077696474683A20313030253B0A202068';
wwv_flow_api.g_varchar2_table(29) := '65696768743A2032303670783B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465723A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F64792E73756D6D6172';
wwv_flow_api.g_varchar2_table(30) := '79207461626C652074643A6C6173742D6368696C64207B0A2020666F6E742D7765696768743A20626F6C643B0A2020746578742D616C69676E3A2072696768743B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465';
wwv_flow_api.g_varchar2_table(31) := '202E626F6479207461626C652074723A6C6173742D6368696C64207464207B0A2020626F726465722D626F74746F6D3A206E6F6E652021696D706F7274616E743B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(32) := '4974656D2E7061737465202E666F6F746572207B0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C302C302E3035293B0A2020646973706C61793A20666C65783B0A2020666C65782D646972656374696F6E3A20726F';
wwv_flow_api.g_varchar2_table(33) := '773B0A202070616464696E673A203130707820313570783B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C6566742C0A2E75692D6469616C6F672E70726574';
wwv_flow_api.g_varchar2_table(34) := '6975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E7269676874207B0A2020666C65782D67726F773A20313B0A2020646973706C61793A20666C65783B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D';
wwv_flow_api.g_varchar2_table(35) := '656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C656674207B0A20206A7573746966792D636F6E74656E743A20666C65782D73746172743B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(36) := '4C6F764974656D2E7061737465202E666F6F746572202E7269676874207B0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0A7D0A0A2F2A20666C6F6174696E672074656D706C61746520737570706F7274202A2F0A2E742D466F';
wwv_flow_api.g_varchar2_table(37) := '726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_api.g_varchar2_table(38) := '6E65722D2D666C6F6174696E674C6162656C20202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C';
wwv_flow_api.g_varchar2_table(39) := '6162656C20202020202020202020202E706C616365686F6C646572207B0A20206D617267696E2D746F703A20323470783B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669';
wwv_flow_api.g_varchar2_table(40) := '656C64436F6E7461696E65722D2D6C617267652E69732D61637469766520202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_api.g_varchar2_table(41) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F';
wwv_flow_api.g_varchar2_table(42) := '6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652020202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C';
wwv_flow_api.g_varchar2_table(43) := '0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C6172676520202020202020202020202E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(44) := '4974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C20202020202020202020202E706C616365686F6C646572207B0A20206D617267696E2D746F703A20323470783B0A';
wwv_flow_api.g_varchar2_table(45) := '7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D';
wwv_flow_api.g_varchar2_table(46) := '6C6162656C436F6E7461696E6572206C6162656C207B0A202070616464696E672D746F703A203670783B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E67';
wwv_flow_api.g_varchar2_table(47) := '4C6162656C202E6974656D436F6E7461696E6572207B0A202070616464696E672D6C6566743A203870783B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_api.g_varchar2_table(48) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C6172676520202E6974656D436F6E7461696E65722C0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D66';
wwv_flow_api.g_varchar2_table(49) := '6C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572207B0A202070616464696E672D6C6566743A20313270783B0A7D0A0A2F2A0A20206572726F7220706F7075';
wwv_flow_api.g_varchar2_table(50) := '700A2A2F0A0A2E66612E6572726F72207B0A2020636F6C6F723A207265643B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F722C0A2E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(51) := '644C6F764974656D2E6572726F72202E636F6E7461696E6572207B0A202070616464696E673A20313570783B0A20206F766572666C6F773A206175746F3B0A7D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(52) := '202E616A61784572726F72202E6572726F72207B0A202077686974652D73706163653A207072653B20200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72207072652C0A2E70';
wwv_flow_api.g_varchar2_table(53) := '7265746975732D2D656E68616E6365644C6F764974656D2E6572726F72207072657B0A202070616464696E673A20313570783B0A2020626F726465723A2031707820736F6C6964207267626128302C302C302C302E33293B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(54) := '643A207267626128302C302C302C302E3038293B3B0A2020626F726465722D7261646975733A203570783B0A20206F766572666C6F772D783A206175746F3B0A7D0A0A0A2F2A202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(55) := '6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A2020666F6E742D73697A653A2031';
wwv_flow_api.g_varchar2_table(56) := '72656D3B0A202070616464696E672D6C6566743A20302E3272656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20436F6E7461696E6572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E2064';
wwv_flow_api.g_varchar2_table(57) := '69762E6974656D436F6E7461696E6572207B0A202070616464696E673A203020302E3272656D20302E3272656D20302E3272656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167206D617267696E2A2F0A2E707265746975732D';
wwv_flow_api.g_varchar2_table(58) := '2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0A2020';
wwv_flow_api.g_varchar2_table(59) := '6D617267696E2D72696768743A20302E3272656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E746169';
wwv_flow_api.g_varchar2_table(60) := '6E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0A202070616464696E673A203020302E3572656D203020302E3572656D3B0A20206D617267696E2D746F703A20302E327265';
wwv_flow_api.g_varchar2_table(61) := '6D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E74';
wwv_flow_api.g_varchar2_table(62) := '61696E6572203E206469762E706C616365686F6C6465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F647920';
wwv_flow_api.g_varchar2_table(63) := '3E206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0A2020666F6E742D73697A653A20312E3272656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167202F2076616C75652C2072656D6F7665';
wwv_flow_api.g_varchar2_table(64) := '202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E74616720';
wwv_flow_api.g_varchar2_table(65) := '3E207370616E2E76616C75652C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E7461677320';
wwv_flow_api.g_varchar2_table(66) := '3E206469762E746167203E207370616E2E72656D6F7665207B0A20206C696E652D6865696768743A20312E3672656D3B0A7D0A0A0A2F2A2053697A6573202F206C61726765202F20746167206D617267696E2A2F0A2E742D466F726D2D6669656C64436F';
wwv_flow_api.g_varchar2_table(67) := '6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E74';
wwv_flow_api.g_varchar2_table(68) := '61673A6E6F74283A6C6173742D6368696C6429207B0A20206D617267696E2D72696768743A20302E3272656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20436F6E7461696E6572202A2F0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_api.g_varchar2_table(69) := '6E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0A202070616464696E673A203020302E3272656D20302E3272656D20302E3272656D3B0A7D';
wwv_flow_api.g_varchar2_table(70) := '0A0A2F2A2053697A6573202F206C61726765202F20746167202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D43';
wwv_flow_api.g_varchar2_table(71) := '6F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0A202070616464696E673A203020302E3572656D203020302E3572656D3B0A20206D617267696E2D746F703A20';
wwv_flow_api.g_varchar2_table(72) := '302E3272656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(73) := '68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0A202070616464696E673A20302E3672656D2030203020302E3472656D3B0A7D0A0A2F2A2053697A6573';
wwv_flow_api.g_varchar2_table(74) := '202F206C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B20';
wwv_flow_api.g_varchar2_table(75) := '3E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B20';
wwv_flow_api.g_varchar2_table(76) := '3E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0A2020666F6E742D73697A653A20312E3472656D3B';
wwv_flow_api.g_varchar2_table(77) := '0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C2072656D6F7665202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(78) := '6D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C75652C0A2E742D466F726D2D6669656C6443';
wwv_flow_api.g_varchar2_table(79) := '6F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E746167';
wwv_flow_api.g_varchar2_table(80) := '73203E206469762E746167203E207370616E2E72656D6F7665207B0A20206C696E652D6865696768743A20322E3472656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167206D617267696E2A2F0A2E742D466F726D2D6669656C6443';
wwv_flow_api.g_varchar2_table(81) := '6F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E20646976';
wwv_flow_api.g_varchar2_table(82) := '2E7461673A6E6F74283A6C6173742D6368696C6429207B0A20206D617267696E2D72696768743A20302E3472656D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20436F6E7461696E6572202A2F0A2E742D466F726D2D6669656C64436F6E';
wwv_flow_api.g_varchar2_table(83) := '7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0A202070616464696E673A203020302E3472656D20302E3472656D20302E347265';
wwv_flow_api.g_varchar2_table(84) := '6D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20746167202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E20646976';
wwv_flow_api.g_varchar2_table(85) := '2E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0A202070616464696E673A203020302E3572656D203020302E3572656D3B0A20206D617267696E';
wwv_flow_api.g_varchar2_table(86) := '2D746F703A20302E3472656D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265';
wwv_flow_api.g_varchar2_table(87) := '746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0A202070616464696E673A20302E3872656D2030203020302E3672656D3B0A7D0A0A';
wwv_flow_api.g_varchar2_table(88) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C';
wwv_flow_api.g_varchar2_table(89) := '0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E';
wwv_flow_api.g_varchar2_table(90) := '6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0A2020666F6E742D73697A653A20312E3672656D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20746167202F2076616C75652C20';
wwv_flow_api.g_varchar2_table(91) := '72656D6F7665202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974';
wwv_flow_api.g_varchar2_table(92) := '656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C75652C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(93) := '4C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A20206C696E65';
wwv_flow_api.g_varchar2_table(94) := '2D6865696768743A20322E3772656D3B0A7D0A0A0A2F2A0A2020456C656D656E743A2070726F6D70740A2A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0A2020626F726465722D636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(95) := '28302C302C302C302E313235293B0A2020706F736974696F6E3A206162736F6C7574653B0A20206261636B67726F756E643A20236666663B0A20207A2D696E6465783A203430303B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(96) := '656D2E70726F6D70742E68696464656E207B0A2020646973706C61793A206E6F6E653B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75202E6661207B0A2020666F6E742D73697A653A20';
wwv_flow_api.g_varchar2_table(97) := '313270783B0A20206C696E652D6865696768743A20313270783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(98) := '70726F6D7074203E202E6D656E752C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0A2020626F726465722D636F6C6F723A20696E68657269743B0A2020626F726465722D77696474683A20';
wwv_flow_api.g_varchar2_table(99) := '3170783B0A2020626F726465722D7374796C653A20736F6C69643B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(100) := '2E70726F6D7074203E202E6D656E75207B0A202070616464696E673A20302E3472656D3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E752C0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(101) := '4C6F764974656D2E70726F6D7074203E202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0A2020626F726465722D746F703A206E6F6E653B0A7D0A0A0A2E707265746975';
wwv_flow_api.g_varchar2_table(102) := '732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572207B0A2020706F736974696F6E3A2072656C61746976653B0A2020646973706C61793A20666C65783B0A0A7D0A0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(103) := '6F764974656D2E70726F6D7074203E202E686561646572203E202E6661207B0A2020616C69676E2D73656C663A2063656E7465723B0A2020666F6E742D73697A653A20312E3372656D3B0A2020666C65782D736872696E6B3A20303B0A2020666C65782D';
wwv_flow_api.g_varchar2_table(104) := '67726F773A20303B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572203E20696E707574207B0A2020626F726465723A206E6F6E653B0A20206F75746C696E653A206E6F6E653B0A2020';
wwv_flow_api.g_varchar2_table(105) := '6D617267696E2D72696768743A20302E3472656D3B0A2020666C65782D67726F773A20313B0A2020666C65782D736872696E6B3A20303B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F647920';
wwv_flow_api.g_varchar2_table(106) := '7B0A20206F766572666C6F773A206175746F3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E666978426F72646572207B0A2020646973706C61793A206E6F6E653B0A2020626F726465722D746F702D77';
wwv_flow_api.g_varchar2_table(107) := '696474683A203170783B0A2020626F726465722D746F702D7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A207267626128302C302C302C2E313235293B0A20206865696768743A203070783B0A202077696474683A2035307078';
wwv_flow_api.g_varchar2_table(108) := '3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203070783B0A202072696768743A203070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E672C0A2E70';
wwv_flow_api.g_varchar2_table(109) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64207B0A2020746578742D616C69676E3A2063656E7465723B0A202070616464696E673A203670783B0A7D0A0A2E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(110) := '616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E69636F6E2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E746578742C0A2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(111) := '6E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E69636F6E2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E74657874207B0A20206469';
wwv_flow_api.g_varchar2_table(112) := '73706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C207B0A20206C6973742D7374796C653A206E6F6E653B0A20206D617267696E3A20303B0A2020706F736974696F6E3A20';
wwv_flow_api.g_varchar2_table(113) := '72656C61746976653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D207B0A202070616464696E673A203072656D3B0A2020637572736F723A20706F696E7465723B0A7D0A0A';
wwv_flow_api.g_varchar2_table(114) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C74207B0A202070616464696E673A20302E3372656D3B0A20206F766572666C6F773A2068696464656E3B0A2020746578742D6F76657266';
wwv_flow_api.g_varchar2_table(115) := '6C6F773A20656C6C69707369733B0A2020637572736F723A20706F696E7465723B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D3A686F7665722C0A2E707265746975732D';
wwv_flow_api.g_varchar2_table(116) := '2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742075';
wwv_flow_api.g_varchar2_table(117) := '6C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742075';
wwv_flow_api.g_varchar2_table(118) := '6C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E63';
wwv_flow_api.g_varchar2_table(119) := '7573746F6D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C743A686F7665722C0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(120) := '6E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C69';
wwv_flow_api.g_varchar2_table(121) := '2E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C';
wwv_flow_api.g_varchar2_table(122) := '692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E646566';
wwv_flow_api.g_varchar2_table(123) := '61756C745B617269612D686967686C6967687465643D2274727565225D207B0A20206261636B67726F756E643A20236535653565353B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173';
wwv_flow_api.g_varchar2_table(124) := '742D6368696C642E637573746F6D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D2274727565225D';
wwv_flow_api.g_varchar2_table(125) := '3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C696768';
wwv_flow_api.g_varchar2_table(126) := '7465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D2274727565225D5B6172';
wwv_flow_api.g_varchar2_table(127) := '69612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D686967686C6967687465643D2274';
wwv_flow_api.g_varchar2_table(128) := '727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C743A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7072';
wwv_flow_api.g_varchar2_table(129) := '6F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C61';
wwv_flow_api.g_varchar2_table(130) := '73742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F';
wwv_flow_api.g_varchar2_table(131) := '6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(132) := '656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0A20202D7765626B69742D626F782D736861646F773A20696E73657420307078202D3139707820';
wwv_flow_api.g_varchar2_table(133) := '31357078202D31357078207267626128302C302C302C302E31293B0A20202D6D6F7A2D626F782D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(134) := '646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B6172';
wwv_flow_api.g_varchar2_table(135) := '69612D73656C65637465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D207B0A20202F2A74657874';
wwv_flow_api.g_varchar2_table(136) := '2D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B2A2F0A20202F2A626F726465722D72696768743A2031707820736F6C696420236563663366663B2A2F0A20206261636B67726F756E643A20236632663266';
wwv_flow_api.g_varchar2_table(137) := '323B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E636F6C6C6170736564207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(138) := '6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E657870616E646564207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D65';
wwv_flow_api.g_varchar2_table(139) := '6E75202E766965772E657870616E646564202E636F6C6C6170736564207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870';
wwv_flow_api.g_varchar2_table(140) := '616E646564202E657870616E646564207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2F2A2064656661756C7420736F7274207374617465202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E';
wwv_flow_api.g_varchar2_table(141) := '75202E736F7274202E64657363207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E617363207B0A2020646973706C61793A20';
wwv_flow_api.g_varchar2_table(142) := '6E6F6E653B0A7D0A0A2F2A20736F72746564207374617465202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E646573632C0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(143) := '6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E617363207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E7520';
wwv_flow_api.g_varchar2_table(144) := '2E736F72742E64657363202E6173632C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E64657363207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70726574';
wwv_flow_api.g_varchar2_table(145) := '6975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F7265207B0A202070616464696E673A203270783B0A2020746578742D7472616E73666F726D3A207570706572636173653B0A2020746578742D616C69676E3A2063';
wwv_flow_api.g_varchar2_table(146) := '656E7465723B0A2020666F6E742D73697A653A203730253B0A20206C65747465722D73706163696E673A203170783B0A2020626F726465722D746F702D77696474683A203170783B0A2020626F726465722D746F702D7374796C653A20736F6C69643B0A';
wwv_flow_api.g_varchar2_table(147) := '2020626F726465722D746F702D636F6C6F723A20696E68657269743B0A20206261636B67726F756E643A207267626128302C302C302C302E3034293B20200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E';
wwv_flow_api.g_varchar2_table(148) := '6C6F61644D6F72652061207B0A2020636F6C6F723A207267626128302C302C302C302E37293B0A2020746578742D736861646F773A202D317078202D3170782030707820726762283235352C203235352C203235352C20302E35293B0A7D0A0A0A2F2A0A';
wwv_flow_api.g_varchar2_table(149) := '2020456C656D656E743A2070726F6D70740A20206465736372697074696F6E3A2066697820666F72206974656D20656D626564656420696E20696E6C696E65206469616C6F670A2A2F0A0A2E742D4469616C6F67526567696F6E2D626F6479202E707265';
wwv_flow_api.g_varchar2_table(150) := '746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0A2020706F736974696F6E3A2066697865643B0A7D0A0A0A2F2A0A2020456C656D656E743A20706F7075700A20206465736372697074696F6E3A2066697820666F7220697465';
wwv_flow_api.g_varchar2_table(151) := '6D20656D626564656420696E20696E6C696E65206469616C6F670A2A2F0A0A2F2A20706F707570202F20626F6479202A2F0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479207B';
wwv_flow_api.g_varchar2_table(152) := '0A20206F766572666C6F773A206175746F3B0A2020706F736974696F6E3A2072656C61746976653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E73656172636869';
wwv_flow_api.g_varchar2_table(153) := '6E67466F72526573756C74734D61736B207B0A2020706F736974696F6E3A206162736F6C7574653B0A202077696474683A20313030253B0A20206865696768743A20313030253B0A20206261636B67726F756E643A20236666663B0A20206F7061636974';
wwv_flow_api.g_varchar2_table(154) := '793A20302E363B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473207B0A2020706F736974696F6E3A206162736F6C75';
wwv_flow_api.g_varchar2_table(155) := '74653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C0A2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(156) := '74656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473207B0A202070616464696E673A203230707820303B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D';
wwv_flow_api.g_varchar2_table(157) := '6469616C6F672E706F707570202E626F64792E736561726368696E672C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E6E6F64617461666F756E64207B0A2020646973706C61';
wwv_flow_api.g_varchar2_table(158) := '793A20666C65783B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A202070616464696E673A203070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F';
wwv_flow_api.g_varchar2_table(159) := '6479202E736561726368696E67466F72526573756C74732C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572207B0A202061';
wwv_flow_api.g_varchar2_table(160) := '6C69676E2D73656C663A2063656E7465723B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E73656172636869';
wwv_flow_api.g_varchar2_table(161) := '6E67466F72526573756C747320202E69636F6E203E202E6661202C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E69';
wwv_flow_api.g_varchar2_table(162) := '636F6E203E202E6661207B0A2020666F6E742D73697A653A2031303070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F7252657375';
wwv_flow_api.g_varchar2_table(163) := '6C7473202E746578742C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E74657874207B0A202070616464696E672D74';
wwv_flow_api.g_varchar2_table(164) := '6F703A20313070783B0A2020666F6E742D73697A653A20313470783B0A20206C696E652D6865696768743A20323070783B0A7D0A0A2F2A20706F707570202F20666F6F746572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(165) := '75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642E696E616374697665207B0A20206F7061636974793A20302E353B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(166) := '2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F';
wwv_flow_api.g_varchar2_table(167) := '6F7465722D627574746F6E73207B0A2020666C65782D736872696E6B3A20313B0A2020666C65782D67726F773A20313B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465';
wwv_flow_api.g_varchar2_table(168) := '72207B0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C302C302E3035293B0A2020646973706C61793A20666C65783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(169) := '672E706F707570202E666F6F746572206C6162656C207B0A20206D617267696E2D6C6566743A20313070783B0A2020637572736F723A20706F696E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(170) := '6F672E706F707570202E666F6F746572206C6162656C207B0A20206C696E652D6865696768743A20333270783B0A2020666F6E742D73697A653A20313270783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(171) := '6C6F672E706F707570202E666F6F746572202E66616B65436865636B626F78207B0A20206C696E652D6865696768743A20333270783B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570';
wwv_flow_api.g_varchar2_table(172) := '202E666F6F746572202E666F6F7465722D627574746F6E73207B0A2020746578742D616C69676E3A2072696768743B0A7D0A0A2F2A20706F707570202F20686561646572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7569';
wwv_flow_api.g_varchar2_table(173) := '2D6469616C6F672E706F707570202E6865616465722E706167696E6174696F6E4F6E6C79202E706167696E6174696F6E436F6E7461696E6572207B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(174) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E66612C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70';
wwv_flow_api.g_varchar2_table(175) := '7570202E686561646572202E706167696E6174696F6E436F6E7461696E6572207B0A2020746578742D616C69676E3A2072696768743B0A2020666F6E742D73697A653A20313270783B0A20206C696E652D6865696768743A20333070783B0A7D0A0A2E70';
wwv_flow_api.g_varchar2_table(176) := '7265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E70726576207B0A20206D617267696E2D72696768743A203570783B0A7D0A';
wwv_flow_api.g_varchar2_table(177) := '0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E6E657874207B0A20206D617267696E2D6C6566743A203570783B20';
wwv_flow_api.g_varchar2_table(178) := '0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572207B0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B';
wwv_flow_api.g_varchar2_table(179) := '0A2020646973706C61793A20666C65783B0A7D0A0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572203E20646976207B0A2020666C65782D736872696E6B3A20313B0A20';
wwv_flow_api.g_varchar2_table(180) := '20666C65782D67726F773A20313B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E6572207B0A2020706F736974696F6E3A20';
wwv_flow_api.g_varchar2_table(181) := '72656C61746976653B0A2020746578742D616C69676E3A206C6566743B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(182) := '696E707574207B0A202070616464696E673A203570783B0A20206C696E652D6865696768743A20313670783B0A202077696474683A20313030253B0A20206865696768743A20333270783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(183) := '4974656D2E75692D6469616C6F672E706F707570202E686561646572202E726F777350657250616765436F6E7461696E65722073656C656374207B0A202070616464696E673A203570783B0A20206C696E652D6865696768743A20313670783B0A202062';
wwv_flow_api.g_varchar2_table(184) := '6F726465722D6C6566743A206E6F6E653B0A20206865696768743A20333270783B0A7D0A0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E74';
wwv_flow_api.g_varchar2_table(185) := '61696E65722E6D756C7469706C6520696E707574207B0A202077696474683A20313030253B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F';
wwv_flow_api.g_varchar2_table(186) := '6E7461696E6572202E6661207B0A2020746F703A203070783B0A20206C696E652D6865696768743A20333070783B0A2020706F736974696F6E3A206162736F6C7574653B0A202072696768743A20313570783B0A20206F7061636974793A20302E353B0A';
wwv_flow_api.g_varchar2_table(187) := '2020666F6E742D73697A653A20313470783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E202E7365617263682C0A2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(188) := '6E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E202E636C656172207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(189) := '4C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E202E7365617263682C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865';
wwv_flow_api.g_varchar2_table(190) := '6164657220696E707574207E202E636C656172207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E';
wwv_flow_api.g_varchar2_table(191) := '20646976207B0A2020746F703A203070783B0A20206C696E652D6865696768743A20333470783B0A2020706F736974696F6E3A206162736F6C7574653B0A202072696768743A203070783B0A20200A7D0A0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(192) := '4C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E20646976203E202E7365617263682C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865';
wwv_flow_api.g_varchar2_table(193) := '6164657220696E7075742E656D707479207E20646976203E202E636C656172207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561';
wwv_flow_api.g_varchar2_table(194) := '64657220696E7075742E656D707479207E20646976203E202E7365617263682C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E20646976203E202E636C';
wwv_flow_api.g_varchar2_table(195) := '656172207B0A20206F7061636974793A20302E353B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C65617220';
wwv_flow_api.g_varchar2_table(196) := '7B0A2020637572736F723A20706F696E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C6561723A686F766572207B0A20206F7061636974793A20';
wwv_flow_api.g_varchar2_table(197) := '313B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E';
wwv_flow_api.g_varchar2_table(198) := '666F6F746572207B0A202070616464696E673A203130707820313570783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E68696464656E2C0A2E70726574697573';
wwv_flow_api.g_varchar2_table(199) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465722E68696464656E207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D';
wwv_flow_api.g_varchar2_table(200) := '6469616C6F672E706F707570202E752D5265706F72742D736F7274207B0A202077686974652D73706163653A206E6F777261703B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207468';
wwv_flow_api.g_varchar2_table(201) := '3A66697273742D6368696C642C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074683A66697273742D6368696C642C0A2E70726574697573';
wwv_flow_api.g_varchar2_table(202) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074642E742D5265706F72742D63656C6C3A66697273742D6368696C64207B0A202077696474683A20343270783B0A20206D696E2D77696474683A20343270783B0A20';
wwv_flow_api.g_varchar2_table(203) := '206D61782D77696474683A20343270783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207468207B0A2020626F726465722D746F703A6E6F6E653B0A7D0A0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(204) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B794865616465727320207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203070783B0A202077696474683A203130';
wwv_flow_api.g_varchar2_table(205) := '30253B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B7948656164657273207468207B0A20206261636B67726F756E643A20236666663B0A2020706F7369';
wwv_flow_api.g_varchar2_table(206) := '74696F6E3A2072656C61746976653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E68696464656E447565546F46696C746572207B0A2020646973706C61793A206E6F6E653B';
wwv_flow_api.g_varchar2_table(207) := '0A7D0A0A2E686967686C69676874207B0A20206261636B67726F756E643A2079656C6C6F773B0A7D0A0A0A2F2A20696E666F726D6174696F6E20726567696F6E202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(208) := '6C6F672E706F707570202E696E666F726D6174696F6E2E68696464656E207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F72';
wwv_flow_api.g_varchar2_table(209) := '6D6174696F6E207B0A20206261636B67726F756E643A20236633663366333B0A2020706F736974696F6E3A2072656C61746976653B0A20206D696E2D6865696768743A20333070783B0A2020746578742D616C69676E3A2063656E7465723B0A2020626F';
wwv_flow_api.g_varchar2_table(210) := '726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E202E';
wwv_flow_api.g_varchar2_table(211) := '74657874207B0A202070616464696E672D746F703A203570783B0A202070616464696E672D626F74746F6D3A203570783B0A20206C696E652D6865696768743A20323070783B0A2020666F6E742D73697A653A20313270783B0A7D0A0A2F2A20636F6C75';
wwv_flow_api.g_varchar2_table(212) := '6D6E2066696C746572696E6720616E6420736F7274696E67202A2F0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D616374';
wwv_flow_api.g_varchar2_table(213) := '697665202E612D49636F6E2C200A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D616374697665202E6661207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(214) := '6F723A20236666663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D6163746976652C0A2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(215) := '6E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20233465346534653B0A2020626F726465722D636F6C6F723A2023346534';
wwv_flow_api.g_varchar2_table(216) := '6534653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D6163746976652061207B0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(217) := '3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203070783B';
wwv_flow_api.g_varchar2_table(218) := '0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73202E612D49636F6E207B0A2020636F6C6F723A20236666663B0A7D0A0A2E70726574697573';
wwv_flow_api.g_varchar2_table(219) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E672C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67207B0A20';
wwv_flow_api.g_varchar2_table(220) := '20706F736974696F6E3A2072656C61746976653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67202E6661207B0A2020706F736974696F6E3A206162736F6C';
wwv_flow_api.g_varchar2_table(221) := '7574653B0A202072696768743A203770783B0A2020746F703A203770783B0A2020636F6C6F723A20236666663B0A20206F7061636974793A20302E353B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(222) := '2E706F707570202E736F7274696E672061207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202077696474683A206175746F3B0A202070616464696E673A2035707820313070783B0A7D0A0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(223) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E67207B0A2020626F726465722D6C6566743A2031707820736F6C69643B0A2020626F726465722D72696768743A2031707820736F6C69643B0A2020626F726465722D74';
wwv_flow_api.g_varchar2_table(224) := '6F703A2031707820736F6C69643B0A0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67207B0A2020626F726465723A2031707820736F6C69643B20200A202062';
wwv_flow_api.g_varchar2_table(225) := '61636B67726F756E643A20233631363136313B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E6720696E707574207B0A2020626F726465723A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(226) := '20206261636B67726F756E643A207472616E73706172656E743B0A202070616464696E673A203570783B0A202077696474683A20313030253B0A2020636F6C6F723A20236666663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(227) := '6D2E75692D6469616C6F672E706F707570202E66616B65526164696F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65436865636B626F78207B0A2020637572736F723A20706F';
wwv_flow_api.g_varchar2_table(228) := '696E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D636972636C652D6F2C0A';
wwv_flow_api.g_varchar2_table(229) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D646F742D636972636C652D6F207B0A2020646973706C61793A20';
wwv_flow_api.g_varchar2_table(230) := '696E6C696E652D626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D2C0A2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(231) := '74656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D636972636C652D6F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F';
wwv_flow_api.g_varchar2_table(232) := '70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D646F742D636972636C652D6F207B0A2020646973706C61793A206E6F6E653B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(233) := '74656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B656429207E202E66612D7371756172652D6F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D';
wwv_flow_api.g_varchar2_table(234) := '6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A636865636B6564207E202E66612D636865636B2D7371756172652D6F207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2F2A206861636B';
wwv_flow_api.g_varchar2_table(235) := '20746F206D616B65206C6162656C20616E6420636865636B626F7820776F726B2C20627574206E6F7420746F2073686F7720636865636B626F7820697473656C662A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(236) := '6C6F672E706F707570202E666F6F74657220696E7075745B747970653D636865636B626F785D207B0A2020706F736974696F6E3A2066697865643B0A20206F7061636974793A20303B0A2020746F703A202D313070783B0A20206C6566743A202D313070';
wwv_flow_api.g_varchar2_table(237) := '783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020746820696E7075745B747970653D636865636B626F785D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(238) := '692D6469616C6F672E706F70757020746420696E7075745B747970653D636865636B626F785D2C0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B62';
wwv_flow_api.g_varchar2_table(239) := '6F785D3A636865636B6564207E202E66612D7371756172652D6F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A6E6F74283A63686563';
wwv_flow_api.g_varchar2_table(240) := '6B656429207E202E66612D636865636B2D7371756172652D6F207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D636869';
wwv_flow_api.g_varchar2_table(241) := '6C64286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286576656E292E65';
wwv_flow_api.g_varchar2_table(242) := '7874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E657874';
wwv_flow_api.g_varchar2_table(243) := '726156616C75652074642E742D5265706F72742D63656C6C2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E657874726156616C75652E73656C';
wwv_flow_api.g_varchar2_table(244) := '65637465642074642E742D5265706F72742D63656C6C207B0A20206261636B67726F756E643A20236666646664663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722074642E74';
wwv_flow_api.g_varchar2_table(245) := '2D5265706F72742D63656C6C207B0A202077686974652D73706163653A206E6F777261703B20200A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F';
wwv_flow_api.g_varchar2_table(246) := '6464292E73656C65637465642074642E742D5265706F72742D63656C6C2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C';
wwv_flow_api.g_varchar2_table(247) := '6C207B0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E3035293B0A2020746578742D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B0A0A7D0A0A2E70726574697573';
wwv_flow_api.g_varchar2_table(248) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A686F766572202E742D5265706F72742D63656C6C2C200A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469';
wwv_flow_api.g_varchar2_table(249) := '616C6F672E706F7075702074722E73656C65637465643A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E3129202169';
wwv_flow_api.g_varchar2_table(250) := '6D706F7274616E743B200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C6C202E66616B65436865636B626F78207B';
wwv_flow_api.g_varchar2_table(251) := '0A2020746578742D736861646F773A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702E73656C656374566961526F7773207464207B0A2020637572736F723A20706F696E';
wwv_flow_api.g_varchar2_table(252) := '7465723B0A7D0A0A2F2A20494720737570706F7274202A2F0A2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0A202077696474683A20313030253B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(253) := '313030253B0A20206D696E2D77696474683A206175746F21696D706F7274616E743B0A20206D696E2D6865696768743A206175746F21696D706F7274616E743B0A7D0A0A2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(254) := '6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0A7D0A0A2E612D47562D636F6C756D6E4974656D202E707265746975';
wwv_flow_api.g_varchar2_table(255) := '732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564202E6974656D436F6E7461696E6572207B0A2020626F726465722D636F6C6F723A20726762283232332C203232332C20323233292021696D706F7274616E743B0A7D0A0A2F';
wwv_flow_api.g_varchar2_table(256) := '2A2074616773202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0A2020646973706C61793A';
wwv_flow_api.g_varchar2_table(257) := '20666C65783B0A2020666C65782D777261703A206E6F777261703B0A20206F766572666C6F773A2068696464656E3B0A7D0A0A2F2A206D61736B20657870616E646564202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D6173';
wwv_flow_api.g_varchar2_table(258) := '6B2E657870616E646564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0A2020666C65782D777261703A20777261703B200A20206F766572666C6F773A2076697369626C653B';
wwv_flow_api.g_varchar2_table(259) := '0A7D0A0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A20206469762E74616773203E206469762E746167207B0A20';
wwv_flow_api.g_varchar2_table(260) := '2020202F2A646973706C61793A20696E6C696E652D626C6F636B3B2A2F0A20202020646973706C61793A20666C65783B0A202020206D61782D77696474683A20313030253B0A20202020626F726465723A2031707820736F6C6964207267626128323134';
wwv_flow_api.g_varchar2_table(261) := '2C3231342C323134293B0A20202020706F736974696F6E3A2072656C61746976653B0A20202020626F726465722D7261646975733A203670783B0A202020206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B0A20';
wwv_flow_api.g_varchar2_table(262) := '202020666C65782D736872696E6B3A20303B0A20202020636F6C6F723A207267626128302C302C302C302E35293B0A202020202D7765626B69742D746F7563682D63616C6C6F75743A206E6F6E653B202F2A20694F5320536166617269202A2F0A202020';
wwv_flow_api.g_varchar2_table(263) := '2020202D7765626B69742D757365722D73656C6563743A206E6F6E653B202F2A20536166617269202A2F0A202020202020202D6B68746D6C2D757365722D73656C6563743A206E6F6E653B202F2A204B6F6E717565726F722048544D4C202A2F0A202020';
wwv_flow_api.g_varchar2_table(264) := '2020202020202D6D6F7A2D757365722D73656C6563743A206E6F6E653B202F2A2046697265666F78202A2F0A202020202020202020202D6D732D757365722D73656C6563743A206E6F6E653B202F2A20496E7465726E6574204578706C6F7265722F4564';
wwv_flow_api.g_varchar2_table(265) := '6765202A2F0A2020202020202020202020202020757365722D73656C6563743A206E6F6E653B202F2A204E6F6E2D70726566697865642076657273696F6E2C2063757272656E746C790A2020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(266) := '20202020202020202020737570706F72746564206279204368726F6D6520616E64204F70657261202A2F20200A20207D0A0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(267) := '3E202E6974656D436F6E7461696E6572426F6479203E200A202020206469762E74616773203E206469762E7461673A686F766572207B0A202020202020626F726465722D636F6C6F723A20236231623162313B0A202020207D0A0A202020202F2A206D61';
wwv_flow_api.g_varchar2_table(268) := '736B2064697361626C6564202A2F0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A2020';
wwv_flow_api.g_varchar2_table(269) := '20206469762E74616773203E206469762E7461673A686F766572207B0A202020202020626F726465722D636F6C6F723A2072676261283231342C3231342C323134293B0A2020202020206261636B67726F756E643A2072676261283231342C3231342C32';
wwv_flow_api.g_varchar2_table(270) := '31342C20302E35293B20200A202020207D0A0A0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A20202020646976';
wwv_flow_api.g_varchar2_table(271) := '2E74616773203E206469762E7461672E73756D6D617279207B0A202020202020637572736F723A20706F696E7465723B0A202020207D0A0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E74';
wwv_flow_api.g_varchar2_table(272) := '61696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A202020206469762E74616773203E206469762E7461672E6578747261207B0A2020202020206261636B67726F756E643A20236666646664663B0A202020207D0A0A2020202020';
wwv_flow_api.g_varchar2_table(273) := '202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A2020202020206469762E74616773203E206469762E746167203E207370';
wwv_flow_api.g_varchar2_table(274) := '616E2E76616C7565207B0A2020202020202020666C65782D736872696E6B3A20313B0A2020202020202020666C65782D67726F773A20313B0A2020202020202020746578742D6F766572666C6F773A20656C6C69707369733B0A20202020202020206F76';
wwv_flow_api.g_varchar2_table(275) := '6572666C6F773A2068696464656E3B0A2020202020207D0A0A2020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E20';
wwv_flow_api.g_varchar2_table(276) := '0A2020202020206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A2020202020202020666C65782D736872696E6B3A20303B0A2020202020202020666C65782D67726F773A20303B20200A20202020202020206375';
wwv_flow_api.g_varchar2_table(277) := '72736F723A20706F696E7465723B0A2020202020202020636F6C6F723A207267626128302C302C302C31293B0A2020202020202020616C69676E2D73656C663A2063656E7465723B0A2020202020207D0A0A2020202020202F2A206D61736B2064697361';
wwv_flow_api.g_varchar2_table(278) := '626C6564202A2F0A2020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A20202020202064';
wwv_flow_api.g_varchar2_table(279) := '69762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A2020202020202020637572736F723A2064656661756C743B0A2020202020207D2020202020200A0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(60791046141043749)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_file_name=>'enhancedLovItem_18_1.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727E627574746F6E7B6F726465723A347D2E6974656D436F6E7461696E65727E2E64656275674175746F636F6D706C6574652C2E70';
wwv_flow_api.g_varchar2_table(2) := '7265746975732D2D656E68616E6365644C6F764974656D202E64656275677B6F7061636974793A2E357D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B7B6D61782D77696474683A313030253B646973706C61793A666C6578';
wwv_flow_api.g_varchar2_table(3) := '3B6261636B67726F756E642D636F6C6F723A236639663966393B6F726465723A337D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F63757365642C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(4) := '61736B3A686F7665727B6261636B67726F756E642D636F6C6F723A236666667D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(5) := '72426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76652C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C65643E6469762E6974656D436F6E7461696E65727B637572736F723A';
wwv_flow_api.g_varchar2_table(6) := '64656661756C747D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727B626F726465723A31707820736F6C6964207267626128302C302C302C2E313235293B6D696E2D7769647468';
wwv_flow_api.g_varchar2_table(7) := '3A303B666C65782D67726F773A313B637572736F723A746578743B706F736974696F6E3A72656C61746976653B6F766572666C6F773A68696464656E7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D';
wwv_flow_api.g_varchar2_table(8) := '436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64797B6865696768743A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E697465';
wwv_flow_api.g_varchar2_table(9) := '6D436F6E7461696E6572426F6479202E6D61736B696E677B6261636B67726F756E643A3020303B6261636B67726F756E643A2D6D6F7A2D6C696E6561722D6772616469656E74286C6566742C72676261283235352C3235352C3235352C302920302C2366';
wwv_flow_api.g_varchar2_table(10) := '66662031303025293B6261636B67726F756E643A2D7765626B69742D6772616469656E74286C65667420746F702C726967687420746F702C636F6C6F722D73746F702830252C72676261283235352C3235352C3235352C3029292C636F6C6F722D73746F';
wwv_flow_api.g_varchar2_table(11) := '7028313030252C2366666629293B6261636B67726F756E643A2D7765626B69742D6C696E6561722D6772616469656E74286C6566742C72676261283235352C3235352C3235352C302920302C236666662031303025293B6261636B67726F756E643A2D6F';
wwv_flow_api.g_varchar2_table(12) := '2D6C696E6561722D6772616469656E74286C6566742C72676261283235352C3235352C3235352C302920302C236666662031303025293B6261636B67726F756E643A2D6D732D6C696E6561722D6772616469656E74286C6566742C72676261283235352C';
wwv_flow_api.g_varchar2_table(13) := '3235352C3235352C30292030252C236666662031303025293B6261636B67726F756E643A6C696E6561722D6772616469656E7428746F2072696768742C72676261283235352C3235352C3235352C302920302C236666662031303025293B66696C746572';
wwv_flow_api.g_varchar2_table(14) := '3A70726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E7428207374617274436F6C6F727374723D2723666666666666272C20656E64436F6C6F727374723D2723666666666666272C204772616469656E';
wwv_flow_api.g_varchar2_table(15) := '74547970653D3120293B706F736974696F6E3A6162736F6C7574653B746F703A303B72696768743A303B77696474683A313070783B6865696768743A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E';
wwv_flow_api.g_varchar2_table(16) := '6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B6F7061636974793A2E353B77686974652D73706163653A6E6F777261703B746578742D6F766572666C6F773A656C6C69707369733B6F766572666C6F773A68696464656E7D2E';
wwv_flow_api.g_varchar2_table(17) := '742D466F726D2D2D73747265746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2C2E742D466F726D2D6669656C64436F6E7461696E65722D2D73747265746368496E70757473202E707265746975732D';
wwv_flow_api.g_varchar2_table(18) := '2D656E68616E6365644C6F764974656D2E6D61736B7B666C65783A317D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C65647B6F7061636974793A2E357D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(19) := '764974656D2E70726F6D70742C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E6469762E626F64793E6469762E6C6F61644D6F72652C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(20) := '3E6469762E666978426F726465722C2E707265746975732D2D656E68616E6365644C6F764974656D3E6469762E6974656D436F6E7461696E65727B626F726465722D636F6C6F723A236466646664667D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(21) := '764974656D2E7061737465202E626F64797B6F766572666C6F773A6175746F3B706F736974696F6E3A72656C61746976653B70616464696E673A303B6D696E2D6865696768743A32303670783B6865696768743A32303670783B6D61782D686569676874';
wwv_flow_api.g_varchar2_table(22) := '3A32303670787D2E707265746975732D2D656E68616E6365644C6F764974656D2E70617374652074657874617265617B70616464696E673A313070783B726573697A653A6E6F6E653B77696474683A313030253B6865696768743A32303670783B766572';
wwv_flow_api.g_varchar2_table(23) := '746963616C2D616C69676E3A746F703B626F726465723A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F64792E73756D6D617279207461626C652074643A6C6173742D6368696C647B666F6E742D77656967';
wwv_flow_api.g_varchar2_table(24) := '68743A3730303B746578742D616C69676E3A72696768747D2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F6479207461626C652074723A6C6173742D6368696C642074647B626F726465722D626F74746F6D3A6E';
wwv_flow_api.g_varchar2_table(25) := '6F6E6521696D706F7274616E747D2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F7465727B626F726465722D746F703A31707820736F6C6964207267626128302C302C302C2E303529';
wwv_flow_api.g_varchar2_table(26) := '3B646973706C61793A666C65783B666C65782D646972656374696F6E3A726F773B70616464696E673A3130707820313570787D2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572';
wwv_flow_api.g_varchar2_table(27) := '202E6C6566742C2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E72696768747B666C65782D67726F773A313B646973706C61793A666C65787D2E75692D6469616C6F672E';
wwv_flow_api.g_varchar2_table(28) := '707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C6566747B6A7573746966792D636F6E74656E743A666C65782D73746172747D2E75692D6469616C6F672E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(29) := '4C6F764974656D2E7061737465202E666F6F746572202E72696768747B6A7573746966792D636F6E74656E743A666C65782D656E647D2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E706C616365686F';
wwv_flow_api.g_varchar2_table(30) := '6C6465722C2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_api.g_varchar2_table(31) := '65722D2D666C6F6174696E674C6162656C2E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162';
wwv_flow_api.g_varchar2_table(32) := '656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_api.g_varchar2_table(33) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E74';
wwv_flow_api.g_varchar2_table(34) := '61696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C';
wwv_flow_api.g_varchar2_table(35) := '64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E7461';
wwv_flow_api.g_varchar2_table(36) := '67737B6D617267696E2D746F703A323470787D2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(37) := '2D2D6C61726765202E742D466F726D2D6C6162656C436F6E7461696E6572206C6162656C7B70616464696E672D746F703A3670787D2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D66';
wwv_flow_api.g_varchar2_table(38) := '6C6F6174696E674C6162656C202E6974656D436F6E7461696E65727B70616464696E672D6C6566743A3870787D2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C';
wwv_flow_api.g_varchar2_table(39) := '6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E65722C2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174';
wwv_flow_api.g_varchar2_table(40) := '696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E65727B70616464696E672D6C6566743A313270787D2E66612E6572726F727B636F6C6F723A7265647D2E70726574697573';
wwv_flow_api.g_varchar2_table(41) := '2D2D656E68616E6365644C6F764974656D2E6572726F72202E636F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F727B70616464696E673A313570783B6F76657266';
wwv_flow_api.g_varchar2_table(42) := '6C6F773A6175746F7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72202E6572726F727B77686974652D73706163653A7072657D2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(43) := '4974656D2E6572726F72207072652C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72207072657B70616464696E673A313570783B626F726465723A31707820736F6C69642072676261';
wwv_flow_api.g_varchar2_table(44) := '28302C302C302C2E33293B6261636B67726F756E643A7267626128302C302C302C2E3038293B626F726465722D7261646975733A3570783B6F766572666C6F772D783A6175746F7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61';
wwv_flow_api.g_varchar2_table(45) := '736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76657B666F6E742D73697A653A3172656D3B70616464696E672D6C6566743A';
wwv_flow_api.g_varchar2_table(46) := '2E3272656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65722C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(47) := '6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727B70616464696E673A30202E3272656D202E3272656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(48) := '723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A6E6F74283A6C6173742D6368696C64292C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(49) := '6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A6E6F74283A6C6173742D6368696C64297B6D617267696E2D72696768743A2E3272';
wwv_flow_api.g_varchar2_table(50) := '656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461672C2E742D466F726D2D66';
wwv_flow_api.g_varchar2_table(51) := '69656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E74616773';
wwv_flow_api.g_varchar2_table(52) := '3E6469762E7461677B70616464696E673A30202E3572656D3B6D617267696E2D746F703A2E3272656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D43';
wwv_flow_api.g_varchar2_table(53) := '6F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E76616C75652C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E706C61636568';
wwv_flow_api.g_varchar2_table(54) := '6F6C6465727B666F6E742D73697A653A312E3272656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E7461';
wwv_flow_api.g_varchar2_table(55) := '67733E6469762E7461673E7370616E2E72656D6F76652C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E7461';
wwv_flow_api.g_varchar2_table(56) := '67733E6469762E7461673E7370616E2E76616C75657B6C696E652D6865696768743A312E3672656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D6173';
wwv_flow_api.g_varchar2_table(57) := '6B3E6469762E6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B70616464696E673A2E3672656D20302030202E3472656D3B666F6E742D73697A653A312E3472656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_api.g_varchar2_table(58) := '2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E';
wwv_flow_api.g_varchar2_table(59) := '76616C75657B666F6E742D73697A653A312E3472656D3B6C696E652D6865696768743A322E3472656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61';
wwv_flow_api.g_varchar2_table(60) := '736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76657B6C696E652D6865696768743A322E3472656D7D2E742D466F726D2D66';
wwv_flow_api.g_varchar2_table(61) := '69656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E';
wwv_flow_api.g_varchar2_table(62) := '7461673A6E6F74283A6C6173742D6368696C64297B6D617267696E2D72696768743A2E3472656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D6173';
wwv_flow_api.g_varchar2_table(63) := '6B3E6469762E6974656D436F6E7461696E65727B70616464696E673A30202E3472656D202E3472656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(64) := '61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461677B70616464696E673A30202E3572656D3B6D617267696E2D746F703A2E3472656D7D2E742D466F72';
wwv_flow_api.g_varchar2_table(65) := '6D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B70616464696E673A2E38';
wwv_flow_api.g_varchar2_table(66) := '72656D20302030202E3672656D3B666F6E742D73697A653A312E3672656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E697465';
wwv_flow_api.g_varchar2_table(67) := '6D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E76616C75657B666F6E742D73697A653A312E3672656D3B6C696E652D6865696768743A322E3772656D7D2E742D';
wwv_flow_api.g_varchar2_table(68) := '466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E64';
wwv_flow_api.g_varchar2_table(69) := '69762E746167733E6469762E7461673E7370616E2E72656D6F76657B6C696E652D6865696768743A322E3772656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70747B626F726465722D636F6C6F723A7267626128302C';
wwv_flow_api.g_varchar2_table(70) := '302C302C2E313235293B706F736974696F6E3A6162736F6C7574653B6261636B67726F756E643A236666663B7A2D696E6465783A3430307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577';
wwv_flow_api.g_varchar2_table(71) := '202E636F6C6C61707365642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742E68696464656E7B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6D';
wwv_flow_api.g_varchar2_table(72) := '656E75202E66617B666F6E742D73697A653A313270783B6C696E652D6865696768743A313270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E626F64792C2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(73) := '4974656D2E70726F6D70743E2E6865616465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6D656E757B626F726465722D636F6C6F723A696E68657269743B626F726465722D77696474683A3170783B626F72';
wwv_flow_api.g_varchar2_table(74) := '6465722D7374796C653A736F6C69647D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6D656E757B70616464';
wwv_flow_api.g_varchar2_table(75) := '696E673A2E3472656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E626F64792C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465722C2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(76) := '656E68616E6365644C6F764974656D2E70726F6D70743E2E6D656E752C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074687B626F726465722D746F703A6E6F6E657D2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(77) := '656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465727B706F736974696F6E3A72656C61746976653B646973706C61793A666C65787D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E68656164';
wwv_flow_api.g_varchar2_table(78) := '65723E2E66617B616C69676E2D73656C663A63656E7465723B666F6E742D73697A653A312E3372656D3B666C65782D736872696E6B3A303B666C65782D67726F773A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(79) := '3E2E6865616465723E696E7075747B626F726465723A303B6F75746C696E653A303B6D617267696E2D72696768743A2E3472656D3B666C65782D67726F773A313B666C65782D736872696E6B3A307D2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(80) := '4974656D2E70726F6D70743E2E626F64797B6F766572666C6F773A6175746F7D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E666978426F726465727B646973706C61793A6E6F6E653B626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(81) := '77696474683A3170783B626F726465722D746F702D7374796C653A736F6C69643B626F726465722D636F6C6F723A7267626128302C302C302C2E313235293B6865696768743A303B77696474683A353070783B706F736974696F6E3A6162736F6C757465';
wwv_flow_api.g_varchar2_table(82) := '3B746F703A303B72696768743A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E7365617263';
wwv_flow_api.g_varchar2_table(83) := '68696E677B746578742D616C69676E3A63656E7465723B70616464696E673A3670787D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E646573632C2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(84) := '6E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E657870616E6465642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870616E646564202E636F6C6C';
wwv_flow_api.g_varchar2_table(85) := '61707365642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E69636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F';
wwv_flow_api.g_varchar2_table(86) := '756E64202E746578742C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E69636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368';
wwv_flow_api.g_varchar2_table(87) := '696E67202E746578747B646973706C61793A626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C7B6C6973742D7374796C653A6E6F6E653B6D617267696E3A303B706F736974696F6E3A72656C617469';
wwv_flow_api.g_varchar2_table(88) := '76657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D7B70616464696E673A303B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(89) := '70726F6D707420756C206C692E64656661756C747B70616464696E673A2E3372656D3B6F766572666C6F773A68696464656E3B746578742D6F766572666C6F773A656C6C69707369733B637572736F723A706F696E7465727D2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(90) := '6E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D686967686C696768';
wwv_flow_api.g_varchar2_table(91) := '7465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(92) := '4C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F';
wwv_flow_api.g_varchar2_table(93) := '6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742075';
wwv_flow_api.g_varchar2_table(94) := '6C206C692E64656661756C743A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(95) := '6E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C69';
wwv_flow_api.g_varchar2_table(96) := '2E64656661756C745B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B61';
wwv_flow_api.g_varchar2_table(97) := '7269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D3A686F7665727B6261636B67726F756E643A236535653565357D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420';
wwv_flow_api.g_varchar2_table(98) := '756C206C693A6C6173742D6368696C642E637573746F6D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D686967686C696768';
wwv_flow_api.g_varchar2_table(99) := '7465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975';
wwv_flow_api.g_varchar2_table(100) := '732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975';
wwv_flow_api.g_varchar2_table(101) := '732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D3A686F7665722C2E';
wwv_flow_api.g_varchar2_table(102) := '707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C743A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C';
wwv_flow_api.g_varchar2_table(103) := '693A6C6173742D6368696C642E64656661756C745B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C';
wwv_flow_api.g_varchar2_table(104) := '745B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D';
wwv_flow_api.g_varchar2_table(105) := '747275655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C6563746564';
wwv_flow_api.g_varchar2_table(106) := '3D747275655D5B617269612D686967686C6967687465643D747275655D3A686F7665727B2D7765626B69742D626F782D736861646F773A696E7365742030202D313970782031357078202D31357078207267626128302C302C302C2E31293B2D6D6F7A2D';
wwv_flow_api.g_varchar2_table(107) := '626F782D736861646F773A696E7365742030202D313970782031357078202D31357078207267626128302C302C302C2E31293B626F782D736861646F773A696E7365742030202D313970782031357078202D31357078207267626128302C302C302C2E31';
wwv_flow_api.g_varchar2_table(108) := '297D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(109) := '20756C206C692E64656661756C745B617269612D73656C65637465643D747275655D7B6261636B67726F756E643A236632663266327D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E';
wwv_flow_api.g_varchar2_table(110) := '6173632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E6173632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F';
wwv_flow_api.g_varchar2_table(111) := '72742E64657363202E646573632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870616E646564202E657870616E6465642C2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(112) := '74656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D7074797E2E636C6561722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E70';
wwv_flow_api.g_varchar2_table(113) := '75742E656D7074797E6469763E2E636C6561722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E2E7365617263682C2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(114) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E6469763E2E7365617263687B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D';
wwv_flow_api.g_varchar2_table(115) := '656E75202E736F72742E617363202E646573632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E6173632C2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(116) := '2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D7074797E2E7365617263682C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574';
wwv_flow_api.g_varchar2_table(117) := '7E2E636C6561727B646973706C61793A626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F72657B70616464696E673A3270783B746578742D7472616E73666F726D3A7570706572636173';
wwv_flow_api.g_varchar2_table(118) := '653B746578742D616C69676E3A63656E7465723B666F6E742D73697A653A3730253B6C65747465722D73706163696E673A3170783B626F726465722D746F702D77696474683A3170783B626F726465722D746F702D7374796C653A736F6C69643B626F72';
wwv_flow_api.g_varchar2_table(119) := '6465722D746F702D636F6C6F723A696E68657269743B6261636B67726F756E643A7267626128302C302C302C2E3034297D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F726520617B636F6C6F723A';
wwv_flow_api.g_varchar2_table(120) := '7267626128302C302C302C2E37293B746578742D736861646F773A2D317078202D317078203020726762283235352C3235352C3235352C2E35297D2E742D4469616C6F67526567696F6E2D626F6479202E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(121) := '764974656D2E70726F6D70747B706F736974696F6E3A66697865647D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64797B6F766572666C6F773A6175746F3B706F736974696F6E3A72';
wwv_flow_api.g_varchar2_table(122) := '656C61746976657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74734D61736B7B706F736974696F6E3A6162736F6C7574653B77';
wwv_flow_api.g_varchar2_table(123) := '696474683A313030253B6865696768743A313030253B6261636B67726F756E643A236666663B6F7061636974793A2E367D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E7365';
wwv_flow_api.g_varchar2_table(124) := '61726368696E67466F72526573756C74737B706F736974696F6E3A6162736F6C7574657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E74';
wwv_flow_api.g_varchar2_table(125) := '61696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74737B70616464696E673A3230707820307D2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(126) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E6E6F64617461666F756E642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E7365';
wwv_flow_api.g_varchar2_table(127) := '61726368696E677B646973706C61793A666C65783B6A7573746966792D636F6E74656E743A63656E7465723B70616464696E673A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64';
wwv_flow_api.g_varchar2_table(128) := '79202E6E6F64617461666F756E64436F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74737B616C69676E2D73';
wwv_flow_api.g_varchar2_table(129) := '656C663A63656E7465723B746578742D616C69676E3A63656E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E';
wwv_flow_api.g_varchar2_table(130) := '69636F6E3E2E66612C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473202E69636F6E3E2E66617B666F6E742D73697A653A3130';
wwv_flow_api.g_varchar2_table(131) := '3070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E746578742C2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(132) := '764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473202E746578747B70616464696E672D746F703A313070783B666F6E742D73697A653A313470783B6C696E652D6865696768743A32';
wwv_flow_api.g_varchar2_table(133) := '3070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642E696E6163746976657B6F7061636974793A2E357D2E70726574';
wwv_flow_api.g_varchar2_table(134) := '6975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D627574746F6E732C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70';
wwv_flow_api.g_varchar2_table(135) := '7570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465723E6469767B666C65782D736872696E6B3A313B';
wwv_flow_api.g_varchar2_table(136) := '666C65782D67726F773A317D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465727B626F726465722D746F703A31707820736F6C6964207267626128302C302C302C2E3035293B64';
wwv_flow_api.g_varchar2_table(137) := '6973706C61793A666C65787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572206C6162656C7B6D617267696E2D6C6566743A313070783B637572736F723A706F696E7465723B';
wwv_flow_api.g_varchar2_table(138) := '6C696E652D6865696768743A333270783B666F6E742D73697A653A313270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E66616B65436865636B626F787B6C696E65';
wwv_flow_api.g_varchar2_table(139) := '2D6865696768743A333270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D627574746F6E737B746578742D616C69676E3A72696768747D2E707265';
wwv_flow_api.g_varchar2_table(140) := '746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E706167696E6174696F6E4F6E6C79202E706167696E6174696F6E436F6E7461696E65727B746578742D616C69676E3A63656E7465727D';
wwv_flow_api.g_varchar2_table(141) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D';
wwv_flow_api.g_varchar2_table(142) := '6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E66617B746578742D616C69676E3A72696768743B666F6E742D73697A653A313270783B6C696E652D6865696768743A333070787D2E70726574';
wwv_flow_api.g_varchar2_table(143) := '6975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E707265767B6D617267696E2D72696768743A3570787D2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(144) := '6E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E6E6578747B6D617267696E2D6C6566743A3570787D2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(145) := '4C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465727B626F726465722D626F74746F6D3A31707820736F6C6964207267626128302C302C302C2E3035293B646973706C61793A666C65787D2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(146) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E65727B706F736974696F6E3A72656C61746976653B746578742D616C69676E3A6C6566747D2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(147) := '6E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E657220696E7075747B70616464696E673A3570783B6C696E652D6865696768743A313670783B77696474683A313030253B68';
wwv_flow_api.g_varchar2_table(148) := '65696768743A333270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E726F777350657250616765436F6E7461696E65722073656C6563747B70616464696E673A3570';
wwv_flow_api.g_varchar2_table(149) := '783B6C696E652D6865696768743A313670783B626F726465722D6C6566743A6E6F6E653B6865696768743A333270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E73';
wwv_flow_api.g_varchar2_table(150) := '6561726368436F6E7461696E65722E6D756C7469706C6520696E7075747B77696474683A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F';
wwv_flow_api.g_varchar2_table(151) := '6E7461696E6572202E66617B746F703A303B6C696E652D6865696768743A333070783B706F736974696F6E3A6162736F6C7574653B72696768743A313570783B6F7061636974793A2E353B666F6E742D73697A653A313470787D2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(152) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E6469767B746F703A303B6C696E652D6865696768743A333470783B706F736974696F6E3A6162736F6C7574653B72696768743A307D2E';
wwv_flow_api.g_varchar2_table(153) := '707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D7074797E6469763E2E7365617263682C2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(154) := '692D6469616C6F672E706F707570202E68656164657220696E7075747E6469763E2E636C6561727B6F7061636974793A2E353B646973706C61793A626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(155) := '2E706F707570202E686561646572202E636C6561727B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C6561723A686F7665727B';
wwv_flow_api.g_varchar2_table(156) := '6F7061636974793A317D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(157) := '70202E6865616465727B70616464696E673A3130707820313570787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465722E68696464656E2C2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(158) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E68696464656E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E2E686964';
wwv_flow_api.g_varchar2_table(159) := '64656E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E68696464656E447565546F46696C7465727B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(160) := '764974656D2E75692D6469616C6F672E706F707570202E752D5265706F72742D736F72742C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722074642E742D5265706F72742D63656C6C7B77';
wwv_flow_api.g_varchar2_table(161) := '686974652D73706163653A6E6F777261707D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074683A66697273742D6368696C642C2E70726574';
wwv_flow_api.g_varchar2_table(162) := '6975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074642E742D5265706F72742D63656C6C3A66697273742D6368696C642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(163) := '672E706F7075702074683A66697273742D6368696C647B77696474683A343270783B6D696E2D77696474683A343270783B6D61782D77696474683A343270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E';
wwv_flow_api.g_varchar2_table(164) := '706F707570207461626C652E737469636B79486561646572737B706F736974696F6E3A6162736F6C7574653B746F703A303B77696474683A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70';
wwv_flow_api.g_varchar2_table(165) := '7570207461626C652E737469636B79486561646572732074687B6261636B67726F756E643A236666663B706F736974696F6E3A72656C61746976657D2E686967686C696768747B6261636B67726F756E643A236666307D2E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(166) := '616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E7B6261636B67726F756E643A236633663366333B706F736974696F6E3A72656C61746976653B6D696E2D6865696768743A333070783B746578742D';
wwv_flow_api.g_varchar2_table(167) := '616C69676E3A63656E7465723B626F726465722D626F74746F6D3A31707820736F6C6964207267626128302C302C302C2E3035297D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F';
wwv_flow_api.g_varchar2_table(168) := '726D6174696F6E202E746578747B70616464696E672D746F703A3570783B70616464696E672D626F74746F6D3A3570783B6C696E652D6865696768743A323070783B666F6E742D73697A653A313270787D2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(169) := '6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73202E612D49636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469';
wwv_flow_api.g_varchar2_table(170) := '636B79486561646572732074682E69732D616374697665202E612D49636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D';
wwv_flow_api.g_varchar2_table(171) := '616374697665202E66612C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D61637469766520617B636F6C6F723A236666667D2E';
wwv_flow_api.g_varchar2_table(172) := '707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E732C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570';
wwv_flow_api.g_varchar2_table(173) := '207461626C652E737469636B79486561646572732074682E69732D6163746976657B6261636B67726F756E642D636F6C6F723A233465346534653B626F726465722D636F6C6F723A233465346534657D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(174) := '764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E737B706F736974696F6E3A6162736F6C7574653B746F703A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E';
wwv_flow_api.g_varchar2_table(175) := '706F707570202E66696C746572696E672C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E677B706F736974696F6E3A72656C61746976657D2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(176) := '6E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67202E66617B706F736974696F6E3A6162736F6C7574653B72696768743A3770783B746F703A3770783B636F6C6F723A236666663B6F7061636974793A2E35';
wwv_flow_api.g_varchar2_table(177) := '7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E6720617B646973706C61793A696E6C696E652D626C6F636B3B77696474683A6175746F3B70616464696E673A357078203130';
wwv_flow_api.g_varchar2_table(178) := '70787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E677B626F726465722D6C6566743A31707820736F6C69643B626F726465722D72696768743A31707820736F6C69643B62';
wwv_flow_api.g_varchar2_table(179) := '6F726465722D746F703A31707820736F6C69647D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E677B626F726465723A31707820736F6C69643B6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(180) := '3A233631363136317D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E6720696E7075747B626F726465723A303B6261636B67726F756E643A3020303B70616464696E673A';
wwv_flow_api.g_varchar2_table(181) := '3570783B77696474683A313030253B636F6C6F723A236666667D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65436865636B626F782C2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(182) := '4C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65526164696F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702E73656C656374566961526F77732074647B637572736F72';
wwv_flow_api.g_varchar2_table(183) := '3A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A636865636B65647E2E66612D646F742D636972636C652D6F2C2E7072657469';
wwv_flow_api.g_varchar2_table(184) := '75732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B6564297E2E66612D636972636C652D6F7B646973706C61793A696E6C696E652D626C6F63';
wwv_flow_api.g_varchar2_table(185) := '6B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F';
wwv_flow_api.g_varchar2_table(186) := '70757020696E7075745B747970653D726164696F5D3A636865636B65647E2E66612D636972636C652D6F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D72616469';
wwv_flow_api.g_varchar2_table(187) := '6F5D3A6E6F74283A636865636B6564297E2E66612D646F742D636972636C652D6F7B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D';
wwv_flow_api.g_varchar2_table(188) := '636865636B626F785D3A636865636B65647E2E66612D636865636B2D7371756172652D6F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A';
wwv_flow_api.g_varchar2_table(189) := '6E6F74283A636865636B6564297E2E66612D7371756172652D6F7B646973706C61793A696E6C696E652D626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F74657220696E';
wwv_flow_api.g_varchar2_table(190) := '7075745B747970653D636865636B626F785D7B706F736974696F6E3A66697865643B6F7061636974793A303B746F703A2D313070783B6C6566743A2D313070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(191) := '2E706F70757020696E7075745B747970653D636865636B626F785D3A636865636B65647E2E66612D7371756172652D6F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970';
wwv_flow_api.g_varchar2_table(192) := '653D636865636B626F785D3A6E6F74283A636865636B6564297E2E66612D636865636B2D7371756172652D6F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020746420696E7075745B74797065';
wwv_flow_api.g_varchar2_table(193) := '3D636865636B626F785D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020746820696E7075745B747970653D636865636B626F785D7B646973706C61793A6E6F6E657D2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(194) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(195) := '4974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286576656E292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(196) := '656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E657874726156616C75652074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(197) := '2E706F7075702074723A6E74682D6368696C64286F6464292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C7B6261636B67726F756E643A236666646664667D2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(198) := '6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E7468';
wwv_flow_api.g_varchar2_table(199) := '2D6368696C64286F6464292E73656C65637465642074642E742D5265706F72742D63656C6C7B6261636B67726F756E643A72676261283235352C3234392C302C2E3035293B746578742D736861646F773A302030202E3030317078207267626128302C30';
wwv_flow_api.g_varchar2_table(200) := '2C302C2E35297D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A686F766572202E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(201) := '4C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C7B6261636B67726F756E643A72676261283235352C3234392C302C2E31';
wwv_flow_api.g_varchar2_table(202) := '2921696D706F7274616E747D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C6C202E66616B65436865636B626F787B746578';
wwv_flow_api.g_varchar2_table(203) := '742D736861646F773A6E6F6E657D2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B7B77696474683A313030253B6865696768743A313030253B6D696E2D77696474683A6175746F21';
wwv_flow_api.g_varchar2_table(204) := '696D706F7274616E743B6D696E2D6865696768743A6175746F21696D706F7274616E747D2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65727B62';
wwv_flow_api.g_varchar2_table(205) := '6F726465722D636F6C6F723A7472616E73706172656E7421696D706F7274616E747D2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564202E6974656D436F6E7461';
wwv_flow_api.g_varchar2_table(206) := '696E65727B626F726465722D636F6C6F723A2364666466646621696D706F7274616E747D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F6479';
wwv_flow_api.g_varchar2_table(207) := '3E6469762E746167737B646973706C61793A666C65783B666C65782D777261703A6E6F777261703B6F766572666C6F773A68696464656E7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E657870616E646564202E697465';
wwv_flow_api.g_varchar2_table(208) := '6D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167737B666C65782D777261703A777261703B6F766572666C6F773A76697369626C657D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D6173';
wwv_flow_api.g_varchar2_table(209) := '6B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461677B646973706C61793A666C65783B6D61782D77696474683A313030253B626F726465723A31707820736F6C6964207267';
wwv_flow_api.g_varchar2_table(210) := '6261283231342C3231342C323134293B706F736974696F6E3A72656C61746976653B626F726465722D7261646975733A3670783B6261636B67726F756E643A72676261283231342C3231342C3231342C2E35293B666C65782D736872696E6B3A303B636F';
wwv_flow_api.g_varchar2_table(211) := '6C6F723A7267626128302C302C302C2E35293B2D7765626B69742D746F7563682D63616C6C6F75743A6E6F6E653B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6B68746D6C2D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D';
wwv_flow_api.g_varchar2_table(212) := '757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(213) := '3E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A686F7665727B626F726465722D636F6C6F723A236231623162317D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E6469736162';
wwv_flow_api.g_varchar2_table(214) := '6C6564202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A686F7665727B626F726465722D636F6C6F723A72676261283231342C3231342C323134293B6261636B67726F75';
wwv_flow_api.g_varchar2_table(215) := '6E643A72676261283231342C3231342C3231342C2E35297D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E646976';
wwv_flow_api.g_varchar2_table(216) := '2E7461672E73756D6D6172797B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167';
wwv_flow_api.g_varchar2_table(217) := '733E6469762E7461672E65787472617B6261636B67726F756E643A236666646664667D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E';
wwv_flow_api.g_varchar2_table(218) := '6469762E746167733E6469762E7461673E7370616E2E76616C75657B666C65782D736872696E6B3A313B666C65782D67726F773A313B746578742D6F766572666C6F773A656C6C69707369733B6F766572666C6F773A68696464656E7D2E707265746975';
wwv_flow_api.g_varchar2_table(219) := '732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76657B666C65782D736872696E6B3A30';
wwv_flow_api.g_varchar2_table(220) := '3B666C65782D67726F773A303B637572736F723A706F696E7465723B636F6C6F723A233030303B616C69676E2D73656C663A63656E7465727D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(60791269442043759)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_file_name=>'enhancedLovItem_18_1.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207E20627574746F6E207B0A20206F726465723A20343B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(2) := '656D202E64656275672C0A2E6974656D436F6E7461696E6572207E202E64656275674175746F636F6D706C657465207B0A20206F7061636974793A20302E353B0A7D0A0A2F2A206974656D206D61736B202A2F0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(3) := '65644C6F764974656D2E6D61736B207B0A20206D61782D77696474683A20313030253B0A2020646973706C61793A20666C65783B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A20206F726465723A20333B0A7D0A0A2E7072';
wwv_flow_api.g_varchar2_table(4) := '65746975732D2D656E68616E6365644C6F764974656D2E6D61736B3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(5) := '3B0A7D0A0A0A2F2A204974656D2064697361626C6564202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564203E206469762E6974656D436F6E7461696E6572207B0A2020637572736F723A206465';
wwv_flow_api.g_varchar2_table(6) := '6661756C743B0A7D0A0A2F2A204974656D20436F6E7461696E6572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0A2020626F726465723A2031707820736F';
wwv_flow_api.g_varchar2_table(7) := '6C6964207267626128302C302C302C2E313235293B0A20206D696E2D77696474683A203070783B0A2020666C65782D67726F773A20313B0A2020637572736F723A20746578743B0A2020706F736974696F6E3A2072656C61746976653B0A20206F766572';
wwv_flow_api.g_varchar2_table(8) := '666C6F773A2068696464656E3B0A7D0A0A20202F2A204974656D20436F6E7461696E657220426F6479202A2F0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E20';
wwv_flow_api.g_varchar2_table(9) := '6469762E6974656D436F6E7461696E6572426F6479207B0A202020206865696768743A20313030253B0A20207D0A0A202020202F2A206D61736B696E6720646976202A2F0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(10) := '61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479202E6D61736B696E67207B0A2020202020206261636B67726F756E643A2072676261283235352C3235352C3235352C30293B0A2020';
wwv_flow_api.g_varchar2_table(11) := '202020206261636B67726F756E643A202D6D6F7A2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0A202020202020';
wwv_flow_api.g_varchar2_table(12) := '6261636B67726F756E643A202D7765626B69742D6772616469656E74286C65667420746F702C20726967687420746F702C20636F6C6F722D73746F702830252C2072676261283235352C3235352C3235352C3029292C20636F6C6F722D73746F70283130';
wwv_flow_api.g_varchar2_table(13) := '30252C2072676261283235352C3235352C3235352C312929293B0A2020202020206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072';
wwv_flow_api.g_varchar2_table(14) := '676261283235352C3235352C3235352C31292031303025293B0A2020202020206261636B67726F756E643A202D6F2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235';
wwv_flow_api.g_varchar2_table(15) := '352C3235352C3235352C31292031303025293B0A2020202020206261636B67726F756E643A202D6D732D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C323535';
wwv_flow_api.g_varchar2_table(16) := '2C3235352C31292031303025293B0A2020202020206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C';
wwv_flow_api.g_varchar2_table(17) := '31292031303025293B0A20202020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E7428207374617274436F6C6F727374723D2723666666666666272C20656E64436F6C6F';
wwv_flow_api.g_varchar2_table(18) := '727374723D2723666666666666272C204772616469656E74547970653D3120293B0A202020202020706F736974696F6E3A206162736F6C7574653B0A202020202020746F703A203070783B0A20202020202072696768743A203070783B0A202020202020';
wwv_flow_api.g_varchar2_table(19) := '77696474683A20313070783B0A2020202020206865696768743A20313030253B0A202020207D0A0A20200A20202F2A20706C616365686F6C646572202A2F0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469';
wwv_flow_api.g_varchar2_table(20) := '762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0A202020206F7061636974793A20302E353B0A2020202077686974652D73706163653A206E6F777261703B0A20202020746578742D6F766572666C6F773A20656C';
wwv_flow_api.g_varchar2_table(21) := '6C69707369733B0A202020206F766572666C6F773A2068696464656E3B20200A20207D0A0A2F2A20737472656368206974656D2A2F0A2E742D466F726D2D2D73747265746368496E70757473202020202020202020202020202020202E70726574697573';
wwv_flow_api.g_varchar2_table(22) := '2D2D656E68616E6365644C6F764974656D2E6D61736B2C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D73747265746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0A2020666C65';
wwv_flow_api.g_varchar2_table(23) := '783A20313B20200A7D0A0A2F2A2064697361626C6564202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564207B0A20206F7061636974793A20302E353B20200A7D0A0A0A2F2A20636F6D6D6F6E20';
wwv_flow_api.g_varchar2_table(24) := '2A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D203E206469762E6974656D436F6E7461696E65722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742C0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(25) := '65644C6F764974656D2E70726F6D7074203E206469762E666978426F726465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E206469762E626F6479203E206469762E6C6F61644D6F7265207B0A2020626F72';
wwv_flow_api.g_varchar2_table(26) := '6465722D636F6C6F723A20726762283232332C203232332C20323233293B0A7D0A0A2F2A0A202070617374650A2A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F6479207B0A20206F766572666C6F773A20';
wwv_flow_api.g_varchar2_table(27) := '6175746F3B0A2020706F736974696F6E3A2072656C61746976653B0A202070616464696E673A203070783B0A20206D696E2D6865696768743A2032303670783B0A20206865696768743A2032303670783B0A20206D61782D6865696768743A2032303670';
wwv_flow_api.g_varchar2_table(28) := '783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465207465787461726561207B0A202070616464696E673A20313070783B0A2020726573697A653A206E6F6E653B0A202077696474683A20313030253B0A202068';
wwv_flow_api.g_varchar2_table(29) := '65696768743A2032303670783B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465723A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F64792E73756D6D6172';
wwv_flow_api.g_varchar2_table(30) := '79207461626C652074643A6C6173742D6368696C64207B0A2020666F6E742D7765696768743A20626F6C643B0A2020746578742D616C69676E3A2072696768743B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465';
wwv_flow_api.g_varchar2_table(31) := '202E626F6479207461626C652074723A6C6173742D6368696C64207464207B0A2020626F726465722D626F74746F6D3A206E6F6E652021696D706F7274616E743B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(32) := '4974656D2E7061737465202E666F6F746572207B0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C302C302E3035293B0A2020646973706C61793A20666C65783B0A2020666C65782D646972656374696F6E3A20726F';
wwv_flow_api.g_varchar2_table(33) := '773B0A202070616464696E673A203130707820313570783B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C6566742C0A2E75692D6469616C6F672E70726574';
wwv_flow_api.g_varchar2_table(34) := '6975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E7269676874207B0A2020666C65782D67726F773A20313B0A2020646973706C61793A20666C65783B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D';
wwv_flow_api.g_varchar2_table(35) := '656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C656674207B0A20206A7573746966792D636F6E74656E743A20666C65782D73746172743B0A7D0A0A2E75692D6469616C6F672E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(36) := '4C6F764974656D2E7061737465202E666F6F746572202E7269676874207B0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0A7D0A0A2F2A20666C6F6174696E672074656D706C61746520737570706F7274202A2F0A2E742D466F';
wwv_flow_api.g_varchar2_table(37) := '726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_api.g_varchar2_table(38) := '6E65722D2D666C6F6174696E674C6162656C20202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C';
wwv_flow_api.g_varchar2_table(39) := '6162656C20202020202020202020202E706C616365686F6C646572207B0A20206D617267696E2D746F703A20323470783B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669';
wwv_flow_api.g_varchar2_table(40) := '656C64436F6E7461696E65722D2D6C617267652E69732D61637469766520202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_api.g_varchar2_table(41) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F';
wwv_flow_api.g_varchar2_table(42) := '6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652020202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C';
wwv_flow_api.g_varchar2_table(43) := '0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C6172676520202020202020202020202E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(44) := '4974656D2E6D61736B202E746167732C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C20202020202020202020202E706C616365686F6C646572207B0A20206D617267696E2D746F703A20323470783B0A';
wwv_flow_api.g_varchar2_table(45) := '7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D';
wwv_flow_api.g_varchar2_table(46) := '6C6162656C436F6E7461696E6572206C6162656C207B0A202070616464696E672D746F703A203670783B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E67';
wwv_flow_api.g_varchar2_table(47) := '4C6162656C202E6974656D436F6E7461696E6572207B0A202070616464696E672D6C6566743A203870783B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_api.g_varchar2_table(48) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C6172676520202E6974656D436F6E7461696E65722C0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D66';
wwv_flow_api.g_varchar2_table(49) := '6C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572207B0A202070616464696E672D6C6566743A20313270783B0A7D0A0A2F2A0A20206572726F7220706F7075';
wwv_flow_api.g_varchar2_table(50) := '700A2A2F0A0A2E66612E6572726F72207B0A2020636F6C6F723A207265643B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F722C0A2E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(51) := '644C6F764974656D2E6572726F72202E636F6E7461696E6572207B0A202070616464696E673A20313570783B0A20206F766572666C6F773A206175746F3B0A7D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(52) := '202E616A61784572726F72202E6572726F72207B0A202077686974652D73706163653A207072653B20200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72207072652C0A2E70';
wwv_flow_api.g_varchar2_table(53) := '7265746975732D2D656E68616E6365644C6F764974656D2E6572726F72207072657B0A202070616464696E673A20313570783B0A2020626F726465723A2031707820736F6C6964207267626128302C302C302C302E33293B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(54) := '643A207267626128302C302C302C302E3038293B3B0A2020626F726465722D7261646975733A203570783B0A20206F766572666C6F772D783A206175746F3B0A7D0A0A0A2F2A202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(55) := '6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A2020666F6E742D73697A653A2030';
wwv_flow_api.g_varchar2_table(56) := '2E36323572656D3B0A202070616464696E672D6C6566743A20302E31323572656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20436F6E7461696E6572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61';
wwv_flow_api.g_varchar2_table(57) := '736B203E206469762E6974656D436F6E7461696E6572207B0A202070616464696E673A203020302E31323572656D20302E31323572656D20302E31323572656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167206D617267696E';
wwv_flow_api.g_varchar2_table(58) := '2A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C617374';
wwv_flow_api.g_varchar2_table(59) := '2D6368696C6429207B0A20206D617267696E2D72696768743A20302E31323572656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E20';
wwv_flow_api.g_varchar2_table(60) := '6469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0A202070616464696E673A203020302E3331323572656D203020302E3331323572656D3B';
wwv_flow_api.g_varchar2_table(61) := '0A20206D617267696E2D746F703A20302E31323572656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C74202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(62) := '656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E20';
wwv_flow_api.g_varchar2_table(63) := '6469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0A2020666F6E742D73697A653A20302E373572656D3B0A7D0A0A2F2A2053697A6573202F2064656661756C';
wwv_flow_api.g_varchar2_table(64) := '74202F20746167202F2076616C75652C2072656D6F7665202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F64';
wwv_flow_api.g_varchar2_table(65) := '79203E206469762E74616773203E206469762E746167203E207370616E2E76616C75652C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F';
wwv_flow_api.g_varchar2_table(66) := '6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A20206C696E652D6865696768743A203172656D3B0A7D0A0A0A2F2A2053697A6573202F206C61726765202F20746167206D6172';
wwv_flow_api.g_varchar2_table(67) := '67696E2A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F';
wwv_flow_api.g_varchar2_table(68) := '6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0A20206D617267696E2D72696768743A20302E3272656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20436F6E7461696E6572202A';
wwv_flow_api.g_varchar2_table(69) := '2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0A202070616464696E673A203020302E';
wwv_flow_api.g_varchar2_table(70) := '31323572656D20302E31323572656D20302E31323572656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(71) := '6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0A202070616464696E673A203020302E3331';
wwv_flow_api.g_varchar2_table(72) := '323572656D203020302E3331323572656D3B0A20206D617267696E2D746F703A20302E31323572656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(73) := '2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0A202070616464';
wwv_flow_api.g_varchar2_table(74) := '696E673A20302E33373572656D2030203020302E323572656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_api.g_varchar2_table(75) := '2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_api.g_varchar2_table(76) := '2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E74';
wwv_flow_api.g_varchar2_table(77) := '6167203E207370616E2E76616C7565207B0A2020666F6E742D73697A653A20302E38373572656D3B0A7D0A0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C2072656D6F7665202A2F0A2E742D466F726D2D6669656C6443';
wwv_flow_api.g_varchar2_table(78) := '6F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E746167';
wwv_flow_api.g_varchar2_table(79) := '73203E206469762E746167203E207370616E2E76616C75652C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E';
wwv_flow_api.g_varchar2_table(80) := '7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A20206C696E652D6865696768743A20312E3572656D3B0A7D0A0A2F2A2053697A';
wwv_flow_api.g_varchar2_table(81) := '6573202F206C61726765202F20746167206D617267696E2A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E';
wwv_flow_api.g_varchar2_table(82) := '6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0A20206D617267696E2D72696768743A20302E323572656D3B0A7D0A0A2F2A2053697A6573';
wwv_flow_api.g_varchar2_table(83) := '202F20786C61726765202F20436F6E7461696E6572202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E';
wwv_flow_api.g_varchar2_table(84) := '7461696E6572207B0A202070616464696E673A203020302E323572656D20302E323572656D20302E323572656D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20746167202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_api.g_varchar2_table(85) := '2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E';
wwv_flow_api.g_varchar2_table(86) := '746167207B0A202070616464696E673A203020302E3331323572656D203020302E3331323572656D3B0A20206D617267696E2D746F703A20302E323572656D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20746167202F2076616C75652C';
wwv_flow_api.g_varchar2_table(87) := '20706C616365686F6C646572202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E20';
wwv_flow_api.g_varchar2_table(88) := '6469762E706C616365686F6C646572207B0A202070616464696E673A20302E3572656D2030203020302E33373572656D3B0A7D0A0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(89) := '65644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(90) := '6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0A2020666F';
wwv_flow_api.g_varchar2_table(91) := '6E742D73697A653A203172656D3B0A7D0A0A2F2A2053697A6573202F20786C61726765202F20746167202F2076616C75652C2072656D6F7665202A2F0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E70726574697573';
wwv_flow_api.g_varchar2_table(92) := '2D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C7565';
wwv_flow_api.g_varchar2_table(93) := '2C0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E746169';
wwv_flow_api.g_varchar2_table(94) := '6E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A20206C696E652D6865696768743A20312E3638373572656D3B0A7D0A0A0A2F2A0A2020456C656D656E743A2070726F6D70740A2A2F0A2E';
wwv_flow_api.g_varchar2_table(95) := '707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0A2020626F726465722D636F6C6F723A207267626128302C302C302C302E313235293B0A2020706F736974696F6E3A206162736F6C7574653B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(96) := '756E643A20236666663B0A20207A2D696E6465783A203430303B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742E68696464656E207B0A2020646973706C61793A206E6F6E653B0A7D0A0A0A2E7072657469';
wwv_flow_api.g_varchar2_table(97) := '75732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75202E6661207B0A2020666F6E742D73697A653A20313270783B0A20206C696E652D6865696768743A20313270783B0A7D0A0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(98) := '65644C6F764974656D2E70726F6D7074203E202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E752C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(99) := '7074203E202E626F6479207B0A2020626F726465722D636F6C6F723A20696E68657269743B0A2020626F726465722D77696474683A203170783B0A2020626F726465722D7374796C653A20736F6C69643B0A7D0A0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(100) := '6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75207B0A202070616464696E673A20302E323572656D3B0A7D0A0A2E70726574';
wwv_flow_api.g_varchar2_table(101) := '6975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E752C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(102) := '6F764974656D2E70726F6D7074203E202E626F6479207B0A2020626F726465722D746F703A206E6F6E653B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572207B0A2020706F736974';
wwv_flow_api.g_varchar2_table(103) := '696F6E3A2072656C61746976653B0A2020646973706C61793A20666C65783B0A0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572203E202E6661207B0A2020616C69676E2D73656C663A';
wwv_flow_api.g_varchar2_table(104) := '2063656E7465723B0A2020666F6E742D73697A653A20302E3831323572656D3B0A2020666C65782D736872696E6B3A20303B0A2020666C65782D67726F773A20303B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(105) := '7074203E202E686561646572203E20696E707574207B0A2020626F726465723A206E6F6E653B0A20206F75746C696E653A206E6F6E653B0A20206D617267696E2D72696768743A20302E323572656D3B0A2020666C65782D67726F773A20313B0A202066';
wwv_flow_api.g_varchar2_table(106) := '6C65782D736872696E6B3A20303B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0A20206F766572666C6F773A206175746F3B0A7D0A0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(107) := '4C6F764974656D2E70726F6D7074202E666978426F72646572207B0A2020646973706C61793A206E6F6E653B0A2020626F726465722D746F702D77696474683A203170783B0A2020626F726465722D746F702D7374796C653A20736F6C69643B0A202062';
wwv_flow_api.g_varchar2_table(108) := '6F726465722D636F6C6F723A207267626128302C302C302C2E313235293B0A20206865696768743A203070783B0A202077696474683A20353070783B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203070783B0A2020726967';
wwv_flow_api.g_varchar2_table(109) := '68743A203070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E672C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F75';
wwv_flow_api.g_varchar2_table(110) := '6E64207B0A2020746578742D616C69676E3A2063656E7465723B0A202070616464696E673A203670783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E69636F6E2C0A2E7072';
wwv_flow_api.g_varchar2_table(111) := '65746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E746578742C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E69636F6E2C';
wwv_flow_api.g_varchar2_table(112) := '0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E74657874207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(113) := '6D2E70726F6D707420756C207B0A20206C6973742D7374796C653A206E6F6E653B0A20206D617267696E3A20303B0A2020706F736974696F6E3A2072656C61746976653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7072';
wwv_flow_api.g_varchar2_table(114) := '6F6D707420756C206C692E637573746F6D207B0A202070616464696E673A203072656D3B0A2020637572736F723A20706F696E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E6465';
wwv_flow_api.g_varchar2_table(115) := '6661756C74207B0A202070616464696E673A20302E3138373572656D3B0A20206F766572666C6F773A2068696464656E3B0A2020746578742D6F766572666C6F773A20656C6C69707369733B0A2020637572736F723A20706F696E7465723B0A7D0A0A0A';
wwv_flow_api.g_varchar2_table(116) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B61';
wwv_flow_api.g_varchar2_table(117) := '7269612D73656C65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B61726961';
wwv_flow_api.g_varchar2_table(118) := '2D686967686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B61726961';
wwv_flow_api.g_varchar2_table(119) := '2D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D686967686C6967687465643D2274727565225D2C0A2E7072657469';
wwv_flow_api.g_varchar2_table(120) := '75732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C743A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D';
wwv_flow_api.g_varchar2_table(121) := '73656C65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D6869';
wwv_flow_api.g_varchar2_table(122) := '67686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D68';
wwv_flow_api.g_varchar2_table(123) := '6967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0A20206261636B';
wwv_flow_api.g_varchar2_table(124) := '67726F756E643A20236535653565353B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D3A686F7665722C0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(125) := '65644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(126) := '707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(127) := '6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(128) := '6E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70';
wwv_flow_api.g_varchar2_table(129) := '7420756C206C693A6C6173742D6368696C642E64656661756C743A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C';
wwv_flow_api.g_varchar2_table(130) := '65637465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D';
wwv_flow_api.g_varchar2_table(131) := '5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65';
wwv_flow_api.g_varchar2_table(132) := '637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269';
wwv_flow_api.g_varchar2_table(133) := '612D686967686C6967687465643D2274727565225D207B0A20202D7765626B69742D626F782D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0A20202D6D6F7A2D626F78';
wwv_flow_api.g_varchar2_table(134) := '2D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0A2020626F782D736861646F773A20696E73657420307078202D313970782031357078202D3135707820726762612830';
wwv_flow_api.g_varchar2_table(135) := '2C302C302C302E31293B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D2C0A2E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(136) := '644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D207B0A20202F2A746578742D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B';
wwv_flow_api.g_varchar2_table(137) := '2A2F0A20202F2A626F726465722D72696768743A2031707820736F6C696420236563663366663B2A2F0A20206261636B67726F756E643A20236632663266323B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70';
wwv_flow_api.g_varchar2_table(138) := '74202E6D656E75202E76696577202E636F6C6C6170736564207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E657870616E6465';
wwv_flow_api.g_varchar2_table(139) := '64207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870616E646564202E636F6C6C6170736564207B0A2020646973706C';
wwv_flow_api.g_varchar2_table(140) := '61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870616E646564202E657870616E646564207B0A2020646973706C61793A206E6F6E653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(141) := '2F2A2064656661756C7420736F7274207374617465202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E64657363207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(142) := '707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E617363207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2F2A20736F72746564207374617465202A2F0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(143) := '656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E646573632C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E617363';
wwv_flow_api.g_varchar2_table(144) := '207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E6173632C0A2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(145) := '4974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E64657363207B0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F726520';
wwv_flow_api.g_varchar2_table(146) := '7B0A202070616464696E673A203270783B0A2020746578742D7472616E73666F726D3A207570706572636173653B0A2020746578742D616C69676E3A2063656E7465723B0A2020666F6E742D73697A653A203730253B0A20206C65747465722D73706163';
wwv_flow_api.g_varchar2_table(147) := '696E673A203170783B0A2020626F726465722D746F702D77696474683A203170783B0A2020626F726465722D746F702D7374796C653A20736F6C69643B0A2020626F726465722D746F702D636F6C6F723A20696E68657269743B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(148) := '756E643A207267626128302C302C302C302E3034293B20200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F72652061207B0A2020636F6C6F723A207267626128302C302C302C302E37293B';
wwv_flow_api.g_varchar2_table(149) := '0A2020746578742D736861646F773A202D317078202D3170782030707820726762283235352C203235352C203235352C20302E35293B0A7D0A0A0A2F2A0A2020456C656D656E743A2070726F6D70740A20206465736372697074696F6E3A206669782066';
wwv_flow_api.g_varchar2_table(150) := '6F72206974656D20656D626564656420696E20696E6C696E65206469616C6F670A2A2F0A0A2E742D4469616C6F67526567696F6E2D626F6479202E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0A2020706F736974';
wwv_flow_api.g_varchar2_table(151) := '696F6E3A2066697865643B0A7D0A0A0A2F2A0A2020456C656D656E743A20706F7075700A20206465736372697074696F6E3A2066697820666F72206974656D20656D626564656420696E20696E6C696E65206469616C6F670A2A2F0A0A2F2A20706F7075';
wwv_flow_api.g_varchar2_table(152) := '70202F20626F6479202A2F0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479207B0A20206F766572666C6F773A206175746F3B0A2020706F736974696F6E3A2072656C61746976';
wwv_flow_api.g_varchar2_table(153) := '653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74734D61736B207B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(154) := '653B0A202077696474683A20313030253B0A20206865696768743A20313030253B0A20206261636B67726F756E643A20236666663B0A20206F7061636974793A20302E363B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(155) := '692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473207B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469';
wwv_flow_api.g_varchar2_table(156) := '616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F';
wwv_flow_api.g_varchar2_table(157) := '72526573756C7473207B0A202070616464696E673A203230707820303B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E736561726368696E672C0A2E70726574697573';
wwv_flow_api.g_varchar2_table(158) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E6E6F64617461666F756E64207B0A2020646973706C61793A20666C65783B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A2020';
wwv_flow_api.g_varchar2_table(159) := '70616464696E673A203070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74732C0A2E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(160) := '616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572207B0A2020616C69676E2D73656C663A2063656E7465723B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(161) := '723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C747320202E69636F6E203E202E6661202C0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(162) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E69636F6E203E202E6661207B0A2020666F6E742D73697A653A2031303070783B0A7D0A0A2E7072';
wwv_flow_api.g_varchar2_table(163) := '65746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473202E746578742C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(164) := '692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E74657874207B0A202070616464696E672D746F703A20313070783B0A2020666F6E742D73697A653A20313470783B0A20206C696E652D6865';
wwv_flow_api.g_varchar2_table(165) := '696768743A20323070783B0A7D0A0A2F2A20706F707570202F20666F6F746572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F775365';
wwv_flow_api.g_varchar2_table(166) := '6C65637465642E696E616374697665207B0A20206F7061636974793A20302E353B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753';
wwv_flow_api.g_varchar2_table(167) := '656C65637465642C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D627574746F6E73207B0A2020666C65782D736872696E6B3A20313B0A2020666C65';
wwv_flow_api.g_varchar2_table(168) := '782D67726F773A20313B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572207B0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C30';
wwv_flow_api.g_varchar2_table(169) := '2C302E3035293B0A2020646973706C61793A20666C65783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572206C6162656C207B0A20206D617267696E2D6C6566743A';
wwv_flow_api.g_varchar2_table(170) := '20313070783B0A2020637572736F723A20706F696E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572206C6162656C207B0A20206C696E652D686569676874';
wwv_flow_api.g_varchar2_table(171) := '3A20333270783B0A2020666F6E742D73697A653A20313270783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E66616B65436865636B626F78207B0A20206C69';
wwv_flow_api.g_varchar2_table(172) := '6E652D6865696768743A20333270783B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D627574746F6E73207B0A2020746578742D616C6967';
wwv_flow_api.g_varchar2_table(173) := '6E3A2072696768743B0A7D0A0A2F2A20706F707570202F20686561646572202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E706167696E6174696F6E4F6E6C79202E';
wwv_flow_api.g_varchar2_table(174) := '706167696E6174696F6E436F6E7461696E6572207B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E7061';
wwv_flow_api.g_varchar2_table(175) := '67696E6174696F6E436F6E7461696E6572202E66612C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572207B0A20207465';
wwv_flow_api.g_varchar2_table(176) := '78742D616C69676E3A2072696768743B0A2020666F6E742D73697A653A20313270783B0A20206C696E652D6865696768743A20333070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(177) := '70202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E70726576207B0A20206D617267696E2D72696768743A203570783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(178) := '6F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E6E657874207B0A20206D617267696E2D6C6566743A203570783B200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(179) := '672E706F707570202E686561646572207B0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B0A2020646973706C61793A20666C65783B0A7D0A0A0A0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(180) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572203E20646976207B0A2020666C65782D736872696E6B3A20313B0A2020666C65782D67726F773A20313B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(181) := '6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E6572207B0A2020706F736974696F6E3A2072656C61746976653B0A2020746578742D616C69676E3A206C6566743B0A7D0A0A2E70726574';
wwv_flow_api.g_varchar2_table(182) := '6975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E657220696E707574207B0A202070616464696E673A203570783B0A20206C696E652D6865696768743A';
wwv_flow_api.g_varchar2_table(183) := '20313670783B0A202077696474683A20313030253B0A20206865696768743A20333270783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E726F777350657250';
wwv_flow_api.g_varchar2_table(184) := '616765436F6E7461696E65722073656C656374207B0A202070616464696E673A203570783B0A20206C696E652D6865696768743A20313670783B0A2020626F726465722D6C6566743A206E6F6E653B0A20206865696768743A20333270783B0A7D0A0A0A';
wwv_flow_api.g_varchar2_table(185) := '0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E65722E6D756C7469706C6520696E707574207B0A202077696474683A20313030253B0A';
wwv_flow_api.g_varchar2_table(186) := '7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E6572202E6661207B0A2020746F703A203070783B0A20206C696E652D6865696768';
wwv_flow_api.g_varchar2_table(187) := '743A20333070783B0A2020706F736974696F6E3A206162736F6C7574653B0A202072696768743A20313570783B0A20206F7061636974793A20302E353B0A2020666F6E742D73697A653A20313470783B0A7D0A0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(188) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E202E7365617263682C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572';
wwv_flow_api.g_varchar2_table(189) := '20696E7075742E656D707479207E202E636C656172207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E';
wwv_flow_api.g_varchar2_table(190) := '656D707479207E202E7365617263682C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E202E636C656172207B0A2020646973706C61793A20626C6F636B';
wwv_flow_api.g_varchar2_table(191) := '3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E20646976207B0A2020746F703A203070783B0A20206C696E652D6865696768743A2033347078';
wwv_flow_api.g_varchar2_table(192) := '3B0A2020706F736974696F6E3A206162736F6C7574653B0A202072696768743A203070783B0A20200A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E70757420';
wwv_flow_api.g_varchar2_table(193) := '7E20646976203E202E7365617263682C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E20646976203E202E636C656172207B0A20206469';
wwv_flow_api.g_varchar2_table(194) := '73706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E20646976203E202E7365617263682C0A2E70726574';
wwv_flow_api.g_varchar2_table(195) := '6975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E20646976203E202E636C656172207B0A20206F7061636974793A20302E353B0A2020646973706C61793A20626C6F636B';
wwv_flow_api.g_varchar2_table(196) := '3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C656172207B0A2020637572736F723A20706F696E7465723B0A7D0A0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(197) := '6E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C6561723A686F766572207B0A20206F7061636974793A20313B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(198) := '6C6F672E706F707570202E6865616465722C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572207B0A202070616464696E673A203130707820313570783B0A7D0A0A2E707265';
wwv_flow_api.g_varchar2_table(199) := '746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E68696464656E2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F';
wwv_flow_api.g_varchar2_table(200) := '7465722E68696464656E207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E752D5265706F72742D736F7274207B0A202077686974652D';
wwv_flow_api.g_varchar2_table(201) := '73706163653A206E6F777261703B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074683A66697273742D6368696C642C0A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(202) := '6D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074683A66697273742D6368696C642C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074642E74';
wwv_flow_api.g_varchar2_table(203) := '2D5265706F72742D63656C6C3A66697273742D6368696C64207B0A202077696474683A20343270783B0A20206D696E2D77696474683A20343270783B0A20206D61782D77696474683A20343270783B0A7D0A0A2E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(204) := '644C6F764974656D2E75692D6469616C6F672E706F707570207468207B0A2020626F726465722D746F703A6E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E';
wwv_flow_api.g_varchar2_table(205) := '737469636B794865616465727320207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203070783B0A202077696474683A20313030253B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469';
wwv_flow_api.g_varchar2_table(206) := '616C6F672E706F707570207461626C652E737469636B7948656164657273207468207B0A20206261636B67726F756E643A20236666663B0A2020706F736974696F6E3A2072656C61746976653B0A7D0A0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(207) := '6F764974656D2E75692D6469616C6F672E706F7075702074722E68696464656E447565546F46696C746572207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E686967686C69676874207B0A20206261636B67726F756E643A2079656C6C6F773B';
wwv_flow_api.g_varchar2_table(208) := '0A7D0A0A0A2F2A20696E666F726D6174696F6E20726567696F6E202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E2E68696464656E207B0A202064697370';
wwv_flow_api.g_varchar2_table(209) := '6C61793A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E207B0A20206261636B67726F756E643A20236633663366333B0A2020706F7369';
wwv_flow_api.g_varchar2_table(210) := '74696F6E3A2072656C61746976653B0A20206D696E2D6865696768743A20333070783B0A2020746578742D616C69676E3A2063656E7465723B0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035';
wwv_flow_api.g_varchar2_table(211) := '293B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E202E74657874207B0A202070616464696E672D746F703A203570783B0A202070616464696E672D62';
wwv_flow_api.g_varchar2_table(212) := '6F74746F6D3A203570783B0A20206C696E652D6865696768743A20323070783B0A2020666F6E742D73697A653A20313270783B0A7D0A0A2F2A20636F6C756D6E2066696C746572696E6720616E6420736F7274696E67202A2F0A0A2E707265746975732D';
wwv_flow_api.g_varchar2_table(213) := '2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D616374697665202E612D49636F6E2C200A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(214) := '6D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D616374697665202E6661207B0A2020636F6C6F723A20236666663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(215) := '2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D6163746976652C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E';
wwv_flow_api.g_varchar2_table(216) := '4F7065726174696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20233465346534653B0A2020626F726465722D636F6C6F723A20233465346534653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D64';
wwv_flow_api.g_varchar2_table(217) := '69616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D6163746976652061207B0A2020636F6C6F723A20236666663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(218) := '6F672E706F707570202E636F6C756D6E4F7065726174696F6E73207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(219) := '672E706F707570202E636F6C756D6E4F7065726174696F6E73202E612D49636F6E207B0A2020636F6C6F723A20236666663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F72';
wwv_flow_api.g_varchar2_table(220) := '74696E672C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67207B0A2020706F736974696F6E3A2072656C61746976653B0A7D0A0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(221) := '6E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67202E6661207B0A2020706F736974696F6E3A206162736F6C7574653B0A202072696768743A203770783B0A2020746F703A203770783B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(222) := '3A20236666663B0A20206F7061636974793A20302E353B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E672061207B0A2020646973706C61793A20696E6C696E652D';
wwv_flow_api.g_varchar2_table(223) := '626C6F636B3B0A202077696474683A206175746F3B0A202070616464696E673A2035707820313070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E67207B0A20';
wwv_flow_api.g_varchar2_table(224) := '20626F726465722D6C6566743A2031707820736F6C69643B0A2020626F726465722D72696768743A2031707820736F6C69643B0A2020626F726465722D746F703A2031707820736F6C69643B0A0A7D0A0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(225) := '6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67207B0A2020626F726465723A2031707820736F6C69643B20200A20206261636B67726F756E643A20233631363136313B0A7D0A0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(226) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E6720696E707574207B0A2020626F726465723A206E6F6E653B0A20206261636B67726F756E643A207472616E73706172656E743B0A202070616464696E673A20';
wwv_flow_api.g_varchar2_table(227) := '3570783B0A202077696474683A20313030253B0A2020636F6C6F723A20236666663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65526164696F2C0A2E70726574697573';
wwv_flow_api.g_varchar2_table(228) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65436865636B626F78207B0A2020637572736F723A20706F696E7465723B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7569';
wwv_flow_api.g_varchar2_table(229) := '2D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D636972636C652D6F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F';
wwv_flow_api.g_varchar2_table(230) := '70757020696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D646F742D636972636C652D6F207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(231) := '4974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A';
wwv_flow_api.g_varchar2_table(232) := '636865636B6564207E202E66612D636972636C652D6F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E20';
wwv_flow_api.g_varchar2_table(233) := '2E66612D646F742D636972636C652D6F207B0A2020646973706C61793A206E6F6E653B0A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F';
wwv_flow_api.g_varchar2_table(234) := '785D3A6E6F74283A636865636B656429207E202E66612D7371756172652D6F2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A63686563';
wwv_flow_api.g_varchar2_table(235) := '6B6564207E202E66612D636865636B2D7371756172652D6F207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2F2A206861636B20746F206D616B65206C6162656C20616E6420636865636B626F7820776F726B2C2062757420';
wwv_flow_api.g_varchar2_table(236) := '6E6F7420746F2073686F7720636865636B626F7820697473656C662A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F74657220696E7075745B747970653D636865636B626F785D';
wwv_flow_api.g_varchar2_table(237) := '207B0A2020706F736974696F6E3A2066697865643B0A20206F7061636974793A20303B0A2020746F703A202D313070783B0A20206C6566743A202D313070783B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(238) := '6C6F672E706F70757020746820696E7075745B747970653D636865636B626F785D2C0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020746420696E7075745B747970653D636865636B626F785D';
wwv_flow_api.g_varchar2_table(239) := '2C0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A636865636B6564207E202E66612D7371756172652D6F2C0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(240) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B656429207E202E66612D636865636B2D7371756172652D6F207B0A2020646973706C61793A';
wwv_flow_api.g_varchar2_table(241) := '206E6F6E653B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0A';
wwv_flow_api.g_varchar2_table(242) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286576656E292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C0A2E';
wwv_flow_api.g_varchar2_table(243) := '707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0A2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(244) := '68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C207B0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(245) := '20236666646664663B0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722074642E742D5265706F72742D63656C6C207B0A202077686974652D73706163653A206E6F777261703B20';
wwv_flow_api.g_varchar2_table(246) := '200A7D0A0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E73656C65637465642074642E742D5265706F72742D63656C6C2C0A2E707265746975';
wwv_flow_api.g_varchar2_table(247) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C6C207B0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E';
wwv_flow_api.g_varchar2_table(248) := '3035293B0A2020746578742D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B0A0A7D0A0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73';
wwv_flow_api.g_varchar2_table(249) := '656C65637465643A686F766572202E742D5265706F72742D63656C6C2C200A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A6E74682D6368696C64286F6464293A';
wwv_flow_api.g_varchar2_table(250) := '686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E31292021696D706F7274616E743B200A7D0A0A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(251) := '6D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C6C202E66616B65436865636B626F78207B0A2020746578742D736861646F773A206E6F6E653B0A7D0A0A2E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(252) := '616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702E73656C656374566961526F7773207464207B0A2020637572736F723A20706F696E7465723B0A7D0A0A2F2A20494720737570706F7274202A2F0A2E612D47562D636F6C756D6E49';
wwv_flow_api.g_varchar2_table(253) := '74656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0A202077696474683A20313030253B0A20206865696768743A20313030253B0A20206D696E2D77696474683A206175746F21696D706F7274616E743B0A20206D';
wwv_flow_api.g_varchar2_table(254) := '696E2D6865696768743A206175746F21696D706F7274616E743B0A7D0A0A2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572207B0A2020626F72';
wwv_flow_api.g_varchar2_table(255) := '6465722D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0A7D0A0A2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564202E6974656D43';
wwv_flow_api.g_varchar2_table(256) := '6F6E7461696E6572207B0A2020626F726465722D636F6C6F723A20726762283232332C203232332C20323233292021696D706F7274616E743B0A7D0A0A2F2A2074616773202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61';
wwv_flow_api.g_varchar2_table(257) := '736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0A2020646973706C61793A20666C65783B0A2020666C65782D777261703A206E6F777261703B0A20206F766572666C6F77';
wwv_flow_api.g_varchar2_table(258) := '3A2068696464656E3B0A7D0A0A2F2A206D61736B20657870616E646564202A2F0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E657870616E646564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461';
wwv_flow_api.g_varchar2_table(259) := '696E6572426F6479203E206469762E74616773207B0A2020666C65782D777261703A20777261703B200A20206F766572666C6F773A2076697369626C653B0A7D0A0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E';
wwv_flow_api.g_varchar2_table(260) := '6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A20206469762E74616773203E206469762E746167207B0A202020202F2A646973706C61793A20696E6C696E652D626C6F636B3B2A2F0A2020202064697370';
wwv_flow_api.g_varchar2_table(261) := '6C61793A20666C65783B0A202020206D61782D77696474683A20313030253B0A20202020626F726465723A2031707820736F6C69642072676261283231342C3231342C323134293B0A20202020706F736974696F6E3A2072656C61746976653B0A202020';
wwv_flow_api.g_varchar2_table(262) := '20626F726465722D7261646975733A203670783B0A202020206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B0A20202020666C65782D736872696E6B3A20303B0A20202020636F6C6F723A207267626128302C30';
wwv_flow_api.g_varchar2_table(263) := '2C302C302E35293B0A202020202D7765626B69742D746F7563682D63616C6C6F75743A206E6F6E653B202F2A20694F5320536166617269202A2F0A2020202020202D7765626B69742D757365722D73656C6563743A206E6F6E653B202F2A205361666172';
wwv_flow_api.g_varchar2_table(264) := '69202A2F0A202020202020202D6B68746D6C2D757365722D73656C6563743A206E6F6E653B202F2A204B6F6E717565726F722048544D4C202A2F0A2020202020202020202D6D6F7A2D757365722D73656C6563743A206E6F6E653B202F2A204669726566';
wwv_flow_api.g_varchar2_table(265) := '6F78202A2F0A202020202020202020202D6D732D757365722D73656C6563743A206E6F6E653B202F2A20496E7465726E6574204578706C6F7265722F45646765202A2F0A2020202020202020202020202020757365722D73656C6563743A206E6F6E653B';
wwv_flow_api.g_varchar2_table(266) := '202F2A204E6F6E2D70726566697865642076657273696F6E2C2063757272656E746C790A202020202020202020202020202020202020202020202020202020202020202020202020737570706F72746564206279204368726F6D6520616E64204F706572';
wwv_flow_api.g_varchar2_table(267) := '61202A2F20200A20207D0A0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A202020206469762E74616773203E';
wwv_flow_api.g_varchar2_table(268) := '206469762E7461673A686F766572207B0A202020202020626F726465722D636F6C6F723A20236231623162313B0A202020207D0A0A202020202F2A206D61736B2064697361626C6564202A2F0A202020202E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(269) := '6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A202020206469762E74616773203E206469762E7461673A686F766572207B0A202020202020626F72';
wwv_flow_api.g_varchar2_table(270) := '6465722D636F6C6F723A2072676261283231342C3231342C323134293B0A2020202020206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B20200A202020207D0A0A0A202020202E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(271) := '6E6365644C6F764974656D2E6D61736B2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A202020206469762E74616773203E206469762E7461672E73756D6D617279207B0A202020202020637572736F72';
wwv_flow_api.g_varchar2_table(272) := '3A20706F696E7465723B0A202020207D0A0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A202020206469762E';
wwv_flow_api.g_varchar2_table(273) := '74616773203E206469762E7461672E6578747261207B0A2020202020206261636B67726F756E643A20236666646664663B0A202020207D0A0A2020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D43';
wwv_flow_api.g_varchar2_table(274) := '6F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A2020202020206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0A2020202020202020666C65782D736872696E6B3A20313B0A202020';
wwv_flow_api.g_varchar2_table(275) := '2020202020666C65782D67726F773A20313B0A2020202020202020746578742D6F766572666C6F773A20656C6C69707369733B0A20202020202020206F766572666C6F773A2068696464656E3B0A2020202020207D0A0A2020202020202E707265746975';
wwv_flow_api.g_varchar2_table(276) := '732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A2020202020206469762E74616773203E206469762E746167203E207370616E2E72656D6F76';
wwv_flow_api.g_varchar2_table(277) := '65207B0A2020202020202020666C65782D736872696E6B3A20303B0A2020202020202020666C65782D67726F773A20303B20200A2020202020202020637572736F723A20706F696E7465723B0A2020202020202020636F6C6F723A207267626128302C30';
wwv_flow_api.g_varchar2_table(278) := '2C302C31293B0A2020202020202020616C69676E2D73656C663A2063656E7465723B0A2020202020207D0A0A2020202020202F2A206D61736B2064697361626C6564202A2F0A2020202020202E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(279) := '6D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200A2020202020206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0A20202020';
wwv_flow_api.g_varchar2_table(280) := '20202020637572736F723A2064656661756C743B0A2020202020207D2020202020200A0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(60791690750043760)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_file_name=>'enhancedLovItem_21_2.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727E627574746F6E7B6F726465723A347D2E6974656D436F6E7461696E65727E2E64656275674175746F636F6D706C6574652C2E70';
wwv_flow_api.g_varchar2_table(2) := '7265746975732D2D656E68616E6365644C6F764974656D202E64656275677B6F7061636974793A2E357D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B7B6D61782D77696474683A313030253B646973706C61793A666C6578';
wwv_flow_api.g_varchar2_table(3) := '3B6261636B67726F756E642D636F6C6F723A236639663966393B6F726465723A337D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F63757365642C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(4) := '61736B3A686F7665727B6261636B67726F756E642D636F6C6F723A236666667D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(5) := '72426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76652C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C65643E6469762E6974656D436F6E7461696E65727B637572736F723A';
wwv_flow_api.g_varchar2_table(6) := '64656661756C747D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727B626F726465723A31707820736F6C6964207267626128302C302C302C2E313235293B6D696E2D7769647468';
wwv_flow_api.g_varchar2_table(7) := '3A303B666C65782D67726F773A313B637572736F723A746578743B706F736974696F6E3A72656C61746976653B6F766572666C6F773A68696464656E7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D';
wwv_flow_api.g_varchar2_table(8) := '436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64797B6865696768743A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E697465';
wwv_flow_api.g_varchar2_table(9) := '6D436F6E7461696E6572426F6479202E6D61736B696E677B6261636B67726F756E643A3020303B6261636B67726F756E643A2D6D6F7A2D6C696E6561722D6772616469656E74286C6566742C72676261283235352C3235352C3235352C302920302C2366';
wwv_flow_api.g_varchar2_table(10) := '66662031303025293B6261636B67726F756E643A2D7765626B69742D6772616469656E74286C65667420746F702C726967687420746F702C636F6C6F722D73746F702830252C72676261283235352C3235352C3235352C3029292C636F6C6F722D73746F';
wwv_flow_api.g_varchar2_table(11) := '7028313030252C2366666629293B6261636B67726F756E643A2D7765626B69742D6C696E6561722D6772616469656E74286C6566742C72676261283235352C3235352C3235352C302920302C236666662031303025293B6261636B67726F756E643A2D6F';
wwv_flow_api.g_varchar2_table(12) := '2D6C696E6561722D6772616469656E74286C6566742C72676261283235352C3235352C3235352C302920302C236666662031303025293B6261636B67726F756E643A2D6D732D6C696E6561722D6772616469656E74286C6566742C72676261283235352C';
wwv_flow_api.g_varchar2_table(13) := '3235352C3235352C30292030252C236666662031303025293B6261636B67726F756E643A6C696E6561722D6772616469656E7428746F2072696768742C72676261283235352C3235352C3235352C302920302C236666662031303025293B66696C746572';
wwv_flow_api.g_varchar2_table(14) := '3A70726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E7428207374617274436F6C6F727374723D2723666666666666272C20656E64436F6C6F727374723D2723666666666666272C204772616469656E';
wwv_flow_api.g_varchar2_table(15) := '74547970653D3120293B706F736974696F6E3A6162736F6C7574653B746F703A303B72696768743A303B77696474683A313070783B6865696768743A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E';
wwv_flow_api.g_varchar2_table(16) := '6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B6F7061636974793A2E353B77686974652D73706163653A6E6F777261703B746578742D6F766572666C6F773A656C6C69707369733B6F766572666C6F773A68696464656E7D2E';
wwv_flow_api.g_varchar2_table(17) := '742D466F726D2D2D73747265746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2C2E742D466F726D2D6669656C64436F6E7461696E65722D2D73747265746368496E70757473202E707265746975732D';
wwv_flow_api.g_varchar2_table(18) := '2D656E68616E6365644C6F764974656D2E6D61736B7B666C65783A317D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C65647B6F7061636974793A2E357D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(19) := '764974656D2E70726F6D70742C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E6469762E626F64793E6469762E6C6F61644D6F72652C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(20) := '3E6469762E666978426F726465722C2E707265746975732D2D656E68616E6365644C6F764974656D3E6469762E6974656D436F6E7461696E65727B626F726465722D636F6C6F723A236466646664667D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(21) := '764974656D2E7061737465202E626F64797B6F766572666C6F773A6175746F3B706F736974696F6E3A72656C61746976653B70616464696E673A303B6D696E2D6865696768743A32303670783B6865696768743A32303670783B6D61782D686569676874';
wwv_flow_api.g_varchar2_table(22) := '3A32303670787D2E707265746975732D2D656E68616E6365644C6F764974656D2E70617374652074657874617265617B70616464696E673A313070783B726573697A653A6E6F6E653B77696474683A313030253B6865696768743A32303670783B766572';
wwv_flow_api.g_varchar2_table(23) := '746963616C2D616C69676E3A746F703B626F726465723A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F64792E73756D6D617279207461626C652074643A6C6173742D6368696C647B666F6E742D77656967';
wwv_flow_api.g_varchar2_table(24) := '68743A3730303B746578742D616C69676E3A72696768747D2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F6479207461626C652074723A6C6173742D6368696C642074647B626F726465722D626F74746F6D3A6E';
wwv_flow_api.g_varchar2_table(25) := '6F6E6521696D706F7274616E747D2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F7465727B626F726465722D746F703A31707820736F6C6964207267626128302C302C302C2E303529';
wwv_flow_api.g_varchar2_table(26) := '3B646973706C61793A666C65783B666C65782D646972656374696F6E3A726F773B70616464696E673A3130707820313570787D2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572';
wwv_flow_api.g_varchar2_table(27) := '202E6C6566742C2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E72696768747B666C65782D67726F773A313B646973706C61793A666C65787D2E75692D6469616C6F672E';
wwv_flow_api.g_varchar2_table(28) := '707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C6566747B6A7573746966792D636F6E74656E743A666C65782D73746172747D2E75692D6469616C6F672E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(29) := '4C6F764974656D2E7061737465202E666F6F746572202E72696768747B6A7573746966792D636F6E74656E743A666C65782D656E647D2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E706C616365686F';
wwv_flow_api.g_varchar2_table(30) := '6C6465722C2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_api.g_varchar2_table(31) := '65722D2D666C6F6174696E674C6162656C2E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162';
wwv_flow_api.g_varchar2_table(32) := '656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_api.g_varchar2_table(33) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C64436F6E74';
wwv_flow_api.g_varchar2_table(34) := '61696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C2E742D466F726D2D6669656C';
wwv_flow_api.g_varchar2_table(35) := '64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E69732D616374697665202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E7461';
wwv_flow_api.g_varchar2_table(36) := '67737B6D617267696E2D746F703A323470787D2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(37) := '2D2D6C61726765202E742D466F726D2D6C6162656C436F6E7461696E6572206C6162656C7B70616464696E672D746F703A3670787D2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D66';
wwv_flow_api.g_varchar2_table(38) := '6C6F6174696E674C6162656C202E6974656D436F6E7461696E65727B70616464696E672D6C6566743A3870787D2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C';
wwv_flow_api.g_varchar2_table(39) := '6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E65722C2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174';
wwv_flow_api.g_varchar2_table(40) := '696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E65727B70616464696E672D6C6566743A313270787D2E66612E6572726F727B636F6C6F723A7265647D2E70726574697573';
wwv_flow_api.g_varchar2_table(41) := '2D2D656E68616E6365644C6F764974656D2E6572726F72202E636F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F727B70616464696E673A313570783B6F76657266';
wwv_flow_api.g_varchar2_table(42) := '6C6F773A6175746F7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72202E6572726F727B77686974652D73706163653A7072657D2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(43) := '4974656D2E6572726F72207072652C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72207072657B70616464696E673A313570783B626F726465723A31707820736F6C69642072676261';
wwv_flow_api.g_varchar2_table(44) := '28302C302C302C2E33293B6261636B67726F756E643A7267626128302C302C302C2E3038293B626F726465722D7261646975733A3570783B6F766572666C6F772D783A6175746F7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61';
wwv_flow_api.g_varchar2_table(45) := '736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76657B666F6E742D73697A653A2E36323572656D3B70616464696E672D6C65';
wwv_flow_api.g_varchar2_table(46) := '66743A2E31323572656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65722C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D';
wwv_flow_api.g_varchar2_table(47) := '656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727B70616464696E673A30202E31323572656D202E31323572656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E697465';
wwv_flow_api.g_varchar2_table(48) := '6D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A6E6F74283A6C6173742D6368696C64297B6D617267696E2D72696768743A2E31323572656D7D2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(49) := '6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461672C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C6172';
wwv_flow_api.g_varchar2_table(50) := '6765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461677B70616464696E673A30';
wwv_flow_api.g_varchar2_table(51) := '202E3331323572656D3B6D617267696E2D746F703A2E31323572656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E';
wwv_flow_api.g_varchar2_table(52) := '6469762E746167733E6469762E7461673E7370616E2E76616C75652C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B666F6E742D7369';
wwv_flow_api.g_varchar2_table(53) := '7A653A2E373572656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370';
wwv_flow_api.g_varchar2_table(54) := '616E2E72656D6F76652C2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370';
wwv_flow_api.g_varchar2_table(55) := '616E2E76616C75657B6C696E652D6865696768743A3172656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(56) := '723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A6E6F74283A6C6173742D6368696C64297B6D617267696E2D72696768743A2E3272656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61';
wwv_flow_api.g_varchar2_table(57) := '726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B70616464696E673A2E33373572656D20302030202E323572656D3B666F6E74';
wwv_flow_api.g_varchar2_table(58) := '2D73697A653A2E38373572656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E697465';
wwv_flow_api.g_varchar2_table(59) := '6D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E76616C75657B666F6E742D73697A653A2E38373572656D3B6C696E652D6865696768743A312E3572656D7D2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_api.g_varchar2_table(60) := '65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370';
wwv_flow_api.g_varchar2_table(61) := '616E2E72656D6F76657B6C696E652D6865696768743A312E3572656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E74';
wwv_flow_api.g_varchar2_table(62) := '61696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A6E6F74283A6C6173742D6368696C64297B6D617267696E2D72696768743A2E323572656D7D2E742D466F726D2D6669656C64436F6E7461696E65';
wwv_flow_api.g_varchar2_table(63) := '722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65727B70616464696E673A30202E323572656D202E323572656D7D2E742D466F726D2D6669656C64436F6E74';
wwv_flow_api.g_varchar2_table(64) := '61696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461';
wwv_flow_api.g_varchar2_table(65) := '677B70616464696E673A30202E3331323572656D3B6D617267696E2D746F703A2E323572656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B';
wwv_flow_api.g_varchar2_table(66) := '3E6469762E6974656D436F6E7461696E65723E6469762E706C616365686F6C6465727B70616464696E673A2E3572656D20302030202E33373572656D3B666F6E742D73697A653A3172656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D';
wwv_flow_api.g_varchar2_table(67) := '786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E';
wwv_flow_api.g_varchar2_table(68) := '76616C75657B666F6E742D73697A653A3172656D3B6C696E652D6865696768743A312E3638373572656D7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(69) := '6D61736B3E6469762E6974656D436F6E7461696E65723E6469762E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76657B6C696E652D6865696768743A312E3638373572656D7D2E707265';
wwv_flow_api.g_varchar2_table(70) := '746975732D2D656E68616E6365644C6F764974656D2E70726F6D70747B626F726465722D636F6C6F723A7267626128302C302C302C2E313235293B706F736974696F6E3A6162736F6C7574653B6261636B67726F756E643A236666663B7A2D696E646578';
wwv_flow_api.g_varchar2_table(71) := '3A3430307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E636F6C6C61707365642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742E68696464656E';
wwv_flow_api.g_varchar2_table(72) := '7B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6D656E75202E66617B666F6E742D73697A653A313270783B6C696E652D6865696768743A313270787D2E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(73) := '6E68616E6365644C6F764974656D2E70726F6D70743E2E626F64792C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70';
wwv_flow_api.g_varchar2_table(74) := '743E2E6D656E757B626F726465722D636F6C6F723A696E68657269743B626F726465722D77696474683A3170783B626F726465722D7374796C653A736F6C69647D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E68';
wwv_flow_api.g_varchar2_table(75) := '65616465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6D656E757B70616464696E673A2E323572656D7D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E626F64792C2E';
wwv_flow_api.g_varchar2_table(76) := '707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6D656E752C2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(77) := '4974656D2E75692D6469616C6F672E706F7075702074687B626F726465722D746F703A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465727B706F736974696F6E3A72656C61746976653B64';
wwv_flow_api.g_varchar2_table(78) := '6973706C61793A666C65787D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465723E2E66617B616C69676E2D73656C663A63656E7465723B666F6E742D73697A653A2E3831323572656D3B666C65782D73';
wwv_flow_api.g_varchar2_table(79) := '6872696E6B3A303B666C65782D67726F773A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E6865616465723E696E7075747B626F726465723A303B6F75746C696E653A303B6D617267696E2D72696768743A2E';
wwv_flow_api.g_varchar2_table(80) := '323572656D3B666C65782D67726F773A313B666C65782D736872696E6B3A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70743E2E626F64797B6F766572666C6F773A6175746F7D2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(81) := '6365644C6F764974656D2E70726F6D7074202E666978426F726465727B646973706C61793A6E6F6E653B626F726465722D746F702D77696474683A3170783B626F726465722D746F702D7374796C653A736F6C69643B626F726465722D636F6C6F723A72';
wwv_flow_api.g_varchar2_table(82) := '67626128302C302C302C2E313235293B6865696768743A303B77696474683A353070783B706F736974696F6E3A6162736F6C7574653B746F703A303B72696768743A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(83) := '202E6E6F64617461666F756E642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E677B746578742D616C69676E3A63656E7465723B70616464696E673A3670787D2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(84) := '68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E646573632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E657870616E6465642C2E7072657469';
wwv_flow_api.g_varchar2_table(85) := '75732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870616E646564202E636F6C6C61707365642C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F6461746166';
wwv_flow_api.g_varchar2_table(86) := '6F756E64202E69636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E746578742C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561';
wwv_flow_api.g_varchar2_table(87) := '726368696E67202E69636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E746578747B646973706C61793A626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(88) := '656D2E70726F6D707420756C7B6C6973742D7374796C653A6E6F6E653B6D617267696E3A303B706F736974696F6E3A72656C61746976657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F';
wwv_flow_api.g_varchar2_table(89) := '6D7B70616464696E673A303B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C747B70616464696E673A2E3138373572656D3B6F766572666C6F773A';
wwv_flow_api.g_varchar2_table(90) := '68696464656E3B746578742D6F766572666C6F773A656C6C69707369733B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D3A686F7665722C2E7072';
wwv_flow_api.g_varchar2_table(91) := '65746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742075';
wwv_flow_api.g_varchar2_table(92) := '6C206C692E637573746F6D5B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D7472';
wwv_flow_api.g_varchar2_table(93) := '75655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D747275655D5B617269612D6869';
wwv_flow_api.g_varchar2_table(94) := '67686C6967687465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C743A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(95) := '2E70726F6D707420756C206C692E64656661756C745B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C';
wwv_flow_api.g_varchar2_table(96) := '65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465';
wwv_flow_api.g_varchar2_table(97) := '643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D3A686F';
wwv_flow_api.g_varchar2_table(98) := '7665727B6261636B67726F756E643A236535653565357D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D3A686F7665722C2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(99) := '6E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742075';
wwv_flow_api.g_varchar2_table(100) := '6C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E63';
wwv_flow_api.g_varchar2_table(101) := '7573746F6D5B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E63';
wwv_flow_api.g_varchar2_table(102) := '7573746F6D5B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D63';
wwv_flow_api.g_varchar2_table(103) := '68696C642E64656661756C743A686F7665722C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D686967686C6967687465643D747275655D2C';
wwv_flow_api.g_varchar2_table(104) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D747275655D3A686F7665722C2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(105) := '65644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D2C2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(106) := '6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D747275655D5B617269612D686967686C6967687465643D747275655D3A686F7665727B2D7765626B69742D';
wwv_flow_api.g_varchar2_table(107) := '626F782D736861646F773A696E7365742030202D313970782031357078202D31357078207267626128302C302C302C2E31293B2D6D6F7A2D626F782D736861646F773A696E7365742030202D313970782031357078202D31357078207267626128302C30';
wwv_flow_api.g_varchar2_table(108) := '2C302C2E31293B626F782D736861646F773A696E7365742030202D313970782031357078202D31357078207267626128302C302C302C2E31297D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573';
wwv_flow_api.g_varchar2_table(109) := '746F6D5B617269612D73656C65637465643D747275655D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D747275655D7B6261636B67726F756E';
wwv_flow_api.g_varchar2_table(110) := '643A236632663266327D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E6173632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E';
wwv_flow_api.g_varchar2_table(111) := '736F72742E617363202E6173632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E646573632C2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(112) := '7074202E6D656E75202E766965772E657870616E646564202E657870616E6465642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D7074797E2E636C65';
wwv_flow_api.g_varchar2_table(113) := '61722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D7074797E6469763E2E636C6561722C2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(114) := '6D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E2E7365617263682C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E6469763E';
wwv_flow_api.g_varchar2_table(115) := '2E7365617263687B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E646573632C2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(116) := '6D2E70726F6D7074202E6D656E75202E736F72742E64657363202E6173632C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D7074797E2E736561726368';
wwv_flow_api.g_varchar2_table(117) := '2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E2E636C6561727B646973706C61793A626C6F636B7D2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(118) := '74656D2E70726F6D7074202E6C6F61644D6F72657B70616464696E673A3270783B746578742D7472616E73666F726D3A7570706572636173653B746578742D616C69676E3A63656E7465723B666F6E742D73697A653A3730253B6C65747465722D737061';
wwv_flow_api.g_varchar2_table(119) := '63696E673A3170783B626F726465722D746F702D77696474683A3170783B626F726465722D746F702D7374796C653A736F6C69643B626F726465722D746F702D636F6C6F723A696E68657269743B6261636B67726F756E643A7267626128302C302C302C';
wwv_flow_api.g_varchar2_table(120) := '2E3034297D2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F726520617B636F6C6F723A7267626128302C302C302C2E37293B746578742D736861646F773A2D317078202D3170782030207267622832';
wwv_flow_api.g_varchar2_table(121) := '35352C3235352C3235352C2E35297D2E742D4469616C6F67526567696F6E2D626F6479202E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70747B706F736974696F6E3A66697865647D2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(122) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64797B6F766572666C6F773A6175746F3B706F736974696F6E3A72656C61746976657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E';
wwv_flow_api.g_varchar2_table(123) := '706F707570202E626F6479202E736561726368696E67466F72526573756C74734D61736B7B706F736974696F6E3A6162736F6C7574653B77696474683A313030253B6865696768743A313030253B6261636B67726F756E643A236666663B6F7061636974';
wwv_flow_api.g_varchar2_table(124) := '793A2E367D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74737B706F736974696F6E3A6162736F6C7574657D2E70726574697573';
wwv_flow_api.g_varchar2_table(125) := '2D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F';
wwv_flow_api.g_varchar2_table(126) := '707570202E626F6479202E736561726368696E67466F72526573756C74737B70616464696E673A3230707820307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E6E6F64617461';
wwv_flow_api.g_varchar2_table(127) := '666F756E642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E736561726368696E677B646973706C61793A666C65783B6A7573746966792D636F6E74656E743A63656E7465723B';
wwv_flow_api.g_varchar2_table(128) := '70616464696E673A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(129) := '764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74737B616C69676E2D73656C663A63656E7465723B746578742D616C69676E3A63656E7465727D2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(130) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E69636F6E3E2E66612C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(131) := '2E706F707570202E626F6479202E736561726368696E67466F72526573756C7473202E69636F6E3E2E66617B666F6E742D73697A653A31303070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(132) := '70202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E746578742C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573';
wwv_flow_api.g_varchar2_table(133) := '756C7473202E746578747B70616464696E672D746F703A313070783B666F6E742D73697A653A313470783B6C696E652D6865696768743A323070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(134) := '70202E666F6F746572202E666F6F7465722D73686F7753656C65637465642E696E6163746976657B6F7061636974793A2E357D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572';
wwv_flow_api.g_varchar2_table(135) := '202E666F6F7465722D627574746F6E732C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642C2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(136) := '68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465723E6469767B666C65782D736872696E6B3A313B666C65782D67726F773A317D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(137) := '6C6F672E706F707570202E666F6F7465727B626F726465722D746F703A31707820736F6C6964207267626128302C302C302C2E3035293B646973706C61793A666C65787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(138) := '6C6F672E706F707570202E666F6F746572206C6162656C7B6D617267696E2D6C6566743A313070783B637572736F723A706F696E7465723B6C696E652D6865696768743A333270783B666F6E742D73697A653A313270787D2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(139) := '68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E66616B65436865636B626F787B6C696E652D6865696768743A333270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469';
wwv_flow_api.g_varchar2_table(140) := '616C6F672E706F707570202E666F6F746572202E666F6F7465722D627574746F6E737B746578742D616C69676E3A72696768747D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465';
wwv_flow_api.g_varchar2_table(141) := '722E706167696E6174696F6E4F6E6C79202E706167696E6174696F6E436F6E7461696E65727B746578742D616C69676E3A63656E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68';
wwv_flow_api.g_varchar2_table(142) := '6561646572202E706167696E6174696F6E436F6E7461696E65722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E66';
wwv_flow_api.g_varchar2_table(143) := '617B746578742D616C69676E3A72696768743B666F6E742D73697A653A313270783B6C696E652D6865696768743A333070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572';
wwv_flow_api.g_varchar2_table(144) := '202E706167696E6174696F6E436F6E7461696E6572202E707265767B6D617267696E2D72696768743A3570787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E70616769';
wwv_flow_api.g_varchar2_table(145) := '6E6174696F6E436F6E7461696E6572202E6E6578747B6D617267696E2D6C6566743A3570787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465727B626F726465722D626F74746F';
wwv_flow_api.g_varchar2_table(146) := '6D3A31707820736F6C6964207267626128302C302C302C2E3035293B646973706C61793A666C65787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F';
wwv_flow_api.g_varchar2_table(147) := '6E7461696E65727B706F736974696F6E3A72656C61746976653B746578742D616C69676E3A6C6566747D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E73656172636843';
wwv_flow_api.g_varchar2_table(148) := '6F6E7461696E657220696E7075747B70616464696E673A3570783B6C696E652D6865696768743A313670783B77696474683A313030253B6865696768743A333270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(149) := '6F672E706F707570202E686561646572202E726F777350657250616765436F6E7461696E65722073656C6563747B70616464696E673A3570783B6C696E652D6865696768743A313670783B626F726465722D6C6566743A6E6F6E653B6865696768743A33';
wwv_flow_api.g_varchar2_table(150) := '3270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E65722E6D756C7469706C6520696E7075747B77696474683A313030257D2E7072';
wwv_flow_api.g_varchar2_table(151) := '65746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E6572202E66617B746F703A303B6C696E652D6865696768743A333070783B706F736974696F6E3A';
wwv_flow_api.g_varchar2_table(152) := '6162736F6C7574653B72696768743A313570783B6F7061636974793A2E353B666F6E742D73697A653A313470787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075';
wwv_flow_api.g_varchar2_table(153) := '747E6469767B746F703A303B6C696E652D6865696768743A333470783B706F736974696F6E3A6162736F6C7574653B72696768743A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865';
wwv_flow_api.g_varchar2_table(154) := '6164657220696E7075742E656D7074797E6469763E2E7365617263682C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075747E6469763E2E636C6561727B6F706163';
wwv_flow_api.g_varchar2_table(155) := '6974793A2E353B646973706C61793A626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C6561727B637572736F723A706F696E7465727D2E707265746975';
wwv_flow_api.g_varchar2_table(156) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C6561723A686F7665727B6F7061636974793A317D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(157) := '672E706F707570202E666F6F7465722C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465727B70616464696E673A3130707820313570787D2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(158) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465722E68696464656E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E68696464656E2C2E70';
wwv_flow_api.g_varchar2_table(159) := '7265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E2E68696464656E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(160) := '702074722E68696464656E447565546F46696C7465727B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E752D5265706F72742D736F72742C2E707265746975';
wwv_flow_api.g_varchar2_table(161) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722074642E742D5265706F72742D63656C6C7B77686974652D73706163653A6E6F777261707D2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(162) := '75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074683A66697273742D6368696C642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074642E742D5265';
wwv_flow_api.g_varchar2_table(163) := '706F72742D63656C6C3A66697273742D6368696C642C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074683A66697273742D6368696C647B77696474683A343270783B6D696E2D77696474683A';
wwv_flow_api.g_varchar2_table(164) := '343270783B6D61782D77696474683A343270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572737B706F736974696F6E3A6162736F6C7574653B';
wwv_flow_api.g_varchar2_table(165) := '746F703A303B77696474683A313030257D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074687B6261636B67726F756E643A236666663B706F';
wwv_flow_api.g_varchar2_table(166) := '736974696F6E3A72656C61746976657D2E686967686C696768747B6261636B67726F756E643A236666307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E7B6261';
wwv_flow_api.g_varchar2_table(167) := '636B67726F756E643A236633663366333B706F736974696F6E3A72656C61746976653B6D696E2D6865696768743A333070783B746578742D616C69676E3A63656E7465723B626F726465722D626F74746F6D3A31707820736F6C6964207267626128302C';
wwv_flow_api.g_varchar2_table(168) := '302C302C2E3035297D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D6174696F6E202E746578747B70616464696E672D746F703A3570783B70616464696E672D626F74746F6D';
wwv_flow_api.g_varchar2_table(169) := '3A3570783B6C696E652D6865696768743A323070783B666F6E742D73697A653A313270787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73202E612D';
wwv_flow_api.g_varchar2_table(170) := '49636F6E2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D616374697665202E612D49636F6E2C2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(171) := '68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D616374697665202E66612C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(172) := '6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D61637469766520617B636F6C6F723A236666667D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F';
wwv_flow_api.g_varchar2_table(173) := '6C756D6E4F7065726174696F6E732C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D6163746976657B6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(174) := '2D636F6C6F723A233465346534653B626F726465722D636F6C6F723A233465346534657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E737B706F7369';
wwv_flow_api.g_varchar2_table(175) := '74696F6E3A6162736F6C7574653B746F703A307D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E672C2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(176) := '692D6469616C6F672E706F707570202E736F7274696E677B706F736974696F6E3A72656C61746976657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67202E66617B70';
wwv_flow_api.g_varchar2_table(177) := '6F736974696F6E3A6162736F6C7574653B72696768743A3770783B746F703A3770783B636F6C6F723A236666663B6F7061636974793A2E357D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E';
wwv_flow_api.g_varchar2_table(178) := '736F7274696E6720617B646973706C61793A696E6C696E652D626C6F636B3B77696474683A6175746F3B70616464696E673A35707820313070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570';
wwv_flow_api.g_varchar2_table(179) := '202E736F7274696E677B626F726465722D6C6566743A31707820736F6C69643B626F726465722D72696768743A31707820736F6C69643B626F726465722D746F703A31707820736F6C69647D2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(180) := '6D2E75692D6469616C6F672E706F707570202E66696C746572696E677B626F726465723A31707820736F6C69643B6261636B67726F756E643A233631363136317D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(181) := '2E706F707570202E66696C746572696E6720696E7075747B626F726465723A303B6261636B67726F756E643A3020303B70616464696E673A3570783B77696474683A313030253B636F6C6F723A236666667D2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(182) := '4C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65436865636B626F782C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65526164696F2C2E707265746975732D';
wwv_flow_api.g_varchar2_table(183) := '2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702E73656C656374566961526F77732074647B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(184) := '2E706F70757020696E7075745B747970653D726164696F5D3A636865636B65647E2E66612D646F742D636972636C652D6F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B7479';
wwv_flow_api.g_varchar2_table(185) := '70653D726164696F5D3A6E6F74283A636865636B6564297E2E66612D636972636C652D6F7B646973706C61793A696E6C696E652D626C6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020';
wwv_flow_api.g_varchar2_table(186) := '696E7075745B747970653D726164696F5D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A636865636B65647E2E66612D636972636C652D6F2C2E';
wwv_flow_api.g_varchar2_table(187) := '707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B6564297E2E66612D646F742D636972636C652D6F7B646973706C61793A6E6F';
wwv_flow_api.g_varchar2_table(188) := '6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A636865636B65647E2E66612D636865636B2D7371756172652D6F2C2E707265746975';
wwv_flow_api.g_varchar2_table(189) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B6564297E2E66612D7371756172652D6F7B646973706C61793A696E6C696E652D626C';
wwv_flow_api.g_varchar2_table(190) := '6F636B7D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F74657220696E7075745B747970653D636865636B626F785D7B706F736974696F6E3A66697865643B6F7061636974793A303B';
wwv_flow_api.g_varchar2_table(191) := '746F703A2D313070783B6C6566743A2D313070787D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A636865636B65647E2E66612D73717561';
wwv_flow_api.g_varchar2_table(192) := '72652D6F2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B6564297E2E66612D636865636B2D7371756172652D6F';
wwv_flow_api.g_varchar2_table(193) := '2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020746420696E7075745B747970653D636865636B626F785D2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(194) := '6F672E706F70757020746820696E7075745B747970653D636865636B626F785D7B646973706C61793A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(195) := '286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286576656E292E65787472';
wwv_flow_api.g_varchar2_table(196) := '6156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E65787472615661';
wwv_flow_api.g_varchar2_table(197) := '6C75652074642E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E657874726156616C75652E73656C6563746564';
wwv_flow_api.g_varchar2_table(198) := '2074642E742D5265706F72742D63656C6C7B6261636B67726F756E643A236666646664667D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465642074642E742D5265706F';
wwv_flow_api.g_varchar2_table(199) := '72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E73656C65637465642074642E742D5265706F72742D63656C6C7B6261636B6772';
wwv_flow_api.g_varchar2_table(200) := '6F756E643A72676261283235352C3234392C302C2E3035293B746578742D736861646F773A302030202E3030317078207267626128302C302C302C2E35297D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(201) := '6F7075702074722E73656C65637465643A686F766572202E742D5265706F72742D63656C6C2C2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(202) := '64286F6464293A686F766572202E742D5265706F72742D63656C6C7B6261636B67726F756E643A72676261283235352C3234392C302C2E312921696D706F7274616E747D2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(203) := '6C6F672E706F7075702074722E73656C65637465642074642E742D5265706F72742D63656C6C202E66616B65436865636B626F787B746578742D736861646F773A6E6F6E657D2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(204) := '616E6365644C6F764974656D2E6D61736B7B77696474683A313030253B6865696768743A313030253B6D696E2D77696474683A6175746F21696D706F7274616E743B6D696E2D6865696768743A6175746F21696D706F7274616E747D2E612D47562D636F';
wwv_flow_api.g_varchar2_table(205) := '6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65727B626F726465722D636F6C6F723A7472616E73706172656E7421696D706F7274616E747D2E612D47562D636F6C75';
wwv_flow_api.g_varchar2_table(206) := '6D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564202E6974656D436F6E7461696E65727B626F726465722D636F6C6F723A2364666466646621696D706F7274616E747D2E70726574697573';
wwv_flow_api.g_varchar2_table(207) := '2D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167737B646973706C61793A666C65783B666C65782D777261703A6E6F777261703B6F766572';
wwv_flow_api.g_varchar2_table(208) := '666C6F773A68696464656E7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E657870616E646564202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167737B666C65782D';
wwv_flow_api.g_varchar2_table(209) := '777261703A777261703B6F766572666C6F773A76697369626C657D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E74616773';
wwv_flow_api.g_varchar2_table(210) := '3E6469762E7461677B646973706C61793A666C65783B6D61782D77696474683A313030253B626F726465723A31707820736F6C69642072676261283231342C3231342C323134293B706F736974696F6E3A72656C61746976653B626F726465722D726164';
wwv_flow_api.g_varchar2_table(211) := '6975733A3670783B6261636B67726F756E643A72676261283231342C3231342C3231342C2E35293B666C65782D736872696E6B3A303B636F6C6F723A7267626128302C302C302C2E35293B2D7765626B69742D746F7563682D63616C6C6F75743A6E6F6E';
wwv_flow_api.g_varchar2_table(212) := '653B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6B68746D6C2D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73';
wwv_flow_api.g_varchar2_table(213) := '656C6563743A6E6F6E657D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673A686F7665727B62';
wwv_flow_api.g_varchar2_table(214) := '6F726465722D636F6C6F723A236231623162317D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E7461';
wwv_flow_api.g_varchar2_table(215) := '67733E6469762E7461673A686F7665727B626F726465722D636F6C6F723A72676261283231342C3231342C323134293B6261636B67726F756E643A72676261283231342C3231342C3231342C2E35297D2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(216) := '764974656D2E6D61736B2E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461672E73756D6D6172797B637572736F723A706F696E7465727D2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(217) := '65644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461672E65787472617B6261636B67726F756E643A236666646664667D2E707265746975732D';
wwv_flow_api.g_varchar2_table(218) := '2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E76616C75657B666C65782D736872696E6B3A313B666C';
wwv_flow_api.g_varchar2_table(219) := '65782D67726F773A313B746578742D6F766572666C6F773A656C6C69707369733B6F766572666C6F773A68696464656E7D2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E65723E2E6974656D';
wwv_flow_api.g_varchar2_table(220) := '436F6E7461696E6572426F64793E6469762E746167733E6469762E7461673E7370616E2E72656D6F76657B666C65782D736872696E6B3A303B666C65782D67726F773A303B637572736F723A706F696E7465723B636F6C6F723A233030303B616C69676E';
wwv_flow_api.g_varchar2_table(221) := '2D73656C663A63656E7465727D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(60792127521043761)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_file_name=>'enhancedLovItem_21_2.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
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
 p_id=>wwv_flow_api.id(502845747671960984)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_file_name=>'mustache.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '242E7769646765742827707265746975732E656E68616E6365644C6F764974656D272C207B0A20202F2F0A20202F2F0A20202020435F4C4F475F4445425547202020203A20617065782E64656275672E4C4F475F4C4556454C2E494E464F2C0A20202020';
wwv_flow_api.g_varchar2_table(2) := '435F4C4F475F5741524E494E4720203A20617065782E64656275672E4C4F475F4C4556454C2E5741524E2C0A20202020435F4C4F475F4552524F52202020203A20617065782E64656275672E4C4F475F4C4556454C2E4552524F522C0A20202020435F4C';
wwv_flow_api.g_varchar2_table(3) := '4F475F4C4556454C362020203A20617065782E64656275672E4C4F475F4C4556454C2E4150505F54524143452C0A20202020435F4C4F475F4C4556454C392020203A20617065782E64656275672E4C4F475F4C4556454C2E454E47494E455F5452414345';
wwv_flow_api.g_varchar2_table(4) := '2C0A20202F2F0A20202F2F0A20202020435F56414C55455F534550415241544F5220202020202020202020202020202020202020202020202020202020203A20273A272C0A20202020435F444953504C41595F534550415241544F522020202020202020';
wwv_flow_api.g_varchar2_table(5) := '202020202020202020202020202020202020203A20272C272C0A20202020435F414A41585F5354415455535F53554343455353202020202020202020202020202020202020202020202020203A202753554343455353272C0A20202020435F414A41585F';
wwv_flow_api.g_varchar2_table(6) := '5354415455535F4552524F522020202020202020202020202020202020202020202020202020203A20274552524F52272C0A20202020435F504F5055505F5345415243485F504C414345484F4C4445522020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(7) := '3A2027456E746572206120736561726368207465726D272C0A20202020435F504F5055505F42544E5F53454C4543545F5445585420202020202020202020202020202020202020202020203A202753656C656374272C0A20202020435F504F5055505F53';
wwv_flow_api.g_varchar2_table(8) := '484F575F53454C45435445445F4C4142454C202020202020202020202020202020202020203A202253686F77206F6E6C792073656C6563746564222C0A20202020435F504F5055505F544558545F524F57535F53454C4543544544202020202020202020';
wwv_flow_api.g_varchar2_table(9) := '20202020202020202020203A2022416C6C20726573756C74732028253029206F6E2074686973207061676520686173206265656E2073656C65637465642E222C0A20202020435F504F5055505F544558545F4E4F5F444154415F464F554E445F53454152';
wwv_flow_api.g_varchar2_table(10) := '4348202020202020202020202020203A20274E6F206461746120666F756E6420666F7220736561726368207465726D20222530222E272C0A20202020435F504F5055505F544558545F4E4F5F444154415F464F554E445F51554552592020202020202020';
wwv_flow_api.g_varchar2_table(11) := '2020202020203A202744696374696F6E61727920686173206E6F206461746120746F2072656E6465722E272C0A20202020435F504F5055505F544558545F434C4541525F46494C544552494E472020202020202020202020202020202020203A2027436C';
wwv_flow_api.g_varchar2_table(12) := '69636B203C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22636C65617246696C746572696E67223E686572653C2F613E20746F20636C6561722066696C746572696E672E272C0A20202020435F504F5055505F';
wwv_flow_api.g_varchar2_table(13) := '544558545F554E53415645445F4348414E4745532020202020202020202020202020202020203A2027596F7520686176652073656C65637465642025302076616C7565732E20436C6F73696E6720776974686F757420736176696E672077696C6C206E6F';
wwv_flow_api.g_varchar2_table(14) := '7420736176652073656C65637465642076616C7565732E272C0A20202020435F504F5055505F544558545F53454143485F494E5F53454C4543544544202020202020202020202020202020203A2027596F7520686176652066696C746572656420253020';
wwv_flow_api.g_varchar2_table(15) := '726F772873292066726F6D2025312073656C656374656420726F772873292E203C2F62723E436C69636B203C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D2273686F7753656C6563746564223E686572653C2F';
wwv_flow_api.g_varchar2_table(16) := '613E20746F20676574206261636B20746F20616C6C2073656C656374656420726F77732E272C0A20202020435F504F5055505F544558545F46494C54455245445F494E464F20202020202020202020202020202020202020203A2027253020726573756C';
wwv_flow_api.g_varchar2_table(17) := '747320666F756E6420666F7220736561726368207465726D20222531222E20272C0A20202020435F504F5055505F544558545F45585452415F56414C5545202020202020202020202020202020202020202020203A202756616C75652022253022206973';
wwv_flow_api.g_varchar2_table(18) := '206E6F742077697468696E2064696374696F6E6172792E272C0A20202020435F50524F4D50545F4D454E555F455850414E445F5449544C4520202020202020202020202020202020202020203A202753686F77206F72206869646520616C6C2074616773';
wwv_flow_api.g_varchar2_table(19) := '272C0A20202020435F50524F4D50545F4D454E555F534F52545F5449544C45202020202020202020202020202020202020202020203A2027536F72742074616773272C0A20202020435F50524F4D50545F4D454E555F434C4541525F5449544C45202020';
wwv_flow_api.g_varchar2_table(20) := '2020202020202020202020202020202020203A2027436C65617220616C6C2073656C65637465642076616C756573272C0A20202020435F50524F4D50545F4D454E555F50415354455F5449544C452020202020202020202020202020202020202020203A';
wwv_flow_api.g_varchar2_table(21) := '202750617374652076616C756573272C0A20202020435F50524F4D50545F4D454E555F504F5055505F5449544C452020202020202020202020202020202020202020203A20274F70656E20706F707570207265706F7274272C0A20202020435F50524F4D';
wwv_flow_api.g_varchar2_table(22) := '50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F58202020202020202020203A2027506C6561736520656E746572202530206F72206D6F726520636861726163746572732E272C0A20202020435F50524F4D50545F544558545F4D';
wwv_flow_api.g_varchar2_table(23) := '494E494D414C5F494E5055545F4C454E4754485F30202020202020202020203A2027537461727420747970696E6720746F2067657420726573756C74732E272C0A20202020435F50524F4D50545F544558545F4E4F5F444154415F464F554E4420202020';
wwv_flow_api.g_varchar2_table(24) := '2020202020202020202020202020203A20274E6F206461746120666F756E642E272C0A20202020435F50524F4D50545F544558545F534541524348494E4720202020202020202020202020202020202020202020203A2027536561726368696E672E2E2E';
wwv_flow_api.g_varchar2_table(25) := '272C0A20202020435F50524F4D50545F544558545F52415049445F53454C454354494F4E20202020202020202020202020202020203A2027537461727420747970696E6720746F2073656C656374206D6F72652E2E2E272C0A20202020435F50524F4D50';
wwv_flow_api.g_varchar2_table(26) := '545F544558545F4C4F41445F4D4F524520202020202020202020202020202020202020202020203A20274C6F6164206D6F72652E2E2E272C0A20202020435F4552524F525F44454255475F4F464620202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(27) := '202020202020203A2022506C6561736520636F6E74616374206170706C69636174696F6E2061646D696E6973747261746F7220666F72206D6F726520696E666F726D6174696F6E2E5C6E44657461696C656420696E666F726D6174696F6E20617661696C';
wwv_flow_api.g_varchar2_table(28) := '61626C6520696E206465627567206D6F64652E222C20200A20202020435F544147535F4C494D495445445F4F5448455253202020202020202020202020202020202020202020202020203A2027616E64202530206D6F72652E2E2E272C0A20202020435F';
wwv_flow_api.g_varchar2_table(29) := '544147535F4C494D495445445F302020202020202020202020202020202020202020202020202020202020203A202725302073656C6563746564272C0A20202020435F504F5055505F504147494E4154494F4E5F50524556202020202020202020202020';
wwv_flow_api.g_varchar2_table(30) := '20202020202020202020203A202750726576696F7573272C0A20202020435F504F5055505F504147494E4154494F4E5F4E45585420202020202020202020202020202020202020202020203A20274E657874272C0A20202020435F504F5055505F504147';
wwv_flow_api.g_varchar2_table(31) := '494E4154494F4E5F4F46202020202020202020202020202020202020202020202020203A20276F66272C0A20202020435F504F5055505F4845414445525F534F52545F4153435F5449544C4520202020202020202020202020202020203A2027536F7274';
wwv_flow_api.g_varchar2_table(32) := '20617363656E64696E67272C0A20202020435F504F5055505F4845414445525F534F52545F444553435F5449544C45202020202020202020202020202020203A2027536F72742064657363656E64696E67272C0A20202020435F504F5055505F54455854';
wwv_flow_api.g_varchar2_table(33) := '5F534541524348494E472020202020202020202020202020202020202020202020203A202757616974696E6720666F7220726573756C74732E2E2E272C0A202020202F2F76312E312E300A20202020435F504F5055505F50415354455F54455854415245';
wwv_flow_api.g_varchar2_table(34) := '415F504C414345484F4C4445522020202020202020202020203A202756616C756573206D757374206265207365706172617465642062792061206E65776C696E6520636861726163746572272C0A20202020435F504F5055505F50415354455F42544E5F';
wwv_flow_api.g_varchar2_table(35) := '50415253455F544558542020202020202020202020202020202020203A20275061727365272C0A20202020435F504F5055505F50415354455F42544E5F434C4541525F544558542020202020202020202020202020202020203A2027436C656172272C0A';
wwv_flow_api.g_varchar2_table(36) := '20202020435F504F5055505F50415354455F42544E5F53454C4543545F5445585420202020202020202020202020202020203A20274170706C79272C0A20202020435F504F5055505F50415354455F42544E5F4241434B5F544558542020202020202020';
wwv_flow_api.g_varchar2_table(37) := '20202020202020202020203A20274261636B272C0A20202020435F504F5055505F50415354455F53554D4D4152595F5041535445445F434F554E542020202020202020202020203A2027546F74616C206E756D626572206F66207061737465642076616C';
wwv_flow_api.g_varchar2_table(38) := '756573272C0A20202020435F504F5055505F50415354455F53554D4D4152595F5041535445445F4C454E47485420202020202020202020203A2027546F74616C206C656E677468206F66207061737465642076616C75657320696E636C7564696E672073';
wwv_flow_api.g_varchar2_table(39) := '6570617261746F72272C0A20202020435F504F5055505F50415354455F53554D4D4152595F4D41585F4C454E47544820202020202020202020202020203A20274D6178696D756D206C656E677468272C0A20202020435F504F5055505F50415354455F53';
wwv_flow_api.g_varchar2_table(40) := '554D4D4152595F56414C5545535F544F5F42455F4150504C494544202020203A20274E756D626572206F66207061737465642076616C75657320746F206265206170706C696564202530272C0A20202020435F504F5055505F50415354455F53554D4D41';
wwv_flow_api.g_varchar2_table(41) := '52595F56414C5545535F455843454544494E475F4C494D495420203A20274E756D626572206F66207061737465642076616C75657320657863656564696E6720746865206D6178696D756D206C656E677468202530272C0A20202020435F504F5055505F';
wwv_flow_api.g_varchar2_table(42) := '50415354455F53554D4D4152595F53484F575F4C4953545F414E43484F5220202020202020203A20272873686F77206C69737429272C0A20202020435F504F5055505F50415354455F53554D4D4152595F4D41584C454E4754485F4E4F54534554202020';
wwv_flow_api.g_varchar2_table(43) := '20202020203A20276E6F7420736574272C0A20202020435F504F5055505F50415354455F53554D4D4152595F54485F56414C5545535F4F555420202020202020202020203A202756616C75657320657863656564696E67206D6178696D756D206C656E67';
wwv_flow_api.g_varchar2_table(44) := '7468206C696D6974272C0A20202020435F504F5055505F50415354455F53554D4D4152595F54485F56414C5545535F494E2020202020202020202020203A202756616C75657320726561647920746F206265206170706C696564272C0A20202020435F50';
wwv_flow_api.g_varchar2_table(45) := '4F5055505F50415354455F53554D4D4152595F54485F53554D4D41525920202020202020202020202020203A202753756D6D617279272C0A20200A20200A202020205F6372656174653A2066756E6374696F6E28297B0A202020202020766172200A2020';
wwv_flow_api.g_varchar2_table(46) := '202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D20756E646566696E65643B0A20200A202020202020746869732E6C6F67507265666978203D20272320272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B27';
wwv_flow_api.g_varchar2_table(47) := '3A273B0A2020202020202F2F746869732E6C6F67507265666978203D2027232028272B746869732E656C656D656E742E6765742830292E69642B272920272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B273A273B0A20200A20202020';
wwv_flow_api.g_varchar2_table(48) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F637265617465272C20274465627567206C6576656C203D2022272B617065782E64656275672E6765744C65';
wwv_flow_api.g_varchar2_table(49) := '76656C28292B272227293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F637265617465272C20276F7074696F6E73272C207B0A2020';
wwv_flow_api.g_varchar2_table(50) := '202020202020226F7074696F6E73223A20746869732E6F7074696F6E732C200A202020202020202027776964676574273A20746869730A2020202020207D293B0A20200A202020202020746869732E5F73757065722820746869732E6F7074696F6E7320';
wwv_flow_api.g_varchar2_table(51) := '293B0A202020202020746869732E5F6170706C795472616E736C6174696F6E7328293B0A20200A202020202020746869732E706C7567696E53746F70706564203D2066616C73653B0A20200A20200A202020202020746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(52) := '696E6773203D207B0A2020202020202020226D61786C656E67746822202020202020202020202020202020203A20746869732E6F7074696F6E732E6974656D2E656C656D656E745F6D61785F6C656E6774682C0A20202020202020202269734465627567';
wwv_flow_api.g_varchar2_table(53) := '4F6E22202020202020202020202020202020203A20746869732E6F7074696F6E732E64656275672C0A202020202020202022646973706C6179457874726122202020202020202020202020203A20746869732E6F7074696F6E732E6974656D2E6C6F765F';
wwv_flow_api.g_varchar2_table(54) := '646973706C61795F65787472612C0A202020202020202022706F7075705365617263684465626F756E636554696D652220203A203330302C0A20202020202020202269734175746F636F6D706C657465417661696C61626C652220203A20746869732E6F';
wwv_flow_api.g_varchar2_table(55) := '7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274155544F434F4D504C4554452729203E202D312C';
wwv_flow_api.g_varchar2_table(56) := '0A2020202020202020226973506F7075705265706F7274417661696C61626C65222020203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E6174747269';
wwv_flow_api.g_varchar2_table(57) := '62757465732E73657474696E67732E696E6465784F662827504F504F55505F5245504F52542729203E202D312C0A20202020202020202269734D756C7469706C6553656C656374696F6E222020202020203A20746869732E6F7074696F6E732E61747472';
wwv_flow_api.g_varchar2_table(58) := '6962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274D532729203E202D312C0A202020202020202022706F707570223A207B0A20';
wwv_flow_api.g_varchar2_table(59) := '202020202020202020227769647468222020202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757057696474682C0A20202020202020202020226865696768742220202020202020202020';
wwv_flow_api.g_varchar2_table(60) := '202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F7075704865696768742C0A20202020202020202020227469746C65222020202020202020202020202020202020203A20746869732E5F676574506C7567696E5365';
wwv_flow_api.g_varchar2_table(61) := '7474696E67735F706F7075705469746C655465787428292C0A2020202020202020202022726F777350657250616765222020202020202020202020203A2031302C0A202020202020202020202269735265706F72744261736963436F6E66222020202020';
wwv_flow_api.g_varchar2_table(62) := '203A20746869732E5F676574506C7567696E53657474696E67735F69734261736963436F6E66696775726174696F6E28292C20202020202020200A202020202020202020202F2F7370727761647A2077206B6F6E74656B736369652069735265706F7274';
wwv_flow_api.g_varchar2_table(63) := '4261736963436F6E660A202020202020202020202269735265706F7274416476616E636564436F6E66222020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C2026262074686973';
wwv_flow_api.g_varchar2_table(64) := '2E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275243432729203E202D312C0A20202020202020202020226973446973706C6179436F6C756D6E56697369626C6522203A20746869732E6F7074';
wwv_flow_api.g_varchar2_table(65) := '696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F66';
wwv_flow_api.g_varchar2_table(66) := '28274444432729203E202D312C0A2020202020202020202022697352657475726E436F6C756D6E56697369626C652220203A20746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E';
wwv_flow_api.g_varchar2_table(67) := '756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F6628274452432729203E202D312C0A2020202020202020202022636C69636B4F6E526F7753656C656374';
wwv_flow_api.g_varchar2_table(68) := '73497422202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E64';
wwv_flow_api.g_varchar2_table(69) := '65784F662827434F5253492729203E202D312C0A2020202020202020202022647261676761626C652220202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E75';
wwv_flow_api.g_varchar2_table(70) := '6C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827445241474741424C452729203E202D312C0A2020202020202020202022726573697A61626C65222020202020202020';
wwv_flow_api.g_varchar2_table(71) := '2020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E646578';
wwv_flow_api.g_varchar2_table(72) := '4F662827524553495A41424C452729203E202D312C0A2020202020202020202022636C6F73654F6E45736361706522202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D20';
wwv_flow_api.g_varchar2_table(73) := '6E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827434F452729203E202D312C0A202020202020202020202273686F77526F77735065725061676522202020202020';
wwv_flow_api.g_varchar2_table(74) := '20203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827';
wwv_flow_api.g_varchar2_table(75) := '5250502729203E202D312C0A2020202020202020202022736561726368496E416C6C436F6C756D6E732220202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C202626207468';
wwv_flow_api.g_varchar2_table(76) := '69732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827534941432729203E202D312C0A202020202020202020202261646A757374486569676874546F526573756C74732220203A20746869732E';
wwv_flow_api.g_varchar2_table(77) := '6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282741485452522729203E';
wwv_flow_api.g_varchar2_table(78) := '202D310A20202020202020207D2C0A20202020202020202F2F0A20202020202020202270726F6D7074223A207B0A20202020202020202020226D61784865696768742220202020202020202020202020203A207061727365496E7428746869732E6F7074';
wwv_flow_api.g_varchar2_table(79) := '696F6E732E617474726962757465732E6175746F436F6D706C6574654D6178486569676874292C0A20202020202020202020226E617669676174696F6E4465626F756E636554696D6522203A2031302C0A20202020202020202020226465626F756E6365';
wwv_flow_api.g_varchar2_table(80) := '54696D652220202020202020202020203A203230302C202F2F544244206174727962757420706C7567696E750A2020202020202020202022726F777350657250616765222020202020202020202020203A207061727365496E7428746869732E6F707469';
wwv_flow_api.g_varchar2_table(81) := '6F6E732E617474726962757465732E6175746F436F6D706C657465526F77733253686F77292C200A2020202020202020202022617265546167734C696D69746564222020202020202020203A20746869732E6F7074696F6E732E61747472696275746573';
wwv_flow_api.g_varchar2_table(82) := '2E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274C44542729203E202D312C0A20';
wwv_flow_api.g_varchar2_table(83) := '202020202020202020226973437573746F6D54656D706C61746522202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074';
wwv_flow_api.g_varchar2_table(84) := '696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628275543542729203E202D312C0A2020202020202020202022746167734E6F2220202020202020202020202020202020203A20746869732E';
wwv_flow_api.g_varchar2_table(85) := '6F7074696F6E732E617474726962757465732E6175746F436F6D706C657465546167734E6F2C0A202020202020202020202274656D706C617465222020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E';
wwv_flow_api.g_varchar2_table(86) := '6175746F436F6D706C65746553657474696E677354656D706C6174652C0A202020202020202020202269734D696E696D616C496E7075744C656E677468222020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C';
wwv_flow_api.g_varchar2_table(87) := '65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274D494C2729203E202D312C0A2020202020202020202022';
wwv_flow_api.g_varchar2_table(88) := '6D696E696D616C496E7075744C656E6774682220202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C6574654D696E496E7075744C656E6774682C0A20202020202020202020226973526170696453656C65';
wwv_flow_api.g_varchar2_table(89) := '6374696F6E22202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F43';
wwv_flow_api.g_varchar2_table(90) := '6F6D706C65746553657474696E67732E696E6465784F66282752532729203E202D312C0A202020202020202020202268696465546F6F6C626172222020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E617574';
wwv_flow_api.g_varchar2_table(91) := '6F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F66282748542729203E202D310A20202020202020';
wwv_flow_api.g_varchar2_table(92) := '2020200A20202020202020207D0A2020202020207D3B0A20200A202020202020746869732E696E707574437373203D207B0A20202020202020202F2F22626F72646572436F6C6F7222203A20746869732E656C656D656E742E6373732827626F72646572';
wwv_flow_api.g_varchar2_table(93) := '436F6C6F722729203D3D202772676228302C20302C20302927203F2027726762283232332C203232332C203232332927203A20746869732E656C656D656E742E6373732827626F72646572436F6C6F7227292C0A202020202020202022666F6E7453697A';
wwv_flow_api.g_varchar2_table(94) := '6522202020203A20746869732E656C656D656E742E6373732827666F6E7453697A6527292C0A2020202020202020226C696E654865696768742220203A20746869732E656C656D656E742E63737328276C696E6548656967687427290A2020202020207D';
wwv_flow_api.g_varchar2_table(95) := '3B0A20200A2020202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D7320213D20756E646566696E65642029207B0A20202020202020202428746869732E6F7074696F6E732E69';
wwv_flow_api.g_varchar2_table(96) := '74656D2E6C6F765F636173636164655F706172656E745F6974656D73292E6F6E28276368616E6765272C20746869732E5F6465626F756E636528242E70726F787928746869732E5F636173636164696E674C6F764974656D2C2074686973292C20323530';
wwv_flow_api.g_varchar2_table(97) := '29290A2020202020207D202020200A2020202020200A202020202020746869732E776964676574556E69717565496420203D202428273C6469763E3C2F6469763E27292E756E69717565496428292E617474722827696427293B0A20200A202020202020';
wwv_flow_api.g_varchar2_table(98) := '746869732E6D61736B203D20746869732E5F6D61736B4372656174654E657728293B0A202020202020746869732E656C656D656E742E61667465722820746869732E6D61736B2E636F6E7461696E657220293B0A2020202020202F2F70726F6D70742077';
wwv_flow_api.g_varchar2_table(99) := '6964746820697320646570656E64656E74206F6E20746869732E6D61736B2E636F6E7461696E65720A202020202020746869732E70726F6D7074203D20746869732E5F70726F6D70744372656174654E657728293B0A20200A202020202020746869732E';
wwv_flow_api.g_varchar2_table(100) := '706F707570203D20746869732E5F706F7075704372656174654F626A65637428293B0A20200A202020202020746869732E7061737465203D207B0A202020202020202022706F707570223A20746869732E5F7061737465506F7075704372656174654E65';
wwv_flow_api.g_varchar2_table(101) := '7728292C0A202020202020202022636C6173736573223A207B0A2020202020202020202022626F6479223A2022626F6479220A20202020202020207D2C0A2020202020202020227374617465223A207B0A2020202020202020202022706173746564223A';
wwv_flow_api.g_varchar2_table(102) := '205B5D2C0A2020202020202020202022706172736564223A205B5D2C0A20202020202020202020226F75744F664C696D6974223A205B5D0A20202020202020207D0A202020200A2020202020207D3B0A20200A2020202020206966202820617065782E64';
wwv_flow_api.g_varchar2_table(103) := '656275672E6765744C6576656C2829203E3D20746869732E435F4C4F475F4C4556454C362029207B0A2020202020202020746869732E5F6372656174654D61736B4465627567427574746F6E28293B20200A2020202020207D0A20200A20202020202074';
wwv_flow_api.g_varchar2_table(104) := '6869732E656C656D656E742E6F6E28276170657872656672657368272C20242E70726F787928746869732E5F6D616E75616C5265667265736843616C6C6261636B2C207468697329293B0A20200A202020202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(105) := '676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F637265617465272C2027506C7567696E20696E7374616E636520637265617465642E20556E69717565206964203D202223272B746869732E7769646765';
wwv_flow_api.g_varchar2_table(106) := '74556E6971756549642B272227293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C2027706C7567696E53657474696E6773272C20746869';
wwv_flow_api.g_varchar2_table(107) := '732E706C7567696E53657474696E6773293B202020200A2020202020200A20200A2020202020206966202820746869732E656C656D656E742E636C6F7365737428272E742D4469616C6F67526567696F6E27292E6C656E677468203E20302029207B0A20';
wwv_flow_api.g_varchar2_table(108) := '20202020202020746869732E656C656D656E742E636C6F7365737428272E742D4469616C6F67526567696F6E2D626F647927292E617070656E642820746869732E70726F6D70742E636F6E7461696E657220293B0A2020202020207D0A20202020202065';
wwv_flow_api.g_varchar2_table(109) := '6C7365207B0A2020202020202020242827626F647927292E617070656E642820746869732E70726F6D70742E636F6E7461696E657220293B20200A2020202020207D0A2020202020200A202020202020746869732E656C656D656E742E6869646528293B';
wwv_flow_api.g_varchar2_table(110) := '0A20200A202020202020746869732E6967203D207B0A2020202020202020226973456D6265646564496E47726964223A20746869732E656C656D656E742E636C6F7365737428272E612D47562D636F6C756D6E4974656D27292E6C656E677468203E2030';
wwv_flow_api.g_varchar2_table(111) := '2C0A20202020202020202267726964223A20756E646566696E65642C0A202020202020202022726567696F6E223A20756E646566696E65640A2020202020207D3B0A20200A202020202020746869732E5F696E7465677261746557697468417065784170';
wwv_flow_api.g_varchar2_table(112) := '6928293B0A20200A2020202020206966202820746869732E5F656C656D656E7447657456616C75654C656E6768742829203E20302026262021746869732E706C7567696E53746F707065642029207B0A2020202020202020746869732E5F6765744F6E4C';
wwv_flow_api.g_varchar2_table(113) := '6F61644C6F762820746869732E5F656C656D656E7447657456616C7565282920293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0A2020202020';
wwv_flow_api.g_varchar2_table(114) := '207D0A20200A20202020202024282077696E646F7720292E726573697A6528242E70726F7879282066756E6374696F6E28297B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(115) := '69732E6C6F675072656669782C202777696E646F7720726573697A65642C207265706F736974696F6E2070726F6D707427293B0A20200A20202020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0A202020202020';
wwv_flow_api.g_varchar2_table(116) := '202020200A20202020202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A20202020202020207D0A2020202020207D2C207468697329293B0A202020207D2C0A20202F2F206A517565727920776964676574206E6174697665';
wwv_flow_api.g_varchar2_table(117) := '206D6574686F64730A20202F2F0A202020205F64657374726F793A2066756E6374696F6E28297B0A20200A202020207D2C0A20202F2F0A202020205F7365744F7074696F6E3A2066756E6374696F6E2820704B65792C207056616C75652029207B0A2020';
wwv_flow_api.g_varchar2_table(118) := '202020206966202820704B6579203D3D3D202276616C7565222029207B0A20202020202020207056616C7565203D20746869732E5F636F6E73747261696E28207056616C756520293B0A2020202020207D0A20200A202020202020746869732E5F737570';
wwv_flow_api.g_varchar2_table(119) := '65722820704B65792C207056616C756520293B0A202020207D2C20200A202020206F7074696F6E733A2066756E6374696F6E2820704F7074696F6E7320297B0A202020202020746869732E5F73757065722820704F7074696F6E7320293B0A202020207D';
wwv_flow_api.g_varchar2_table(120) := '2C0A20202F2F0A202020205F7365744F7074696F6E733A2066756E6374696F6E2820704F7074696F6E732029207B0A202020202020746869732E5F73757065722820704F7074696F6E7320293B0A202020207D2C0A202020202F2A0A2020202020202A0A';
wwv_flow_api.g_varchar2_table(121) := '2020202020202A2066756E6374696F6E206E616D653A205F676574506C7567696E53657474696E67735F706F7075705469746C65546578740A2020202020202A206465736372697074696F6E20203A0A2020202020202A20706172616D73202020202020';
wwv_flow_api.g_varchar2_table(122) := '203A206E6F6E650A2020202020202A0A202020202A2F0A20200A202020205F676574506C7567696E53657474696E67735F706F7075705469746C65546578743A2066756E6374696F6E2829207B0A202020202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(123) := '676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F676574506C7567696E53657474696E67735F706F7075705469746C6554657874272C207B0A202020202020202022617267756D656E7473223A206172';
wwv_flow_api.g_varchar2_table(124) := '67756D656E74730A2020202020207D293B0A20200A2020202020207661722072657475726E56616C7565203D2027756E646566696E6564273B0A20200A20202020202069662028200A2020202020202020746869732E6F7074696F6E732E617474726962';
wwv_flow_api.g_varchar2_table(125) := '757465732E706F70757053657474696E677320213D206E756C6C200A2020202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282743542729203E202D310A20202020';
wwv_flow_api.g_varchar2_table(126) := '202029207B0A202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E617474726962757465732E706F7075705469746C65546578740A2020202020207D0A202020202020656C7365207B0A202020202020202072657475';
wwv_flow_api.g_varchar2_table(127) := '726E56616C7565203D20746869732E6F7074696F6E732E6974656D2E706C61696E5F6C6162656C3B0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2074686973';
wwv_flow_api.g_varchar2_table(128) := '2E6C6F675072656669782C20275F676574506C7567696E53657474696E67735F706F7075705469746C6554657874272C202272657475726E73222C207B0A20202020202020202272657475726E56616C7565223A2072657475726E56616C75650A202020';
wwv_flow_api.g_varchar2_table(129) := '2020207D293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F676574506C7567696E53657474696E67';
wwv_flow_api.g_varchar2_table(130) := '735F69734261736963436F6E66696775726174696F6E0A2020202020202A206465736372697074696F6E20203A0A2020202020202A20706172616D73202020202020203A206E6F6E650A2020202020202A0A202020202A2F0A202020205F676574506C75';
wwv_flow_api.g_varchar2_table(131) := '67696E53657474696E67735F69734261736963436F6E66696775726174696F6E3A2066756E6374696F6E2829207B0A2020202020207661722072657475726E56616C7565203D2066616C73653B0A20200A202020202020696620280A2020202020202020';
wwv_flow_api.g_varchar2_table(132) := '2F2F706F7075702073657474696E677320697320656D7074790A2020202020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E6773203D3D206E756C6C0A20202020202020207C7C20280A20202020202020';
wwv_flow_api.g_varchar2_table(133) := '2020202F2F706F7075702073657474696E6773206973206E6F7420656D7074792062757420636865636B626F78206973206E6F7420636865636B65640A20202020202020202020746869732E6F7074696F6E732E617474726962757465732E706F707570';
wwv_flow_api.g_varchar2_table(134) := '53657474696E677320213D206E756C6C0A20202020202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275243432729203D3D202D310A2020202020202020290A20';
wwv_flow_api.g_varchar2_table(135) := '202020202029207B0A202020202020202072657475726E56616C7565203D20747275653B0A2020202020207D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(136) := '6669782C20275F676574506C7567696E53657474696E67735F69734261736963436F6E66696775726174696F6E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202272657475726E223A20';
wwv_flow_api.g_varchar2_table(137) := '72657475726E56616C75650A2020202020207D293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F636173';
wwv_flow_api.g_varchar2_table(138) := '636164696E674C6F764974656D0A2020202020202A206465736372697074696F6E20203A0A2020202020202A20706172616D73202020202020203A206E6F6E650A2020202020202A0A202020202A2F20200A202020205F636173636164696E674C6F7649';
wwv_flow_api.g_varchar2_table(139) := '74656D3A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F636173636164696E674C6F764974';
wwv_flow_api.g_varchar2_table(140) := '656D272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202274726967676572696E67456C656D656E74223A20704576656E742E7461726765742C0A2020202020202020227472696767657269';
wwv_flow_api.g_varchar2_table(141) := '6E67456C656D656E7432223A20704576656E742E7461726765742E69642C0A20202020202020202276616C7565223A20704576656E742E7461726765742E76616C75650A2020202020207D293B0A20200A2020202020207661720A202020202020202061';
wwv_flow_api.g_varchar2_table(142) := '6A617844617461203D207B0A2020202020202020202022783031223A2022434153434144494E474C4F56222C0A2020202020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D7328290A20202020202020';
wwv_flow_api.g_varchar2_table(143) := '207D2C0A2020202020202020616A61784F7074696F6E73203D207B0A20202020202020202020227461726765742220202020203A20746869732E656C656D656E742E6765742830292C0A20202020202020202020226265666F726553656E64223A20242E';
wwv_flow_api.g_varchar2_table(144) := '70726F78792866756E6374696F6E28297B0A202020202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E6728293B0A202020202020202020207D2C2074686973292C0A2020202020202020202022636F6D';
wwv_flow_api.g_varchar2_table(145) := '706C657465223A20242E70726F78792866756E6374696F6E28297B0A202020202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4869646528293B0A202020202020202020202020746869732E5F6765744F6E4C6F6164';
wwv_flow_api.g_varchar2_table(146) := '4C6F762820746869732E5F656C656D656E7447657456616C7565282920293B0A202020202020202020207D2C74686973290A20202020202020207D3B0A20200A202020202020617065782E7365727665722E706C7567696E202820746869732E6F707469';
wwv_flow_api.g_varchar2_table(147) := '6F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7472';
wwv_flow_api.g_varchar2_table(148) := '69676765724576656E740A2020202020202A206465736372697074696F6E20203A20547269676765727320676976656E206576656E74206F6E2041504558206974656D0A2020202020202A20706172616D733A0A2020202020202A2020202D2070457665';
wwv_flow_api.g_varchar2_table(149) := '6E744E616D65202D206576656E74206E616D6520746F206265207472696767657265640A2020202020202A2020202D2070446174612020202020202D206461746120746F20626520706173736564207769746820746865206576656E742028746869732E';
wwv_flow_api.g_varchar2_table(150) := '6461746120696E2064796E616D696320616374696F6E290A2020202020202A0A202020202A2F0A202020205F747269676765724576656E743A2066756E6374696F6E2820704576656E744E616D652C2070446174612029207B0A20202020202061706578';
wwv_flow_api.g_varchar2_table(151) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F747269676765724576656E74272C207B0A202020202020202022617267756D656E74732220203A20617267756D656E74';
wwv_flow_api.g_varchar2_table(152) := '732C0A202020202020202022704576656E744E616D6522203A20704576656E744E616D652C0A2020202020202020227044617461222020202020203A2070446174610A2020202020207D293B0A20200A202020202020617065782E6576656E742E747269';
wwv_flow_api.g_varchar2_table(153) := '676765722820746869732E656C656D656E742E6765742830292C20704576656E744E616D652C20704461746120293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D616E75616C';
wwv_flow_api.g_varchar2_table(154) := '5265667265736843616C6C6261636B0A2020202020202A206465736372697074696F6E20203A0A2020202020202A20706172616D73202020202020203A206E6F6E650A2020202020202A0A202020202A2F0A202020205F6D616E75616C52656672657368';
wwv_flow_api.g_varchar2_table(155) := '43616C6C6261636B3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6D616E75616C5265667265736843616C6C';
wwv_flow_api.g_varchar2_table(156) := '6261636B272C207B0A202020202020202022617267756D656E74732220203A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E5F6765744F6E4C6F61644C6F7628293B0A202020207D2C0A202020202F2A0A202020';
wwv_flow_api.g_varchar2_table(157) := '2020202A0A2020202020202A2066756E6374696F6E206E616D653A205F676574436F6C756D6E4964784279436F6C756D6E4E616D650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A202020202020';
wwv_flow_api.g_varchar2_table(158) := '2A2020202D2070436F6C756D6E4E616D65202D207462640A2020202020202A0A2020202020202A200A202020202A2F0A202020205F676574436F6C756D6E4964784279436F6C756D6E4E616D653A2066756E6374696F6E282070436F6C756D6E4E616D65';
wwv_flow_api.g_varchar2_table(159) := '20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D65272C207B0A2020202020';
wwv_flow_api.g_varchar2_table(160) := '20202022617267756D656E74732220203A20617267756D656E74732C0A20202020202020202270436F6C756D6E4E616D65223A2070436F6C756D6E4E616D652C200A202020202020202022636F6C756D6E7322202020203A20746869732E6F7074696F6E';
wwv_flow_api.g_varchar2_table(161) := '732E636F6C756D6E730A2020202020207D293B0A20200A202020202020766172200A202020202020202072657475726E56616C7565203D20756E646566696E65643B0A20200A202020202020666F722028766172206920696E20746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(162) := '6E732E636F6C756D6E7329207B0A20202020202020206966202820746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D45203D3D2070436F6C756D6E4E616D6529207B0A20202020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(163) := '672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D6E2022272B70436F6C756D6E4E616D652B272220666F75';
wwv_flow_api.g_varchar2_table(164) := '6E642C2072657475726E20697473204944582E27293B0A2020202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E4944583B0A20202020202020202020627265616B3B0A20202020202020';
wwv_flow_api.g_varchar2_table(165) := '207D0A2020202020207D0A20200A202020202020696620282072657475726E56616C7565203D3D20756E646566696E65642029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20';
wwv_flow_api.g_varchar2_table(166) := '746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D6E2022272B70436F6C756D6E4E616D652B2722206E6F7420666F756E642C2072657475726E2031737420636F6C756D6E2E272C20';
wwv_flow_api.g_varchar2_table(167) := '746869732E6F7074696F6E732E636F6C756D6E735B305D2E494458293B0A202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E636F6C756D6E735B305D2E4944583B0A2020202020207D0A20200A2020202020206170';
wwv_flow_api.g_varchar2_table(168) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D652072657475726E732022272B72657475726E56616C75';
wwv_flow_api.g_varchar2_table(169) := '652B272227293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A207072696E7446756E6374696F6E546F436F6E';
wwv_flow_api.g_varchar2_table(170) := '736F6C650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020207072696E7446756E6374696F';
wwv_flow_api.g_varchar2_table(171) := '6E546F436F6E736F6C653A2066756E6374696F6E28207046756E6374696F6E426F647920297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(172) := '7072696E7446756E6374696F6E546F436F6E736F6C65272C207B0A202020202020202022617267756D656E747322202020203A20617267756D656E74732C0A2020202020202020227046756E6374696F6E426F6479223A207046756E6374696F6E426F64';
wwv_flow_api.g_varchar2_table(173) := '790A2020202020207D293B0A20200A202020202020766172206172726179203D207046756E6374696F6E426F64792E73706C697428225C6E22293B0A20200A202020202020666F722028207661722069203D20303B2069203C2061727261792E6C656E67';
wwv_flow_api.g_varchar2_table(174) := '74683B20692B2B2029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20277072696E7446756E6374696F6E546F436F6E736F6C65202327';
wwv_flow_api.g_varchar2_table(175) := '2C2061727261795B695D293B0A20202020202020202F2F617065782E64656275672E696E666F28746869732E6C6F675072656669782C202723272C2061727261795B695D293B20200A2020202020207D0A202020207D2C0A202020202F2A0A2020202020';
wwv_flow_api.g_varchar2_table(176) := '202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D';
wwv_flow_api.g_varchar2_table(177) := '733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E3A2066756E6374696F6E28297B0A20202020';
wwv_flow_api.g_varchar2_table(178) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C207B0A2020';
wwv_flow_api.g_varchar2_table(179) := '20202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722066756E633B0A20200A202020202020747279207B0A202020202020202066756E63203D206E65772046756E6374696F6E';
wwv_flow_api.g_varchar2_table(180) := '280A202020202020202020202270526F77222C0A2020202020202020202022746869732E64617461203D2070526F773B5C6E222B0A20202020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C6174650A20';
wwv_flow_api.g_varchar2_table(181) := '20202020202020293B0A20200A2020202020202020746869732E7072696E7446756E6374696F6E546F436F6E736F6C65282066756E632E746F537472696E67282920293B0A20200A2020202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(182) := '6869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374696F6E206372656174656422293B0A2020202020';
wwv_flow_api.g_varchar2_table(183) := '200A2020202020207D206361746368286572726F7229207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70745072657061';
wwv_flow_api.g_varchar2_table(184) := '7465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374696F6E2063616E277420626520637265617465643A20222B6572726F722E6D657373616765293B0A2020202020202020746869732E7072696E7446756E6374696F6E54';
wwv_flow_api.g_varchar2_table(185) := '6F436F6E736F6C652820746869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C61746520293B0A20200A2020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0A20202020';
wwv_flow_api.g_varchar2_table(186) := '20202020202022616464496E666F2220203A202746756E6374696F6E2072657475726E696E672070726F6D70742074656D706C61746520686173206572726F72732E272C0A20202020202020202020226572726F7222202020203A2027496E76616C6964';
wwv_flow_api.g_varchar2_table(187) := '20706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B272220636F6E66696775726174696F6E2E272C0A202020202020202020202274656368496E666F22203A205B0A2020202020202020202020207B0A2020202020';
wwv_flow_api.g_varchar2_table(188) := '202020202020202020226E616D65223A206572726F722E6E616D652C0A20202020202020202020202020202276616C7565223A206572726F722E6D6573736167650A2020202020202020202020207D2C0A2020202020202020202020207B0A2020202020';
wwv_flow_api.g_varchar2_table(189) := '202020202020202020226E616D65223A202746756E6374696F6E272C0A20202020202020202020202020202276616C7565223A20746869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C6174650A202020202020202020202020';
wwv_flow_api.g_varchar2_table(190) := '7D0A20200A2020202020202020202020200A202020202020202020205D0A20202020202020207D2C2074727565293B0A20200A2020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F722820293B0A202020202020';
wwv_flow_api.g_varchar2_table(191) := '7D0A2020202020200A2020202020200A20202020202072657475726E2066756E633B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6170706C795472616E736C6174696F6E';
wwv_flow_api.g_varchar2_table(192) := '730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6170706C795472616E736C617469';
wwv_flow_api.g_varchar2_table(193) := '6F6E733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6170706C795472616E736C6174696F6E73272C207B';
wwv_flow_api.g_varchar2_table(194) := '0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172207472616E736C6174696F6E73203D20746869732E6F7074696F6E732E617474726962757465732E7472616E736C';
wwv_flow_api.g_varchar2_table(195) := '6174696F6E733B0A20200A20202020202069662028207472616E736C6174696F6E732E6C656E677468203E20302029207B0A2020202020202020666F72202820766172206920696E207472616E736C6174696F6E732029207B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(196) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6170706C795472616E736C6174696F6E73272C207472616E736C6174696F6E735B695D2E5452414E534C4154';
wwv_flow_api.g_varchar2_table(197) := '41424C455F4D4553534147452C207472616E736C6174696F6E735B695D2E4D4553534147455F54455854293B0A20202020202020202020746869735B7472616E736C6174696F6E735B695D2E5452414E534C415441424C455F4D4553534147452E726570';
wwv_flow_api.g_varchar2_table(198) := '6C61636528275041454C495F272C2027435F27295D203D207472616E736C6174696F6E735B695D2E4D4553534147455F544558543B0A20202020202020207D0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A202020202020';
wwv_flow_api.g_varchar2_table(199) := '2A2066756E6374696F6E206E616D653A205F696E7465677261746557697468417065784170690A2020202020202A206465736372697074696F6E20203A2068747470733A2F2F646F63732E6F7261636C652E636F6D2F656E2F64617461626173652F6F72';
wwv_flow_api.g_varchar2_table(200) := '61636C652F6170706C69636174696F6E2D657870726573732F31392E312F6165786A732F6974656D2E68746D6C0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F';
wwv_flow_api.g_varchar2_table(201) := '0A202020205F696E7465677261746557697468417065784170693A2066756E6374696F6E2829207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(202) := '20275F696E746567726174655769746841706578417069272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022646F6D456C656D656E74223A20746869732E656C656D656E742E6765742830';
wwv_flow_api.g_varchar2_table(203) := '290A2020202020207D293B0A20200A202020202020766172200A2020202020202020704F7074696F6E73203D207B0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A20676574506F70757053656C65';
wwv_flow_api.g_varchar2_table(204) := '63746F720A2020202020202020202020202A0A202020202020202020202A2F0A2020202020202020202022676574506F70757053656C6563746F72223A20242E70726F7879282066756E6374696F6E28297B0A202020202020202020202020766172200A';
wwv_flow_api.g_varchar2_table(205) := '202020202020202020202020202073656C6563746F7273203D205B0A20202020202020202020202020202020275B646174612D70726F6D70743D22272B746869732E776964676574556E6971756549642B27225D272C0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(206) := '202020275B646174612D706F7075703D22272B746869732E776964676574556E6971756549642B27225D270A202020202020202020202020202020202F2F275B646174612D70617374653D22272B746869732E776964676574556E6971756549642B2722';
wwv_flow_api.g_varchar2_table(207) := '5D272C0A202020202020202020202020202020202F2F275B646174612D6D61736B3D22272B746869732E776964676574556E6971756549642B27225D272020202A2F0A20202020202020202020202020205D3B0A20200A20202020202020202020202061';
wwv_flow_api.g_varchar2_table(208) := '7065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027676574506F70757053656C6563746F72272C207B0A20';
wwv_flow_api.g_varchar2_table(209) := '2020202020202020202020202022617267756D656E747322203A20617267756D656E74732C0A20202020202020202020202020202273656C6563746F72223A2073656C6563746F72732E6A6F696E28272C27292C0A202020202020202020202020202022';
wwv_flow_api.g_varchar2_table(210) := '73656C6563746F72206576616C223A20242873656C6563746F72732E6A6F696E28272C2729290A2020202020202020202020207D293B0A20200A20202020202020202020202072657475726E2073656C6563746F72732E6A6F696E28272C27293B0A2020';
wwv_flow_api.g_varchar2_table(211) := '20202020202020207D2C207468697320292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A2073657456616C75650A2020202020202020202020202A0A202020202020202020202A2F0A20202020';
wwv_flow_api.g_varchar2_table(212) := '2020202020202273657456616C7565223A20242E70726F78792866756E6374696F6E28207056616C75652C2070446973706C617956616C75652C207053757070726573734368616E67654576656E742029207B0A20202020202020202020202061706578';
wwv_flow_api.g_varchar2_table(213) := '2E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773657456616C7565272C207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(214) := '202022617267756D656E7473223A20617267756D656E74732C2020202020202020202020200A2020202020202020202020202020227056616C7565222020202020202020202020202020203A207056616C75652C0A202020202020202020202020202022';
wwv_flow_api.g_varchar2_table(215) := '70446973706C617956616C75652220202020202020203A2070446973706C617956616C75652C0A2020202020202020202020202020227053757070726573734368616E67654576656E7422203A207053757070726573734368616E67654576656E740A20';
wwv_flow_api.g_varchar2_table(216) := '20202020202020202020207D293B0A20200A202020202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0A202020202020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0A20200A';
wwv_flow_api.g_varchar2_table(217) := '20202020202020202020202069662028207056616C7565203D3D20756E646566696E6564207C7C207056616C7565203D3D206E756C6C207C7C207056616C756520213D20756E646566696E6564202626207056616C756520213D206E756C6C2026262070';
wwv_flow_api.g_varchar2_table(218) := '56616C75652E6C656E677468203D3D20302029207B0A20202020202020202020202020207056616C7565203D206E756C6C3B0A2020202020202020202020207D0A20200A202020202020202020202020746869732E5F656C656D656E7453657456616C75';
wwv_flow_api.g_varchar2_table(219) := '6528207056616C756520293B0A20200A20202020202020202020202069662028207053757070726573734368616E67654576656E74203D3D2074727565207C7C207053757070726573734368616E67654576656E74203D3D20756E646566696E65642029';
wwv_flow_api.g_varchar2_table(220) := '207B0A2020202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20277365';
wwv_flow_api.g_varchar2_table(221) := '7456616C7565272C20274368616E6765206576656E74206973206E6F742074726967676572656420285375707072657373204368616E6765204576656E742069732073657420746F202259657322292E27293B0A2020202020202020202020207D0A2020';
wwv_flow_api.g_varchar2_table(222) := '20202020202020202020656C7365207B0A2020202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F696E74656772617465576974';
wwv_flow_api.g_varchar2_table(223) := '6841706578417069272C202773657456616C7565272C20274368616E6765206576656E742069732074726967676572656420285375707072657373204368616E6765204576656E742069732073657420746F20224E6F22292E27293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(224) := '20202020202020202020746869732E5F747269676765724576656E7428276368616E6765272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A20202020202020202020202020202F2F617065782E6576656E742E7472696767';
wwv_flow_api.g_varchar2_table(225) := '65722820746869732E656C656D656E742E6765742830292C20276368616E67652720293B0A2020202020202020202020207D0A20200A20202020202020202020202069662028207056616C7565203D3D206E756C6C2029207B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(226) := '202020202F2F2072657365742076616C75650A20202020202020202020202020202F2F20646F206E6F7468696E670A2020202020202020202020207D0A202020202020202020202020656C736520696620282070446973706C617956616C756520213D20';
wwv_flow_api.g_varchar2_table(227) := '756E646566696E65642029207B0A20202020202020202020202020202F2F2076616C756520697320646566696E65640A20202020202020202020202020202F2F2070446973706C617920697320646566696E65640A20202020202020202020202020202F';
wwv_flow_api.g_varchar2_table(228) := '2F2072656E646572207461670A20202020202020202020202020202F2F20666F72206578616D706C6520717569636B207069636B730A20200A2020202020202020202020202020746869732E5F6D61736B537461746553656C6563746564416464280A20';
wwv_flow_api.g_varchar2_table(229) := '2020202020202020202020202020207B0A20202020202020202020202020202020202022646973706C6179223A2070446973706C617956616C75652C0A2020202020202020202020202020202020202276616C75652220203A207056616C75650A202020';
wwv_flow_api.g_varchar2_table(230) := '202020202020202020202020207D2C20202020202020202020202020202020202020202020202020202F2F206F626A6563740A2020202020202020202020202020202066616C73652C202020202020202020202020202020202020202020202F2F206973';
wwv_flow_api.g_varchar2_table(231) := '2065787472612076616C75652C0A2020202020202020202020202020202066616C736520202020202020202020202020202020202020202020202F2F206973206E756C6C2076616C75650A2020202020202020202020202020293B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(232) := '202020202020202020746869732E5F70726F6D70744170706C7956616C756573282066616C736520293B0A2020202020202020202020202020746869732E5F70726F6D707452656E6465725461677328293B0A2020202020202020202020207D0A202020';
wwv_flow_api.g_varchar2_table(233) := '202020202020202020656C7365207B0A2020202020202020202020202020746869732E5F6765744F6E4C6F61644C6F7628207056616C756520293B0A2020202020202020202020207D0A202020202020202020207D2C2074686973292C0A202020202020';
wwv_flow_api.g_varchar2_table(234) := '202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A206E756C6C56616C75650A2020202020202020202020202A0A202020202020202020202A2F0A20202020202020202020226E756C6C56616C7565223A20746869732E';
wwv_flow_api.g_varchar2_table(235) := '5F6765744974656D4C4F564E756C6C56616C756528292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A207265696E69740A2020202020202020202020202A0A202020202020202020202A2F0A20';
wwv_flow_api.g_varchar2_table(236) := '202020202020202020227265696E6974223A20242E70726F7879282066756E6374696F6E28207056616C75652C2070446973706C617920297B0A20200A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C';
wwv_flow_api.g_varchar2_table(237) := '4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20277265696E6974272C207B0A202020202020202020202020202022617267756D656E7473223A20617267756D656E74732C';
wwv_flow_api.g_varchar2_table(238) := '0A2020202020202020202020202020227056616C7565223A207056616C75652C0A20202020202020202020202020202270446973706C6179223A2070446973706C61792C0A2020202020202020202020202020226964223A20746869732E656C656D656E';
wwv_flow_api.g_varchar2_table(239) := '742E6765742830292E69640A2020202020202020202020207D293B0A20200A202020202020202020202020766172200A20202020202020202020202020202F2F646973706C6179417272203D2070446973706C6179203D3D206E756C6C203F207056616C';
wwv_flow_api.g_varchar2_table(240) := '75652E73706C69742820746869732E435F444953504C41595F534550415241544F522029203A2070446973706C61792E73706C69742820746869732E435F444953504C41595F534550415241544F5220292C0A2020202020202020202020202020646973';
wwv_flow_api.g_varchar2_table(241) := '706C6179417272203D205B5D2C0A20202020202020202020202020206E6F74456D707479203D2066616C73652C0A20202020202020202020202020206F626A65637454656D703B0A20200A2020202020202020202020206966202820746869732E69672E';
wwv_flow_api.g_varchar2_table(242) := '6973456D6265646564496E477269642029207B0A2020202020202020202020202020746869732E69672E726567696F6E203D20746869732E656C656D656E742E636C6F7365737428272E612D494727293B0A202020202020202020202020202074686973';
wwv_flow_api.g_varchar2_table(243) := '2E69672E67726964203D20746869732E69672E726567696F6E2E696E746572616374697665477269642827676574566965777327292E677269643B0A2020202020202020202020207D0A20200A2020202020202020202020202F2F726573657420617574';
wwv_flow_api.g_varchar2_table(244) := '6F636F6D706C6574652073656172636820737472696E670A202020202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C293B0A20200A2020202020202020202020202F2F726573657420706F707570207265706F7274';
wwv_flow_api.g_varchar2_table(245) := '2073746174650A202020202020202020202020746869732E706F7075702E73746174652E736561726368537472696E67202020202020202020203D20756E646566696E65643B0A202020202020202020202020746869732E706F7075702E73746174652E';
wwv_flow_api.g_varchar2_table(246) := '6C6173744665746368656450616765202020202020203D206E756C6C3B0A202020202020202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D206E756C6C3B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(247) := '20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D2027617363273B0A202020202020202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E49647820202020202020';
wwv_flow_api.g_varchar2_table(248) := '3D20756E646566696E65643B0A2020200A202020202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0A202020202020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0A20200A20';
wwv_flow_api.g_varchar2_table(249) := '20202020202020202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0A20200A202020202020202020202020202069662028202141727261792E6973417272617928207056';
wwv_flow_api.g_varchar2_table(250) := '616C756520292029207B0A202020202020202020202020202020207056616C7565203D207056616C75652E73706C69742820746869732E435F56414C55455F534550415241544F5220293B0A20202020202020202020202020207D0A20200A2020202020';
wwv_flow_api.g_varchar2_table(251) := '202020202020202020747279207B0A20202020202020202020202020202020646973706C6179417272203D2070446973706C61792E73706C69742820746869732E435F444953504C41595F534550415241544F5220293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(252) := '20207D2063617463682820704572726F722029207B0A202020202020202020202020202020202F2F20202020202020202020202020200A20202020202020202020202020202020646973706C6179417272203D207056616C75653B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(253) := '2020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20277265696E6974272C2027436F756C646E5C27742073706C697420646973706C6179';
wwv_flow_api.g_varchar2_table(254) := '2076616C75652873292062656361757365206974206973206E756C6C2E272C207B0A20202020202020202020202020202020202027704572726F7227203A20704572726F720A202020202020202020202020202020207D293B2020202020202020202020';
wwv_flow_api.g_varchar2_table(255) := '200A20202020202020202020202020207D2020202020202020202020200A20200A202020202020202020202020202069662028207056616C75652E6C656E677468203D3D2031202626207056616C75655B305D2E6C656E677468203D3D20302029207B0A';
wwv_flow_api.g_varchar2_table(256) := '202020202020202020202020202020202F2F656D7074792076616C75650A20202020202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(257) := '20277265696E6974272C202756616C7565206973206E6F742073657427293B0A20202020202020202020202020202020746869732E5F656C656D656E7453657456616C75652820222220293B0A2020202020202020202020202020202072657475726E20';
wwv_flow_api.g_varchar2_table(258) := '766F69642830293B0A20202020202020202020202020207D0A20200A2020202020202020202020202020666F72202876617220693D303B2069203C207056616C75652E6C656E6774683B20692B2B29207B0A202020202020202020202020202020206F62';
wwv_flow_api.g_varchar2_table(259) := '6A65637454656D70203D207B0A2020202020202020202020202020202020202276616C75652220203A207056616C75655B695D2C0A20202020202020202020202020202020202022646973706C6179223A20646973706C61794172725B695D0A20202020';
wwv_flow_api.g_varchar2_table(260) := '2020202020202020202020207D3B0A20200A20202020202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428200A2020202020202020202020202020202020206F626A65637454656D702C202F2F206F626A65';
wwv_flow_api.g_varchar2_table(261) := '63740A20202020202020202020202020202020202066616C73652C2020202020202F2F2069732065787472612076616C75650A20202020202020202020202020202020202066616C7365202020202020202F2F206973206E756C6C2076616C75650A2020';
wwv_flow_api.g_varchar2_table(262) := '2020202020202020202020202020293B0A20202020202020202020202020207D0A20200A20202020202020202020202020206E6F74456D707479203D207056616C75652E6C656E677468203E20303B0A2020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(263) := '202020202020656C7365207B202F2F73696E67756C61722073656C656374696F6E0A202020202020202020202020202069662028207056616C75652E6C656E677468203E20302029207B0A202020202020202020202020202020206F626A65637454656D';
wwv_flow_api.g_varchar2_table(264) := '70203D207B0A2020202020202020202020202020202020202276616C75652220203A207056616C75652C0A20202020202020202020202020202020202022646973706C6179223A2070446973706C61790A202020202020202020202020202020207D3B0A';
wwv_flow_api.g_varchar2_table(265) := '2020202020202020202020200A20202020202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428200A2020202020202020202020202020202020206F626A65637454656D702C202F2F206F626A6563740A2020';
wwv_flow_api.g_varchar2_table(266) := '2020202020202020202020202020202066616C73652C2020202020202F2F2069732065787472612076616C75650A20202020202020202020202020202020202066616C7365202020202020202F2F206973206E756C6C2076616C75650A20202020202020';
wwv_flow_api.g_varchar2_table(267) := '202020202020202020293B0A20200A202020202020202020202020202020206E6F74456D707479203D20747275653B0A20200A20202020202020202020202020207D200A2020202020202020202020202020656C7365207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(268) := '2020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20277265696E6974272C202756616C7565206973206E6F742073657427293B0A202020202020202020';
wwv_flow_api.g_varchar2_table(269) := '20202020202020746869732E5F656C656D656E7453657456616C75652820222220293B0A20202020202020202020202020207D20202020202020202020200A2020202020202020202020207D0A20200A20202020202020202020202069662028206E6F74';
wwv_flow_api.g_varchar2_table(270) := '456D7074792029207B0A2020202020202020202020202020746869732E5F656C656D656E7453657456616C756528207056616C756520293B0A2020202020202020202020202020746869732E5F70726F6D70744170706C7956616C756573282066616C73';
wwv_flow_api.g_varchar2_table(271) := '6520293B0A2020202020202020202020202020746869732E5F70726F6D707452656E6465725461677328293B0A2020202020202020202020207D0A202020202020202020207D2C207468697320292C0A202020202020202020202F2A0A20202020202020';
wwv_flow_api.g_varchar2_table(272) := '20202020202A0A2020202020202020202020202A20656E61626C650A2020202020202020202020202A0A202020202020202020202A2F0A2020202020202020202022656E61626C65223A20242E70726F78792866756E6374696F6E2829207B0A20202020';
wwv_flow_api.g_varchar2_table(273) := '2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027656E61626C65272C207B0A2020';
wwv_flow_api.g_varchar2_table(274) := '20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640A2020202020202020202020207D293B0A20200A2020';
wwv_flow_api.g_varchar2_table(275) := '20202020202020202020746869732E5F656E61626C6528293B0A202020202020202020207D2C2074686973292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A2064697361626C650A2020202020';
wwv_flow_api.g_varchar2_table(276) := '202020202020202A0A202020202020202020202A2F0A202020202020202020202264697361626C65223A20242E70726F78792866756E6374696F6E2829207B0A202020202020202020202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(277) := '435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202764697361626C65272C207B0A202020202020202020202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(278) := '6E74732C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640A2020202020202020202020207D293B0A20200A202020202020202020202020746869732E5F64697361626C6528293B0A20202020';
wwv_flow_api.g_varchar2_table(279) := '2020202020207D2C2074686973292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A2061667465724D6F646966790A2020202020202020202020202A0A202020202020202020202A2F0A20202020';
wwv_flow_api.g_varchar2_table(280) := '2020202020202261667465724D6F64696679223A20242E70726F78792866756E6374696F6E28297B0A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(281) := '656669782C20275F696E746567726174655769746841706578417069272C202761667465724D6F64696679272C207B0A202020202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(282) := '226964223A20746869732E656C656D656E742E6765742830292E69642C0A20202020202020202020202020202276616C7565223A20746869732E5F656C656D656E7447657456616C756528290A2020202020202020202020207D293B0A20202020202020';
wwv_flow_api.g_varchar2_table(283) := '20202020202F2F20636F646520746F20616C77617973206669726520616674657220746865206974656D20686173206265656E206D6F646966696564202876616C7565207365742C20656E61626C65642C206574632E290A202020202020202020202020';
wwv_flow_api.g_varchar2_table(284) := '2F2F2064657072656361746564206279204F7261636C650A202020202020202020207D2C2074686973292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A206C6F6164696E67496E64696361746F';
wwv_flow_api.g_varchar2_table(285) := '720A2020202020202020202020202A0A202020202020202020202A2F0A20202020202020202020226C6F6164696E67496E64696361746F72223A20242E70726F78792866756E6374696F6E2820704C6F6164696E67496E64696361746F7220297B0A2020';
wwv_flow_api.g_varchar2_table(286) := '202020202020202020207661722072657475726E456C656D3B0A20200A20202020202020202020202072657475726E456C656D203D20704C6F6164696E67496E64696361746F723B0A20200A202020202020202020202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(287) := '65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20276C6F6164696E67496E64696361746F72272C207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(288) := '202022617267756D656E7473223A20617267756D656E74732C0A202020202020202020202020202022704C6F6164696E67496E64696361746F72223A20704C6F6164696E67496E64696361746F722C0A2020202020202020202020202020226964223A20';
wwv_flow_api.g_varchar2_table(289) := '746869732E656C656D656E742E6765742830292E69642C0A20202020202020202020202020202272657475726E223A2072657475726E456C656D0A2020202020202020202020207D293B0A20200A2020202020202020202020202F2F20636F646520746F';
wwv_flow_api.g_varchar2_table(290) := '2061646420746865206C6F6164696E6720696E64696361746F7220696E20746865206265737420706C61636520666F7220746865206974656D0A20202020202020202020202072657475726E2072657475726E456C656D3B0A202020202020202020207D';
wwv_flow_api.g_varchar2_table(291) := '2C2074686973292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A20736574466F637573546F0A2020202020202020202020202A0A202020202020202020202A2F0A202020202020202020202273';
wwv_flow_api.g_varchar2_table(292) := '6574466F637573546F223A20242E70726F78792866756E6374696F6E28297B0A2020202020202020202020207661722072657475726E456C656D3B0A20202020202020202020202072657475726E456C656D203D20746869732E6D61736B2E706F707570';
wwv_flow_api.g_varchar2_table(293) := '427574746F6E3B0A20200A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C';
wwv_flow_api.g_varchar2_table(294) := '2027736574466F637573546F272C207B0A202020202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0A20';
wwv_flow_api.g_varchar2_table(295) := '202020202020202020202020202272657475726E223A2072657475726E456C656D0A2020202020202020202020207D293B0A20200A20202020202020202020202072657475726E2072657475726E456C656D3B0A202020202020202020207D2C20746869';
wwv_flow_api.g_varchar2_table(296) := '73292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A207365745374796C65546F0A2020202020202020202020202A0A202020202020202020202A2F0A2020202020202020202022736574537479';
wwv_flow_api.g_varchar2_table(297) := '6C65546F223A20746869732E6D61736B2E636F6E7461696E65722C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A20646973706C617956616C7565466F720A2020202020202020202020202A0A20';
wwv_flow_api.g_varchar2_table(298) := '2020202020202020202A2F0A2020202020202020202022646973706C617956616C7565466F72223A20242E70726F7879282066756E6374696F6E28207056616C756520297B0A202020202020202020202020766172200A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(299) := '2061727261794F66446973706C6179203D205B5D2C0A202020202020202020202020202072657475726E56616C75653B0A20200A202020202020202020202020666F72202876617220693D303B2069203C20746869732E6D61736B2E73746174652E7365';
wwv_flow_api.g_varchar2_table(300) := '6C65637465642E6C656E6774683B20692B2B29207B0A202020202020202020202020202069662028207056616C75652E696E6465784F662820746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652029203E202D31202920';
wwv_flow_api.g_varchar2_table(301) := '7B0A2020202020202020202020202020202061727261794F66446973706C61792E707573682820746869732E6D61736B2E73746174652E73656C65637465645B695D20293B0A20202020202020202020202020207D0A2020202020202020202020207D0A';
wwv_flow_api.g_varchar2_table(302) := '20200A20202020202020202020202061727261794F66446973706C6179203D2061727261794F66446973706C61792E6D6170282066756E6374696F6E282070456C656D20297B0A202020202020202020202020202072657475726E2070456C656D2E6469';
wwv_flow_api.g_varchar2_table(303) := '73706C61790A2020202020202020202020207D20293B2020200A20200A2020202020202020202020206966202861727261794F66446973706C61792E6C656E677468203D3D203029207B0A202020202020202020202020202072657475726E56616C7565';
wwv_flow_api.g_varchar2_table(304) := '203D207056616C75653B0A2020202020202020202020207D0A202020202020202020202020656C7365207B0A202020202020202020202020202072657475726E56616C7565203D2061727261794F66446973706C61792E6A6F696E2820746869732E435F';
wwv_flow_api.g_varchar2_table(305) := '444953504C41595F534550415241544F5220293B20200A2020202020202020202020207D0A20200A2020202020202020202020200A20200A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4445';
wwv_flow_api.g_varchar2_table(306) := '4255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027646973706C617956616C7565466F72272C207B0A202020202020202020202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(307) := '6E74732C0A2020202020202020202020202020227056616C7565223A207056616C75652C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0A20202020202020202020202020202272657475';
wwv_flow_api.g_varchar2_table(308) := '726E223A2072657475726E56616C75652C0A20202020202020202020202020202261727261794F66446973706C6179223A2061727261794F66446973706C61792C0A20202020202020202020202020202261727261794F66446973706C6179206C656E67';
wwv_flow_api.g_varchar2_table(309) := '7468223A2061727261794F66446973706C61792E6C656E6774680A2020202020202020202020207D293B0A20200A20202020202020202020202072657475726E2072657475726E56616C75653B0A20200A202020202020202020207D2C2074686973292C';
wwv_flow_api.g_varchar2_table(310) := '0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A2067657456616C75650A2020202020202020202020202A0A202020202020202020202A2F0A202020202020202020202267657456616C7565223A20';
wwv_flow_api.g_varchar2_table(311) := '242E70726F78792866756E6374696F6E2829207B0A2020202020202020202020207661722072657475726E56616C7565203D20746869732E5F656C656D656E7447657456616C756528293B0A20200A202020202020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(312) := '672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202767657456616C7565272C207B0A2020202020202020202020202020226172';
wwv_flow_api.g_varchar2_table(313) := '67756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0A20202020202020202020202020202272657475726E223A2072657475726E56616C7565';
wwv_flow_api.g_varchar2_table(314) := '0A2020202020202020202020207D293B0A2020202020202020202020200A2020202020202020202020200A20202020202020202020202072657475726E2072657475726E56616C75653B0A202020202020202020207D2C2074686973292C0A2020202020';
wwv_flow_api.g_varchar2_table(315) := '20202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A2073686F770A2020202020202020202020202A0A202020202020202020202A2F20202020202020200A202020202020202020202273686F77223A20242E70726F78';
wwv_flow_api.g_varchar2_table(316) := '792866756E6374696F6E2829207B0A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E74656772617465576974684170657841';
wwv_flow_api.g_varchar2_table(317) := '7069272C202773686F77272C207B0A202020202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640A20202020';
wwv_flow_api.g_varchar2_table(318) := '20202020202020207D293B0A2020202020202020202020202F2F20636F646520746861742073686F777320746865206974656D20747970650A202020202020202020207D2C2074686973292C0A202020202020202020202F2A0A20202020202020202020';
wwv_flow_api.g_varchar2_table(319) := '20202A0A2020202020202020202020202A20686964650A2020202020202020202020202A0A202020202020202020202A2F20202020202020200A202020202020202020202268696465223A20242E70726F78792866756E6374696F6E2829207B0A202020';
wwv_flow_api.g_varchar2_table(320) := '202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202768696465272C207B0A202020';
wwv_flow_api.g_varchar2_table(321) := '202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640A2020202020202020202020207D293B0A202020202020';
wwv_flow_api.g_varchar2_table(322) := '2020202020202F2F20636F6465207468617420686964657320746865206974656D20747970650A202020202020202020207D2C2074686973292C0A202020202020202020202F2A0A2020202020202020202020202A0A2020202020202020202020202A20';
wwv_flow_api.g_varchar2_table(323) := '61646456616C75650A2020202020202020202020202A0A202020202020202020202A2F20202020202020200A202020202020202020202261646456616C7565223A20242E70726F78792866756E6374696F6E28207056616C75652029207B0A2020202020';
wwv_flow_api.g_varchar2_table(324) := '20202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202761646456616C7565272C207B0A20';
wwv_flow_api.g_varchar2_table(325) := '2020202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020202020202020227056616C7565223A207056616C75652C0A2020202020202020202020202020226964223A20746869732E656C656D656E';
wwv_flow_api.g_varchar2_table(326) := '742E6765742830292E69640A2020202020202020202020207D293B0A2020202020202020202020202F2F20636F646520746861742061646473207056616C756520746F207468652076616C75657320616C726561647920696E20746865206974656D2074';
wwv_flow_api.g_varchar2_table(327) := '7970650A202020202020202020207D2C2074686973292C0A20202020202020207D3B0A20200A202020202020617065782E7769646765742E696E6974506167654974656D2820746869732E656C656D656E742E617474722827696427292C20704F707469';
wwv_flow_api.g_varchar2_table(328) := '6F6E73293B202020200A202020207D2C0A20202F2F20200A20202F2F205075626C696320706C7567696E206D6574686F64730A20202F2F0A20200A20202F2F20200A20202F2F205072697661746520706C7567696E206D6574686F64730A20202F2F0A20';
wwv_flow_api.g_varchar2_table(329) := '2020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F64697361626C650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020';
wwv_flow_api.g_varchar2_table(330) := '202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F64697361626C653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E';
wwv_flow_api.g_varchar2_table(331) := '6C6F675072656669782C20275F64697361626C65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E656C656D656E742E70726F702820226469736162';
wwv_flow_api.g_varchar2_table(332) := '6C6564222C207472756520293B0A202020202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0A202020202020746869732E6D61736B2E636F6E7461696E65722E616464436C617373282764697361626C656427293B';
wwv_flow_api.g_varchar2_table(333) := '0A202020202020746869732E6D61736B2E706F707570427574746F6E2E70726F70282764697361626C6564272C2074727565293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F65';
wwv_flow_api.g_varchar2_table(334) := '6E61626C650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F656E61626C653A206675';
wwv_flow_api.g_varchar2_table(335) := '6E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F656E61626C65272C207B0A202020202020202022617267756D656E74';
wwv_flow_api.g_varchar2_table(336) := '73223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E656C656D656E742E70726F7028202264697361626C6564222C2066616C736520293B0A202020202020746869732E6D61736B2E73746174652E6469736162';
wwv_flow_api.g_varchar2_table(337) := '6C6564203D2066616C73653B0A202020202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C617373282764697361626C656427293B0A202020202020746869732E6D61736B2E706F707570427574746F6E2E70726F7028276469';
wwv_flow_api.g_varchar2_table(338) := '7361626C6564272C2066616C7365293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6372656174654D61736B4465627567427574746F6E0A2020202020202A2064657363726970';
wwv_flow_api.g_varchar2_table(339) := '74696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6372656174654D61736B4465627567427574746F6E3A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(340) := '28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6372656174654D61736B4465627567427574746F6E272C207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(341) := '22617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A20202020202076617220627574746F6E203D202428273C627574746F6E20636C6173733D2264656275674175746F636F6D706C65746520612D427574746F6E20';
wwv_flow_api.g_varchar2_table(342) := '612D427574746F6E2D2D706F7075704C4F56223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27293B0A20200A202020202020627574746F6E2E636C69636B28242E70726F7879282066756E63';
wwv_flow_api.g_varchar2_table(343) := '74696F6E28704576656E74297B0A2020202020202020704576656E742E70726576656E7444656661756C7428293B0A20200A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(344) := '2E6C6F675072656669782C202764656275672070726F6D7074272C20746869732E6D61736B293B0A20200A2020202020207D2C20746869732029293B0A20200A202020202020627574746F6E2E6174747228277469746C65272C20275772697465732074';
wwv_flow_api.g_varchar2_table(345) := '6F20636F6E736F6C65206175746F636F6D706C65746520737461746527293B0A20200A202020202020746869732E6D61736B2E706F707570427574746F6E2E61667465722820627574746F6E20293B0A202020207D2C0A202020202F2A0A202020202020';
wwv_flow_api.g_varchar2_table(346) := '2A0A2020202020202A2066756E6374696F6E206E616D653A205F676574457874726156616C7565730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A';
wwv_flow_api.g_varchar2_table(347) := '2020202D0A2020202020202A0A202020202A2F0A202020205F6765744974656D4C4F564E756C6C546578743A2066756E6374696F6E28297B0A2020202020207661722072657475726E56616C75653B0A20200A2020202020206966202820746869732E6F';
wwv_flow_api.g_varchar2_table(348) := '7074696F6E732E6974656D2E6C6F765F6E756C6C5F74657874203D3D206E756C6C2029207B0A202020202020202072657475726E56616C7565203D2022756E646566696E6564223B0A2020202020207D0A202020202020656C7365206966202820746869';
wwv_flow_api.g_varchar2_table(349) := '732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F74657874203D3D20756E646566696E65642029207B0A202020202020202072657475726E56616C7565203D2022756E646566696E6564223B0A2020202020207D0A202020202020656C736520';
wwv_flow_api.g_varchar2_table(350) := '7B0A202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F746578743B200A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(351) := '5F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765744974656D4C4F564E756C6C54657874272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020226C6F765F6E';
wwv_flow_api.g_varchar2_table(352) := '756C6C5F74657874223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F746578742C0A20202020202020202272657475726E223A2072657475726E56616C75650A2020202020207D293B0A20200A20202020202072657475726E20';
wwv_flow_api.g_varchar2_table(353) := '72657475726E56616C75653B0A20200A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F676574457874726156616C7565730A2020202020202A206465736372697074696F6E2020';
wwv_flow_api.g_varchar2_table(354) := '3A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6765744974656D4C4F564E756C6C56616C75653A2066756E6374696F6E28297B0A20202020';
wwv_flow_api.g_varchar2_table(355) := '20207661722072657475726E56616C75653B0A20200A2020202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C7565203D3D206E756C6C2029207B0A202020202020202072657475726E56616C7565203D20';
wwv_flow_api.g_varchar2_table(356) := '22223B0A2020202020207D0A202020202020656C7365206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C7565203D3D20756E646566696E65642029207B0A202020202020202072657475726E56616C7565203D20';
wwv_flow_api.g_varchar2_table(357) := '22756E646566696E6564223B0A2020202020207D0A202020202020656C7365207B0A202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75653B200A2020202020207D0A20';
wwv_flow_api.g_varchar2_table(358) := '200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765744974656D4C4F564E756C6C56616C7565272C207B0A202020202020202022617267';
wwv_flow_api.g_varchar2_table(359) := '756D656E7473223A20617267756D656E74732C0A2020202020202020226C6F765F6E756C6C5F76616C7565223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652C0A20202020202020202272657475726E223A207265';
wwv_flow_api.g_varchar2_table(360) := '7475726E56616C75650A2020202020207D293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6765';
wwv_flow_api.g_varchar2_table(361) := '74457874726156616C7565730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F676574';
wwv_flow_api.g_varchar2_table(362) := '457874726156616C7565733A2066756E6374696F6E28207056616C75657353656E742C20704461746152657475726E656420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869';
wwv_flow_api.g_varchar2_table(363) := '732E6C6F675072656669782C20275F676574457874726156616C756573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C75657353656E74223A207056616C75657353656E74';
wwv_flow_api.g_varchar2_table(364) := '2C0A202020202020202022704461746152657475726E6564223A20704461746152657475726E65642C0A202020202020202022704461746152657475726E6564206C656E677468223A20704461746152657475726E65642E6C656E6774680A2020202020';
wwv_flow_api.g_varchar2_table(365) := '207D293B0A20200A202020202020766172200A202020202020202064617461546F436865636B203D20242E657874656E64285B5D2C20704461746152657475726E6564292C0A2020202020202020657874726156616C756573203D20242E657874656E64';
wwv_flow_api.g_varchar2_table(366) := '285B5D2C207056616C75657353656E74292E66696C7465722866756E6374696F6E2028656C656D656E7429207B0A202020202020202072657475726E20656C656D656E7420213D206E756C6C20262620656C656D656E742E6C656E677468203E20303B0A';
wwv_flow_api.g_varchar2_table(367) := '2020202020207D293B0A20200A2020202020202F2F616464206E756C6C2076616C756520736F20697420776F6E277420626520747265617465642061732065787472612076616C75650A2020202020206966202820746869732E6F7074696F6E732E6974';
wwv_flow_api.g_varchar2_table(368) := '656D2E6C6F765F646973706C61795F6E756C6C2029207B0A202020202020202064617461546F436865636B2E7075736828207B0A202020202020202020202244223A20746869732E5F6765744974656D4C4F564E756C6C5465787428292C0A2020202020';
wwv_flow_api.g_varchar2_table(369) := '20202020202252223A20746869732E5F6765744974656D4C4F564E756C6C56616C756528290A20202020202020207D20293B0A2020202020207D0A202020200A202020202020666F7220282076617220693D303B2069203C2064617461546F436865636B';
wwv_flow_api.g_varchar2_table(370) := '2E6C656E6774683B20692B2B2029207B0A20200A2020202020202020696E6465784F66203D20657874726156616C7565732E696E6465784F66282064617461546F436865636B5B695D2E522E746F537472696E67282920293B0A20200A20202020202020';
wwv_flow_api.g_varchar2_table(371) := '206966202820696E6465784F66203E202D312029207B0A20202020202020202020657874726156616C7565732E73706C6963652820696E6465784F662C203120293B0A20202020202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(372) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574457874726156616C756573272C202772656D6F76696E6720272B64617461546F436865636B5B695D2E522E746F537472696E6728292B272066726F6D20272C20';
wwv_flow_api.g_varchar2_table(373) := '657874726156616C756573293B0A20202020202020207D0A2020202020202020656C7365207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(374) := '782C20275F676574457874726156616C756573272C20276C6F6F6B696E6720666F7220272B64617461546F436865636B5B695D2E522E746F537472696E6728292B2720696E20272C20657874726156616C756573293B0A20202020202020207D0A202020';
wwv_flow_api.g_varchar2_table(375) := '2020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574457874726156616C756573272C2027657874726156616C75657327';
wwv_flow_api.g_varchar2_table(376) := '2C20657874726156616C756573293B0A20200A20202020202072657475726E20657874726156616C7565733B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B506F707570';
wwv_flow_api.g_varchar2_table(377) := '427574746F6E486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6D61736B50';
wwv_flow_api.g_varchar2_table(378) := '6F707570427574746F6E486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B506F70757042';
wwv_flow_api.g_varchar2_table(379) := '7574746F6E48696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A2020202020200A202020202020746869732E6D61736B2E706F707570427574746F6E2E6869646528293B0A2020';
wwv_flow_api.g_varchar2_table(380) := '20207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B506F707570427574746F6E53686F770A2020202020202A206465736372697074696F6E20203A200A2020202020202A2070617261';
wwv_flow_api.g_varchar2_table(381) := '6D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6D61736B506F707570427574746F6E53686F773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(382) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E53686F77272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020';
wwv_flow_api.g_varchar2_table(383) := '202020207D293B0A2020202020200A202020202020746869732E6D61736B2E706F707570427574746F6E2E73686F7728293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D6173';
wwv_flow_api.g_varchar2_table(384) := '6B416A61785374617465427574746F6E486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20';
wwv_flow_api.g_varchar2_table(385) := '200A202020205F6D61736B416A61785374617465427574746F6E486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(386) := '69782C20275F6D61736B416A61785374617465427574746F6E48696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A2020202020200A202020202020746869732E5F6D61736B506F';
wwv_flow_api.g_varchar2_table(387) := '707570427574746F6E53686F7728293B0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E637469';
wwv_flow_api.g_varchar2_table(388) := '6F6E206E616D653A205F6D61736B416A61785374617465427574746F6E5365744572726F720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A202020';
wwv_flow_api.g_varchar2_table(389) := '2D0A2020202020202A0A202020202A2F20200A202020205F6D61736B416A61785374617465427574746F6E5365744572726F723A2066756E6374696F6E2820704F626A6563742C207053746F70506C7567696E20297B200A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(390) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F72272C207B0A202020202020202022617267756D656E7473';
wwv_flow_api.g_varchar2_table(391) := '223A20617267756D656E74732C0A202020202020202022704F626A656374223A20704F626A6563742C0A2020202020202020227053746F70506C7567696E223A207053746F70506C7567696E0A2020202020207D293B0A2020202020200A202020202020';
wwv_flow_api.g_varchar2_table(392) := '242E657874656E6428746869732E6D61736B2E616A61785374617465427574746F6E2C207B226572726F724F626A656374223A704F626A6563747D293B0A20200A2020202020202F2F6572726F72206F6363757265642062757420646F6E277420686176';
wwv_flow_api.g_varchar2_table(393) := '6520746F2073746F7020706C7567696E2075736167650A202020202020746869732E6D61736B2E73746174652E6572726F72203D20747275653B0A20200A20202020202069662028207053746F70506C7567696E202920207B0A20202020202020206170';
wwv_flow_api.g_varchar2_table(394) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F722073746F7020706C7567696E2127293B20200A';
wwv_flow_api.g_varchar2_table(395) := '2020202020202020746869732E706C7567696E53746F70706564203D20747275653B20200A2020202020202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0A2020202020207D0A202020207D2C0A202020202F2A0A';
wwv_flow_api.g_varchar2_table(396) := '2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B416A61785374617465427574746F6E446973706C61794572726F720A2020202020202A206465736372697074696F6E20203A200A2020202020202A2070617261';
wwv_flow_api.g_varchar2_table(397) := '6D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B416A61785374617465427574746F6E446973706C61794572726F723A2066756E6374696F6E28297B0A2020202020';
wwv_flow_api.g_varchar2_table(398) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E446973706C61794572726F72272C207B0A20202020202020';
wwv_flow_api.g_varchar2_table(399) := '2022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A2020202020202020636F6E7461696E65722020203D202428273C64697620636C6173733D22707265746975734C6F762D636F6E74';
wwv_flow_api.g_varchar2_table(400) := '61696E6572223E3C2F6469763E27292C0A20202020202020206469764572726F72202020203D202428273C64697620636C6173733D226572726F72223E3C2F6469763E27292C0A20202020202020206469764D65737361676520203D202428273C646976';
wwv_flow_api.g_varchar2_table(401) := '20636C6173733D226D657373616765223E3C2F6469763E27292C0A202020202020202064697654656368496E666F203D202428273C6469763E3C2F6469763E27292C0A2020202020202020707265203D202428273C7072653E3C2F7072653E27292C0A20';
wwv_flow_api.g_varchar2_table(402) := '202020202020206F7074696F6E7320203D207B0A20202020202020202020226469616C6F67436C617373222020203A2022707265746975732D2D656E68616E6365644C6F764974656D206572726F72222C0A20202020202020202020226175746F4F7065';
wwv_flow_api.g_varchar2_table(403) := '6E222020202020203A20747275652C0A2020202020202020202022617070656E64546F222020202020203A2027626F6479272C0A20202020202020202020226D6F64616C222020202020202020203A20747275652C0A2020202020202020202022706F73';
wwv_flow_api.g_varchar2_table(404) := '6974696F6E222020202020203A207B0A202020202020202020202020226D79223A202263656E746572222C200A202020202020202020202020226174223A202263656E746572222C200A202020202020202020202020226F66223A2077696E646F770A20';
wwv_flow_api.g_varchar2_table(405) := '2020202020202020207D2C0A20202020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E7469746C652C0A20202020202020202020227769647468222020202020202020203A';
wwv_flow_api.g_varchar2_table(406) := '203830302C0A20202020202020202020226D696E5769647468222020202020203A203530302C0A20202020202020202020226865696768742220202020202020203A203534312C0A20202020202020202020226D696E4865696768742220202020203A20';
wwv_flow_api.g_varchar2_table(407) := '3235352C0A2020202020202020202022726573697A61626C652220202020203A2066616C73652C0A2020202020202020202022647261676761626C65222020202020203A2066616C73652C0A2020202020202020202022636C6F73654F6E457363617065';
wwv_flow_api.g_varchar2_table(408) := '20223A20747275652C0A20202020202020202020226F70656E22202020202020202020203A20242E70726F7879282066756E6374696F6E28297B0A202020202020202020202020242827626F647927292E616464436C6173732827617065782D6E6F2D73';
wwv_flow_api.g_varchar2_table(409) := '63726F6C6C27293B2020202020202020202020202020202020200A202020202020202020207D2C207468697320292C0A20202020202020202020226265666F7265436C6F7365222020203A20242E70726F7879282066756E6374696F6E28297B0A202020';
wwv_flow_api.g_varchar2_table(410) := '202020202020202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B2020202020202020202020202020202020200A202020202020202020207D2C207468697320290A20202020202020207D3B2020';
wwv_flow_api.g_varchar2_table(411) := '202020200A20200A2020202020206966202820746869732E706C7567696E53746F70706564203D3D2066616C73652029207B0A2020202020202020746869732E5F6D61736B506F707570427574746F6E53686F7728293B0A202020202020202074686973';
wwv_flow_api.g_varchar2_table(412) := '2E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0A2020202020207D0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0A20202020202020';
wwv_flow_api.g_varchar2_table(413) := '2069662028200A20202020202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20213D20756E646566696E6564200A20202020202020202020262620746869732E6D61736B';
wwv_flow_api.g_varchar2_table(414) := '2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20696E7374616E63656F662041727261790A202020202020202029207B0A20202020202020202020666F72202876617220693D303B2069203C20746869732E';
wwv_flow_api.g_varchar2_table(415) := '6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F2E6C656E6774683B20692B2B29207B0A2020202020202020202020207072652E617070656E642820746869732E6D61736B2E616A61785374617465';
wwv_flow_api.g_varchar2_table(416) := '427574746F6E2E6572726F724F626A6563742E74656368496E666F5B695D2E6E616D652B273A20272B746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F5B695D2E76616C756520293B0A';
wwv_flow_api.g_varchar2_table(417) := '2020202020202020202020207072652E617070656E6428225C6E22293B0A202020202020202020207D0A20202020202020207D0A2020202020202020656C7365206966202820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F';
wwv_flow_api.g_varchar2_table(418) := '724F626A6563742E74656368496E666F20213D20756E646566696E656420297B0A202020202020202020207072652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E66';
wwv_flow_api.g_varchar2_table(419) := '6F20293B0A20202020202020207D0A2020202020207D0A202020202020656C7365207B0A20202020202020207072652E617070656E6428746869732E435F4552524F525F44454255475F4F4646293B0A2020202020207D0A20200A202020202020646976';
wwv_flow_api.g_varchar2_table(420) := '4D6573736167652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E6572726F7220293B0A2020202020206469764572726F722E617070656E642820746869732E6D61736B2E616A6178';
wwv_flow_api.g_varchar2_table(421) := '5374617465427574746F6E2E6572726F724F626A6563742E616464496E666F20293B0A20200A20202020202064697654656368496E666F2E617070656E6428707265293B0A20200A202020202020636F6E7461696E65720A20202020202020202E617070';
wwv_flow_api.g_varchar2_table(422) := '656E64286469764D657373616765290A20202020202020202E617070656E64286469764572726F72290A20202020202020202E617070656E642864697654656368496E666F290A20202020202020202E6469616C6F6728206F7074696F6E7320293B0A20';
wwv_flow_api.g_varchar2_table(423) := '2020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B416A61785374617465427574746F6E4572726F720A2020202020202A206465736372697074696F6E20203A200A202020202020';
wwv_flow_api.g_varchar2_table(424) := '2A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B416A61785374617465427574746F6E4572726F723A2066756E6374696F6E2820297B0A2020202020';
wwv_flow_api.g_varchar2_table(425) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E4572726F72272C207B0A202020202020202022617267756D';
wwv_flow_api.g_varchar2_table(426) := '656E7473223A20617267756D656E74732C0A202020202020202022746869732E706C7567696E53746F70706564223A20746869732E706C7567696E53746F707065640A2020202020207D293B0A20200A202020202020746869732E5F6D61736B506F7075';
wwv_flow_api.g_varchar2_table(427) := '70427574746F6E4869646528293B0A20200A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290A20202020202020202E72656D6F7665436C61737328290A202020202020';
wwv_flow_api.g_varchar2_table(428) := '20202E616464436C617373282769636F6E2066612066612D6578636C616D6174696F6E2D747269616E676C652066612D616E696D2D666C617368206572726F7227293B0A20200A202020202020746869732E6D61736B2E616A6178537461746542757474';
wwv_flow_api.g_varchar2_table(429) := '6F6E2E627574746F6E2E73686F7728293B0A20200A2020202020206966202820746869732E706C7567696E53746F707065642029207B0A2020202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E2820';
wwv_flow_api.g_varchar2_table(430) := '27636C69636B272C20242E70726F78792820746869732E5F6D61736B416A61785374617465427574746F6E446973706C61794572726F722C2074686973202920293B0A2020202020207D0A202020202020656C7365207B0A202020202020202074686973';
wwv_flow_api.g_varchar2_table(431) := '2E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E65282027636C69636B272C20242E70726F78792820746869732E5F6D61736B416A61785374617465427574746F6E446973706C61794572726F722C2074686973202920293B';
wwv_flow_api.g_varchar2_table(432) := '20200A2020202020207D0A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B416A61785374617465427574746F6E52756E6E696E670A2020202020202A2064';
wwv_flow_api.g_varchar2_table(433) := '65736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B416A61785374617465427574746F6E52756E6E';
wwv_flow_api.g_varchar2_table(434) := '696E673A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5275';
wwv_flow_api.g_varchar2_table(435) := '6E6E696E67272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E5F6D61736B506F707570427574746F6E4869646528293B0A20200A2020202020207468';
wwv_flow_api.g_varchar2_table(436) := '69732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290A20202020202020202E72656D6F7665417474722827636C61737327290A20202020202020202E616464436C617373282769636F6E206661';
wwv_flow_api.g_varchar2_table(437) := '2066612D726566726573682066612D616E696D2D7370696E27293B0A20200A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0A202020207D2C0A202020202F2A0A2020202020202A0A';
wwv_flow_api.g_varchar2_table(438) := '2020202020202A2066756E6374696F6E206E616D653A205F6D61736B416A61785374617465427574746F6E53686F770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(439) := '2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B416A61785374617465427574746F6E53686F773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(440) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E53686F77272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D29';
wwv_flow_api.g_varchar2_table(441) := '3B0A20200A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6765';
wwv_flow_api.g_varchar2_table(442) := '744F6E4C6F61644C6F765F5375636365737343616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20';
wwv_flow_api.g_varchar2_table(443) := '2020202A2F20200A202020205F6765744F6E4C6F61644C6F765F5375636365737343616C6C6261636B3A2066756E6374696F6E2820704D6F64652C207056616C75657353656E742C2070446174612C2070546578745374617475732C20704A7158485220';
wwv_flow_api.g_varchar2_table(444) := '297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(445) := '22617267756D656E7473222020203A20617267756D656E74732C0A202020202020202022704D6F646522202020202020203A20704D6F64652C0A2020202020202020227056616C75657353656E7422203A207056616C75657353656E742C0A2020202020';
wwv_flow_api.g_varchar2_table(446) := '20202022704461746122202020202020203A2070446174612C0A202020202020202022705465787453746174757322203A2070546578745374617475732C0A202020202020202022704A71584852222020202020203A20704A715848522020202020202C';
wwv_flow_api.g_varchar2_table(447) := '0A2020202020207D293B0A20200A202020202020766172200A20202020202020206F626A65637454656D702C0A202020202020202076616C75657345787472613B0A20200A202020202020746869732E5F70726F6D7074456D7074795461677328293B0A';
wwv_flow_api.g_varchar2_table(448) := '202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0A20200A2020202020202F2F70446174612E646174612E736F72742820746869732E5F736F72744A736F6E28202244222C202261736322202920293B0A20202020';
wwv_flow_api.g_varchar2_table(449) := '20202F2F746869732E6D61736B2E73746174652E736F72746564203D2022617363223B0A20200A202020202020696620282070446174612E6E756C6C56616C756553656C65637465642029207B0A20200A20202020202020206F626A65637454656D7020';
wwv_flow_api.g_varchar2_table(450) := '3D207B0A202020202020202020202276616C75652220203A20746869732E5F6765744974656D4C4F564E756C6C56616C756528292C0A2020202020202020202022646973706C6179223A20746869732E5F6765744974656D4C4F564E756C6C5465787428';
wwv_flow_api.g_varchar2_table(451) := '290A20202020202020207D3B0A20200A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20277375636365';
wwv_flow_api.g_varchar2_table(452) := '7373272C20274E554C4C2076616C75652073656C6563746564272C206F626A65637454656D70293B0A20200A2020202020202020746869732E5F6D61736B537461746553656C656374656441646428200A202020202020202020206F626A65637454656D';
wwv_flow_api.g_varchar2_table(453) := '702C2020202F2F206F626A6563740A2020202020202020202066616C73652C20202020202020202F2F2069732065787472612076616C75650A2020202020202020202074727565202020202020202020202F2F206973206E756C6C2076616C75650A2020';
wwv_flow_api.g_varchar2_table(454) := '202020202020293B0A2020202020207D0A20200A2020202020202F2F6164642076616C756573206F6E20776869636820746167732077696C6C2062652072656E64657265640A202020202020666F7220282076617220693D303B2069203C207044617461';
wwv_flow_api.g_varchar2_table(455) := '2E646174612E6C656E6774683B20692B2B2029207B0A20200A20202020202020206F626A65637454656D70203D207B0A202020202020202020202276616C75652220203A2070446174612E646174615B695D2E522E746F537472696E6728292C0A202020';
wwv_flow_api.g_varchar2_table(456) := '2020202020202022646973706C6179223A2070446174612E646174615B695D2E440A20202020202020207D3B0A20200A2020202020202020746869732E5F6D61736B537461746553656C656374656441646428200A202020202020202020206F626A6563';
wwv_flow_api.g_varchar2_table(457) := '7454656D702C2020202F2F206F626A6563740A2020202020202020202066616C73652C20202020202020202F2F2069732065787472612076616C75650A2020202020202020202066616C73652020202020202020202F2F206973206E756C6C2076616C75';
wwv_flow_api.g_varchar2_table(458) := '650A2020202020202020293B0A20200A2020202020207D0A20200A2020202020206966202820704D6F6465203D3D202747455453455353494F4E5354415445272029207B0A20202020202020207056616C75657353656E74203D2070446174612E736573';
wwv_flow_api.g_varchar2_table(459) := '73696F6E3B0A2020202020207D0A20200A2020202020202F2F68616E646C652065787472612076616C75657320286E6F7420646566696E656420696E2064696374696F6E61727929200A20202020202069662028200A2020202020202020746869732E70';
wwv_flow_api.g_varchar2_table(460) := '6C7567696E53657474696E67732E646973706C61794578747261200A20202020202020202626207056616C75657353656E7420213D20756E646566696E65640A20202020202020202626207056616C75657353656E742E6C656E677468203E2030200A20';
wwv_flow_api.g_varchar2_table(461) := '202020202029207B0A20200A202020202020202076616C7565734578747261203D20746869732E5F676574457874726156616C75657328207056616C75657353656E742E73706C697428746869732E435F56414C55455F534550415241544F52292C2070';
wwv_flow_api.g_varchar2_table(462) := '446174612E6461746120293B0A20200A2020202020202020666F7220282076617220693D303B2069203C2076616C75657345787472612E6C656E6774683B20692B2B2029207B0A202020202020202020206F626A65637454656D70203D207B0A20202020';
wwv_flow_api.g_varchar2_table(463) := '20202020202020202276616C75652220203A2076616C75657345787472615B695D2C0A20202020202020202020202022646973706C6179223A2076616C75657345787472615B695D0A202020202020202020207D3B0A20200A2020202020202020202074';
wwv_flow_api.g_varchar2_table(464) := '6869732E5F6D61736B537461746553656C656374656441646428200A2020202020202020202020206F626A65637454656D702C202F2F206F626A656374200A202020202020202020202020747275652C202020202020202F2F2069732065787472612076';
wwv_flow_api.g_varchar2_table(465) := '616C75650A20202020202020202020202066616C7365202020202020202F2F206973206E756C6C2076616C75650A20202020202020202020293B0A20202020202020207D0A2020202020207D0A20200A202020202020746869732E5F70726F6D70744170';
wwv_flow_api.g_varchar2_table(466) := '706C7956616C756573282066616C736520293B0A2020202020200A202020202020746869732E5F70726F6D707452656E6465725461677328293B0A20200A202020202020746869732E5F6D61736B416A61785374617465427574746F6E4869646528293B';
wwv_flow_api.g_varchar2_table(467) := '0A20200A2020202020202F2F7768656E2041504558206974656D20636F6E7461696E73206D756C7469706C652076616C756573206275740A2020202020202F2F697420697320636F6E6669677572656420746F20776F726B20776974682073696E67756C';
wwv_flow_api.g_varchar2_table(468) := '61722073656C656374696F6E0A20202020202069662028200A2020202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650A2020202020202020262620746869732E6D61';
wwv_flow_api.g_varchar2_table(469) := '736B2E73746174652E73656C65637465642E6C656E677468203E20310A20202020202029207B0A2020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0A20202020202020202020226572726F7222';
wwv_flow_api.g_varchar2_table(470) := '202020203A2027496E76616C696420696E7075742076616C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272C0A2020202020202020202022616464496E666F2220203A2027546865206974656D20697320646566';
wwv_flow_api.g_varchar2_table(471) := '696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272C0A202020202020202020202274656368496E666F22203A202743';
wwv_flow_api.g_varchar2_table(472) := '6865636B2073657373696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E742E617474722827696427292B272220616E6420696E73706563742070726F6365737365732068616E646C696E672073657373696F';
wwv_flow_api.g_varchar2_table(473) := '6E2076616C7565206F66206974656D2E270A20202020202020207D2C2066616C7365293B0A20200A2020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0A20200A2020202020202020746869732E5F74';
wwv_flow_api.g_varchar2_table(474) := '68726F774572726F725465787428200A2020202020202020202027496E76616C696420696E7075742076616C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272B0A2020202020202020202027546865206974656D';
wwv_flow_api.g_varchar2_table(475) := '20697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272B0A2020202020202020202027436865636B2073';
wwv_flow_api.g_varchar2_table(476) := '657373696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E742E617474722827696427292B272220616E6420696E73706563742070726F6365737365732068616E646C696E672073657373696F6E2076616C75';
wwv_flow_api.g_varchar2_table(477) := '65206F66206974656D2E270A2020202020202020293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6765744F6E4C6F61644C6F760A2020202020202A206465';
wwv_flow_api.g_varchar2_table(478) := '736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6765744F6E4C6F61644C6F763A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(479) := '7056616C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C207B0A202020202020202022617267';
wwv_flow_api.g_varchar2_table(480) := '756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C7565222020203A207056616C75652C0A202020202020202022746172676574222020203A20746869732E656C656D656E742E6765742830290A2020202020207D293B0A';
wwv_flow_api.g_varchar2_table(481) := '20200A2020202020207661720A20202020202020206D6F646520202020203D207056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564207C7C207056616C7565203D3D202222203F202747455453455353494F4E53';
wwv_flow_api.g_varchar2_table(482) := '5441544527203A20274745544F4E4C5953454C4543544544272C0A202020202020202076616C7565732020203D207056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564207C7C207056616C7565203D3D20222220';
wwv_flow_api.g_varchar2_table(483) := '3F205B5D203A207056616C75652E73706C697428746869732E435F56414C55455F534550415241544F52292C0A2020202020202020616A617844617461203D207B0A2020202020202020202022783031223A206D6F64652C20202F2F747279620A202020';
wwv_flow_api.g_varchar2_table(484) := '2020202020202022663031223A2076616C7565732C202F2F73656C65637465642076616C7565730A2020202020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D7328290A20202020202020207D2C0A20';
wwv_flow_api.g_varchar2_table(485) := '20202020202020616A61784F7074696F6E73203D207B0A20202020202020202020227461726765742220202020203A20746869732E656C656D656E742E6765742830292C0A20202020202020202020226265666F726553656E6422203A20242E70726F78';
wwv_flow_api.g_varchar2_table(486) := '792866756E6374696F6E2820704A715848522C207053657474696E677320297B0A20200A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(487) := '2C20275F6765744F6E4C6F61644C6F76272C20276265666F72652073656E64272C207B0A202020202020202020202020202022704A71584852223A20704A715848522C0A2020202020202020202020202020227053657474696E6773223A207053657474';
wwv_flow_api.g_varchar2_table(488) := '696E67730A2020202020202020202020207D293B0A20200A2020202020202020202020202F2F746869732E6D61736B2E73746174652E616A617852756E6E696E67203D20747275653B0A2020202020202020202020202F2F746869732E5F6D61736B416A';
wwv_flow_api.g_varchar2_table(489) := '61785374617465427574746F6E52756E6E696E6728293B0A20200A202020202020202020207D2C2074686973292C0A20202020202020202020227375636365737322202020203A20242E70726F78792820746869732E5F6765744F6E4C6F61644C6F765F';
wwv_flow_api.g_varchar2_table(490) := '5375636365737343616C6C6261636B2C20746869732C206D6F64652C207056616C756520292C0A20202020202020202020226572726F72222020202020203A20242E70726F78792866756E6374696F6E28704A715848522C207054657874537461747573';
wwv_flow_api.g_varchar2_table(491) := '2C20704572726F725468726F776E297B0A20200A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F7627';
wwv_flow_api.g_varchar2_table(492) := '2C20276572726F72272C207B0A202020202020202020202020202027704A715848522720202020202020203A20704A715848522C0A2020202020202020202020202020277054657874537461747573272020203A2070546578745374617475732C0A2020';
wwv_flow_api.g_varchar2_table(493) := '20202020202020202020202027704572726F725468726F776E2720203A20704572726F725468726F776E2020202020202020202020200A2020202020202020202020207D293B0A20200A2020202020202020202020206966202820746869732E5F656C65';
wwv_flow_api.g_varchar2_table(494) := '6D656E7447657456616C75654C656E6768742829203E20302029207B0A2020202020202020202020202020746869732E5F6D61736B447261775461677346726F6D496E76616C696456616C75657328293B0A2020202020202020202020207D0A20200A20';
wwv_flow_api.g_varchar2_table(495) := '2020202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0A202020202020202020202020202022616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E66';
wwv_flow_api.g_varchar2_table(496) := '6F2C0A2020202020202020202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0A20202020202020202020202020202274656368496E666F22203A20704A715848522E726573706F6E73654A';
wwv_flow_api.g_varchar2_table(497) := '534F4E2E74656368496E666F0A2020202020202020202020207D293B0A20200A202020202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0A2020202020202020202020200A202020202020202020';
wwv_flow_api.g_varchar2_table(498) := '202020746869732E5F7468726F774572726F72546578742820704572726F725468726F776E20293B0A20200A202020202020202020207D2C2074686973292C0A2020202020202020202022636F6D706C657465222020203A20242E70726F78792866756E';
wwv_flow_api.g_varchar2_table(499) := '6374696F6E28297B0A2020202020202020202020202F2F746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0A2020202020202020202020202F2F202020202020202020200A202020202020202020207D2C207468';
wwv_flow_api.g_varchar2_table(500) := '6973290A20202020202020207D3B202020200A20200A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C';
wwv_flow_api.g_varchar2_table(501) := '202776616C7565732073656E7420746F20726574726965766520646973706C61792076616C756573272C2076616C7565732C20616A61784F7074696F6E73293B0A20202020202020200A202020202020746869732E6D61736B2E73746174652E78687220';
wwv_flow_api.g_varchar2_table(502) := '3D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B20200A202020207D2C0A202020202F2A0A';
wwv_flow_api.g_varchar2_table(503) := '2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B447261775461677346726F6D496E76616C696456616C7565730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(504) := '3A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6D61736B447261775461677346726F6D496E76616C696456616C7565733A2066756E6374696F6E28297B0A202020202020617065782E';
wwv_flow_api.g_varchar2_table(505) := '64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B447261775461677346726F6D496E76616C696456616C756573272C207B0A202020202020202022617267756D65';
wwv_flow_api.g_varchar2_table(506) := '6E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722076616C756573203D20746869732E5F656C656D656E7447657456616C756528292E73706C697428746869732E435F56414C55455F534550415241544F52';
wwv_flow_api.g_varchar2_table(507) := '293B0A20200A202020202020696620282076616C7565732E6C656E677468203E20302029207B0A2020202020202020666F722028766172206920696E2076616C75657329207B0A202020202020202020202F2F5F70726F6D7074546167734164644E6577';
wwv_flow_api.g_varchar2_table(508) := '3A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C756520297B0A20202020202020202020746869732E5F70726F6D7074546167734164644E6577282076616C7565735B695D2C2076616C7565735B';
wwv_flow_api.g_varchar2_table(509) := '695D2C207472756520293B0A20202020202020207D0A20200A2020202020202020746869732E5F70726F6D7074506C616365486F6C6465724869646528293B0A2020202020200A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A';
wwv_flow_api.g_varchar2_table(510) := '0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757053656C656374656447657456616C75654172720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A202020';
wwv_flow_api.g_varchar2_table(511) := '2D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757053656C656374656447657456616C75654172723A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(512) := '6869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757053656C656374656447657456616C7565417272272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A20202020';
wwv_flow_api.g_varchar2_table(513) := '20207D293B0A20200A20202020202076617220617272203D205B5D3B0A20200A202020202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0A20';
wwv_flow_api.g_varchar2_table(514) := '20202020202020696620282021746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0A202020202020202020206172722E707573682820746869732E706F7075702E73746174652E73';
wwv_flow_api.g_varchar2_table(515) := '656C65637465645B695D2E76616C756520293B20200A20202020202020207D0A20202020202020200A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(516) := '2E6C6F675072656669782C20275F706F70757053656C656374656447657456616C7565417272272C20617272293B0A20202020202072657475726E206172723B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374';
wwv_flow_api.g_varchar2_table(517) := '696F6E206E616D653A205F706F707570416A61784765744F6E6C7953656C65637465640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(518) := '2020202020202A0A202020202A2F20200A202020205F706F707570416A61784765744F6E6C7953656C65637465643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C455645';
wwv_flow_api.g_varchar2_table(519) := '4C362C20746869732E6C6F675072656669782C20275F706F707570416A61784765744F6E6C7953656C6563746564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227461726765742220';
wwv_flow_api.g_varchar2_table(520) := '20203A20746869732E656C656D656E742E6765742830290A2020202020207D293B0A20200A2020202020207661720A2020202020202020616A617844617461203D207B0A2020202020202020202022783031223A20274745544F4E4C5953454C45435445';
wwv_flow_api.g_varchar2_table(521) := '44272C202020202020202020202020202020202F2F206D6F64650A2020202020202020202022663031223A20746869732E5F706F70757053656C656374656447657456616C756541727228292C202F2F2073656C65637465642076616C7565730A202020';
wwv_flow_api.g_varchar2_table(522) := '2020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D732829202020202F2F206974656D7320746F2062652073656E740A20202020202020207D2C0A2020202020202020616A61784F7074696F6E73203D';
wwv_flow_api.g_varchar2_table(523) := '207B0A20202020202020202020227461726765742220202020203A20746869732E656C656D656E742E6765742830292C0A20202020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A6178426566';
wwv_flow_api.g_varchar2_table(524) := '6F726553656E642C2074686973292C0A20202020202020202020227375636365737322202020203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2020202074686973292C0A20202020202020202020226572726F7222';
wwv_flow_api.g_varchar2_table(525) := '2020202020203A20242E70726F787928746869732E5F706F707570416A61784572726F722C20202020202074686973292C0A2020202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F';
wwv_flow_api.g_varchar2_table(526) := '6D706C6574652C20202074686973290A20202020202020207D3B0A20200A202020202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E';
wwv_flow_api.g_varchar2_table(527) := '616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570416A617850657266';
wwv_flow_api.g_varchar2_table(528) := '6F726D0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570416A617850';
wwv_flow_api.g_varchar2_table(529) := '6572666F726D3A2066756E6374696F6E282070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C2070536561726368537472696E672C2070536561726368436F6C756D6E20297B0A202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(530) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A6178506572666F726D272C207B0A202020202020202022617267756D656E7473223A20617267756D656E7473';
wwv_flow_api.g_varchar2_table(531) := '2C0A2020202020202020227050616765223A2070506167652C0A20202020202020202270536F72744279436F6C756D6E496478223A2070536F72744279436F6C756D6E4964782C0A20202020202020202270446972656374696F6E223A20704469726563';
wwv_flow_api.g_varchar2_table(532) := '74696F6E2C0A20202020202020202270536561726368537472696E67223A2070536561726368537472696E672C0A20202020202020202270536561726368436F6C756D6E223A2070536561726368436F6C756D6E0A2020202020207D293B0A20200A2020';
wwv_flow_api.g_varchar2_table(533) := '202020207661720A2020202020202020736561726368537472696E67203D2070536561726368537472696E672C0A2020202020202020616A617844617461203D207B0A2020202020202020202022706167654974656D73223A20746869732E5F616A6178';
wwv_flow_api.g_varchar2_table(534) := '476574506167654974656D7328292C0A2020202020202020202022783031223A2027504F505550272C202020202020202020202020202020202020202020202020202F2F206D6F64650A2020202020202020202022783032223A20746869732E5F706F70';
wwv_flow_api.g_varchar2_table(535) := '7570476574526F77735065725061676528292C20202020202F2F20726F77732070657220706167650A2020202020202020202022783033223A2070536561726368537472696E672C202020202020202020202020202020202020202F2F20736561726368';
wwv_flow_api.g_varchar2_table(536) := '20737472696E670A2020202020202020202022783034223A207050616765203D3D20756E646566696E6564203F2031203A2070506167652C20202F2F20706167650A2020202020202020202022783035223A2070536F72744279436F6C756D6E4964782C';
wwv_flow_api.g_varchar2_table(537) := '202020202020202020202020202020202F2F200A2020202020202020202022783036223A2070446972656374696F6E2C202020202020202020202020202020202020202020202F2F200A2020202020202020202022783037223A2070536561726368436F';
wwv_flow_api.g_varchar2_table(538) := '6C756D6E20202020202020202020202020202020202020202F2F200A20202020202020207D2C0A20200A2020202020202020616A61784F7074696F6E73203D207B0A20202020202020202020227461726765742220202020203A20746869732E656C656D';
wwv_flow_api.g_varchar2_table(539) := '656E742E6765742830292C0A20202020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0A202020202020202020202273756363657373222020';
wwv_flow_api.g_varchar2_table(540) := '20203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2074686973292C0A20202020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F706F707570416A61784572726F722C207468';
wwv_flow_api.g_varchar2_table(541) := '6973292C0A2020202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C2074686973290A20202020202020207D3B0A20200A2020202020206966202820746869732E70';
wwv_flow_api.g_varchar2_table(542) := '6F7075702E73746174652E616A617852756E6E696E672029207B0A2020202020202020746869732E5F706F707570416A617841626F727428293B0A202020202020202073657454696D656F75742820242E70726F78792820746869732E5F706F70757041';
wwv_flow_api.g_varchar2_table(543) := '6A6178506572666F726D2C20746869732C2070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C2070536561726368537472696E672C2070536561726368436F6C756D6E20292C2033303020293B0A202020202020';
wwv_flow_api.g_varchar2_table(544) := '202072657475726E20766F69642830293B0A2020202020207D0A20200A2020202020202F2F69742077696C6C2062652073657420616761696E20616674657220616A61782077696C6C20737563636565640A202020202020746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(545) := '746174652E736561726368537472696E67202020202020202020203D2070536561726368537472696E673B0A202020202020746869732E706F7075702E73746174652E6C6173744665746368656450616765202020202020203D207050616765203D3D20';
wwv_flow_api.g_varchar2_table(546) := '756E646566696E6564203F2031203A2070506167653B0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D2070536F72744279436F6C756D6E4964783B0A202020202020746869732E70';
wwv_flow_api.g_varchar2_table(547) := '6F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D2070446972656374696F6E3B0A202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478202020202020203D20705365617263';
wwv_flow_api.g_varchar2_table(548) := '68436F6C756D6E3B0A20200A202020202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A';
wwv_flow_api.g_varchar2_table(549) := '6178446174612C20616A61784F7074696F6E7320293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570416A61784265666F726553656E640A2020202020202A20646573';
wwv_flow_api.g_varchar2_table(550) := '6372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570416A61784265666F726553656E643A2066756E63';
wwv_flow_api.g_varchar2_table(551) := '74696F6E2820704A715848522C207053657474696E67732029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A617842';
wwv_flow_api.g_varchar2_table(552) := '65666F726553656E64272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704A71584852223A20704A715848522C0A2020202020202020227053657474696E6773223A207053657474696E';
wwv_flow_api.g_varchar2_table(553) := '67730A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D20747275653B0A202020202020746869732E706F7075702E636F6E74656E745461626C65203D20756E646566696E6564';
wwv_flow_api.g_varchar2_table(554) := '3B0A202020202020746869732E706F7075702E626F64792E616464436C6173732827736561726368696E6727293B0A20200A2020202020206966202820746869732E706F7075702E73746174652E697356697369626C6520262620746869732E706F7075';
wwv_flow_api.g_varchar2_table(555) := '702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E656429207B0A2020202020202020746869732E5F706F7075705265706F72744865616465725769646765744869646528293B20200A2020202020207D0A20200A2020';
wwv_flow_api.g_varchar2_table(556) := '20202020746869732E5F706F7075705265706F727452656E646572536561726368696E672830293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570416A617844617461';
wwv_flow_api.g_varchar2_table(557) := '46696E64496E646578427952657475726E56616C75650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A';
wwv_flow_api.g_varchar2_table(558) := '2F20200A202020205F706F707570416A61784461746146696E64496E646578427952657475726E56616C75653A2066756E6374696F6E282070446174612C207052657475726E56616C75652029207B0A202020202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(559) := '7361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C207B0A202020202020202022617267756D656E7473';
wwv_flow_api.g_varchar2_table(560) := '223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174612C0A2020202020202020227052657475726E56616C7565223A207052657475726E56616C75650A2020202020207D293B202020200A20200A202020202020666F';
wwv_flow_api.g_varchar2_table(561) := '7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0A2020202020202020696620282070446174612E646174615B695D2E52203D3D207052657475726E56616C75652029207B0A20202020202020';
wwv_flow_api.g_varchar2_table(562) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C20277052';
wwv_flow_api.g_varchar2_table(563) := '657475726E56616C756520666F756E6420617420696E64657820272B69293B0A2020202020202020202072657475726E20693B0A20202020202020207D0A2020202020207D0A2020202020200A202020202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(564) := '6528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C7565206E6F7420666F756E';
wwv_flow_api.g_varchar2_table(565) := '6427293B0A20202020202072657475726E202D313B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570457874656E6444617461576974684E756C6C56616C7565730A2020';
wwv_flow_api.g_varchar2_table(566) := '202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570457874656E644461746157';
wwv_flow_api.g_varchar2_table(567) := '6974684E756C6C56616C7565733A2066756E6374696F6E2820704461746120297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075';
wwv_flow_api.g_varchar2_table(568) := '70457874656E6444617461576974684E756C6C56616C756573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174610A2020202020207D293B0A20200A2020';
wwv_flow_api.g_varchar2_table(569) := '202020207661720A2020202020202020697353656C6563746564203D2066616C73653B0A20200A202020202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B';
wwv_flow_api.g_varchar2_table(570) := '297B0A20202020202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0A20202020202020202020697353656C6563746564203D20747275653B0A202020202020';
wwv_flow_api.g_varchar2_table(571) := '20202020627265616B3B0A20202020202020207D0A2020202020207D0A20200A20202020202070446174612E646174612E756E7368696674287B0A20202020202020202252223A20746869732E5F6765744974656D4C4F564E756C6C56616C756528292C';
wwv_flow_api.g_varchar2_table(572) := '0A20202020202020202244223A20746869732E5F6765744974656D4C4F564E756C6C5465787428292C0A2020202020202020226973415045584E756C6C56616C7565223A20747275652C0A20202020202020202273656C6563746564223A20697353656C';
wwv_flow_api.g_varchar2_table(573) := '65637465640A2020202020207D293B0A20200A20202020202072657475726E2070446174613B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570457874656E6444617461';
wwv_flow_api.g_varchar2_table(574) := '57697468457874726156616C7565730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020';
wwv_flow_api.g_varchar2_table(575) := '205F706F707570457874656E644461746157697468457874726156616C7565733A2066756E6374696F6E282070446174612029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(576) := '69732E6C6F675072656669782C20275F706F707570457874656E644461746157697468457874726156616C756573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A20';
wwv_flow_api.g_varchar2_table(577) := '70446174610A2020202020207D293B0A20200A202020202020766172200A20202020202020206964782C0A20202020202020206E65774172726179203D20242E657874656E6428205B5D2C2070446174612E6461746120292C0A20202020202020206E65';
wwv_flow_api.g_varchar2_table(578) := '77526F774F626A6563743B0A20200A202020202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0A2020202020202020696478203D2074686973';
wwv_flow_api.g_varchar2_table(579) := '2E5F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565282070446174612C20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C756520293B0A20200A20202020202020206966202820';
wwv_flow_api.g_varchar2_table(580) := '696478203D3D202D312029207B0A20200A202020202020202020206E6577526F774F626A656374203D207B0A2020202020202020202020202252223A20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0A202020';
wwv_flow_api.g_varchar2_table(581) := '2020202020202020202244223A20746869732E706F7075702E73746174652E73656C65637465645B695D2E646973706C61792C0A2020202020202020202020202273656C6563746564223A20747275652C0A202020202020202020202020226578747261';
wwv_flow_api.g_varchar2_table(582) := '223A20747275650A202020202020202020207D3B0A20200A2020202020202020202069662028206E6577526F774F626A6563742E52203D3D20746869732E5F6765744974656D4C4F564E756C6C56616C756528292029207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(583) := '202F2F6E756C6C2076616C75650A2020202020202020202020206E6577526F774F626A6563742E6578747261203D2066616C73653B0A2020202020202020202020206E6577526F774F626A6563742E6973415045584E756C6C56616C7565203D20747275';
wwv_flow_api.g_varchar2_table(584) := '653B0A202020202020202020207D0A20200A202020202020202020206E657741727261792E756E7368696674286E6577526F774F626A656374290A20202020202020207D0A2020202020207D0A20200A20202020202070446174612E64617461203D206E';
wwv_flow_api.g_varchar2_table(585) := '657741727261793B0A20200A20202020202072657475726E2070446174613B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F727452656E6465725365617263';
wwv_flow_api.g_varchar2_table(586) := '68696E670A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F7075705265706F7274';
wwv_flow_api.g_varchar2_table(587) := '52656E646572536561726368696E673A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F';
wwv_flow_api.g_varchar2_table(588) := '727452656E646572536561726368696E67272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020207365617263685465726D203D207468';
wwv_flow_api.g_varchar2_table(589) := '69732E706F7075702E73746174652E736561726368537472696E672C0A2020202020202020736561726368696E6754657874203D20746869732E435F504F5055505F544558545F534541524348494E472E7265706C61636528272530272C207365617263';
wwv_flow_api.g_varchar2_table(590) := '685465726D292C0A20202020202020206D61736B203D202428273C64697620636C6173733D22736561726368696E67466F72526573756C74734D61736B223E3C2F6469763E27292C0A2020202020202020636F6E7461696E6572203D2024282720202020';
wwv_flow_api.g_varchar2_table(591) := '2020202020202020202020202020202020202020202020202020202020272B0A20202020202020202020273C64697620636C6173733D22736561726368696E67466F72526573756C7473223E202020202020202020202020272B0A202020202020202020';
wwv_flow_api.g_varchar2_table(592) := '202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020202020202020202020202020272B0A2020202020202020202027202020203C7370616E20636C6173733D2266612066612D726566726573682066612D616E696D2D';
wwv_flow_api.g_varchar2_table(593) := '7370696E223E3C2F7370616E3E20272B0A202020202020202020202720203C2F6469763E20202020202020202020202020202020202020202020202020202020202020202020202020272B0A202020202020202020202720203C64697620636C6173733D';
wwv_flow_api.g_varchar2_table(594) := '2274657874223E272B736561726368696E67546578742B273C2F6469763E272B0A20202020202020202020273C2F6469763E202020202020202020202020202020202020202020202020202020202020202020202020202020272B0A2020202020202020';
wwv_flow_api.g_varchar2_table(595) := '202027270A2020202020202020293B0A20200A2020202020202F2F746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461696E6572293B0A202020202020746869732E706F7075702E626F64790A2020202020202020';
wwv_flow_api.g_varchar2_table(596) := '2E617070656E64286D61736B290A20202020202020202E617070656E6428636F6E7461696E6572293B0A20200A2020202020202F2F746869732E5F706F7075704865616465724869646528293B0A202020202020746869732E5F706F7075704865616465';
wwv_flow_api.g_varchar2_table(597) := '7244697361626C6528293B0A2020202020202F2F746869732E5F706F707570466F6F7465724869646528293B0A202020202020746869732E5F706F707570466F6F74657244697361626C6528293B0A2020202020202F2F746869732E706F707570496E66';
wwv_flow_api.g_varchar2_table(598) := '6F726D6174696F6E4869646528293B0A202020202020746869732E5F706F70757041646A757374426F647948656967687428293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70';
wwv_flow_api.g_varchar2_table(599) := '6F707570416A6178537563636573730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F';
wwv_flow_api.g_varchar2_table(600) := '706F707570416A6178537563636573733A2066756E6374696F6E282070446174612C2070546578745374617475732C20704A71584852297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C';
wwv_flow_api.g_varchar2_table(601) := '20746869732E6C6F675072656669782C20275F706F707570416A617853756363657373272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174612C0A20202020';
wwv_flow_api.g_varchar2_table(602) := '20202020227054657874537461747573223A2070546578745374617475732C0A202020202020202022704A71584852223A20704A715848520A2020202020207D293B0A20200A202020202020766172206D657373616765203D20746869732E435F504F50';
wwv_flow_api.g_varchar2_table(603) := '55505F544558545F46494C54455245445F494E464F0A2020202020202020202020202E7265706C61636528272530272C2070446174612E746F74616C436F756E74290A2020202020202020202020202E7265706C61636528272531272C2070446174612E';
wwv_flow_api.g_varchar2_table(604) := '736561726368537472696E6729202B20746869732E435F504F5055505F544558545F434C4541525F46494C544552494E473B0A20200A202020202020746869732E706F707570496E666F726D6174696F6E4869646528293B0A20200A2020202020207468';
wwv_flow_api.g_varchar2_table(605) := '69732E706F7075702E73746174652E616A617853746174757320202020202020202020202020202020203D20746869732E435F414A41585F5354415455535F535543434553533B0A20200A202020202020746869732E706F7075702E73746174652E736F';
wwv_flow_api.g_varchar2_table(606) := '72746564436F6C756D6E446972656374696F6E2020202020203D2070446174612E736F72744279436F6C756D6E446972656374696F6E3B0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020';
wwv_flow_api.g_varchar2_table(607) := '2020202020203D2070446174612E736F72744279436F6C756D6E4964783B0A202020202020746869732E706F7075702E73746174652E6C61737446657463686564506167652020202020202020202020203D2070446174612E7265717565737465645061';
wwv_flow_api.g_varchar2_table(608) := '67653B0A202020202020746869732E706F7075702E73746174652E736561726368537472696E672020202020202020202020202020203D2070446174612E736561726368537472696E673B0A202020202020746869732E706F7075702E73746174652E73';
wwv_flow_api.g_varchar2_table(609) := '6561726368436F6C756D6E4964782020202020202020202020203D2070446174612E736561726368436F6C756D6E4964783B0A202020202020746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742020202020202020';
wwv_flow_api.g_varchar2_table(610) := '203D2070446174612E746F74616C436F756E743B0A20200A202020202020746869732E706F7075702E73746174652E616A617843757272656E74506167654461746120202020202020203D20746869732E5F64617461457874656E6453656C6563746564';
wwv_flow_api.g_varchar2_table(611) := '46726F6D41727261794F664F626A656374732870446174612C20746869732E706F7075702E73746174652E73656C6563746564292E646174613B0A202020202020746869732E706F7075702E73746174652E616A617843757272656E7450616765526F77';
wwv_flow_api.g_varchar2_table(612) := '6E756D5374617274203D2070446174612E726F776E756D53746172743B0A202020202020746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D456E642020203D2070446174612E726F776E756D456E643B0A20';
wwv_flow_api.g_varchar2_table(613) := '200A202020202020696620282070446174612E72657175657374203D3D20274745544F4E4C5953454C4543544544272029207B0A20202020202020207044617461203D20746869732E5F706F707570457874656E64446174615769746845787472615661';
wwv_flow_api.g_varchar2_table(614) := '6C7565732820704461746120293B2020202020200A2020202020202020746869732E706F7075702E73746174652E616A617853656C656374656444617461203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765446174';
wwv_flow_api.g_varchar2_table(615) := '613B0A2020202020202020746869732E5F706F707570526F7773506572506167654869646528293B0A2020202020202020746869732E5F706F707570506167696E6174696F6E4869646528293B0A2020202020207D0A202020202020656C736520696620';
wwv_flow_api.g_varchar2_table(616) := '282070446174612E72657175657374203D3D2027504F505550272029207B0A2020202020202020746869732E5F706F707570526F77735065725061676553686F7728293B0A2020202020202020746869732E5F706F707570506167696E6174696F6E5368';
wwv_flow_api.g_varchar2_table(617) := '6F7728293B0A20200A2020202020202020696620282070446174612E736561726368537472696E6720213D206E756C6C202626202070446174612E646174612E6C656E677468203E20302029207B0A20202020202020202020746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(618) := '496E666F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F504F5055505F544558545F46494C54455245445F494E464F293B20200A20202020202020207D0A20200A20202020202020202F2F68616E646C652041504558204C';
wwv_flow_api.g_varchar2_table(619) := '4F56206E756C6C2076616C75650A202020202020202069662028200A20202020202020202020746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D2031200A2020202020202020202026262070446174612E73656172';
wwv_flow_api.g_varchar2_table(620) := '6368537472696E67203D3D206E756C6C0A20202020202020202020262620746869732E6F7074696F6E732E6974656D2E6C6F765F646973706C61795F6E756C6C0A202020202020202029207B0A202020202020202020207044617461203D20746869732E';
wwv_flow_api.g_varchar2_table(621) := '5F706F707570457874656E6444617461576974684E756C6C56616C7565732820704461746120293B0A20202020202020207D0A2020202020207D0A20200A202020202020746869732E5F706F7075705265706F727452656E646572282070446174612029';
wwv_flow_api.g_varchar2_table(622) := '3B0A20200A2020202020202F2F6966207468657265206973206E6F2073656172636820737472696E6720636C65617220676C6F62616C20736561726368206974656D0A202020202020696620282021746869732E706F7075702E73746174652E73656172';
wwv_flow_api.g_varchar2_table(623) := '6368537472696E672026262021746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782029207B0A2020202020202020746869732E706F7075702E7365617263682E76616C286E756C6C293B0A2020202020207D0A20200A2020';
wwv_flow_api.g_varchar2_table(624) := '20202020696620282070446174612E717565727920213D20756E646566696E65642029207B0A2020202020202020746869732E5F77726974655175657279546F436F6E736F6C65282070446174612E717565727920293B0A2020202020207D0A20200A20';
wwv_flow_api.g_varchar2_table(625) := '2020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A617853756363657373272C20277374617465272C20746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(626) := '7374617465293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570416A6178447261774572726F720A2020202020202A206465736372697074696F6E20203A200A202020';
wwv_flow_api.g_varchar2_table(627) := '2020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F707570416A6178447261774572726F723A2066756E6374696F6E282070416A6178526573706F6E7365';
wwv_flow_api.g_varchar2_table(628) := '20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A6178447261774572726F72272C207B0A2020202020202020226172';
wwv_flow_api.g_varchar2_table(629) := '67756D656E7473223A20617267756D656E74732C0A20202020202020202270416A6178526573706F6E7365223A2070416A6178526573706F6E73650A2020202020207D293B0A20200A202020202020766172200A2020202020202020636F6E7461696E65';
wwv_flow_api.g_varchar2_table(630) := '722020203D202428273C64697620636C6173733D22616A61784572726F72223E3C2F6469763E27292C0A20202020202020206469764572726F72202020203D202428273C64697620636C6173733D226572726F72223E3C2F6469763E27292C0A20202020';
wwv_flow_api.g_varchar2_table(631) := '202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0A202020202020202064697654656368496E666F203D202428273C6469763E3C2F6469763E27292C0A2020202020202020';
wwv_flow_api.g_varchar2_table(632) := '707265203D202428273C7072653E3C2F7072653E27293B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0A2020202020202020666F72202876617220693D303B2069203C207041';
wwv_flow_api.g_varchar2_table(633) := '6A6178526573706F6E73652E74656368496E666F2E6C656E6774683B20692B2B29207B0A202020202020202020207072652E617070656E64282070416A6178526573706F6E73652E74656368496E666F5B695D2E6E616D652B273A20272B70416A617852';
wwv_flow_api.g_varchar2_table(634) := '6573706F6E73652E74656368496E666F5B695D2E76616C756520293B0A202020202020202020207072652E617070656E6428225C6E22293B0A20202020202020207D0A2020202020207D0A202020202020656C7365207B0A20202020202020207072652E';
wwv_flow_api.g_varchar2_table(635) := '617070656E6428746869732E435F4552524F525F44454255475F4F4646293B0A2020202020207D0A20200A2020202020206469764D6573736167652E617070656E64282070416A6178526573706F6E73652E6572726F7220293B0A202020202020646976';
wwv_flow_api.g_varchar2_table(636) := '4572726F722E617070656E64282070416A6178526573706F6E73652E616464496E666F20293B0A20200A20202020202064697654656368496E666F2E617070656E6428707265293B0A20200A202020202020636F6E7461696E65720A2020202020202020';
wwv_flow_api.g_varchar2_table(637) := '2E617070656E64286469764D657373616765290A20202020202020202E617070656E64286469764572726F72290A20202020202020202E617070656E642864697654656368496E666F293B0A20200A202020202020746869732E706F7075702E626F6479';
wwv_flow_api.g_varchar2_table(638) := '2E656D70747928292E617070656E6428636F6E7461696E6572293B0A202020202020746869732E5F706F707570506167696E6174696F6E4869646528293B0A202020202020746869732E5F706F707570526F7773506572506167654869646528293B0A20';
wwv_flow_api.g_varchar2_table(639) := '2020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570416A61784572726F720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A';
wwv_flow_api.g_varchar2_table(640) := '2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570416A61784572726F723A2066756E6374696F6E2820704A715848522C2070546578745374617475732C20704572726F7254';
wwv_flow_api.g_varchar2_table(641) := '68726F776E20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C207B0A20202020202020202261';
wwv_flow_api.g_varchar2_table(642) := '7267756D656E7473223A20617267756D656E74732C0A202020202020202022704A71584852223A20704A715848522C0A2020202020202020227054657874537461747573223A2070546578745374617475732C0A202020202020202022704572726F7254';
wwv_flow_api.g_varchar2_table(643) := '68726F776E223A20704572726F725468726F776E0A2020202020207D293B0A20200A2020202020207661722061727261793B0A20200A2020202020206966202820704A715848522E73746174757354657874203D3D202761626F7274272029207B0A2020';
wwv_flow_api.g_varchar2_table(644) := '202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C2027414A41582063616C6C2061626F727465642127';
wwv_flow_api.g_varchar2_table(645) := '293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020746869732E706F7075702E73746174652E616A617853746174757320202020202020202020203D20746869732E435F414A41585F53544154';
wwv_flow_api.g_varchar2_table(646) := '55535F4552524F523B0A202020202020746869732E706F7075702E73746174652E616A61784461746146657463686564436F756E74203D20756E646566696E65643B0A202020202020746869732E706F7075702E73746174652E616A617844617461546F';
wwv_flow_api.g_varchar2_table(647) := '74616C436F756E742020203D20756E646566696E65643B0A20200A202020202020746869732E5F706F7075704865616465724869646528293B0A202020202020746869732E5F706F707570466F6F7465724869646528293B0A20200A2020202020206966';
wwv_flow_api.g_varchar2_table(648) := '202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F20213D20756E646566696E65642029207B0A20202020202020200A2020202020202020746869732E5F706F707570416A6178447261774572726F722820704A715848522E72';
wwv_flow_api.g_varchar2_table(649) := '6573706F6E73654A534F4E20293B0A20200A2020202020202020666F72202876617220693D303B2069203C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F2E6C656E6774683B20692B2B2029207B0A2020202020202020202061';
wwv_flow_api.g_varchar2_table(650) := '7065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E6E616D652C';
wwv_flow_api.g_varchar2_table(651) := '20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C7565293B0A20200A202020202020202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E696E64';
wwv_flow_api.g_varchar2_table(652) := '65784F6628275C6E2729203E202D312029207B0A2020202020202020202020206172726179203D20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E73706C697428275C6E27293B0A20200A202020202020';
wwv_flow_api.g_varchar2_table(653) := '202020202020666F722028207661722079203D20303B2079203C2061727261792E6C656E6774683B20792B2B2029207B0A2020202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C';
wwv_flow_api.g_varchar2_table(654) := '20746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E6E616D652C2061727261795B795D293B2020202020202020202020200A202020202020202020202020';
wwv_flow_api.g_varchar2_table(655) := '7D0A202020202020202020207D0A20202020202020207D2020202020200A2020202020207D0A20200A202020202020746869732E5F706F707570416A6178436F6D706C65746528293B0A202020202020746869732E5F747269676765724576656E742827';
wwv_flow_api.g_varchar2_table(656) := '7061656C695F706F7075705F6572726F72272C20746869732E5F706F7075704765744576656E74446174612829293B0A202020202020746869732E5F7468726F774572726F722820704572726F725468726F776E20293B0A202020207D2C0A202020202F';
wwv_flow_api.g_varchar2_table(657) := '2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570416A6178436F6D706C6574650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A20';
wwv_flow_api.g_varchar2_table(658) := '20202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570416A6178436F6D706C6574653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(659) := '5F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A6178436F6D706C657465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020';
wwv_flow_api.g_varchar2_table(660) := '202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(661) := '69782C20275F706F707570416A6178436F6D706C657465272C2027706F707570207374617465272C20746869732E706F7075702E7374617465293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E';
wwv_flow_api.g_varchar2_table(662) := '616D653A205F706F707570416A617841626F72740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20';
wwv_flow_api.g_varchar2_table(663) := '200A202020205F706F707570416A617841626F72743A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70';
wwv_flow_api.g_varchar2_table(664) := '7570416A617841626F7274272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E7868722E61626F727428293B0A20202020';
wwv_flow_api.g_varchar2_table(665) := '2020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757047657453656C656374';
wwv_flow_api.g_varchar2_table(666) := '6564486173680A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F70757047657453';
wwv_flow_api.g_varchar2_table(667) := '656C6563746564486173683A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757047657453656C6563';
wwv_flow_api.g_varchar2_table(668) := '74656448617368272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020206E65774172726179203D20746869732E706F7075702E737461';
wwv_flow_api.g_varchar2_table(669) := '74652E73656C65637465642E6D61702866756E6374696F6E287043757272656E7456616C75652C2070496E6465782C20704172726179297B0A2020202020202020202072657475726E207043757272656E7456616C75652E76616C75653B0A2020202020';
wwv_flow_api.g_varchar2_table(670) := '2020207D292C0A202020202020202068617368436F6465203D20746869732E5F67657448617368436F646528206E657741727261792E6A6F696E28273A272920293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(671) := '435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757047657453656C6563746564486173682072657475726E7320272C2068617368436F6465293B0A20200A20202020202072657475726E2068617368436F64653B';
wwv_flow_api.g_varchar2_table(672) := '0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F67657448617368436F64650A2020202020202A206465736372697074696F6E20203A20696D706C656D656E746174696F6E206F6620';
wwv_flow_api.g_varchar2_table(673) := '68747470733A2F2F737461636B6F766572666C6F772E636F6D2F7175657374696F6E732F373631363436312F67656E65726174652D612D686173682D66726F6D2D737472696E672D696E2D6A6176617363726970740A2020202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(674) := '3A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F67657448617368436F64653A2066756E6374696F6E282070537472696E672029207B0A202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(675) := '6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F67657448617368436F6465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020';
wwv_flow_api.g_varchar2_table(676) := '202270537472696E67223A2070537472696E670A2020202020207D293B0A20200A202020202020766172200A202020202020202068617368203D20302C200A2020202020202020692C200A20202020202020206368723B0A20200A202020202020696620';
wwv_flow_api.g_varchar2_table(677) := '2870537472696E672E6C656E677468203D3D3D203029207B0A202020202020202072657475726E20686173683B0A2020202020207D0A20200A202020202020666F72202869203D20303B2069203C2070537472696E672E6C656E6774683B20692B2B2920';
wwv_flow_api.g_varchar2_table(678) := '7B0A20202020202020206368722020203D2070537472696E672E63686172436F646541742869293B0A20202020202020206861736820203D20282868617368203C3C203529202D206861736829202B206368723B0A202020202020202068617368207C3D';
wwv_flow_api.g_varchar2_table(679) := '20303B202F2F20436F6E7665727420746F20333262697420696E74656765720A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(680) := '782C20275F67657448617368436F64652072657475726E73272C2068617368293B0A20202020202072657475726E20686173683B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70';
wwv_flow_api.g_varchar2_table(681) := '6F7075704469616C6F674265666F7265436C6F736543616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A202020202020';
wwv_flow_api.g_varchar2_table(682) := '2A0A202020202A2F20200A202020205F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0A202020202020617065782E64656275672E6D657373616765287468';
wwv_flow_api.g_varchar2_table(683) := '69732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E7473';
wwv_flow_api.g_varchar2_table(684) := '2C0A202020202020202022704576656E74223A20704576656E742C0A202020202020202022705569223A207055690A2020202020207D293B0A20200A2020202020206966202820746869732E706F7075702E73746174652E73656C656374696E67202920';
wwv_flow_api.g_varchar2_table(685) := '7B0A2020202020202020746869732E706F7075702E73746174652E73656C656374696E67203D2066616C73653B0A202020202020202072657475726E20747275653B0A2020202020207D0A20200A2020202020206966202820746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(686) := '73746174652E73656C65637465644861736820213D20746869732E5F706F70757047657453656C65637465644861736828292029207B0A202020202020202072657475726E20636F6E6669726D2820746869732E435F504F5055505F544558545F554E53';
wwv_flow_api.g_varchar2_table(687) := '415645445F4348414E4745532E7265706C61636528272530272C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774682920293B0A2020202020207D0A202020202020656C7365207B0A202020202020202072657475726E20';
wwv_flow_api.g_varchar2_table(688) := '747275653B0A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074506C616365486F6C64657253686F770A2020202020202A2064657363726970';
wwv_flow_api.g_varchar2_table(689) := '74696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074506C616365486F6C64657253686F773A2066756E637469';
wwv_flow_api.g_varchar2_table(690) := '6F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074506C616365486F6C64657253686F77272C207B0A20202020202020';
wwv_flow_api.g_varchar2_table(691) := '2022617267756D656E7473223A20617267756D656E74732C0A202020202020202022706C616365686F6C646572223A20746869732E6D61736B2E706C616365686F6C6465720A2020202020207D293B0A20200A202020202020746869732E6D61736B2E70';
wwv_flow_api.g_varchar2_table(692) := '6C616365686F6C6465722E73686F7728293B0A202020202020746869732E6D61736B2E6974656D436F6E7461696E6572426F64792E6869646528293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(693) := '6E616D653A205F70726F6D7074506C616365486F6C646572486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A';
wwv_flow_api.g_varchar2_table(694) := '0A202020202A2F20200A202020205F70726F6D7074506C616365486F6C646572486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F';
wwv_flow_api.g_varchar2_table(695) := '675072656669782C20275F70726F6D7074506C616365486F6C64657248696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E6D61736B2E706C61';
wwv_flow_api.g_varchar2_table(696) := '6365686F6C6465722E6869646528293B0A202020202020746869732E6D61736B2E6974656D436F6E7461696E6572426F64792E73686F7728293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(697) := '6D653A205F70726F6D7074456D707479546167730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20';
wwv_flow_api.g_varchar2_table(698) := '200A202020205F70726F6D7074456D707479546167733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F7072';
wwv_flow_api.g_varchar2_table(699) := '6F6D7074456D70747954616773272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E6D61736B2E73746174652E74616773203D205B5D3B0A2020202020';
wwv_flow_api.g_varchar2_table(700) := '20746869732E6D61736B2E74616773436F6E7461696E65722E656D70747928293B0A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074456D7074794D61';
wwv_flow_api.g_varchar2_table(701) := '736B53746174650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074';
wwv_flow_api.g_varchar2_table(702) := '456D7074794D61736B53746174653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074456D7074';
wwv_flow_api.g_varchar2_table(703) := '794D61736B5374617465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E6D61736B2E73746174652E73656C6563746564203D205B5D3B0A20202020';
wwv_flow_api.g_varchar2_table(704) := '7D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F656C656D656E7447657456616C75654C656E6768740A2020202020202A206465736372697074696F6E20203A200A2020202020202A2070617261';
wwv_flow_api.g_varchar2_table(705) := '6D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F656C656D656E7447657456616C75654C656E6768743A2066756E6374696F6E28297B0A202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(706) := '672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C75654C656E676874272C207B0A202020202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(707) := '6E74730A2020202020207D293B0A20200A2020202020207661722072657475726E56616C7565203D20746869732E656C656D656E742E76616C28292E6C656E6774683B0A20200A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(708) := '2E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C75654C656E6768742072657475726E732022272B72657475726E56616C75652B272227293B0A20200A20202020202072657475726E20';
wwv_flow_api.g_varchar2_table(709) := '72657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F656C656D656E7447657456616C75650A2020202020202A206465736372697074696F6E20203A200A20';
wwv_flow_api.g_varchar2_table(710) := '20202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F656C656D656E7447657456616C75653A2066756E6374696F6E28297B0A20202020202061706578';
wwv_flow_api.g_varchar2_table(711) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E';
wwv_flow_api.g_varchar2_table(712) := '74730A2020202020207D293B0A20200A2020202020207661722072657475726E56616C7565203D20746869732E656C656D656E742E76616C28293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(713) := '4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C75652072657475726E732022272B72657475726E56616C75652B272227293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A20';
wwv_flow_api.g_varchar2_table(714) := '2020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F656C656D656E7453657456616C75650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A';
wwv_flow_api.g_varchar2_table(715) := '0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F656C656D656E7453657456616C75653A2066756E6374696F6E28207056616C756520297B0A202020202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(716) := '2E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F656C656D656E7453657456616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020';
wwv_flow_api.g_varchar2_table(717) := '2020202020227056616C7565223A207056616C75650A2020202020207D293B0A20200A202020202020746869732E656C656D656E742E76616C28207056616C756520293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066';
wwv_flow_api.g_varchar2_table(718) := '756E6374696F6E206E616D653A205F706F70757053656C656374416E64436C6F73650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A20';
wwv_flow_api.g_varchar2_table(719) := '20202020202A0A202020202A2F20200A202020205F706F70757053656C656374416E64436C6F73653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869';
wwv_flow_api.g_varchar2_table(720) := '732E6C6F675072656669782C20275F706F70757053656C656374416E64436C6F7365272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(721) := '74456D7074795461677328293B0A20200A202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0A20200A202020202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C';
wwv_flow_api.g_varchar2_table(722) := '65637465642E6C656E6774683B20692B2B29207B0A2020202020202020746869732E5F6D61736B537461746553656C656374656441646428200A202020202020202020207B0A20202020202020202020202022646973706C617922202020202020202020';
wwv_flow_api.g_varchar2_table(723) := '3A20746869732E706F7075702E73746174652E73656C65637465645B695D2E646973706C61792C0A2020202020202020202020202276616C75652220202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465645B695D';
wwv_flow_api.g_varchar2_table(724) := '2E76616C75652C0A202020202020202020202020226973415045584E756C6C56616C756522203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652C0A202020202020202020207D2C2020';
wwv_flow_api.g_varchar2_table(725) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202F2F6F626A6563740A20202020202020202020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973457874726156616C';
wwv_flow_api.g_varchar2_table(726) := '75652C202020202F2F69732065787472612076616C75650A20202020202020202020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C756520202F2F6973206E756C6C2076616C75650A20202020';
wwv_flow_api.g_varchar2_table(727) := '20202020293B0A2020202020207D0A20200A202020202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0A202020202020746869732E5F70726F6D707452656E6465725461677328293B0A20200A2020202020207468';
wwv_flow_api.g_varchar2_table(728) := '69732E706F7075702E73746174652E73656C656374696E67203D20747275653B0A20200A202020202020746869732E5F706F707570436C6F736528293B0A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066';
wwv_flow_api.g_varchar2_table(729) := '756E6374696F6E206E616D653A205F706F707570436C65617246696C746572696E670A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A20';
wwv_flow_api.g_varchar2_table(730) := '20202020202A0A202020202A2F20200A202020205F706F707570436C65617246696C746572696E673A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C207468';
wwv_flow_api.g_varchar2_table(731) := '69732E6C6F675072656669782C20275F706F707570436C65617246696C746572696E67272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(732) := '706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0A2020202020202020746869732E5F706F70757053686F7753656C6563746564436865636B626F784368616E676528293B0A2020202020';
wwv_flow_api.g_varchar2_table(733) := '207D0A202020202020656C7365207B0A2020202020202020746869732E5F706F707570536561726368436C65617228207472756520293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E637469';
wwv_flow_api.g_varchar2_table(734) := '6F6E206E616D653A205F706F707570536561726368436C6561720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20';
wwv_flow_api.g_varchar2_table(735) := '2020202A2F20200A202020205F706F707570536561726368436C6561723A2066756E6374696F6E282070506572666F726D416A617820297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20';
wwv_flow_api.g_varchar2_table(736) := '746869732E6C6F675072656669782C20275F706F707570536561726368436C656172272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270506572666F726D416A6178223A207050657266';
wwv_flow_api.g_varchar2_table(737) := '6F726D416A61780A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E736561726368537472696E67203D206E756C6C3B0A202020202020746869732E706F7075702E7365617263682E76616C286E756C6C293B0A';
wwv_flow_api.g_varchar2_table(738) := '20200A202020202020696620282070506572666F726D416A61782029207B0A2020202020202020746869732E706F7075702E7365617263682E7472696767657228276B6579757027293B0A20200A2020202020202020746869732E5F706F707570416A61';
wwv_flow_api.g_varchar2_table(739) := '78506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829';
wwv_flow_api.g_varchar2_table(740) := '293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704E65774F7074696F6E0A2020202020202A206465736372697074696F6E20203A200A20202020';
wwv_flow_api.g_varchar2_table(741) := '20202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704E65774F7074696F6E3A2066756E6374696F6E28207056616C75652C207054657874297B0A';
wwv_flow_api.g_varchar2_table(742) := '202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704E65774F7074696F6E272C207B0A202020202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(743) := '3A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75652C0A2020202020202020227054657874223A2070546578740A2020202020207D293B0A20200A20202020202072657475726E202428273C6F7074696F6E2076';
wwv_flow_api.g_varchar2_table(744) := '616C75653D22272B7056616C75652B27223E272B70546578742B273C2F6F7074696F6E3E27293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570446562756753746174';
wwv_flow_api.g_varchar2_table(745) := '654F626A6563740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757044';
wwv_flow_api.g_varchar2_table(746) := '6562756753746174654F626A6563743A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F70757044656275';
wwv_flow_api.g_varchar2_table(747) := '6753746174654F626A656374272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022746869732E706F7075702E7374617465223A20746869732E706F7075702E73746174650A202020202020';
wwv_flow_api.g_varchar2_table(748) := '7D293B0A20200A202020202020666F72202820766172206920696E20746869732E706F7075702E73746174652029207B0A20200A20202020202020206966202820746869732E706F7075702E73746174655B695D20696E7374616E63656F662041727261';
wwv_flow_api.g_varchar2_table(749) := '792029207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2020746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B27204152524159';
wwv_flow_api.g_varchar2_table(750) := '2053544152542720293B20200A20200A20202020202020202020666F72202820766172207820696E20746869732E706F7075702E73746174655B695D2029207B0A202020202020202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(751) := '2E435F4C4F475F4C4556454C362C2020746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B275B272B782B275D272C20746869732E706F7075702E73746174655B695D5B785D20293B20200A20202020202020';
wwv_flow_api.g_varchar2_table(752) := '2020207D0A20200A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2020746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B2720415252';
wwv_flow_api.g_varchar2_table(753) := '415920454E442720293B20200A202020202020202020200A20202020202020207D0A2020202020202020656C7365207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20207468';
wwv_flow_api.g_varchar2_table(754) := '69732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B27203D2022272B746869732E706F7075702E73746174655B695D2B27222720293B20200A20202020202020207D0A2020202020207D0A20200A202020207D2C0A';
wwv_flow_api.g_varchar2_table(755) := '202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570436C6F73650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A202020';
wwv_flow_api.g_varchar2_table(756) := '2D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570436C6F73653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255';
wwv_flow_api.g_varchar2_table(757) := '472C20746869732E6C6F675072656669782C20275F706F707570436C6F7365272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E636F6E';
wwv_flow_api.g_varchar2_table(758) := '7461696E65722E6469616C6F672827636C6F736527293B0A20200A202020202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F68696464656E272C20746869732E5F706F7075704765744576656E7444617461282929';
wwv_flow_api.g_varchar2_table(759) := '3B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704765744576656E74446174610A2020202020202A206465736372697074696F6E20203A200A2020202020202A207061';
wwv_flow_api.g_varchar2_table(760) := '72616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704765744576656E74446174613A2066756E6374696F6E28297B0A202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(761) := '6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704765744576656E7444617461272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020';
wwv_flow_api.g_varchar2_table(762) := '202020207D293B0A20200A2020202020207661722072657475726E4F626A656374203D207B0A20202020202020202268656164657222202020202020203A20746869732E706F7075702E6865616465722C0A202020202020202022636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(763) := '22202020203A20746869732E706F7075702E636F6E7461696E65722C0A202020202020202022626F6479222020202020202020203A20746869732E706F7075702E626F64792C0A202020202020202022666F6F74657222202020202020203A2074686973';
wwv_flow_api.g_varchar2_table(764) := '2E706F7075702E666F6F7465722C0A202020202020202022706167696E6174696F6E222020203A20746869732E706F7075702E706167696E6174696F6E2C0A20202020202020202273656172636822202020202020203A20746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(765) := '65617263682C0A202020202020202022726F7773506572506167652220203A20746869732E706F7075702E726F7773506572506167652C0A202020202020202022636F6E74656E745461626C6522203A20746869732E706F7075702E636F6E74656E7454';
wwv_flow_api.g_varchar2_table(766) := '61626C652C0A20202020202020202273746174652220202020202020203A207B0A202020202020202020202273656C65637465642220202020202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465642C0A20202020';
wwv_flow_api.g_varchar2_table(767) := '20202020202022736561726368537472696E6722202020202020202020203A20746869732E706F7075702E73746174652E736561726368537472696E672C0A2020202020202020202022736561726368436F6C756D6E49647822202020202020203A2074';
wwv_flow_api.g_varchar2_table(768) := '6869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0A2020202020202020202022736F72746564436F6C756D6E49647822202020202020203A20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964';
wwv_flow_api.g_varchar2_table(769) := '782C0A2020202020202020202022736F72746564436F6C756D6E446972656374696F6E22203A20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0A2020202020202020202022616A617852756E6E696E';
wwv_flow_api.g_varchar2_table(770) := '672220202020202020202020203A20746869732E706F7075702E73746174652E616A617852756E6E696E670A20202020202020207D0A2020202020207D3B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(771) := '475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704765744576656E74446174612072657475726E73272C2072657475726E4F626A656374293B0A20200A20202020202072657475726E2072657475726E4F626A6563743B';
wwv_flow_api.g_varchar2_table(772) := '0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704F70656E0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A202020';
wwv_flow_api.g_varchar2_table(773) := '2020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704F70656E3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(774) := '475F44454255472C20746869732E6C6F675072656669782C20275F706F7075704F70656E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(775) := '702E626F64792E656D70747928293B0A202020202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F70656E27293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(776) := '6D653A205F706F7075704F70656E4279427574746F6E0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A';
wwv_flow_api.g_varchar2_table(777) := '2F20200A202020205F706F7075704F70656E4279427574746F6E3A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(778) := '72656669782C20275F706F7075704F70656E4279427574746F6E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A2020';
wwv_flow_api.g_varchar2_table(779) := '0A202020202020704576656E742E70726576656E7444656661756C7428293B0A20200A2020202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0A2020202020202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(780) := '6528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F7075704F70656E4279427574746F6E272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0A20';
wwv_flow_api.g_varchar2_table(781) := '2020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020746869732E5F706F7075704F70656E28293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(782) := '6D653A205F706F707570437265617465506167696E6174696F6E436F6E7461696E65720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(783) := '2020202020202A0A202020202A2F20200A202020205F706F707570437265617465506167696E6174696F6E436F6E7461696E65723A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(784) := '475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570437265617465506167696E6174696F6E436F6E7461696E6572272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A202020202020';
wwv_flow_api.g_varchar2_table(785) := '7D293B0A20200A2020202020207661720A2020202020202020706167696E6174696F6E436F6E7461696E65722020203D202428273C64697620636C6173733D22706167696E6174696F6E436F6E7461696E6572223E3C2F6469763E27292C0A2020202020';
wwv_flow_api.g_varchar2_table(786) := '202020706167696E6174696F6E50726576696F7573202020203D202428273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D2270726576223E3C7370616E20636C6173733D2266612066612D63617265742D6C65';
wwv_flow_api.g_varchar2_table(787) := '6674223E3C2F7370616E3E20272B746869732E435F504F5055505F504147494E4154494F4E5F505245562B273C2F613E27292C0A2020202020202020706167696E6174696F6E43757272656E7420202020203D202428273C7370616E20636C6173733D22';
wwv_flow_api.g_varchar2_table(788) := '63757272656E74223E3F3C2F7370616E3E27292C0A2020202020202020706167696E6174696F6E4E65787420202020202020203D202428273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D226E657874223E27';
wwv_flow_api.g_varchar2_table(789) := '2B746869732E435F504F5055505F504147494E4154494F4E5F4E4558542B27203C7370616E20636C6173733D2266612066612D63617265742D7269676874223E3C2F7370616E3E3C2F613E27293B0A20200A2020202020202F2F706167696E6174650A20';
wwv_flow_api.g_varchar2_table(790) := '2020202020706167696E6174696F6E436F6E7461696E65720A20202020202020202E617070656E642820706167696E6174696F6E50726576696F757320290A20202020202020202E617070656E642820706167696E6174696F6E43757272656E7420290A';
wwv_flow_api.g_varchar2_table(791) := '20202020202020202E617070656E642820706167696E6174696F6E4E65787420293B0A20200A20202020202072657475726E20706167696E6174696F6E436F6E7461696E65723B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(792) := '2020202A2066756E6374696F6E206E616D653A205F706F7075704372656174654F626A6563740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020';
wwv_flow_api.g_varchar2_table(793) := '202D0A2020202020202A0A202020202A2F0A202020205F706F7075704372656174654F626A6563743A2066756E6374696F6E2829207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2074';
wwv_flow_api.g_varchar2_table(794) := '6869732E6C6F675072656669782C20275F706F7075704372656174654F626A656374272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A202020202020';
wwv_flow_api.g_varchar2_table(795) := '2020706F707570436F6C756D6E53657474696E67734A736F6E203D20756E646566696E65642C0A2020202020202020706F707570436F6E7461696E6572203D20756E646566696E65642C0A20202020202020206F626A656374203D20756E646566696E65';
wwv_flow_api.g_varchar2_table(796) := '643B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C65203D3D2066616C736529207B0A2020202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(797) := '6869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F7075704372656174654F626A65637420706F707570206973206E6F7420617661696C61626C652E27293B0A202020202020202072657475726E20766F69';
wwv_flow_api.g_varchar2_table(798) := '642830293B0A2020202020207D0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E662029207B0A20202020202020207472797B0A2020202020202020';
wwv_flow_api.g_varchar2_table(799) := '2020706F707570436F6C756D6E53657474696E67734A736F6E203D204A534F4E2E706172736528746869732E6F7074696F6E732E617474726962757465732E706F707570436F6C756D6E53657474696E6773293B0A20202020202020207D206361746368';
wwv_flow_api.g_varchar2_table(800) := '286572726F7229207B0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0A20202020202020202020202022616464496E666F2220203A206572726F722E6E616D652B273A20272B657272';
wwv_flow_api.g_varchar2_table(801) := '6F722E6D6573736167652C0A202020202020202020202020226572726F7222202020203A2027496E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B272220636F6E66696775726174696F6E2E272C';
wwv_flow_api.g_varchar2_table(802) := '0A2020202020202020202020202274656368496E666F22203A205B0A20202020202020202020202020207B0A20202020202020202020202020202020226E616D65223A2027526561736F6E272C0A202020202020202020202020202020202276616C7565';
wwv_flow_api.g_varchar2_table(803) := '223A202750617273696E67204A534F4E206F626A65637420666F7220706F707570207265706F7274206661696C65643A20696E61766C6964204A534F4E206F626A6563742E270A20202020202020202020202020207D2C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(804) := '20207B0A20202020202020202020202020202020226E616D65223A20274A534F4E206F626A65637420746F207061727365272C0A202020202020202020202020202020202276616C7565223A20746869732E6F7074696F6E732E61747472696275746573';
wwv_flow_api.g_varchar2_table(805) := '2E706F707570436F6C756D6E53657474696E67730A20202020202020202020202020207D0A20202020202020202020202020200A2020202020202020202020205D0A202020202020202020207D2C2074727565293B0A20200A2020202020202020202074';
wwv_flow_api.g_varchar2_table(806) := '6869732E5F6D61736B416A61785374617465427574746F6E4572726F722820293B0A20202020202020207D0A2020202020207D0A20200A202020202020706F707570436F6E7461696E6572203D20746869732E5F706F7075704372656174654E65772829';
wwv_flow_api.g_varchar2_table(807) := '3B0A20200A2020202020206F626A656374203D207B0A202020202020202022636F6E7461696E6572223A20706F707570436F6E7461696E65722C0A20202020202020202264656661756C745265706F727453657474696E6773223A207B0A202020202020';
wwv_flow_api.g_varchar2_table(808) := '202020202F2F2268656164696E67223A2022222C0A20202020202020202020227468416C69676E223A20226C656674222C0A20202020202020202020227464416C69676E223A20226C656674222C0A202020202020202020202276697369626C65223A20';
wwv_flow_api.g_varchar2_table(809) := '747275652C0A2020202020202020202022736F7274222020203A20747275652C0A202020202020202020202266696C74657222203A20747275650A20202020202020207D2C0A202020202020202022686561646572732220203A20706F707570436F6C75';
wwv_flow_api.g_varchar2_table(810) := '6D6E53657474696E67734A736F6E2C0A202020202020202022686561646572416374696F6E436F6E7461696E6572223A20756E646566696E65642C0A2020202020202020227374617465223A207B0A2020202020202020202022696E666F726D6174696F';
wwv_flow_api.g_varchar2_table(811) := '6E546578742220202020202020202020203A20756E646566696E65642C0A2020202020202020202022696E666F726D6174696F6E54656D706C61746522202020202020203A20756E646566696E65642C0A202020202020202020202273656C656374696E';
wwv_flow_api.g_varchar2_table(812) := '672220202020202020202020202020202020203A2066616C73652C202F2F746F207265636F676E697A65206D616E75616C2073656C65637420616E6420636C6F73650A202020202020202020202278687222202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(813) := '20202020203A20756E646566696E65642C0A2020202020202020202022697356697369626C652220202020202020202020202020202020203A2066616C73652C0A20202020202020202020226C6173744665746368656450616765222020202020202020';
wwv_flow_api.g_varchar2_table(814) := '2020203A206E756C6C2C0A2020202020202020202022736561726368537472696E672220202020202020202020202020203A20756E646566696E65642C0A2020202020202020202022736561726368537472696E674F6E466F6375732220202020202020';
wwv_flow_api.g_varchar2_table(815) := '3A20756E646566696E65642C0A2020202020202020202022736F72746564436F6C756D6E4964782220202020202020202020203A206E756C6C2C0A2020202020202020202022736F72746564436F6C756D6E446972656374696F6E2220202020203A2027';
wwv_flow_api.g_varchar2_table(816) := '617363272C0A2020202020202020202022616A617852756E6E696E67222020202020202020202020202020203A2066616C73652C0A2020202020202020202022736561726368436F6C756D6E4964782220202020202020202020203A20756E646566696E';
wwv_flow_api.g_varchar2_table(817) := '65642C0A2020202020202020202022616A61784461746146657463686564436F756E74222020202020203A20302C0A2020202020202020202022616A617844617461546F74616C436F756E742220202020202020203A20756E646566696E65642C0A2020';
wwv_flow_api.g_varchar2_table(818) := '202020202020202022616A617853746174757322202020202020202020202020202020203A20756E646566696E65642C0A2020202020202020202022616A617843757272656E74506167654461746122202020202020203A205B5D2C0A20202020202020';
wwv_flow_api.g_varchar2_table(819) := '20202022616A617853656C65637465644461746122202020202020202020203A205B5D2C0A2020202020202020202022616A617843757272656E7450616765526F776E756D5374617274223A20756E646566696E65642C0A202020202020202020202261';
wwv_flow_api.g_varchar2_table(820) := '6A617843757272656E7450616765526F776E756D456E642220203A20756E646566696E65642C0A20202020202020202020226361636865222020202020202020202020202020202020202020203A205B5D2C202F2F20646F20646F706973616E6961206B';
wwv_flow_api.g_varchar2_table(821) := '69656479C59B200A202020202020202020202273656C6563746564222020202020202020202020202020202020203A205B5D2C0A202020202020202020202273656C6563746564486173682220202020202020202020202020203A20300A202020202020';
wwv_flow_api.g_varchar2_table(822) := '20207D2C20202020202020200A2020202020202020226469616C6F6748656164657222202020202020202020203A20706F707570436F6E7461696E65722E706172656E7428292E66696E6428272E75692D6469616C6F672D7469746C6562617227292C0A';
wwv_flow_api.g_varchar2_table(823) := '20202020202020202268656164657222202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E68656164657227292C0A202020202020202022696E666F726D6174696F6E436F6E7461696E65722220203A20';
wwv_flow_api.g_varchar2_table(824) := '706F707570436F6E7461696E65722E66696E6428272E696E666F726D6174696F6E27292C0A202020202020202022696E666F726D6174696F6E5465787422202020202020203A20706F707570436F6E7461696E65722E66696E6428272E696E666F726D61';
wwv_flow_api.g_varchar2_table(825) := '74696F6E202E7465787427292C0A202020202020202022626F6479222020202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E626F647927292C0A202020202020202022666F6F74657222202020202020';
wwv_flow_api.g_varchar2_table(826) := '202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E666F6F74657227292C0A20202020202020202273686F7753656C6563746564436F6E7461696E657222203A20706F707570436F6E7461696E65722E66696E6428272E';
wwv_flow_api.g_varchar2_table(827) := '666F6F7465722D73686F7753656C656374656427292C0A202020202020202022737469636B7948656164657273222020202020202020203A20756E646566696E65642C0A2020202020202020227365617263682220202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(828) := '3A20706F707570436F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572203A696E70757427292C0A20202020202020202273656C656374416C6C436865636B626F782220202020203A20756E646566696E65642C0A2020202020';
wwv_flow_api.g_varchar2_table(829) := '2020202273686F7753656C6563746564436865636B626F782220203A20706F707570436F6E7461696E65722E66696E6428272E666F6F746572203A636865636B626F7827292C0A20202020202020202273686F7753656C65637465644C6162656C222020';
wwv_flow_api.g_varchar2_table(830) := '2020203A20706F707570436F6E7461696E65722E66696E6428272E666F6F746572206C6162656C27292C0A202020202020202022636C6561722220202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E73';
wwv_flow_api.g_varchar2_table(831) := '6561726368436F6E7461696E6572202E636C65617227292C0A20202020202020202273656C65637422202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E73656C65637427292C0A202020202020202022';
wwv_flow_api.g_varchar2_table(832) := '706167696E6174696F6E436F6E7461696E6572222020203A20706F707570436F6E7461696E65722E66696E6428272E706167696E6174696F6E436F6E7461696E657227292C0A202020202020202022706167696E6174696F6E5072657650616765222020';
wwv_flow_api.g_varchar2_table(833) := '20203A20706F707570436F6E7461696E65722E66696E6428272E7072657627292C0A202020202020202022706167696E6174696F6E4E6578745061676522202020203A20706F707570436F6E7461696E65722E66696E6428272E6E65787427292C0A2020';
wwv_flow_api.g_varchar2_table(834) := '20202020202022706167696E6174696F6E43757272656E742220202020203A20706F707570436F6E7461696E65722E66696E6428272E63757272656E7427292C0A202020202020202022726F7773506572506167652220202020202020202020203A2070';
wwv_flow_api.g_varchar2_table(835) := '6F707570436F6E7461696E65722E66696E64282773656C65637427292C0A202020202020202022636F6E74656E745461626C6522202020202020202020203A20756E646566696E65642C0A202020202020202022726F777350657250616765436F6E7461';
wwv_flow_api.g_varchar2_table(836) := '696E65722220203A20706F707570436F6E7461696E65722E66696E6428272E726F777350657250616765436F6E7461696E657227290A2020202020207D3B0A20200A2020202020206F626A6563742E626F64792E6F6E28277363726F6C6C272C20242E70';
wwv_flow_api.g_varchar2_table(837) := '726F78792820746869732E5F706F7075705363726F6C6C43616C6C6261636B2C2074686973202920293B2020200A2020202020206F626A6563742E636C6561722E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F707570536561';
wwv_flow_api.g_varchar2_table(838) := '726368436C6561722C20746869732C2074727565202920293B0A2020202020200A2020202020206F626A6563742E706167696E6174696F6E50726576506167652E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F707570506167';
wwv_flow_api.g_varchar2_table(839) := '696E6174696F6E50726576506167652C20746869732029293B0A2020202020206F626A6563742E706167696E6174696F6E4E657874506167652E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F707570506167696E6174696F6E';
wwv_flow_api.g_varchar2_table(840) := '4E657874506167652C20746869732029293B0A2020202020206F626A6563742E726F7773506572506167652E6F6E28276368616E6765272C20242E70726F78792820746869732E5F706F7075704368616E6765526F7773506572506167652C2074686973';
wwv_flow_api.g_varchar2_table(841) := '202920290A20200A2020202020206F626A6563742E73686F7753656C6563746564436865636B626F782E6F6E28276368616E6765272C20242E70726F78792820746869732E5F706F70757053686F7753656C6563746564436865636B626F784368616E67';
wwv_flow_api.g_varchar2_table(842) := '652C2074686973202920293B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E636C69636B4F6E526F7753656C6563747349742029207B0A20202020202020206F626A6563742E636F6E7461696E65';
wwv_flow_api.g_varchar2_table(843) := '722E6F6E2827636C69636B272C20277464272C20242E70726F78792820746869732E5F706F707570436C69636B4F6E43656C6C2C20746869732920293B0A2020202020207D0A2020202020200A2020202020206F626A6563742E636F6E7461696E65720A';
wwv_flow_api.g_varchar2_table(844) := '20202020202020202E6F6E2827636C69636B272C2020272E66616B65436865636B626F78272C202020202020202020202020242E70726F78792820746869732E5F706F70757046616B65436865636B626F78436C69636B2C202020202020202020207468';
wwv_flow_api.g_varchar2_table(845) := '69732920290A20202020202020202E6F6E2827636C69636B272C202027627574746F6E2E73656C656374272C202020202020202020202020242E70726F78792820746869732E5F706F70757053656C656374416E64436C6F73652C202020202020202020';
wwv_flow_api.g_varchar2_table(846) := '20202020746869732920290A20202020202020202E6F6E2827636C69636B272C202027612E73686F7753656C6563746564272C2020202020202020202020242E70726F78792820746869732E5F706F70757053686F7753656C6563746564436865636B62';
wwv_flow_api.g_varchar2_table(847) := '6F784368616E67652C20746869732920290A20202020202020202E6F6E2827636C69636B272C202027612E636C65617246696C746572696E67272C202020202020202020242E70726F78792820746869732E5F706F707570436C65617246696C74657269';
wwv_flow_api.g_varchar2_table(848) := '6E672C20202020202020202020202020746869732920290A20202020202020202E6F6E2827636C69636B272C2020272E66616B65526164696F272C202020202020202020202020202020242E70726F78792820746869732E5F706F70757046616B655261';
wwv_flow_api.g_varchar2_table(849) := '64696F436C69636B2C20202020202020202020202020746869732920290A20202020202020202E6F6E28276368616E6765272C202774683A66697273742D6368696C64203A636865636B626F78272C20242E70726F78792820746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(850) := '5468436865636B626F784368616E67652C2020202020202020202020746869732920290A20202020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A636865636B626F78272C20242E70726F78792820746869732E';
wwv_flow_api.g_varchar2_table(851) := '5F706F7075705464436865636B626F784368616E67652C2020202020202020202020746869732920290A20202020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A726164696F272C20202020242E70726F787928';
wwv_flow_api.g_varchar2_table(852) := '20746869732E5F706F7075705464526164696F4368616E67652C2020202020202020202020202020746869732920293B0A20200A2020202020206F626A6563742E7365617263680A20202020202020202E6F6E28276B65797570272C20746869732E5F64';
wwv_flow_api.g_varchar2_table(853) := '65626F756E636528242E70726F78792820746869732E5F706F7075705365617263684B657955702C20746869732C206E756C6C2C206E756C6C292C20746869732E706C7567696E53657474696E67732E706F7075705365617263684465626F756E636554';
wwv_flow_api.g_varchar2_table(854) := '696D6529290A20202020202020202E6F6E28276B65797570272C20242E70726F78792820746869732E5F6D61736B4B657955704D616E61676549636F6E732C20746869732920290A20202020202020202E6F6E2827666F637573272C20242E70726F7879';
wwv_flow_api.g_varchar2_table(855) := '2820746869732E5F706F707570536561726368466F6375732C2074686973202920293B202020200A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(856) := '782C20275F706F7075704372656174654F626A656374272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202272657475726E73223A206F626A6563740A2020202020207D293B0A20200A2020';
wwv_flow_api.g_varchar2_table(857) := '2020202072657475726E206F626A6563743B0A202020207D2C200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704372656174654E65770A2020202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(858) := '20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704372656174654E65773A2066756E6374696F6E28297B0A2020202020';
wwv_flow_api.g_varchar2_table(859) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704372656174654E6577272C207B0A202020202020202022617267756D656E7473223A20617267';
wwv_flow_api.g_varchar2_table(860) := '756D656E74730A2020202020207D293B0A20200A202020202020766172200A2020202020202020686561646572202020202020202020202020202020203D202428273C64697620636C6173733D22686561646572223E3C2F6469763E27292C0A20202020';
wwv_flow_api.g_varchar2_table(861) := '20202020696E666F726D6174696F6E20202020202020202020203D202428273C64697620636C6173733D22696E666F726D6174696F6E2068696464656E223E203C64697620636C6173733D2274657874223E3C2F6469763E203C2F6469763E27292C0A20';
wwv_flow_api.g_varchar2_table(862) := '20202020202020736561726368436F6E7461696E6572202020202020203D202428273C64697620636C6173733D22736561726368436F6E7461696E6572223E3C2F6469763E27292C0A2020202020202020726F777350657250616765436F6E7461696E65';
wwv_flow_api.g_varchar2_table(863) := '7220203D202428273C64697620636C6173733D22726F777350657250616765436F6E7461696E6572223E3C2F6469763E27292C0A2020202020202020726F77735065725061676553656C65637420202020203D202428273C73656C6563743E3C2F73656C';
wwv_flow_api.g_varchar2_table(864) := '65637427292C0A20200A2020202020202020736561726368496E70757420202020202020202020203D202428273C696E70757420747970653D22746578742220706C616365686F6C6465723D22272B746869732E435F504F5055505F5345415243485F50';
wwv_flow_api.g_varchar2_table(865) := '4C414345484F4C4445522B272220636C6173733D22656D707479223E27292C0A202020202020202073656172636849636F6E2020202020202020202020203D202428273C7370616E20636C6173733D2266612066612D7365617263682073656172636822';
wwv_flow_api.g_varchar2_table(866) := '3E3C2F7370616E3E27292C0A2020202020202020736561726368436C65617249636F6E202020202020203D202428273C7370616E20636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E27292C0A2020202020202020';
wwv_flow_api.g_varchar2_table(867) := '626F64792020202020202020202020202020202020203D202428273C64697620636C6173733D22626F6479223E3C2F6469763E27292C0A2020202020202020666F6F746572202020202020202020202020202020203D202428273C64697620636C617373';
wwv_flow_api.g_varchar2_table(868) := '3D22666F6F746572223E3C2F6469763E27292C0A2020202020202020666F6F74657253686F7753656C6563746564202020203D202428273C64697620636C6173733D22666F6F7465722D73686F7753656C6563746564223E3C2F6469763E27292C0A2020';
wwv_flow_api.g_varchar2_table(869) := '202020202020666F6F746572427574746F6E732020202020202020203D202428273C64697620636C6173733D22666F6F7465722D627574746F6E73223E3C2F6469763E27292C0A20200A2020202020202020627574746F6E53656C656374202020202020';
wwv_flow_api.g_varchar2_table(870) := '202020203D202428273C627574746F6E20636C6173733D22742D427574746F6E20742D427574746F6E2D2D686F742073656C656374223E272B746869732E435F504F5055505F42544E5F53454C4543545F544558542B273C2F627574746F6E3E27292C0A';
wwv_flow_api.g_varchar2_table(871) := '2020202020202020627574746F6E446562756720202020202020202020203D202428273C627574746F6E20636C6173733D22742D427574746F6E206465627567223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F';
wwv_flow_api.g_varchar2_table(872) := '627574746F6E3E27292C0A20200A202020202020202073686F7753656C6563746564496E70757420202020203D202428273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D737175';
wwv_flow_api.g_varchar2_table(873) := '6172652D6F2066616B65436865636B626F78223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0A202020202020202073686F7753656C6563746564';
wwv_flow_api.g_varchar2_table(874) := '4C6162656C20202020203D202428273C6C6162656C3E272B746869732E435F504F5055505F53484F575F53454C45435445445F4C4142454C2B273C2F6C6162656C3E27292C0A2020202020202020636F6E7461696E657220202020202020202020202020';
wwv_flow_api.g_varchar2_table(875) := '3D202428273C64697620636C6173733D22707265746975734C6F762D636F6E7461696E65722220646174612D617065782D6974656D3D22272B746869732E656C656D656E742E6765742830292E69642B27223E3C2F6469763E27292C0A20202020202020';
wwv_flow_api.g_varchar2_table(876) := '206578747261436C6173732020202020202020202020203D20746869732E706C7567696E53657474696E67732E706F7075702E636C69636B4F6E526F7753656C656374734974203F202773656C656374566961526F777327203A2027272C0A2020202020';
wwv_flow_api.g_varchar2_table(877) := '2020206F7074696F6E732020202020202020202020202020203D207B0A20202020202020202020226469616C6F67436C617373222020203A2022707265746975732D2D656E68616E6365644C6F764974656D20706F70757020222B6578747261436C6173';
wwv_flow_api.g_varchar2_table(878) := '732C0A20202020202020202020226175746F4F70656E222020202020203A2066616C73652C0A2020202020202020202022617070656E64546F222020202020203A2027626F6479272C0A20202020202020202020226D6F64616C22202020202020202020';
wwv_flow_api.g_varchar2_table(879) := '3A20747275652C0A20202020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E7469746C652C0A20202020202020202020227769647468222020202020202020203A20746869';
wwv_flow_api.g_varchar2_table(880) := '732E706C7567696E53657474696E67732E706F7075702E77696474682C0A20202020202020202020226D696E5769647468222020202020203A203530302C0A20202020202020202020226865696768742220202020202020203A20746869732E706C7567';
wwv_flow_api.g_varchar2_table(881) := '696E53657474696E67732E706F7075702E61646A757374486569676874546F526573756C7473203F20353030203A20746869732E706C7567696E53657474696E67732E706F7075702E6865696768742C0A20202020202020202020226D696E4865696768';
wwv_flow_api.g_varchar2_table(882) := '742220202020203A203235352C0A2020202020202020202022726573697A61626C652220202020203A20746869732E706C7567696E53657474696E67732E706F7075702E726573697A61626C652C0A2020202020202020202022647261676761626C6522';
wwv_flow_api.g_varchar2_table(883) := '20202020203A20746869732E706C7567696E53657474696E67732E706F7075702E647261676761626C652C0A2020202020202020202022636C6F73654F6E45736361706522203A20746869732E706C7567696E53657474696E67732E706F7075702E636C';
wwv_flow_api.g_varchar2_table(884) := '6F73654F6E4573636170652C0A2020202020202020202022726573697A6553746F7022202020203A20242E70726F78792820746869732E5F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B2C207468697320292C0A2020202020';
wwv_flow_api.g_varchar2_table(885) := '2020202020226472616722202020202020202020203A20242E70726F78792820746869732E5F706F70757044726167506F736974696F6E46697843616C6C6261636B2C207468697320292C0A202020202020202020202264726167537461727422202020';
wwv_flow_api.g_varchar2_table(886) := '20203A20242E70726F78792820746869732E5F706F7075704469616C6F6744726167537461727443616C6C6261636B2C207468697320292C0A20202020202020202020226472616753746F70222020202020203A20242E70726F78792820746869732E5F';
wwv_flow_api.g_varchar2_table(887) := '706F7075704469616C6F674472616753746F7043616C6C6261636B2C207468697320292C0A20202020202020202020226F70656E22202020202020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F674F70656E43616C6C62';
wwv_flow_api.g_varchar2_table(888) := '61636B2C207468697320292C0A2020202020202020202022636C6F7365222020202020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F67436C6F736543616C6C6261636B2C207468697320292C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(889) := '226265666F7265436C6F7365222020203A20242E70726F78792820746869732E5F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B2C207468697320290A20202020202020207D3B0A20200A2020202020202F2F736561726368';
wwv_flow_api.g_varchar2_table(890) := '20696E20616C6C20636F6C756D6E730A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E736561726368496E416C6C436F6C756D6E732029207B0A2020202020202020736561726368436F6E7461696E65720A';
wwv_flow_api.g_varchar2_table(891) := '202020202020202020202E617070656E642820736561726368496E70757420290A202020202020202020202E617070656E64282073656172636849636F6E20290A202020202020202020202E617070656E642820736561726368436C65617249636F6E20';
wwv_flow_api.g_varchar2_table(892) := '293B0A20200A20202020202020206865616465722E617070656E642820736561726368436F6E7461696E657220290A2020202020207D0A20200A2020202020202F2F726F77732070657220706167650A2020202020206966202820746869732E706C7567';
wwv_flow_api.g_varchar2_table(893) := '696E53657474696E67732E706F7075702E73686F77526F7773506572506167652029207B0A2020202020202020666F72202876617220693D313B20693C3D31303B20692B2B29207B0A20202020202020202020726F77735065725061676553656C656374';
wwv_flow_api.g_varchar2_table(894) := '2E617070656E642820746869732E5F706F7075704E65774F7074696F6E28692A31302C692A31302920293B0A20202020202020207D0A20200A2020202020202020726F77735065725061676553656C6563742E76616C2820746869732E706C7567696E53';
wwv_flow_api.g_varchar2_table(895) := '657474696E67732E706F7075702E726F77735065725061676520293B0A20200A2020202020202020726F777350657250616765436F6E7461696E65722E617070656E642820726F77735065725061676553656C65637420293B0A20202020202020206865';
wwv_flow_api.g_varchar2_table(896) := '616465722E617070656E642820726F777350657250616765436F6E7461696E657220290A2020202020207D0A20200A20202020202069662028200A202020202020202021746869732E706C7567696E53657474696E67732E706F7075702E736561726368';
wwv_flow_api.g_varchar2_table(897) := '496E416C6C436F6C756D6E730A202020202020202026262021746869732E706C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167650A20202020202029207B0A20202020202020206865616465722E616464436C617373';
wwv_flow_api.g_varchar2_table(898) := '2827706167696E6174696F6E4F6E6C7927293B0A2020202020207D0A20200A2020202020202F2F706167696E6174696F6E0A2020202020206865616465722E617070656E642820746869732E5F706F707570437265617465506167696E6174696F6E436F';
wwv_flow_api.g_varchar2_table(899) := '6E7461696E6572282920293B0A2020202020200A20202020202073686F7753656C6563746564496E7075742E756E69717565496428293B0A20202020202073686F7753656C65637465644C6162656C2E617474722827666F72272C2073686F7753656C65';
wwv_flow_api.g_varchar2_table(900) := '63746564496E7075742E61747472282769642729293B0A20200A202020202020666F6F74657253686F7753656C65637465640A20202020202020202E617070656E64282073686F7753656C6563746564496E70757420290A20202020202020202E617070';
wwv_flow_api.g_varchar2_table(901) := '656E64282073686F7753656C65637465644C6162656C20293B0A20200A2020202020206966202820617065782E64656275672E6765744C6576656C2829203E3D20746869732E435F4C4F475F4C4556454C362029207B0A2020202020202020627574746F';
wwv_flow_api.g_varchar2_table(902) := '6E44656275672E636C69636B2820242E70726F78792820746869732E5F706F707570446562756753746174654F626A6563742C2074686973202920293B0A2020202020202020666F6F746572427574746F6E732E617070656E642820627574746F6E4465';
wwv_flow_api.g_varchar2_table(903) := '62756720293B0A2020202020207D0A20200A202020202020666F6F746572427574746F6E732E617070656E642820627574746F6E53656C65637420293B0A20200A202020202020666F6F7465720A20202020202020202E617070656E6428666F6F746572';
wwv_flow_api.g_varchar2_table(904) := '53686F7753656C6563746564292020202020200A20202020202020202E617070656E6428666F6F746572427574746F6E73293B0A20200A202020202020636F6E7461696E65720A20202020202020202E617070656E64282068656164657220290A202020';
wwv_flow_api.g_varchar2_table(905) := '20202020202E617070656E642820696E666F726D6174696F6E20290A20202020202020202E617070656E642820626F647920290A20202020202020202E617070656E642820666F6F74657220293B0A20200A2020202020202F2F6469616C6F6720636F6E';
wwv_flow_api.g_varchar2_table(906) := '7374727563746F7220617070656E6473206E65776C79206372656174656420636F6E7461696E657220746F2073706563696669656420656C656D656E742028626F6479290A202020202020636F6E7461696E65722E6469616C6F6728206F7074696F6E73';
wwv_flow_api.g_varchar2_table(907) := '20293B0A202020202020636F6E7461696E65722E61747472287B0A202020202020202027746162696E646578273A20302C0A202020202020202027646174612D706F707570273A20746869732E776964676574556E6971756549640A2020202020207D29';
wwv_flow_api.g_varchar2_table(908) := '3B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704372656174654E6577272C202272657475726E73222C207B0A202020';
wwv_flow_api.g_varchar2_table(909) := '202020202022636F6E7461696E6572223A20636F6E7461696E65720A2020202020207D293B0A20200A20202020202072657475726E20636F6E7461696E65723B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374';
wwv_flow_api.g_varchar2_table(910) := '696F6E206E616D653A205F706F707570536561726368496E53656C6563746564446174610A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D';
wwv_flow_api.g_varchar2_table(911) := '0A2020202020202A0A202020202A2F20200A202020205F706F707570536561726368496E53656C6563746564446174613A2066756E6374696F6E282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C20705365';
wwv_flow_api.g_varchar2_table(912) := '61726368537472696E672C20704973536561726368476C6F62616C20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705365';
wwv_flow_api.g_varchar2_table(913) := '61726368496E53656C656374656444617461272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270536561726368436F6C756D6E4E616D65223A2070536561726368436F6C756D6E4E616D';
wwv_flow_api.g_varchar2_table(914) := '652C0A20202020202020202270536561726368436F6C756D6E496478223A2070536561726368436F6C756D6E4964782C0A20202020202020202270536561726368537472696E67223A2070536561726368537472696E672C0A2020202020202020227049';
wwv_flow_api.g_varchar2_table(915) := '73536561726368476C6F62616C223A20704973536561726368476C6F62616C2C0A202020202020202022746869732E706F7075702E73746174652E616A617843757272656E745061676544617461223A20746869732E706F7075702E73746174652E616A';
wwv_flow_api.g_varchar2_table(916) := '617843757272656E7450616765446174610A2020202020207D293B0A20200A202020202020766172200A20202020202020206E6577446174612C0A20202020202020206D6573736167653B0A20200A202020202020696620282070497353656172636847';
wwv_flow_api.g_varchar2_table(917) := '6C6F62616C2029207B0A20202020202020206E657744617461203D20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E66696C746572282066756E6374696F6E282070526F7720297B0A20200A202020202020202020';
wwv_flow_api.g_varchar2_table(918) := '20666F72202820766172206920696E2070526F772029207B0A202020202020202020202020696620282070526F775B695D2E746F537472696E6728292E746F55707065724361736528292E696E6465784F66282070536561726368537472696E672E746F';
wwv_flow_api.g_varchar2_table(919) := '55707065724361736528292029203E202D312029207B0A202020202020202020202020202072657475726E20747275653B0A2020202020202020202020207D0A202020202020202020207D0A2020202020202020202072657475726E2066616C73653B0A';
wwv_flow_api.g_varchar2_table(920) := '20202020202020207D20293B0A20200A2020202020207D200A202020202020656C7365207B0A20202020202020206E657744617461203D20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E66696C74657228206675';
wwv_flow_api.g_varchar2_table(921) := '6E6374696F6E282070526F7720297B0A2020202020202020202072657475726E2070526F775B2070536561726368436F6C756D6E4E616D65205D2E746F55707065724361736528292E696E6465784F66282070536561726368537472696E672E746F5570';
wwv_flow_api.g_varchar2_table(922) := '7065724361736528292029203E202D310A20202020202020207D20293B0A2020202020207D2020200A202020200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(923) := '656669782C20275F706F707570536561726368496E53656C656374656444617461272C202766696C7465726564272C206E657744617461293B0A20200A202020202020746869732E706F7075702E73746174652E736561726368537472696E6720202020';
wwv_flow_api.g_varchar2_table(924) := '3D2070536561726368537472696E673B0A202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D2070536561726368436F6C756D6E4964783B0A20200A202020202020746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(925) := '652E616A617843757272656E745061676544617461203D206E6577446174613B0A202020202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A206E6577446174617D20293B0A2020202020200A2020202020206D65';
wwv_flow_api.g_varchar2_table(926) := '7373616765203D20746869732E435F504F5055505F544558545F53454143485F494E5F53454C45435445440A202020202020202020202E7265706C61636528272530272C206E6577446174612E6C656E677468290A202020202020202020202E7265706C';
wwv_flow_api.g_varchar2_table(927) := '61636528272531272C20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E6C656E677468293B0A20200A202020202020746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C';
wwv_flow_api.g_varchar2_table(928) := '20746869732E435F504F5055505F544558545F53454143485F494E5F53454C4543544544293B0A20200A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757053656172';
wwv_flow_api.g_varchar2_table(929) := '6368426C75720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705365';
wwv_flow_api.g_varchar2_table(930) := '61726368426C75723A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536561';
wwv_flow_api.g_varchar2_table(931) := '726368426C7572272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E742C0A20202020202020202263757272656E742076616C7565223A20746869732E';
wwv_flow_api.g_varchar2_table(932) := '706F7075702E7365617263682E76616C28292C0A202020202020202022666F6375732076616C7565223A20746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375730A2020202020207D293B0A20200A20202020202076';
wwv_flow_api.g_varchar2_table(933) := '6172206E65774576656E74203D20617065782E6A51756572792E4576656E742820276B65797570272C207B2077686963683A20242E75692E6B6579436F64652E454E5445522C206B6579436F64653A203133207D20293B0A20200A202020202020696620';
wwv_flow_api.g_varchar2_table(934) := '2820746869732E706F7075702E7365617263682E76616C282920213D20746869732E706F7075702E73746174652E736561726368537472696E674F6E466F63757329207B200A2020202020202020746869732E706F7075702E7365617263682E74726967';
wwv_flow_api.g_varchar2_table(935) := '676572286E65774576656E74293B0A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570536561726368466F6375730A2020202020202A20646573';
wwv_flow_api.g_varchar2_table(936) := '6372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570536561726368466F6375733A2066756E6374696F';
wwv_flow_api.g_varchar2_table(937) := '6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536561726368466F637573272C207B0A20202020';
wwv_flow_api.g_varchar2_table(938) := '2020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E736561726368537472696E';
wwv_flow_api.g_varchar2_table(939) := '674F6E466F637573203D20746869732E706F7075702E7365617263682E76616C28293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(940) := '5F706F707570536561726368466F637573272C202763757272656E742073656172636820737472696E672069732022272B746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375732B272227293B0A202020207D2C0A20';
wwv_flow_api.g_varchar2_table(941) := '2020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705365617263684B657955700A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020';
wwv_flow_api.g_varchar2_table(942) := '202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705365617263684B657955703A2066756E6374696F6E282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D';
wwv_flow_api.g_varchar2_table(943) := '6E4964782C20704576656E7420297B0A202020202020766172200A20202020202020207365617263684974656D20202020203D202428704576656E742E63757272656E74546172676574292C0A2020202020202020736561726368537472696E67202020';
wwv_flow_api.g_varchar2_table(944) := '3D207365617263684974656D2E76616C28292C0A20202020202020206973536561726368476C6F62616C203D20704576656E742E63757272656E74546172676574203D3D20746869732E706F7075702E7365617263682E6765742830293B0A20200A2020';
wwv_flow_api.g_varchar2_table(945) := '202020202F2F7768656E206F74686572206B6579207468656E2022656E7465722220747269676765726564206B65797570206576656E740A2020202020206966202820704576656E742E6B6579436F646520213D2031332029207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(946) := '72657475726E20766F69642830293B0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F7075705365617263684B';
wwv_flow_api.g_varchar2_table(947) := '65795570272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270536561726368436F6C756D6E4E616D65223A2070536561726368436F6C756D6E4E616D652C0A2020202020202020227053';
wwv_flow_api.g_varchar2_table(948) := '6561726368436F6C756D6E496478223A2070536561726368436F6C756D6E4964782C0A202020202020202022704576656E74223A20704576656E742C0A202020202020202022704576656E742E6B6579436F6465223A20704576656E742E6B6579436F64';
wwv_flow_api.g_varchar2_table(949) := '650A2020202020207D293B0A20200A2020202020202F2F7768656E206F6E6C792073656C65637465642076616C756573206172652063757272656E746C792070726573656E7465640A2020202020206966202820746869732E706F7075702E73686F7753';
wwv_flow_api.g_varchar2_table(950) := '656C6563746564436865636B626F782E697328273A636865636B656427292029207B0A2020202020202020746869732E5F706F707570536561726368496E53656C656374656444617461282070536561726368436F6C756D6E4E616D652C207053656172';
wwv_flow_api.g_varchar2_table(951) := '6368436F6C756D6E4964782C20736561726368537472696E672C206973536561726368476C6F62616C20293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A2020202020202F2F776861742074797065206F66';
wwv_flow_api.g_varchar2_table(952) := '20736561726368206973206265696E6720706572666F726D65640A20202020202069662028206973536561726368476C6F62616C2029207B0A20202020202020202F2F736561726368207468726F75676820616C6C20636F6C756D6E732020202020200A';
wwv_flow_api.g_varchar2_table(953) := '2020202020202020746869732E5F706F707570416A6178506572666F726D2820312C206E756C6C2C206E756C6C2C20736561726368537472696E6720293B20200A2020202020207D0A202020202020656C7365207B0A20202020202020202F2F73656172';
wwv_flow_api.g_varchar2_table(954) := '6368206F6E6C7920696E2073656C656374656420636F6C756D6E0A2020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E';
wwv_flow_api.g_varchar2_table(955) := '706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C20736561726368537472696E672C2070536561726368436F6C756D6E496478293B0A2020202020202020746869732E5F706F707570536561726368436C6561722866';
wwv_flow_api.g_varchar2_table(956) := '616C7365293B0A2020202020202020746869732E5F6D61736B4B657955704D616E61676549636F6E7328293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70';
wwv_flow_api.g_varchar2_table(957) := '6F7075704765744D61784469616C6F674865696768740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A';
wwv_flow_api.g_varchar2_table(958) := '2F20200A202020205F706F7075704765744D61784469616C6F674865696768743A2066756E6374696F6E2820705265706F727448656967687420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(959) := '454C392C20746869732E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022705265706F727448';
wwv_flow_api.g_varchar2_table(960) := '6569676874223A20705265706F72744865696768740A2020202020207D293B0A20200A2020202020207661720A2020202020202020706F707570486561646572203D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967';
wwv_flow_api.g_varchar2_table(961) := '687428292C0A2020202020202020746F74616C486569676874203D20303B0A20200A202020202020746F74616C486569676874202B3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0A20200A202020';
wwv_flow_api.g_varchar2_table(962) := '2020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0A2020202020202020746F74616C486569676874202B3D20746869732E706F7075702E696E666F726D61';
wwv_flow_api.g_varchar2_table(963) := '74696F6E436F6E7461696E65722E6F7574657248656967687428293B0A2020202020207D0A20200A2020202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0A2020202020202020746F7461';
wwv_flow_api.g_varchar2_table(964) := '6C486569676874202B3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0A2020202020207D0A20200A2020202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029';
wwv_flow_api.g_varchar2_table(965) := '207B0A2020202020202020746F74616C486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0A2020202020207D0A20200A202020202020746F74616C486569676874202B3D20705265706F72744865';
wwv_flow_api.g_varchar2_table(966) := '696768743B0A20200A2020202020206966202820746F74616C486569676874203E20242877696E646F77292E6F7574657248656967687428292029207B0A20202020202020202F2F7265647563652062792070616464696E6720666F7220746F7020616E';
wwv_flow_api.g_varchar2_table(967) := '6420626F74746F6D0A2020202020202020746F74616C486569676874203D20242877696E646F77292E6F757465724865696768742829202D2034303B0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869';
wwv_flow_api.g_varchar2_table(968) := '732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C202772657475726E73272C20746F74616C486569676874293B0A20202020202072657475726E20746F';
wwv_flow_api.g_varchar2_table(969) := '74616C4865696768743B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704765744D61784865696768745265706F72740A2020202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(970) := '20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704765744D61784865696768745265706F72743A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(971) := '2820704469616C6F67546F74616C48656967687420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765744D6178486569';
wwv_flow_api.g_varchar2_table(972) := '6768745265706F7274272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704469616C6F67546F74616C486569676874223A20704469616C6F67546F74616C4865696768740A2020202020';
wwv_flow_api.g_varchar2_table(973) := '207D293B0A20200A2020202020207661720A20202020202020207265706F72744D6178486569676874203D20704469616C6F67546F74616C4865696768742C0A20202020202020207461626C65576964746820203D20746869732E706F7075702E636F6E';
wwv_flow_api.g_varchar2_table(974) := '74656E745461626C6520213D20756E646566696E6564203F20746869732E706F7075702E636F6E74656E745461626C652E6F7574657257696474682829203A20303B0A20200A2020202020207265706F72744D6178486569676874202D3D20746869732E';
wwv_flow_api.g_varchar2_table(975) := '706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0A20200A2020202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0A20';
wwv_flow_api.g_varchar2_table(976) := '202020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0A2020202020207D0A20200A2020202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(977) := '706F7075702E6865616465722E697328273A76697369626C6527292029207B0A20202020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0A2020202020207D0A';
wwv_flow_api.g_varchar2_table(978) := '20200A2020202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0A20202020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E666F6F7465722E6F757465';
wwv_flow_api.g_varchar2_table(979) := '7248656967687428293B0A2020202020207D0A20200A20202020202069662028207461626C655769647468203E20746869732E706F7075702E626F64792E6F75746572576964746828292029207B0A20202020202020202F2F7363726F6C6C6261720A20';
wwv_flow_api.g_varchar2_table(980) := '202020202020207265706F72744D6178486569676874202B3D2031373B0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(981) := '20275F706F7075704765744D61784865696768745265706F7274272C202772657475726E73272C207265706F72744D6178486569676874293B0A20202020202072657475726E207265706F72744D61784865696768743B0A202020207D2C0A202020202F';
wwv_flow_api.g_varchar2_table(982) := '2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757041646A757374426F6479486569676874416E696D6174650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D';
wwv_flow_api.g_varchar2_table(983) := '733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757041646A757374426F6479486569676874416E696D6174653A2066756E6374696F6E2820704475726174696F6E2029';
wwv_flow_api.g_varchar2_table(984) := '7B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874416E696D617465272C207B0A202020';
wwv_flow_api.g_varchar2_table(985) := '202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704475726174696F6E223A20704475726174696F6E0A2020202020207D293B0A20200A202020202020766172207461626C65486569676874203D20746869';
wwv_flow_api.g_varchar2_table(986) := '732E5F706F7075704765745461626C6548656967687428293B0A20200A20202020202069662028207461626C65486569676874203D3D20302029207B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A20202020';
wwv_flow_api.g_varchar2_table(987) := '2020746869732E706F7075702E626F64792E73746F7028292E616E696D617465287B0A2020202020202020226D6178486569676874223A207461626C654865696768742C0A2020202020202020226D696E486569676874223A207461626C654865696768';
wwv_flow_api.g_varchar2_table(988) := '740A2020202020207D2C207B0A2020202020202020226475726174696F6E223A2021704475726174696F6E203F20704475726174696F6E203A203130302C0A20202020202020202273746570223A20242E70726F78792866756E6374696F6E2820704E6F';
wwv_flow_api.g_varchar2_table(989) := '772C207046782029207B0A20202020202020202020766172200A202020202020202020202020726573756C74506F707570486569676874203D20303B0A20200A202020202020202020202F2F63757272656E74207461626C65206865696768740A202020';
wwv_flow_api.g_varchar2_table(990) := '20202020202020726573756C74506F707570486569676874202B3D20704E6F773B0A20200A202020202020202020202F2F696E666F726D6174696F6E206865696768740A202020202020202020206966202820746869732E706F7075702E696E666F726D';
wwv_flow_api.g_varchar2_table(991) := '6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0A202020202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F';
wwv_flow_api.g_varchar2_table(992) := '7574657248656967687428293B0A202020202020202020207D0A20200A202020202020202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0A202020202020202020202020726573756C7450';
wwv_flow_api.g_varchar2_table(993) := '6F707570486569676874202B3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0A202020202020202020207D0A20200A202020202020202020206966202820746869732E706F7075702E666F6F7465722E697328273A';
wwv_flow_api.g_varchar2_table(994) := '76697369626C6527292029207B0A202020202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0A202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(995) := '20200A20202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0A20200A20202020202020202020746869732E706F7075702E636F6E';
wwv_flow_api.g_varchar2_table(996) := '7461696E65722E6469616C6F6728276F7074696F6E272C27686569676874272C20726573756C74506F707570486569676874293B0A20202020202020207D2C2074686973292C0A202020202020202022636F6D706C657465223A20242E70726F78792866';
wwv_flow_api.g_varchar2_table(997) := '756E6374696F6E28297B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874416E';
wwv_flow_api.g_varchar2_table(998) := '696D617465272C2027616E696D6174696F6E20636F6D706C6574656427293B0A20202020202020207D2C2074686973290A2020202020207D293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(999) := '6D653A205F706F7075704765745461626C654865696768740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(1000) := '202A2F20200A202020205F706F7075704765745461626C654865696768743A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1001) := '69782C20275F706F7075704765745461626C65486569676874272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020207461626C654865';
wwv_flow_api.g_varchar2_table(1002) := '69676874203D20303B0A20200A2020202020206966202820746869732E706F7075702E636F6E74656E745461626C6520213D20756E646566696E65642029207B0A20202020202020207461626C65486569676874203D20746869732E706F7075702E636F';
wwv_flow_api.g_varchar2_table(1003) := '6E74656E745461626C652E6F7574657248656967687428293B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765745461';
wwv_flow_api.g_varchar2_table(1004) := '626C65486569676874272C20277461626C65486569676874272C207461626C65486569676874293B0A2020202020207D0A202020202020656C7365207B0A20202020202020207461626C65486569676874203D20746869732E706F7075702E626F64792E';
wwv_flow_api.g_varchar2_table(1005) := '6368696C6472656E28292E666972737428292E6F7574657248656967687428293B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(1006) := '7075704765745461626C65486569676874272C20277461626C65486569676874206F66206368696C6472656E272C207461626C65486569676874293B0A2020202020207D0A20200A2020202020207461626C65486569676874203D20746869732E5F706F';
wwv_flow_api.g_varchar2_table(1007) := '7075704765744D61784865696768745265706F72742820746869732E5F706F7075704765744D61784469616C6F6748656967687428207461626C65486569676874202920293B0A20200A202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(1008) := '6869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765745461626C654865696768742072657475726E73272C207461626C65486569676874293B0A20202020202072657475726E207461626C654865';
wwv_flow_api.g_varchar2_table(1009) := '696768743B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757041646A757374426F64794865696768740A2020202020202A206465736372697074696F6E20203A20';
wwv_flow_api.g_varchar2_table(1010) := '0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757041646A757374426F64794865696768743A2066756E6374696F6E282070447572';
wwv_flow_api.g_varchar2_table(1011) := '6174696F6E20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874272C207B0A202020';
wwv_flow_api.g_varchar2_table(1012) := '202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704475726174696F6E223A20704475726174696F6E0A2020202020207D293B0A20200A202020202020766172200A20202020202020206865696768742C0A';
wwv_flow_api.g_varchar2_table(1013) := '20202020202020207461626C6557696474683B0A20202020202020200A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E61646A757374486569676874546F526573756C74732029207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(1014) := '746869732E5F706F70757041646A757374426F6479486569676874416E696D6174652820704475726174696F6E20293B0A2020202020207D0A202020202020656C7365207B0A20200A2020202020202020686569676874203D20746869732E706F707570';
wwv_flow_api.g_varchar2_table(1015) := '2E636F6E7461696E65722E6F7574657248656967687428293B0A2020202020202020686569676874202D3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C652729203F20746869732E706F';
wwv_flow_api.g_varchar2_table(1016) := '7075702E696E666F726D6174696F6E436F6E7461696E65722E6F757465724865696768742829203A20303B0A2020202020202020686569676874202D3D20746869732E706F7075702E6865616465722E697328273A76697369626C652729203F20746869';
wwv_flow_api.g_varchar2_table(1017) := '732E706F7075702E6865616465722E6F757465724865696768742829203A20303B0A2020202020202020686569676874202D3D20746869732E706F7075702E666F6F7465722E697328273A76697369626C652729203F20746869732E706F7075702E666F';
wwv_flow_api.g_varchar2_table(1018) := '6F7465722E6F757465724865696768742829203A20303B0A20200A2020202020202020746869732E706F7075702E626F64792E63737328276D6178486569676874272C20686569676874293B0A2020202020202020746869732E706F7075702E626F6479';
wwv_flow_api.g_varchar2_table(1019) := '2E63737328276D696E486569676874272C20686569676874293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570486967686C69676874526573756C';
wwv_flow_api.g_varchar2_table(1020) := '74730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570486967686C69';
wwv_flow_api.g_varchar2_table(1021) := '676874526573756C74733A2066756E6374696F6E282070526573756C74734A717565727920297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(1022) := '275F706F707570486967686C69676874526573756C7473272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270526573756C74734A7175657279223A2070526573756C74734A7175657279';
wwv_flow_api.g_varchar2_table(1023) := '0A2020202020207D293B0A20200A202020202020766172200A2020202020202020726573756C74546578742C0A2020202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0A20';
wwv_flow_api.g_varchar2_table(1024) := '20202020202020736561726368537472696E67417272203D20736561726368537472696E6720213D206E756C6C203F20736561726368537472696E672E73706C69742827252729203A205B5D2C0A20202020202020207464733B0A20200A202020202020';
wwv_flow_api.g_varchar2_table(1025) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570486967686C69676874526573756C7473272C20736561726368537472696E67417272293B0A2020';
wwv_flow_api.g_varchar2_table(1026) := '0A2020202020202F2F6966207468657265206973206E6F2073656172636820737472696E6720646F6E2774206869676C69686A7420726573756C74733B0A2020202020206966202820736561726368537472696E67203D3D20756E646566696E6564207C';
wwv_flow_api.g_varchar2_table(1027) := '7C20736561726368537472696E672E6C656E677468203D3D20302029207B0A202020202020202072657475726E2070526573756C74734A71756572793B0A2020202020207D0A20200A2020202020202F2F6966207365617263682077617320706572666F';
wwv_flow_api.g_varchar2_table(1028) := '726D6564206F6E20737065636966696320636F6C756D6E20706572666F726D20736561726368206F6E6C7920696E203120636F6C756D6E0A2020202020206966202820746869732E706F7075702E73746174652E736561726368436F6C756D6E49647820';
wwv_flow_api.g_varchar2_table(1029) := '213D20756E646566696E65642029207B0A2020202020202020746473203D2070526573756C74734A71756572792E66696E64282774643A6E74682D6368696C6428272B28746869732E706F7075702E73746174652E736561726368436F6C756D6E496478';
wwv_flow_api.g_varchar2_table(1030) := '2B31292B272927293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746473203D2070526573756C74734A71756572792E66696E64282774643A6E6F74283A6E74682D6368696C642831292927293B0A2020202020207D0A20';
wwv_flow_api.g_varchar2_table(1031) := '200A2020202020202F2F666F7220656163682063656C6C20706572666F726D2073656172636820696E2063656C6C20737472696E670A2020202020207464732E6561636828242E70726F78792866756E6374696F6E2870496E6465782C2070456C656D29';
wwv_flow_api.g_varchar2_table(1032) := '7B0A20202020202020202F2F7462643A20646F20726563757273697665207365617263682074686F75676820616C6C206368696C6472656E0A2020202020202020726573756C7454657874203D20242870456C656D292E7465787428293B0A2020202020';
wwv_flow_api.g_varchar2_table(1033) := '2020200A2020202020202020666F72202820766172206920696E20736561726368537472696E674172722029207B0A20202020202020202020726573756C7454657874203D20746869732E5F686967686C69676874576F72642820726573756C74546578';
wwv_flow_api.g_varchar2_table(1034) := '742C20736561726368537472696E674172725B695D20293B0A20202020202020207D0A20202020202020200A20200A2020202020202020242870456C656D292E68746D6C2820726573756C745465787420293B0A20200A2020202020207D2C2074686973';
wwv_flow_api.g_varchar2_table(1035) := '29293B0A20200A20202020202072657475726E2070526573756C74734A71756572793B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757053686F7753656C656374656443';
wwv_flow_api.g_varchar2_table(1036) := '6865636B626F784368616E67650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F';
wwv_flow_api.g_varchar2_table(1037) := '706F70757053686F7753656C6563746564436865636B626F784368616E67653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1038) := '69782C20275F706F70757053686F7753656C6563746564436865636B626F784368616E6765272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020202F2F7768656E2074';
wwv_flow_api.g_varchar2_table(1039) := '68657265206973206E6F7468696E6720746F2073686F770A2020202020206966202820746869732E706F7075702E73746174652E73656C65637465642E6C656E677468203D3D20302029207B0A2020202020202020746869732E706F7075702E73686F77';
wwv_flow_api.g_varchar2_table(1040) := '53656C6563746564436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A2020202020206966202820746869732E706F7075702E7368';
wwv_flow_api.g_varchar2_table(1041) := '6F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0A2020202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0A2020202020207D0A202020202020656C7365207B';
wwv_flow_api.g_varchar2_table(1042) := '0A2020202020202020746869732E5F706F707570416A6178506572666F726D280A20202020202020202020312C202020202F2F6C61737446657463686564506167652C0A20202020202020202020312C202020202F2F736F72746564436F6C756D6E4964';
wwv_flow_api.g_varchar2_table(1043) := '782C0A2020202020202020202027617363272C2F2F736F72746564436F6C756D6E446972656374696F6E2C0A202020202020202020206E756C6C2C202F2F736561726368537472696E672C0A202020202020202020206E756C6C20202F2F736561726368';
wwv_flow_api.g_varchar2_table(1044) := '436F6C756D6E4964780A2020202020202020293B0A20200A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A20706F707570496E666F726D6174696F6E486964650A2020';
wwv_flow_api.g_varchar2_table(1045) := '202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A20202020706F707570496E666F726D6174696F6E48';
wwv_flow_api.g_varchar2_table(1046) := '6964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F6E48696465272C';
wwv_flow_api.g_varchar2_table(1047) := '207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D20756E646566696E65';
wwv_flow_api.g_varchar2_table(1048) := '643B0A202020202020746869732E706F7075702E73746174652E696E666F726D6174696F6E5465787420202020203D20756E646566696E65643B0A202020202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E616464';
wwv_flow_api.g_varchar2_table(1049) := '436C617373282768696464656E27293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A20706F707570496E666F726D6174696F6E53686F770A2020202020202A20646573637269';
wwv_flow_api.g_varchar2_table(1050) := '7074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A20202020706F707570496E666F726D6174696F6E53686F773A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(1051) := '297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F6E53686F77272C207B0A2020202020202020226172';
wwv_flow_api.g_varchar2_table(1052) := '67756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E72656D6F7665436C617373282768696464656E27293B0A202020207D2C';
wwv_flow_api.g_varchar2_table(1053) := '0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570496E666F726D6174696F6E417070656E640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D';
wwv_flow_api.g_varchar2_table(1054) := '733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570496E666F726D6174696F6E417070656E643A2066756E6374696F6E2820704D6573736167652C20704D6573736167';
wwv_flow_api.g_varchar2_table(1055) := '6554656D706C61746520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570496E666F726D6174696F6E417070656E64272C20';
wwv_flow_api.g_varchar2_table(1056) := '7B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704D657373616765223A20704D6573736167652C0A202020202020202022704D65737361676554656D706C617465223A20704D657373616765';
wwv_flow_api.g_varchar2_table(1057) := '54656D706C6174650A2020202020207D293B0A20200A202020202020746869732E706F7075702E696E666F726D6174696F6E546578742E656D70747928292E617070656E642820704D65737361676520293B0A202020202020746869732E706F70757049';
wwv_flow_api.g_varchar2_table(1058) := '6E666F726D6174696F6E53686F7728293B0A20200A202020202020746869732E706F7075702E73746174652E696E666F726D6174696F6E5465787420202020203D20704D6573736167653B0A202020202020746869732E706F7075702E73746174652E69';
wwv_flow_api.g_varchar2_table(1059) := '6E666F726D6174696F6E54656D706C617465203D20704D65737361676554656D706C6174653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705468436865636B626F78';
wwv_flow_api.g_varchar2_table(1060) := '4368616E67650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705468';
wwv_flow_api.g_varchar2_table(1061) := '436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(1062) := '7075705468436865636B626F784368616E6765272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020';
wwv_flow_api.g_varchar2_table(1063) := '766172200A2020202020202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E64282774722074643A66697273742D6368696C64203A636865636B626F7827292C0A202020202020202073656C65';
wwv_flow_api.g_varchar2_table(1064) := '63746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A636865636B65642729207D292E746F417272617928292C0A20202020202020206E6F7453656C6563';
wwv_flow_api.g_varchar2_table(1065) := '746564203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A6E6F74283A636865636B6564292729207D292E746F417272617928292C0A20202020202020206D6573736167';
wwv_flow_api.g_varchar2_table(1066) := '6520202020203D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442E7265706C61636528272530272C20636865636B626F7865732E6C656E677468293B0A20200A202020202020704576656E742E73746F70496D6D656469';
wwv_flow_api.g_varchar2_table(1067) := '61746550726F7061676174696F6E28293B0A20200A2020202020206966202820746869732E706F7075702E73656C656374416C6C436865636B626F782E697328273A636865636B656427292029207B0A20200A2020202020202020666F72282076617220';
wwv_flow_api.g_varchar2_table(1068) := '693D303B2069203C206E6F7453656C65637465642E6C656E6774683B20692B2B2029207B0A202020202020202020202428206E6F7453656C65637465645B695D20292E70726F702827636865636B6564272C2074727565292E7472696767657228276368';
wwv_flow_api.g_varchar2_table(1069) := '616E676527293B0A20202020202020207D0A20200A2020202020202020746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F504F5055505F544558545F524F57535F53454C454354454420';
wwv_flow_api.g_varchar2_table(1070) := '293B0A2020202020207D0A202020202020656C7365207B0A202020202020202020200A20202020202020206966202820746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D3D20746869732E435F504F505550';
wwv_flow_api.g_varchar2_table(1071) := '5F544558545F524F57535F53454C45435445442029207B0A20202020202020202020746869732E706F707570496E666F726D6174696F6E4869646528293B0A20202020202020207D0A20200A2020202020202020666F72282076617220693D303B206920';
wwv_flow_api.g_varchar2_table(1072) := '3C2073656C65637465642E6C656E6774683B20692B2B2029207B0A2020202020202020202024282073656C65637465645B695D20292E70726F702827636865636B6564272C2066616C7365292E7472696767657228276368616E676527293B0A20202020';
wwv_flow_api.g_varchar2_table(1073) := '202020207D0A2020202020207D0A20200A202020202020746869732E5F706F70757041646A757374426F647948656967687428293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F';
wwv_flow_api.g_varchar2_table(1074) := '706F707570546F67676C65526F7753746174650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F2020';
wwv_flow_api.g_varchar2_table(1075) := '0A202020205F706F707570546F67676C65526F7753746174653A2066756E6374696F6E282070496E70757420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(1076) := '72656669782C20275F706F707570546F67676C65526F775374617465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270496E707574223A2070496E7075740A2020202020207D293B0A';
wwv_flow_api.g_varchar2_table(1077) := '20200A202020202020696620282070496E70757420696E7374616E63656F66206A5175657279203D3D2066616C73652029207B0A202020202020202070496E707574203D2024282070496E70757420293B0A2020202020207D0A20200A20202020202069';
wwv_flow_api.g_varchar2_table(1078) := '6620282070496E7075742E697328273A636865636B656427292029207B0A202020202020202070496E7075742E636C6F736573742827747227292E616464436C617373282773656C656374656427293B0A2020202020207D0A202020202020656C736520';
wwv_flow_api.g_varchar2_table(1079) := '7B0A202020202020202070496E7075742E636C6F736573742827747227292E72656D6F7665436C617373282773656C656374656427293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E637469';
wwv_flow_api.g_varchar2_table(1080) := '6F6E206E616D653A205F706F7075705464436865636B626F784368616E67650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A20202020';
wwv_flow_api.g_varchar2_table(1081) := '20202A0A202020202A2F20200A202020205F706F7075705464436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(1082) := '454C362C20746869732E6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A2070';
wwv_flow_api.g_varchar2_table(1083) := '4576656E742C0A202020202020202022704576656E742E63757272656E74546172676574223A20704576656E742E63757272656E745461726765740A2020202020207D293B0A20200A202020202020766172200A2020202020202020636865636B626F78';
wwv_flow_api.g_varchar2_table(1084) := '203D202428704576656E742E63757272656E74546172676574292C0A2020202020202020636865636B626F78657320203D20756E646566696E65642C0A202020202020202073656C6563746564202020203D20756E646566696E65643B0A20200A202020';
wwv_flow_api.g_varchar2_table(1085) := '202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0A20200A202020202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E64282774722074643A666972';
wwv_flow_api.g_varchar2_table(1086) := '73742D6368696C64203A636865636B626F7827292C0A20202020202073656C6563746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A636865636B656427';
wwv_flow_api.g_varchar2_table(1087) := '29207D293B0A20200A2020202020206966202820636865636B626F782E697328273A636865636B656427292029207B0A2020202020202020746869732E5F706F70757053656C65637456616C75652820636865636B626F78293B0A2020202020207D0A20';
wwv_flow_api.g_varchar2_table(1088) := '2020202020656C7365207B0A2020202020202020746869732E5F706F707570556E73656C65637456616C75652820636865636B626F782E76616C282920293B0A20200A20202020202020206966202820746869732E706F7075702E73686F7753656C6563';
wwv_flow_api.g_varchar2_table(1089) := '746564436865636B626F782E697328273A636865636B656427292029207B0A20202020202020202020636865636B626F782E636C6F736573742827747227292E72656D6F766528293B0A20202020202020207D0A2020202020207D0A20200A2020202020';
wwv_flow_api.g_varchar2_table(1090) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B626F78657320636E74272C2063';
wwv_flow_api.g_varchar2_table(1091) := '6865636B626F7865732E6C656E677468293B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705464436865636B626F784368616E';
wwv_flow_api.g_varchar2_table(1092) := '6765272C2027636865636B656420636865636B626F78657320636E74272C2073656C65637465642E6C656E677468293B0A20200A2020202020206966202820636865636B626F7865732E6C656E677468203D3D2073656C65637465642E6C656E67746820';
wwv_flow_api.g_varchar2_table(1093) := '29207B0A20202020202020200A2020202020202020696620282021746869732E706F7075702E73656C656374416C6C436865636B626F782E697328273A636865636B656427292029207B0A20202020202020202020746869732E706F7075702E73656C65';
wwv_flow_api.g_varchar2_table(1094) := '6374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0A20202020202020207D0A20200A2020202020207D200A202020202020656C7365207B0A2020202020202020746869732E706F7075702E73656C656374416C6C';
wwv_flow_api.g_varchar2_table(1095) := '436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0A2020202020207D0A20200A202020202020746869732E5F706F707570546F67676C65526F7753746174652820636865636B626F7820293B0A20200A202020207D2C0A20';
wwv_flow_api.g_varchar2_table(1096) := '200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705464526164696F4368616E67650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A';
wwv_flow_api.g_varchar2_table(1097) := '2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F7075705464526164696F4368616E67653A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(1098) := '2E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705464526164696F4368616E6765272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C';
wwv_flow_api.g_varchar2_table(1099) := '0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A20202020202076617220726164696F203D202428704576656E742E63757272656E74546172676574293B0A20200A202020202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(1100) := '702E636F6E7461696E65722E66696E6428272E73656C656374656427292E72656D6F7665436C617373282773656C656374656427293B0A20200A2020202020206966202820726164696F2E697328273A636865636B656427292029207B0A202020202020';
wwv_flow_api.g_varchar2_table(1101) := '2020746869732E5F706F707570526573657456616C75657328293B0A2020202020202020746869732E5F706F70757053656C65637456616C75652820726164696F20293B0A2020202020207D0A202020202020656C7365207B0A20202020202020207468';
wwv_flow_api.g_varchar2_table(1102) := '69732E5F706F707570556E73656C65637456616C75652820636865636B626F782E76616C282920293B0A20200A20202020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B';
wwv_flow_api.g_varchar2_table(1103) := '656427292029207B0A20202020202020202020726164696F2E636C6F736573742827747227292E72656D6F766528293B0A20202020202020207D0A2020202020207D0A20200A202020202020746869732E5F706F707570546F67676C65526F7753746174';
wwv_flow_api.g_varchar2_table(1104) := '652820726164696F20293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570497356616C756553656C65637465640A2020202020202A206465736372697074696F6E2020';
wwv_flow_api.g_varchar2_table(1105) := '3A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570497356616C756553656C65637465643A2066756E6374696F6E2820705661';
wwv_flow_api.g_varchar2_table(1106) := '6C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497356616C756553656C6563746564272C207B0A202020202020';
wwv_flow_api.g_varchar2_table(1107) := '202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75650A2020202020207D293B0A20200A202020202020666F7220282076617220693D303B2069203C20746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(1108) := '73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0A20202020202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0A20202020202020';
wwv_flow_api.g_varchar2_table(1109) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497356616C756553656C6563746564272C207056616C75652C2074727565293B0A202020';
wwv_flow_api.g_varchar2_table(1110) := '2020202020202072657475726E20747275653B0A20202020202020207D0A2020202020207D0A2020202020200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1111) := '6669782C20275F706F707570497356616C756553656C6563746564272C207056616C75652C2066616C7365293B0A20200A20202020202072657475726E2066616C73653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066';
wwv_flow_api.g_varchar2_table(1112) := '756E6374696F6E206E616D653A205F706F70757056616C756553656C6563746564496E6465780A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020';
wwv_flow_api.g_varchar2_table(1113) := '202D0A2020202020202A0A202020202A2F20200A202020205F706F70757056616C756553656C6563746564496E6465783A2066756E6374696F6E28207056616C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(1114) := '435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020';
wwv_flow_api.g_varchar2_table(1115) := '227056616C7565223A207056616C75650A2020202020207D293B0A20200A202020202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0A202020';
wwv_flow_api.g_varchar2_table(1116) := '20202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(1117) := '4556454C392C20746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C75652C2069293B0A2020202020202020202072657475726E20693B0A20202020202020207D0A2020202020207D';
wwv_flow_api.g_varchar2_table(1118) := '0A2020202020200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C';
wwv_flow_api.g_varchar2_table(1119) := '75652C202D31293B0A20200A20202020202072657475726E202D313B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570556E73656C65637456616C75650A202020';
wwv_flow_api.g_varchar2_table(1120) := '2020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F707570556E73656C65637456616C75653A';
wwv_flow_api.g_varchar2_table(1121) := '2066756E6374696F6E28207056616C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570556E73656C65637456616C7565';
wwv_flow_api.g_varchar2_table(1122) := '272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75650A2020202020207D293B0A20200A202020202020766172200A2020202020202020696E6465784F';
wwv_flow_api.g_varchar2_table(1123) := '66203D20746869732E5F706F70757056616C756553656C6563746564496E64657828207056616C756520290A202020202020202072656D6F766564203D206E756C6C3B0A20200A2020202020206966202820696E6465784F66203C20302029207B0A2020';
wwv_flow_api.g_varchar2_table(1124) := '202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0A2020202020207D0A20200A20202020202072656D6F766564203D20746869732E';
wwv_flow_api.g_varchar2_table(1125) := '706F7075702E73746174652E73656C65637465642E73706C6963652820696E6465784F662C203120293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1126) := '6669782C20275F706F707570556E73656C65637456616C7565272C202772656D6F7665642076616C7565272C2072656D6F766564293B0A20200A202020202020746869732E5F706F70757053686F7753656C656374656455706461746528207472756520';
wwv_flow_api.g_varchar2_table(1127) := '293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570526573657456616C7565730A2020202020202A206465736372697074696F6E20203A200A2020202020202A207061';
wwv_flow_api.g_varchar2_table(1128) := '72616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570526573657456616C7565733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(1129) := '65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570526573657456616C756573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A20202020';
wwv_flow_api.g_varchar2_table(1130) := '20207D293B0A20200A202020202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705365';
wwv_flow_api.g_varchar2_table(1131) := '6C65637456616C75650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075';
wwv_flow_api.g_varchar2_table(1132) := '7053656C65637456616C75653A2066756E6374696F6E282070496E70757420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570';
wwv_flow_api.g_varchar2_table(1133) := '53656C65637456616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270496E707574223A2070496E7075740A2020202020207D293B0A20200A202020202020766172200A202020';
wwv_flow_api.g_varchar2_table(1134) := '20202020206E657753656C656374696F6E4F626A203D207B0A2020202020202020202022646973706C6179223A2070496E7075742E617474722827617269612D646973706C61792D76616C756527292C0A202020202020202020202276616C7565223A20';
wwv_flow_api.g_varchar2_table(1135) := '70496E7075742E76616C28292C0A20202020202020202020226973457874726156616C7565223A2070496E7075742E617474722827617269612D65787472612D76616C756527292C0A20202020202020202020226973415045584E756C6C56616C756522';
wwv_flow_api.g_varchar2_table(1136) := '3A2070496E7075742E617474722827617269612D6E756C6C2D76616C756527290A20202020202020207D3B0A20200A202020202020746869732E706F7075702E73746174652E73656C65637465642E7075736828206E657753656C656374696F6E4F626A';
wwv_flow_api.g_varchar2_table(1137) := '20293B0A20200A202020202020746869732E5F706F70757053686F7753656C6563746564557064617465282066616C736520293B0A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A20';
wwv_flow_api.g_varchar2_table(1138) := '5F706F70757053686F7753656C65637465645570646174650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(1139) := '202A2F20200A202020205F706F70757053686F7753656C65637465645570646174653A2066756E6374696F6E282070506572666F726D416A61784F6E3053656C656374656420297B0A202020202020617065782E64656275672E6D657373616765287468';
wwv_flow_api.g_varchar2_table(1140) := '69732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757053686F7753656C6563746564557064617465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020';
wwv_flow_api.g_varchar2_table(1141) := '2020202270506572666F726D416A61784F6E3053656C6563746564223A2070506572666F726D416A61784F6E3053656C65637465640A2020202020207D293B0A2020202020200A2020202020207661722073656C65637465644C656E677468203D207468';
wwv_flow_api.g_varchar2_table(1142) := '69732E706F7075702E73746174652E73656C65637465642E6C656E6774683B0A20200A202020202020746869732E706F7075702E73686F7753656C65637465644C6162656C2E746578742820746869732E435F504F5055505F53484F575F53454C454354';
wwv_flow_api.g_varchar2_table(1143) := '45445F4C4142454C202B272028272B73656C65637465644C656E6774682B27292720293B0A20200A202020202020696620282073656C65637465644C656E677468203D3D20302029207B0A2020202020202020746869732E706F7075702E73686F775365';
wwv_flow_api.g_varchar2_table(1144) := '6C6563746564436F6E7461696E65722E616464436C6173732827696E61637469766527293B0A20200A2020202020202020696620282070506572666F726D416A61784F6E3053656C656374656420262620746869732E706F7075702E73686F7753656C65';
wwv_flow_api.g_varchar2_table(1145) := '63746564436865636B626F782E697328273A636865636B6564272929207B0A20202020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C75';
wwv_flow_api.g_varchar2_table(1146) := '6D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0A20202020202020207D0A20200A2020202020202020746869732E706F7075702E73686F7753656C656374';
wwv_flow_api.g_varchar2_table(1147) := '6564436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0A20202020202020200A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E706F7075702E73686F7753656C6563746564436F6E74';
wwv_flow_api.g_varchar2_table(1148) := '61696E65722E72656D6F7665436C6173732827696E61637469766527293B0A2020202020207D0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570436C69636B4F6E';
wwv_flow_api.g_varchar2_table(1149) := '43656C6C0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F707570436C69636B4F';
wwv_flow_api.g_varchar2_table(1150) := '6E43656C6C3A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436C69636B4F';
wwv_flow_api.g_varchar2_table(1151) := '6E43656C6C272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172200A202020202020202074';
wwv_flow_api.g_varchar2_table(1152) := '72203D202428704576656E742E746172676574292E636C6F736573742827747227292C0A2020202020202020696E707574203D2074722E66696E64282774643A66697273742D6368696C64203A696E70757427293B0A20200A2020202020206966202820';
wwv_flow_api.g_varchar2_table(1153) := '696E7075742E697328273A636865636B626F78272920262620696E7075742E697328273A636865636B656427292029207B0A20202020202020202F2F636865636B626F780A2020202020202020696E7075742E70726F702827636865636B6564272C2066';
wwv_flow_api.g_varchar2_table(1154) := '616C7365292E7472696767657228276368616E676527293B0A2020202020207D0A202020202020656C7365206966202820696E7075742E697328273A636865636B626F7827292026262021696E7075742E697328273A636865636B656427292029207B0A';
wwv_flow_api.g_varchar2_table(1155) := '2020202020202020696E7075742E70726F702827636865636B6564272C2074727565292E7472696767657228276368616E676527293B0A2020202020207D0A202020202020656C7365207B0A20202020202020202F2F726164696F0A2020202020202020';
wwv_flow_api.g_varchar2_table(1156) := '696E7075742E70726F702827636865636B6564272C207472756529203B0A2020202020202020696E7075742E7472696767657228276368616E676527293B0A2020202020207D202020200A202020207D2C0A202020202F2A0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(1157) := '2020202A2066756E6374696F6E206E616D653A205F706F70757046616B65526164696F436C69636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A';
wwv_flow_api.g_varchar2_table(1158) := '2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757046616B65526164696F436C69636B3A2066756E6374696F6E2820704576656E742029207B0A202020202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(1159) := '5F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F70757046616B65526164696F436C69636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270457665';
wwv_flow_api.g_varchar2_table(1160) := '6E74223A20704576656E740A2020202020207D293B0A20200A2020202020207661722074726967676572696E67456C656D656E74203D202428704576656E742E63757272656E74546172676574293B0A20200A202020202020704576656E742E73746F70';
wwv_flow_api.g_varchar2_table(1161) := '496D6D65646961746550726F7061676174696F6E28293B0A20200A20202020202074726967676572696E67456C656D656E742E706172656E7428292E66696E6428273A726164696F27292E747269676765722827636C69636B27293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(1162) := '7D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757046616B65436865636B626F78436C69636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172';
wwv_flow_api.g_varchar2_table(1163) := '616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757046616B65436865636B626F78436C69636B3A2066756E6374696F6E2820704576656E7420297B0A2020202020';
wwv_flow_api.g_varchar2_table(1164) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F70757046616B65436865636B626F78436C69636B272C207B0A202020202020202022617267756D656E';
wwv_flow_api.g_varchar2_table(1165) := '7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172200A202020202020202074726967676572696E67456C656D656E74203D202428704576656E';
wwv_flow_api.g_varchar2_table(1166) := '742E63757272656E74546172676574292C0A2020202020202020636865636B626F78202020202020202020203D2074726967676572696E67456C656D656E742E706172656E7428292E66696E6428273A636865636B626F7827293B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(1167) := '20704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0A20200A202020202020636865636B626F782E70726F702827636865636B6564272C2021636865636B626F782E697328273A636865636B65642729292E74726967';
wwv_flow_api.g_varchar2_table(1168) := '67657228276368616E676527293B0A20200A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570536F72745265706F72740A2020202020202A20646573637269707469';
wwv_flow_api.g_varchar2_table(1169) := '6F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F707570536F72745265706F72743A2066756E6374696F6E282070436F6C756D';
wwv_flow_api.g_varchar2_table(1170) := '6E4E616D652C2070436F6C756D6E4964782C2070536F7274446972656374696F6E20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(1171) := '6F707570536F72745265706F7274272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270436F6C756D6E4E616D65223A2070436F6C756D6E4E616D652C0A20202020202020202270436F6C';
wwv_flow_api.g_varchar2_table(1172) := '756D6E496478223A2070436F6C756D6E4964782C0A20202020202020202270536F7274446972656374696F6E223A2070536F7274446972656374696F6E0A2020202020207D293B0A20200A202020202020766172200A2020202020202020736561726368';
wwv_flow_api.g_varchar2_table(1173) := '537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0A2020202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964783B0A';
wwv_flow_api.g_varchar2_table(1174) := '20200A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0A2020202020202020746869732E706F7075702E73746174652E616A617843757272656E';
wwv_flow_api.g_varchar2_table(1175) := '7450616765446174612E736F72742820746869732E5F736F72744A736F6E282070436F6C756D6E4E616D652C2070536F7274446972656374696F6E202920293B0A20200A20202020202020202F2F6D757374206265207365742062656375617365206F66';
wwv_flow_api.g_varchar2_table(1176) := '2076697375616C697A6174696F6E20696E20636F6C756D6E206865616465720A2020202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D2070536F7274446972656374696F6E3B0A202020';
wwv_flow_api.g_varchar2_table(1177) := '2020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D2070436F6C756D6E4964783B0A20200A2020202020202020746869732E5F706F7075705265706F727452656E64657228207B2264617461';
wwv_flow_api.g_varchar2_table(1178) := '223A20746869732E706F7075702E73746174652E616A617843757272656E7450616765446174617D20293B0A20200A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F706F707570416A6178506572666F726D2831';
wwv_flow_api.g_varchar2_table(1179) := '2C2070436F6C756D6E4964782C2070536F7274446972656374696F6E2C20736561726368537472696E672C20736561726368436F6C756D6E496478293B20200A2020202020207D0A202020207D2C0A20200A202020202F2A0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(1180) := '2020202A2066756E6374696F6E206E616D653A205F706F70757047657448656164696E67730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A202020';
wwv_flow_api.g_varchar2_table(1181) := '2D0A2020202020202A0A202020202A2F0A202020205F706F70757047657448656164696E67733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(1182) := '2E6C6F675072656669782C20275F706F70757047657448656164696E6773272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020207468';
wwv_flow_api.g_varchar2_table(1183) := '656164203D202428273C74686561643E3C74723E3C2F74723E3C2F74686561643E27292C0A2020202020202020746853656C656374416C6C203D202428273C746820636C6173733D22742D5265706F72742D636F6C48656164223E3C2F74683E27292C0A';
wwv_flow_api.g_varchar2_table(1184) := '2020202020202020746853656C656374436865636B626F78203D202428273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F7822';
wwv_flow_api.g_varchar2_table(1185) := '3E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0A2020202020202020636F6C756D6E5F6E616D652C0A2020202020202020636F6C756D6E5F696478';
wwv_flow_api.g_varchar2_table(1186) := '2C0A2020202020202020697355736564546F536F72742C0A2020202020202020697346696C74657265642C0A2020202020202020736F7274696E67446972656374696F6E2C0A20202020202020207468416C69676E2C0A2020202020202020636F6C756D';
wwv_flow_api.g_varchar2_table(1187) := '6E416C69617365733B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0A2020202020202020746853656C656374416C6C2E617070656E64282074685365';
wwv_flow_api.g_varchar2_table(1188) := '6C656374436865636B626F7820293B0A2020202020207D0A20200A20202020202074686561642E66696E642827747227292E617070656E642820746853656C656374416C6C20293B0A20200A202020202020666F722028207661722069203D303B206920';
wwv_flow_api.g_varchar2_table(1189) := '3C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B0A2020202020202020636F6C756D6E5F6E616D6520203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0A20';
wwv_flow_api.g_varchar2_table(1190) := '20202020202020636F6C756D6E5F6964782020203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E4944583B0A2020202020202020636F6C756D6E5F616C696173203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775';
wwv_flow_api.g_varchar2_table(1191) := '726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202768656164696E672720293B0A20200A202020202020202069662028200A20202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265';
wwv_flow_api.g_varchar2_table(1192) := '706F7274416476616E636564436F6E660A2020202020202020202026262021746869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E5F6E616D652029200A202020202020202029207B0A20202020202020202020636F6E74';
wwv_flow_api.g_varchar2_table(1193) := '696E75653B0A20202020202020207D0A20200A2020202020202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202776697369626C65272029';
wwv_flow_api.g_varchar2_table(1194) := '2029207B0A202020202020202020202F2F646F6E742072656E64657220636F6C756D6E206265636175736520697420686173206E6F20636F6E666975726174696F6E0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A';
wwv_flow_api.g_varchar2_table(1195) := '202020202020202069662028200A20202020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660A20202020202020202020262620746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(1196) := '6E67732E706F7075702E697352657475726E436F6C756D6E56697369626C65203D3D2066616C73650A20202020202020202020262620636F6C756D6E5F6E616D65203D3D20275227200A202020202020202029207B0A202020202020202020202F2F646F';
wwv_flow_api.g_varchar2_table(1197) := '6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A202020202020202069662028200A2020202020202020202020202074686973';
wwv_flow_api.g_varchar2_table(1198) := '2E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660A20202020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E6973446973706C6179436F6C756D6E56697369626C';
wwv_flow_api.g_varchar2_table(1199) := '65203D3D2066616C73650A20202020202020202020262620636F6C756D6E5F6E616D65203D3D20274427200A202020202020202029207B0A202020202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C61792063';
wwv_flow_api.g_varchar2_table(1200) := '6F6C756D6E0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A20202020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478203D3D20636F6C756D6E5F6964782029';
wwv_flow_api.g_varchar2_table(1201) := '207B0A202020202020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D3D2027617363272029207B0A202020202020202020202020697355736564546F536F7274203D20273C73';
wwv_flow_api.g_varchar2_table(1202) := '70616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F6E2069636F6E2D7270742D736F72742D617363223E3C2F7370616E3E273B20200A202020202020202020202020736F7274696E67446972656374696F6E203D202764';
wwv_flow_api.g_varchar2_table(1203) := '657363273B0A202020202020202020207D0A20202020202020202020656C7365207B0A202020202020202020202020697355736564546F536F7274203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F6E';
wwv_flow_api.g_varchar2_table(1204) := '2069636F6E2D7270742D736F72742D64657363223E3C2F7370616E3E273B0A202020202020202020202020736F7274696E67446972656374696F6E203D2027617363273B0A202020202020202020207D0A20202020202020207D0A202020202020202065';
wwv_flow_api.g_varchar2_table(1205) := '6C7365207B0A20202020202020202020697355736564546F536F7274203D2027273B0A20202020202020202020736F7274696E67446972656374696F6E203D2027617363273B0A20202020202020207D0A20200A20202020202020206966202820746869';
wwv_flow_api.g_varchar2_table(1206) := '732E706F7075702E73746174652E736561726368436F6C756D6E496478203D3D20636F6C756D6E5F6964782029207B0A20202020202020202020697346696C7465726564203D20273C7370616E20636C6173733D22752D5265706F72742D736F72744963';
wwv_flow_api.g_varchar2_table(1207) := '6F6E2066612066612D66696C746572223E3C2F7370616E3E273B0A20202020202020207D0A2020202020202020656C7365207B0A20202020202020202020697346696C7465726564203D2027273B0A20202020202020207D0A20200A2020202020202020';
wwv_flow_api.g_varchar2_table(1208) := '7468416C69676E203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277468416C69676E2720293B0A20200A20202020202020207468203D2027272B0A20';
wwv_flow_api.g_varchar2_table(1209) := '202020202020202020273C746820636C6173733D22742D5265706F72742D636F6C486561642220616C69676E3D22272B7468416C69676E2B272220617269612D636F6C756D6E2D6E616D653D22272B636F6C756D6E5F6E616D652B27223E272B0A202020';
wwv_flow_api.g_varchar2_table(1210) := '202020202020202720203C64697620636C6173733D22752D5265706F72742D736F7274223E272B0A2020202020202020202027202020203C7370616E20636C6173733D22752D5265706F72742D736F727448656164696E67223E272B0A20202020202020';
wwv_flow_api.g_varchar2_table(1211) := '202020272020202020203C6120687265663D226A6176617363726970743A20766F6964283029223E272B636F6C756D6E5F616C6961732B273C2F613E272B0A2020202020202020202027202020203C2F7370616E3E272B0A202020202020202020202720';
wwv_flow_api.g_varchar2_table(1212) := '202020272B697355736564546F536F72742B27272B0A202020202020202020202720202020272B697346696C74657265642B27270A202020202020202020202720203C2F6469763E272B0A20202020202020202020273C2F74683E272B0A202020202020';
wwv_flow_api.g_varchar2_table(1213) := '2020202027273B0A20200A20202020202020207468203D2024287468293B0A20200A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(1214) := '70757047657448656164696E67732066696C746572696E67206F7220736F7274696E6720617661696C61626C652C2062696E6420636C69636B2063616C6C6261636B27293B0A20200A202020202020202074682E62696E642827636C69636B272C20242E';
wwv_flow_api.g_varchar2_table(1215) := '70726F787928746869732E5F706F7075705265706F7274486561646572436C69636B43616C6C6261636B2C20746869732C20746869732E6F7074696F6E732E636F6C756D6E735B695D2C20736F7274696E67446972656374696F6E29293B0A20200A2020';
wwv_flow_api.g_varchar2_table(1216) := '20202020202074686561642E66696E642827747227292E617070656E642820746820293B0A2020202020207D0A20200A20202020202072657475726E2074686561643B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A';
wwv_flow_api.g_varchar2_table(1217) := '2066756E6374696F6E206E616D653A205F706F7075705265706F7274486561646572436F6E7461696E65724372656174650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A202020';
wwv_flow_api.g_varchar2_table(1218) := '2D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705265706F7274486561646572436F6E7461696E65724372656174653A2066756E6374696F6E28207043757272656E7454682C2070436F6C756D6E4F';
wwv_flow_api.g_varchar2_table(1219) := '626A65637420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436F6E7461696E6572437265';
wwv_flow_api.g_varchar2_table(1220) := '617465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227043757272656E745468223A207043757272656E7454682C0A20202020202020202270436F6C756D6E4F626A656374223A2070';
wwv_flow_api.g_varchar2_table(1221) := '436F6C756D6E4F626A6563740A2020202020207D293B0A20200A202020202020766172200A202020202020202074657874203D207043757272656E7454682E7465787428292E7472696D28292C0A2020202020202020636F6E7461696E657220203D2024';
wwv_flow_api.g_varchar2_table(1222) := '28273C64697620636C6173733D22636F6C756D6E4F7065726174696F6E73223E3C64697620636C6173733D22736F7274696E67223E3C2F6469763E3C64697620636C6173733D2266696C746572696E67223E3C2F6469763E3C2F6469763E27292C0A2020';
wwv_flow_api.g_varchar2_table(1223) := '202020202020736F7274417363202020203D202428273C6120687265663D226A6176617363726970743A20766F696428302922207469746C653D22272B746869732E435F504F5055505F4845414445525F534F52545F4153435F5449544C452B27223E3C';
wwv_flow_api.g_varchar2_table(1224) := '7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D736F72742D617363223E3C2F7370616E3E3C2F613E27292C0A2020202020202020736F727444657363202020203D202428273C6120687265663D226A6176617363726970743A2076';
wwv_flow_api.g_varchar2_table(1225) := '6F696428302922207469746C653D22272B746869732E435F504F5055505F4845414445525F534F52545F444553435F5449544C452B27223E3C7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D736F72742D64657363223E3C2F7370';
wwv_flow_api.g_varchar2_table(1226) := '616E3E3C2F613E27292C0A202020202020202073656172636849636F6E73203D202428273C6469763E3C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E3C7370616E20636C6173733D226661206661';
wwv_flow_api.g_varchar2_table(1227) := '2D74726173682D6F20636C656172223E3C2F7370616E3E3C2F6469763E27290A20202020202020207365617263684974656D203D202428273C696E70757420747970653D22746578742220636C6173733D22656D707479223E27292C0A20202020202020';
wwv_flow_api.g_varchar2_table(1228) := '206462436F6C756D6E4E616D65203D207043757272656E7454682E617474722827617269612D636F6C756D6E2D6E616D6527293B0A20200A20202020202073656172636849636F6E732E66696E6428272E636C65617227292E62696E642827636C69636B';
wwv_flow_api.g_varchar2_table(1229) := '272C20242E70726F78792820746869732E5F686561646572576964676574436C65617246696C746572696E672C207468697329293B0A20200A2020202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E';
wwv_flow_api.g_varchar2_table(1230) := '417661696C61626C65282070436F6C756D6E4F626A6563742E434F4C554D4E5F4E414D452C2027736F72742720292029207B0A2020202020202020736F7274417363202E62696E642827636C69636B272C20242E70726F787928746869732E5F706F7075';
wwv_flow_api.g_varchar2_table(1231) := '70536F72745265706F72742C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E4944582C20276173632729293B0A2020202020202020736F7274446573632E62696E642827636C69636B272C20242E70726F787928';
wwv_flow_api.g_varchar2_table(1232) := '746869732E5F706F707570536F72745265706F72742C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E4944582C2027646573632729293B0A20200A2020202020202020636F6E7461696E65722E66696E6428272E';
wwv_flow_api.g_varchar2_table(1233) := '736F7274696E6727292E617070656E642820736F727441736320292E617070656E642820736F72744465736320293B2020202020200A2020202020207D0A20200A2020202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E6669';
wwv_flow_api.g_varchar2_table(1234) := '6775726174696F6E417661696C61626C65282070436F6C756D6E4F626A6563742E434F4C554D4E5F4E414D452C202766696C7465722720292029207B0A20202020202020207365617263684974656D0A202020202020202020202E6F6E28276B65797570';
wwv_flow_api.g_varchar2_table(1235) := '272C20746869732E5F6465626F756E636528242E70726F78792820746869732E5F706F7075705365617263684B657955702C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E494458292C20746869732E706C7567';
wwv_flow_api.g_varchar2_table(1236) := '696E53657474696E67732E706F7075705365617263684465626F756E636554696D6529290A202020202020202020202E6F6E28276B65797570272C20242E70726F78792820746869732E5F6865616465725769646765744B657955704D616E6167654963';
wwv_flow_api.g_varchar2_table(1237) := '6F6E732C20746869732920293B0A20200A20202020202020206966202820746869732E706F7075702E73746174652E736561726368537472696E6720213D20756E646566696E65642026262070436F6C756D6E4F626A6563742E494458203D3D20746869';
wwv_flow_api.g_varchar2_table(1238) := '732E706F7075702E73746174652E736561726368436F6C756D6E49647829207B0A202020202020202020207365617263684974656D2E76616C2820746869732E706F7075702E73746174652E736561726368537472696E6720293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(1239) := '20207365617263684974656D2E72656D6F7665436C6173732827656D70747927293B0A20202020202020207D0A20200A2020202020202020636F6E7461696E65722E66696E6428272E66696C746572696E6727292E617070656E64282073656172636849';
wwv_flow_api.g_varchar2_table(1240) := '74656D20292E617070656E64282073656172636849636F6E7320293B0A2020202020207D0A20200A202020202020636F6E7461696E65722E66696E6428272E68656164696E6727292E63737328276D61785769647468272C207043757272656E7454682E';
wwv_flow_api.g_varchar2_table(1241) := '6F7574657257696474682829290A20200A202020202020636F6E7461696E65722E637373287B0A2020202020202020226D696E5769647468223A207043757272656E7454682E6F75746572576964746828292C0A2020202020202020226C656674223A20';
wwv_flow_api.g_varchar2_table(1242) := '7043757272656E7454682E706F736974696F6E28292E6C6566742C0A202020202020202022746F70223A207043757272656E7454682E6F7574657248656967687428290A2020202020207D293B0A20200A202020202020636F6E7461696E65722E66696E';
wwv_flow_api.g_varchar2_table(1243) := '6428272E68656164696E6727292E637373282770616464696E67272C207043757272656E7454682E637373282770616464696E672729290A20200A20202020202072657475726E20636F6E7461696E65723B0A20200A202020207D2C0A202020202F2A0A';
wwv_flow_api.g_varchar2_table(1244) := '2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274486561646572576964676574486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A';
wwv_flow_api.g_varchar2_table(1245) := '2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705265706F7274486561646572576964676574486964653A2066756E6374696F6E28297B0A202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(1246) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F727448656164657257696467657448696465272C207B0A202020202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(1247) := '3A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E737469636B79486561646572732E66696E642827746827292E72656D6F7665436C617373282769732D61637469766527293B0A20202020202074';
wwv_flow_api.g_varchar2_table(1248) := '6869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E72656D6F766528293B0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E6572203D20756E646566696E65640A20202020202024';
wwv_flow_api.g_varchar2_table(1249) := '28646F63756D656E74292E6F66662827636C69636B2E707265746975732D2D656E68616E6365644C6F764974656D27293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70';
wwv_flow_api.g_varchar2_table(1250) := '6F7075705265706F727448656164657257696467657453686F770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20';
wwv_flow_api.g_varchar2_table(1251) := '2020202A2F0A202020205F706F7075705265706F727448656164657257696467657453686F773A2066756E6374696F6E28207054682C2070576964676574297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1252) := '5F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F727448656164657257696467657453686F77272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022';
wwv_flow_api.g_varchar2_table(1253) := '705468223A207054682C0A20202020202020202270576964676574223A20705769646765740A2020202020207D293B0A20200A2020202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E';
wwv_flow_api.g_varchar2_table(1254) := '646566696E6564202029207B0A2020202020202020746869732E5F706F7075705265706F72744865616465725769646765744869646528293B0A2020202020207D0A20200A2020202020207054682E616464436C617373282769732D6163746976652729';
wwv_flow_api.g_varchar2_table(1255) := '3B0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E6572203D20705769646765743B0A202020202020746869732E706F7075702E626F64792E617070656E6428207057696467657420293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(1256) := '2020705769646765742E66696E6428273A696E70757427292E666F63757328293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274486561646572436C69';
wwv_flow_api.g_varchar2_table(1257) := '636B43616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70';
wwv_flow_api.g_varchar2_table(1258) := '75705265706F7274486561646572436C69636B43616C6C6261636B3A2066756E6374696F6E282070436F6C756D6E4F626A6563742C2070536F7274446972656374696F6E2C20704576656E7420297B0A202020202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(1259) := '7361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B43616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A206172';
wwv_flow_api.g_varchar2_table(1260) := '67756D656E74732C0A20202020202020202270436F6C756D6E4F626A656374223A2070436F6C756D6E4F626A6563742C0A20202020202020202270536F7274446972656374696F6E223A2070536F7274446972656374696F6E2C0A202020202020202022';
wwv_flow_api.g_varchar2_table(1261) := '704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0A20200A202020202020766172200A20202020202020207468203D20242870';
wwv_flow_api.g_varchar2_table(1262) := '4576656E742E63757272656E74546172676574292C0A2020202020202020636F6E7461696E6572203D20746869732E5F706F7075705265706F7274486561646572436F6E7461696E6572437265617465282074682C2070436F6C756D6E4F626A65637420';
wwv_flow_api.g_varchar2_table(1263) := '293B0A20200A202020202020746869732E5F706F7075705265706F727448656164657257696467657453686F77282074682C20636F6E7461696E657220293B0A20200A2020202020200A2020202020202428646F63756D656E74292E62696E642827636C';
wwv_flow_api.g_varchar2_table(1264) := '69636B2E707265746975732D2D656E68616E6365644C6F764974656D272C20242E70726F78792820746869732E5F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B2C20746869732029293B0A202020207D2C0A2020';
wwv_flow_api.g_varchar2_table(1265) := '20202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B0A2020202020202A206465736372697074696F6E20203A200A20202020';
wwv_flow_api.g_varchar2_table(1266) := '20202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B3A2066756E637469';
wwv_flow_api.g_varchar2_table(1267) := '6F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F75';
wwv_flow_api.g_varchar2_table(1268) := '7473696465436865636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172207461726765';
wwv_flow_api.g_varchar2_table(1269) := '74203D202428704576656E742E746172676574293B0A20200A202020202020696620282021242E636F6E7461696E732820746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E6765742830292C207461726765742E676574';
wwv_flow_api.g_varchar2_table(1270) := '28302920292029207B0A20202020202020202F2F636C69636B206F75747369646520666F756E640A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(1271) := '2C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C2027636C69636B6564206F757473696465206865616465722077696467657427293B0A2020202020202020746869732E5F706F7075705265706F7274';
wwv_flow_api.g_varchar2_table(1272) := '4865616465725769646765744869646528293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1273) := '782C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C2027636C69636B656420696E73696465206865616465722077696467657427293B0A2020202020207D0A2020202020200A202020207D2C0A202020';
wwv_flow_api.g_varchar2_table(1274) := '202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570437265617465537469636B79486561646572730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A';
wwv_flow_api.g_varchar2_table(1275) := '0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570437265617465537469636B79486561646572733A2066756E6374696F6E2829207B0A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(1276) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570437265617465537469636B7948656164657273272C207B0A202020202020202022617267756D656E7473223A206172';
wwv_flow_api.g_varchar2_table(1277) := '67756D656E74730A2020202020207D293B0A20200A2020202020207661720A20202020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27292C0A20202020202020207468656164203D20746869732E706F7075702E626F6479';
wwv_flow_api.g_varchar2_table(1278) := '2E66696E6428272E7265706F727420746865616427292E636C6F6E6528747275652C2074727565292C0A2020202020202020746873203D20746869732E706F7075702E626F64792E66696E6428277461626C6520746827292C0A20202020202020207374';
wwv_flow_api.g_varchar2_table(1279) := '69636B794865616465723B0A20200A2020202020206966202820746869732E706F7075702E737469636B794865616465727320213D20756E646566696E65642029207B0A2020202020202020746869732E706F7075702E737469636B7948656164657273';
wwv_flow_api.g_varchar2_table(1280) := '2E72656D6F766528293B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570437265617465537469636B794865616465727327';
wwv_flow_api.g_varchar2_table(1281) := '2C202772656D6F76696E67206578697374696E6720737469636B794865616465727327293B0A2020202020207D0A20200A20202020202074686561642E66696E642827746827292E65616368282066756E6374696F6E282070496E6465782C2070456C65';
wwv_flow_api.g_varchar2_table(1282) := '6D20297B0A2020202020202020242870456C656D292E637373287B0A20202020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0A20202020202020202020276D61785769647468273A';
wwv_flow_api.g_varchar2_table(1283) := '207468732E65712870496E646578292E6F75746572576964746828292C0A20202020202020202020277769647468272020203A207468732E65712870496E646578292E6F75746572576964746828292C0A20202020202020207D293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(1284) := '202020207468732E65712870496E646578292E637373287B0A20202020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0A20202020202020202020276D61785769647468273A207468';
wwv_flow_api.g_varchar2_table(1285) := '732E65712870496E646578292E6F75746572576964746828292C0A20202020202020202020277769647468272020203A207468732E65712870496E646578292E6F75746572576964746828292C0A20202020202020207D290A2020202020207D293B0A20';
wwv_flow_api.g_varchar2_table(1286) := '200A20200A2020202020207461626C650A20202020202020202E616464436C6173732822742D5265706F72742D7265706F727420737469636B794865616465727322292E61747472282273756D6D617279222C20746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(1287) := '6E67732E706F7075702E7469746C65290A20202020202020202E6373732827746F70272C2030290A20202020202020202E617070656E642820746865616420293B0A20200A202020202020746869732E706F7075702E737469636B794865616465727320';
wwv_flow_api.g_varchar2_table(1288) := '3D207461626C653B0A202020202020746869732E706F7075702E73656C656374416C6C436865636B626F78203D20746869732E706F7075702E737469636B79486561646572732E66696E64282774683A66697273742D6368696C64203A636865636B626F';
wwv_flow_api.g_varchar2_table(1289) := '7827293B0A20200A202020202020746869732E706F7075702E626F64792E617070656E6428207461626C6520293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265';
wwv_flow_api.g_varchar2_table(1290) := '706F727452656E6465724E6F64617461466F756E640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F';
wwv_flow_api.g_varchar2_table(1291) := '20200A202020205F706F7075705265706F727452656E6465724E6F64617461466F756E643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C';
wwv_flow_api.g_varchar2_table(1292) := '6F675072656669782C20275F706F7075705265706F727452656E6465724E6F64617461466F756E64272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A';
wwv_flow_api.g_varchar2_table(1293) := '20202020202020207365617263685465726D203D20746869732E706F7075702E73746174652E736561726368537472696E672C0A20202020202020206E6F44617461466F756E64546578742C0A2020202020202020636F6E7461696E6572203D20242827';
wwv_flow_api.g_varchar2_table(1294) := '202020202020202020202020202020202020202020202020202020202020202020272B0A20202020202020202020273C64697620636C6173733D226E6F64617461666F756E64436F6E7461696E6572223E2020202020202020202020272B0A2020202020';
wwv_flow_api.g_varchar2_table(1295) := '20202020202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020202020202020202020202020272B0A2020202020202020202027202020203C7370616E20636C6173733D2266612066612D7461626C652D736561726368';
wwv_flow_api.g_varchar2_table(1296) := '223E3C2F7370616E3E20272B0A202020202020202020202720203C2F6469763E20202020202020202020202020202020202020202020202020202020202020202020202020272B0A202020202020202020202720203C64697620636C6173733D22746578';
wwv_flow_api.g_varchar2_table(1297) := '74223E2354455854233C2F6469763E272B0A20202020202020202020273C2F6469763E202020202020202020202020202020202020202020202020202020202020202020202020202020272B0A2020202020202020202027270A2020202020202020293B';
wwv_flow_api.g_varchar2_table(1298) := '0A20200A20202020202069662028207365617263685465726D203D3D206E756C6C2029207B0A20202020202020206E6F44617461466F756E6454657874203D20746869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F51554552';
wwv_flow_api.g_varchar2_table(1299) := '593B0A2020202020207D0A202020202020656C7365207B0A20202020202020206E6F44617461466F756E6454657874203D20746869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F5345415243482E7265706C61636528272530';
wwv_flow_api.g_varchar2_table(1300) := '272C207365617263685465726D29202B20273C2F62723E272B746869732E435F504F5055505F544558545F434C4541525F46494C544552494E473B0A2020202020207D0A20200A202020202020636F6E7461696E65722E66696E6428272E746578742729';
wwv_flow_api.g_varchar2_table(1301) := '2E68746D6C286E6F44617461466F756E6454657874293B0A20200A202020202020746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461696E6572293B0A202020202020746869732E5F706F707570506167696E6174';
wwv_flow_api.g_varchar2_table(1302) := '696F6E4869646528293B0A202020202020746869732E5F706F707570526F7773506572506167654869646528293B0A202020202020746869732E5F706F70757041646A757374426F647948656967687428293B0A202020207D2C0A202020202F2A0A2020';
wwv_flow_api.g_varchar2_table(1303) := '202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274426F64794765740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D';
wwv_flow_api.g_varchar2_table(1304) := '0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705265706F7274426F64794765743A2066756E6374696F6E2820704461746120297B0A202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(1305) := '6869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274426F6479476574272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022';
wwv_flow_api.g_varchar2_table(1306) := '7044617461223A2070446174610A2020202020207D293B0A20200A2020202020207661720A202020202020202074626F647954656D706C617465203D2027272B0A20202020202020202020277B7B23646174617D7D272B0A20202020202020202020273C';
wwv_flow_api.g_varchar2_table(1307) := '7472272B0A2020202020202020202027207B7B2365787472617D7D636C6173733D22657874726156616C7565227B7B2F65787472617D7D272B0A2020202020202020202027207B7B236973415045584E756C6C56616C75657D7D636C6173733D226E756C';
wwv_flow_api.g_varchar2_table(1308) := '6C56616C7565227B7B2F6973415045584E756C6C56616C75657D7D3E272C0A2020202020202020636F6C756D6E5F6E616D652C0A2020202020202020696E70757453656C6563746F723B0A20200A2020202020206966202820746869732E706C7567696E';
wwv_flow_api.g_varchar2_table(1309) := '53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0A2020202020202020696E70757453656C6563746F72203D2027272B0A20202020202020202020273C696E707574272B0A202020202020202020202720747970653D2263';
wwv_flow_api.g_varchar2_table(1310) := '6865636B626F7822272B0A20202020202020202020272076616C75653D227B7B7B527D7D7D22272B0A2020202020202020202027207B7B2373656C65637465647D7D636865636B65643D2274727565227B7B2F73656C65637465647D7D272B0A20202020';
wwv_flow_api.g_varchar2_table(1311) := '20202020202027207B7B2365787472617D7D617269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0A2020202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75';
wwv_flow_api.g_varchar2_table(1312) := '653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0A202020202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0A2020202020202020202027206E616D653D226D756C7469706C65';
wwv_flow_api.g_varchar2_table(1313) := '22272B0A20202020202020202020273E272B0A202020202020202020202720203C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1314) := '2720203C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0A2020202020202020202027273B0A2020202020207D0A202020202020656C7365207B0A2020202020202020696E';
wwv_flow_api.g_varchar2_table(1315) := '70757453656C6563746F72203D2027272B0A20202020202020202020273C696E707574272B0A202020202020202020202720747970653D22726164696F22272B0A20202020202020202020272076616C75653D227B7B7B527D7D7D22272B0A2020202020';
wwv_flow_api.g_varchar2_table(1316) := '202020202027207B7B2373656C65637465647D7D636865636B65643D2274727565227B7B2F73656C65637465647D7D272B0A202020202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0A20202020202020';
wwv_flow_api.g_varchar2_table(1317) := '20202027207B7B2365787472617D7D617269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0A2020202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75653D22';
wwv_flow_api.g_varchar2_table(1318) := '74727565227B7B2F6973415045584E756C6C56616C75657D7D272B0A2020202020202020202027206E616D653D2273696E676C6522272B0A20202020202020202020273E272B0A202020202020202020202720203C7370616E20636C6173733D22666120';
wwv_flow_api.g_varchar2_table(1319) := '66612D646F742D636972636C652D6F2066616B65526164696F223E3C2F7370616E3E272B0A202020202020202020202720203C7370616E20636C6173733D2266612066612D636972636C652D6F2066616B65526164696F223E3C2F7370616E3E272B0A20';
wwv_flow_api.g_varchar2_table(1320) := '20202020202020202027273B0A2020202020207D0A20200A20202020202074626F647954656D706C617465202B3D2027272B0A2020202020202020273C746420636C6173733D22742D5265706F72742D63656C6C223E272B0A202020202020202027272B';
wwv_flow_api.g_varchar2_table(1321) := '696E70757453656C6563746F722B27272B0A2020202020202020273C2F74643E273B0A20200A202020202020666F722028207661722069203D303B2069203C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B';
wwv_flow_api.g_varchar2_table(1322) := '0A2020202020202020636F6C756D6E5F6E616D65203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0A20200A202020202020202069662028200A20202020202020202020746869732E706C7567696E5365';
wwv_flow_api.g_varchar2_table(1323) := '7474696E67732E706F7075702E69735265706F7274416476616E636564436F6E660A2020202020202020202026262021746869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E5F6E616D652029200A202020202020202029';
wwv_flow_api.g_varchar2_table(1324) := '207B0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A2020202020202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F';
wwv_flow_api.g_varchar2_table(1325) := '6E616D652C202776697369626C652720292029207B0A202020202020202020202F2F636F6C756D6E207669736962696C697479206E6F7420646566696E65640A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A202020';
wwv_flow_api.g_varchar2_table(1326) := '202020202069662028200A20202020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660A20202020202020202020262620746869732E706C7567696E53657474696E6773';
wwv_flow_api.g_varchar2_table(1327) := '2E706F7075702E697352657475726E436F6C756D6E56697369626C65203D3D2066616C73650A20202020202020202020262620636F6C756D6E5F6E616D65203D3D20275227200A202020202020202029207B0A202020202020202020202F2F646F6E7420';
wwv_flow_api.g_varchar2_table(1328) := '72656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A202020202020202069662028200A20202020202020202020202020746869732E706C';
wwv_flow_api.g_varchar2_table(1329) := '7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660A20202020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E6973446973706C6179436F6C756D6E56697369626C65203D';
wwv_flow_api.g_varchar2_table(1330) := '3D2066616C73650A20202020202020202020262620636F6C756D6E5F6E616D65203D3D20274427200A202020202020202029207B0A202020202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C75';
wwv_flow_api.g_varchar2_table(1331) := '6D6E0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A20200A20202020202020207464416C69676E203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C';
wwv_flow_api.g_varchar2_table(1332) := '756D6E5F6E616D652C20277464416C69676E2720293B0A202020202020202074626F647954656D706C617465202B3D20273C746420636C6173733D22742D5265706F72742D63656C6C2220616C69676E3D22272B7464416C69676E2B2722206865616465';
wwv_flow_api.g_varchar2_table(1333) := '72733D22272B636F6C756D6E5F6E616D652B27223E7B7B7B272B636F6C756D6E5F6E616D652B277D7D7D3C2F74643E273B0A2020202020207D0A20200A20202020202074626F647954656D706C617465202B3D20273C2F74723E7B7B2F646174617D7D27';
wwv_flow_api.g_varchar2_table(1334) := '3B0A20200A202020202020747279207B0A202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282074626F647954656D706C6174652C20704461746129293B0A2020202020207D20636174636828206572726F7220';
wwv_flow_api.g_varchar2_table(1335) := '29207B0A2020202020202020746869732E5F7468726F774572726F72286572726F72293B0A2020202020207D0A20200A2020202020202F2F686967686C6967687420726573756C74730A2020202020206966202820746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(1336) := '652E736561726368537472696E672029207B0A202020202020202072656E6465726564203D20746869732E5F706F707570486967686C69676874526573756C74732872656E6465726564293B20200A2020202020207D0A20200A20202020202072656E64';
wwv_flow_api.g_varchar2_table(1337) := '65726564203D20746869732E5F706F7075704D61726B4173457874726156616C7565282072656E646572656420293B0A20202020202072656E6465726564203D20746869732E5F706F7075704D61726B41734E756C6C56616C7565282072656E64657265';
wwv_flow_api.g_varchar2_table(1338) := '6420293B0A20200A20202020202072657475726E2072656E64657265643B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704D61726B41734E756C6C56616C75650A2020';
wwv_flow_api.g_varchar2_table(1339) := '202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704D61726B41734E756C6C56';
wwv_flow_api.g_varchar2_table(1340) := '616C75653A2066756E6374696F6E28207052656E646572656420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704D61726B';
wwv_flow_api.g_varchar2_table(1341) := '41734E756C6C56616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227052656E6465726564223A207052656E64657265640A2020202020207D293B0A20200A2020202020207661';
wwv_flow_api.g_varchar2_table(1342) := '720A20202020202020207464436E74203D207052656E64657265642E66696E642827746427292E6C656E6774683B0A20200A2020202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C207049';
wwv_flow_api.g_varchar2_table(1343) := '6E6465782C2070456C656D20297B0A2020202020202020766172200A2020202020202020202073656C66203D20242870456C656D292C0A202020202020202020206E756C6C56616C7565203D2073656C662E66696E6428273A696E70757427292E76616C';
wwv_flow_api.g_varchar2_table(1344) := '28292C0A2020202020202020202074657874203D2073656C662E66696E6428273A696E70757427292E617474722827617269612D646973706C61792D76616C756527293B0A20200A2020202020202020696620282073656C662E697328272E6E756C6C56';
wwv_flow_api.g_varchar2_table(1345) := '616C756527292029207B0A2020202020202020202073656C662E66696E642827746427292E6E6F7428273A66697273742D6368696C6427292E72656D6F766528293B0A2020202020202020202073656C662E617070656E6428273C746420636C6173733D';
wwv_flow_api.g_varchar2_table(1346) := '22742D5265706F72742D63656C6C2220636F6C7370616E3D22272B28705464436E742D31292B27223E272B746578742B273C2F74643E27293B0A20202020202020200A20202020202020207D0A20200A2020202020207D2C20746869732C207464436E74';
wwv_flow_api.g_varchar2_table(1347) := '2920293B0A20200A20202020202072657475726E207052656E64657265643B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704D61726B4173457874726156616C';
wwv_flow_api.g_varchar2_table(1348) := '75650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704D61726B4173';
wwv_flow_api.g_varchar2_table(1349) := '457874726156616C75653A2066756E6374696F6E28207052656E646572656420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70';
wwv_flow_api.g_varchar2_table(1350) := '75704D61726B4173457874726156616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227052656E6465726564223A207052656E64657265640A2020202020207D293B0A20200A20';
wwv_flow_api.g_varchar2_table(1351) := '2020202020766172200A202020202020202063656C6C54657874203D20746869732E435F504F5055505F544558545F45585452415F56414C55453B0A20202020202020207464436E74203D207052656E64657265642E66696E642827746427292E6C656E';
wwv_flow_api.g_varchar2_table(1352) := '6774683B0A20200A2020202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C2070546578742C2070496E6465782C2070456C656D20297B0A2020202020202020766172200A20202020202020';
wwv_flow_api.g_varchar2_table(1353) := '20202073656C66203D20242870456C656D292C0A20202020202020202020657874726156616C7565203D2073656C662E66696E6428273A696E70757427292E76616C28292C0A2020202020202020202074657874203D2070546578742E7265706C616365';
wwv_flow_api.g_varchar2_table(1354) := '28272530272C20657874726156616C7565293B0A20200A2020202020202020696620282073656C662E697328272E657874726156616C756527292029207B0A2020202020202020202073656C662E66696E642827746427292E6E6F7428273A6669727374';
wwv_flow_api.g_varchar2_table(1355) := '2D6368696C6427292E72656D6F766528293B0A2020202020202020202073656C662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D22272B28705464436E742D31292B27223E272B746578742B';
wwv_flow_api.g_varchar2_table(1356) := '273C2F74643E27293B0A20202020202020200A20202020202020207D0A20200A2020202020207D2C20746869732C207464436E742C2063656C6C546578742920293B0A20200A20202020202072657475726E207052656E64657265643B0A202020207D2C';
wwv_flow_api.g_varchar2_table(1357) := '0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F727452656E6465720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020';
wwv_flow_api.g_varchar2_table(1358) := '202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075705265706F727452656E6465723A2066756E6374696F6E2820704461746120297B0A202020202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(1359) := '65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020';
wwv_flow_api.g_varchar2_table(1360) := '202020202020227044617461223A2070446174610A2020202020207D293B0A20200A202020202020766172200A20202020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0A20202020202020207461626C';
wwv_flow_api.g_varchar2_table(1361) := '65203D202428273C7461626C653E3C2F7461626C653E27292C0A202020202020202074686561642C0A202020202020202074626F6479203D202428273C74626F64793E3C2F74626F64793E27292C0A202020202020202073656C6563746564436E74203D';
wwv_flow_api.g_varchar2_table(1362) := '20303B0A20200A202020202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(1363) := '72656669782C20275F706F7075705265706F727452656E646572272C20276E6F20726F777320746F2072656E6465722C20646973706C6179206E6F206461746120666F756E6427293B0A2020202020202020746869732E706F7075702E626F64792E6164';
wwv_flow_api.g_varchar2_table(1364) := '64436C61737328276E6F64617461666F756E6427293B0A2020202020202020746869732E5F706F7075705265706F727452656E6465724E6F64617461466F756E6428293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D';
wwv_flow_api.g_varchar2_table(1365) := '0A20200A2020202020207468656164203D20746869732E5F706F70757047657448656164696E677328293B0A20200A2020202020207461626C650A20202020202020202E616464436C6173732822742D5265706F72742D7265706F7274207265706F7274';
wwv_flow_api.g_varchar2_table(1366) := '22290A20202020202020202E61747472282273756D6D617279222C20746869732E706C7567696E53657474696E67732E706F7075702E7469746C65290A20202020202020202E617070656E642820746865616420290A20202020202020202E617070656E';
wwv_flow_api.g_varchar2_table(1367) := '64282074626F64792E617070656E642820746869732E5F706F7075705265706F7274426F6479476574282070446174612029202920293B0A20200A2020202020207461626C65436F6E7461696E65720A20202020202020202E616464436C617373282774';
wwv_flow_api.g_varchar2_table(1368) := '2D5265706F727420742D5265706F72742D2D616C74526F777344656661756C7420742D5265706F72742D2D726F77486967686C6967687420742D5265706F72742D2D7374726574636827290A20202020202020202E617070656E6428207461626C652029';
wwv_flow_api.g_varchar2_table(1369) := '3B0A2020202020200A202020202020746869732E706F7075702E636F6E74656E745461626C65203D207461626C653B0A20200A20200A202020202020746869732E706F7075702E626F64790A20202020202020202E72656D6F7665436C61737328276E6F';
wwv_flow_api.g_varchar2_table(1370) := '64617461666F756E6427290A20202020202020202E72656D6F7665436C6173732827736561726368696E6727290A20202020202020202E656D70747928290A20202020202020202E617070656E6428207461626C65436F6E7461696E657220290A202020';
wwv_flow_api.g_varchar2_table(1371) := '20202020202E7363726F6C6C546F702830293B0A20200A2020202020202F2F7570646174652073656C656374696F6E2073746174650A2020202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C6563';
wwv_flow_api.g_varchar2_table(1372) := '74696F6E2029207B0A202020202020202074626F64792E66696E64282774643A66697273742D6368696C64203A636865636B626F783A636865636B656427292E6561636828242E70726F7879282066756E6374696F6E282070496E6465782C2070456C65';
wwv_flow_api.g_varchar2_table(1373) := '6D20297B0A2020202020202020202073656C6563746564436E742B2B3B0A20202020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0A20202020202020207D2C20746869732029293B0A20202020';
wwv_flow_api.g_varchar2_table(1374) := '20207D0A202020202020656C7365207B0A202020202020202074626F64792E66696E64282774643A66697273742D6368696C64203A726164696F3A636865636B656427292E6561636828242E70726F7879282066756E6374696F6E282070496E6465782C';
wwv_flow_api.g_varchar2_table(1375) := '2070456C656D20297B0A20202020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0A20202020202020207D2C20746869732029293B0A2020202020207D0A2020200A2020202020200A2020202020';
wwv_flow_api.g_varchar2_table(1376) := '20746869732E5F706F707570506167696E6174696F6E55706461746528293B0A2020202020202F2F746869732E5F706F70757048656164657253686F7728293B0A202020202020746869732E5F706F707570486561646572456E61626C6528293B0A2020';
wwv_flow_api.g_varchar2_table(1377) := '202020202F2F746869732E5F706F707570466F6F74657253686F7728293B0A202020202020746869732E5F706F707570466F6F746572456E61626C6528293B0A2020202020200A202020202020746869732E5F706F70757041646A757374426F64794865';
wwv_flow_api.g_varchar2_table(1378) := '6967687428293B0A202020202020746869732E5F706F707570437265617465537469636B794865616465727328293B0A20200A202020202020746869732E706F7075702E7365617263682E666F63757328293B0A20200A20202020202069662028207468';
wwv_flow_api.g_varchar2_table(1379) := '69732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0A2020202020202020696620282070446174612E646174612E6C656E677468203D3D2073656C6563746564436E742029207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(1380) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E677468206D617463682073';
wwv_flow_api.g_varchar2_table(1381) := '656C656374656420726F777327293B0A20202020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0A20202020202020207D0A2020202020202020656C7365';
wwv_flow_api.g_varchar2_table(1382) := '207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E';
wwv_flow_api.g_varchar2_table(1383) := '67746820646F65736E5C2774206D617463682073656C656374656420726F7773272C2027616A61782064617461206C656E677468203D2022272B70446174612E646174612E6C656E6774682B2722272C202773656C656374656420726F7773203D202227';
wwv_flow_api.g_varchar2_table(1384) := '2B73656C6563746564436E742B272227293B0A20202020202020207D0A20200A2020202020207D0A20200A202020202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F646174615F72656E6465726564272C20746869';
wwv_flow_api.g_varchar2_table(1385) := '732E5F706F7075704765744576656E74446174612829293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570476574526F7773506572506167650A202020202020';
wwv_flow_api.g_varchar2_table(1386) := '2A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F707570476574526F7773506572506167653A2066';
wwv_flow_api.g_varchar2_table(1387) := '756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570476574526F777350657250616765272C207B0A202020';
wwv_flow_api.g_varchar2_table(1388) := '202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722076616C7565203D20746869732E706F7075702E726F7773506572506167652E76616C28293B0A20200A2020202020206966';
wwv_flow_api.g_varchar2_table(1389) := '20282076616C7565203D3D202725272029207B0A202020202020202072657475726E20746869732E706C7567696E53657474696E67732E706F7075702E726F7773506572506167653B0A2020202020207D0A202020202020656C73652069662028207661';
wwv_flow_api.g_varchar2_table(1390) := '6C7565203D3D20756E646566696E65642029207B0A202020202020202072657475726E20746869732E706C7567696E53657474696E67732E706F7075702E726F7773506572506167653B0A2020202020207D0A202020202020656C7365207B0A20202020';
wwv_flow_api.g_varchar2_table(1391) := '2020202072657475726E2076616C75653B0A2020202020207D0A202020207D2C0A202020200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704368616E6765526F7773506572506167650A';
wwv_flow_api.g_varchar2_table(1392) := '2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704368616E6765526F77';
wwv_flow_api.g_varchar2_table(1393) := '73506572506167653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F7075704368616E6765526F77735065';
wwv_flow_api.g_varchar2_table(1394) := '7250616765272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661720A2020202020202020736561726368537472696E67203D20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(1395) := '6174652E736561726368537472696E672C0A2020202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964783B0A20200A202020202020746869732E5F706F707570416A';
wwv_flow_api.g_varchar2_table(1396) := '6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C20736561726368537472696E672C';
wwv_flow_api.g_varchar2_table(1397) := '20746869732E706F7075702E73746174652E736561726368436F6C756D6E496478293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757048656164657244697361';
wwv_flow_api.g_varchar2_table(1398) := '626C650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F70757048656164657244';
wwv_flow_api.g_varchar2_table(1399) := '697361626C653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757048656164657248696465272C20';
wwv_flow_api.g_varchar2_table(1400) := '7B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022686561646572223A20746869732E706F7075702E6865616465720A2020202020207D293B0A20200A202020202020746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(1401) := '6865616465722E66696E6428273A696E70757427292E70726F70282764697361626C6564272C2074727565293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570486561';
wwv_flow_api.g_varchar2_table(1402) := '646572456E61626C650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075';
wwv_flow_api.g_varchar2_table(1403) := '70486561646572456E61626C653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570486561646572';
wwv_flow_api.g_varchar2_table(1404) := '456E61626C65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022686561646572223A20746869732E706F7075702E6865616465720A2020202020207D293B0A20200A2020202020207468';
wwv_flow_api.g_varchar2_table(1405) := '69732E706F7075702E6865616465722E66696E6428273A696E70757427292E70726F70282764697361626C6564272C2066616C7365293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A';
wwv_flow_api.g_varchar2_table(1406) := '205F706F707570486561646572486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A20';
wwv_flow_api.g_varchar2_table(1407) := '2020205F706F707570486561646572486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570';
wwv_flow_api.g_varchar2_table(1408) := '48656164657248696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022686561646572223A20746869732E706F7075702E6865616465720A2020202020207D293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(1409) := '2020746869732E706F7075702E6865616465722E616464436C617373282768696464656E27293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757048656164657253686F';
wwv_flow_api.g_varchar2_table(1410) := '770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757048656164657253';
wwv_flow_api.g_varchar2_table(1411) := '686F773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757048656164657253686F77272C207B0A20';
wwv_flow_api.g_varchar2_table(1412) := '2020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E6865616465722E72656D6F7665436C617373282768696464656E27293B0A202020207D2C0A202020';
wwv_flow_api.g_varchar2_table(1413) := '202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570466F6F746572486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A20';
wwv_flow_api.g_varchar2_table(1414) := '20202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570466F6F746572486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C';
wwv_flow_api.g_varchar2_table(1415) := '4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F74657248696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A20202020202074';
wwv_flow_api.g_varchar2_table(1416) := '6869732E706F7075702E666F6F7465722E616464436C617373282768696464656E27293B202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570466F6F7465724469';
wwv_flow_api.g_varchar2_table(1417) := '7361626C650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570466F6F';
wwv_flow_api.g_varchar2_table(1418) := '74657244697361626C653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F746572446973';
wwv_flow_api.g_varchar2_table(1419) := '61626C65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E666F6F7465722E66696E642827627574746F6E27292E70726F7028276469';
wwv_flow_api.g_varchar2_table(1420) := '7361626C6564272C2074727565293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570466F6F746572456E61626C650A2020202020202A206465736372697074696F6E20';
wwv_flow_api.g_varchar2_table(1421) := '203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570466F6F746572456E61626C653A2066756E6374696F6E28297B0A202020';
wwv_flow_api.g_varchar2_table(1422) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F746572456E61626C65272C207B0A202020202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(1423) := '3A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E666F6F7465722E66696E642827627574746F6E27292E70726F70282764697361626C6564272C2066616C7365293B0A202020207D2C0A20202020';
wwv_flow_api.g_varchar2_table(1424) := '2F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570466F6F74657253686F770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020';
wwv_flow_api.g_varchar2_table(1425) := '202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570466F6F74657253686F773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(1426) := '475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F74657253686F77272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207468';
wwv_flow_api.g_varchar2_table(1427) := '69732E706F7075702E666F6F7465722E72656D6F7665436C617373282768696464656E27293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570526F7773506572506167';
wwv_flow_api.g_varchar2_table(1428) := '65486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570526F77';
wwv_flow_api.g_varchar2_table(1429) := '7350657250616765486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570526F7773506572';
wwv_flow_api.g_varchar2_table(1430) := '5061676548696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E726F777350657250616765436F6E7461696E65722E6869646528';
wwv_flow_api.g_varchar2_table(1431) := '293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570526F77735065725061676553686F770A2020202020202A206465736372697074696F6E20203A200A202020202020';
wwv_flow_api.g_varchar2_table(1432) := '2A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570526F77735065725061676553686F773A2066756E6374696F6E28297B0A20202020202061706578';
wwv_flow_api.g_varchar2_table(1433) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570526F77735065725061676553686F77272C207B0A202020202020202022617267756D656E7473223A206172';
wwv_flow_api.g_varchar2_table(1434) := '67756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E726F777350657250616765436F6E7461696E65722E73686F7728293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E';
wwv_flow_api.g_varchar2_table(1435) := '6374696F6E206E616D653A205F706F707570506167696E6174696F6E486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A202020';
wwv_flow_api.g_varchar2_table(1436) := '2020202A0A202020202A2F20200A202020205F706F707570506167696E6174696F6E486964653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(1437) := '2E6C6F675072656669782C20275F706F707570506167696E6174696F6E48696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E70';
wwv_flow_api.g_varchar2_table(1438) := '6167696E6174696F6E436F6E7461696E65722E6869646528293B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F6E53686F770A20202020';
wwv_flow_api.g_varchar2_table(1439) := '20202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570506167696E6174696F6E53686F';
wwv_flow_api.g_varchar2_table(1440) := '773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E53686F77272C207B';
wwv_flow_api.g_varchar2_table(1441) := '0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E706167696E6174696F6E436F6E7461696E65722E73686F7728293B0A20200A202020207D2C0A';
wwv_flow_api.g_varchar2_table(1442) := '202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F6E50726576506167650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D';
wwv_flow_api.g_varchar2_table(1443) := '733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570506167696E6174696F6E50726576506167653A2066756E6374696F6E28297B0A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(1444) := '75672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E5072657650616765272C207B0A202020202020202022617267756D656E7473223A2061726775';
wwv_flow_api.g_varchar2_table(1445) := '6D656E74730A2020202020207D293B0A20200A202020202020746869732E5F706F707570416A6178506572666F726D280A20202020202020202D2D746869732E706F7075702E73746174652E6C61737446657463686564506167652C0A20202020202020';
wwv_flow_api.g_varchar2_table(1446) := '20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0A2020202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0A2020202020202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(1447) := '702E73746174652E736561726368537472696E672C0A2020202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780A202020202020293B0A20200A202020207D2C0A20200A202020202F2A0A2020202020202A0A';
wwv_flow_api.g_varchar2_table(1448) := '2020202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F6E4E657874506167650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(1449) := '2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F706F707570506167696E6174696F6E4E657874506167653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(1450) := '5F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E4E65787450616765272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20';
wwv_flow_api.g_varchar2_table(1451) := '200A202020202020746869732E5F706F707570416A6178506572666F726D280A20202020202020202B2B746869732E706F7075702E73746174652E6C61737446657463686564506167652C0A2020202020202020746869732E706F7075702E7374617465';
wwv_flow_api.g_varchar2_table(1452) := '2E736F72746564436F6C756D6E4964782C0A2020202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0A2020202020202020746869732E706F7075702E73746174652E736561726368537472';
wwv_flow_api.g_varchar2_table(1453) := '696E672C0A2020202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780A202020202020293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A20';
wwv_flow_api.g_varchar2_table(1454) := '5F706F707570506167696E6174696F6E5570646174650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A';
wwv_flow_api.g_varchar2_table(1455) := '2F20200A202020205F706F707570506167696E6174696F6E5570646174653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1456) := '69782C20275F706F707570506167696E6174696F6E557064617465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020207374617274';
wwv_flow_api.g_varchar2_table(1457) := '203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D53746172742C0A2020202020202020656E642020203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E';
wwv_flow_api.g_varchar2_table(1458) := '756D456E642C0A2020202020202020746F74616C203D20746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742C0A20202020202020206F66202020203D20746869732E435F504F5055505F504147494E4154494F4E5F';
wwv_flow_api.g_varchar2_table(1459) := '4F463B0A20200A20200A202020202020656E64203D20656E64203E20746F74616C203F20746F74616C203A20656E643B0A20200A202020202020746869732E706F7075702E706167696E6174696F6E43757272656E742E746578742873746172742B2720';
wwv_flow_api.g_varchar2_table(1460) := '2D20272B656E642B2720272B6F662B2720272B746F74616C293B0A20200A2020202020202F2F6D616E61676520707265762070616765206C696E6B207669736962696C6974790A2020202020206966202820746869732E706F7075702E73746174652E6C';
wwv_flow_api.g_varchar2_table(1461) := '6173744665746368656450616765203D3D20312029207B0A2020202020202020746869732E706F7075702E706167696E6174696F6E50726576506167652E6869646528293B0A2020202020207D0A202020202020656C7365207B0A202020202020202074';
wwv_flow_api.g_varchar2_table(1462) := '6869732E706F7075702E706167696E6174696F6E50726576506167652E73686F7728293B200A2020202020207D0A20200A2020202020206966202820656E64203D3D20746F74616C2029207B0A2020202020202020746869732E706F7075702E70616769';
wwv_flow_api.g_varchar2_table(1463) := '6E6174696F6E4E657874506167652E6869646528293B200A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E73686F7728293B20200A2020202020207D';
wwv_flow_api.g_varchar2_table(1464) := '0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570497346696C74657265640A2020202020202A206465736372697074696F6E20203A200A2020202020202A207061';
wwv_flow_api.g_varchar2_table(1465) := '72616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570497346696C74657265643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(1466) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497346696C7465726564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A202020202020';
wwv_flow_api.g_varchar2_table(1467) := '7D293B0A20200A2020202020206966202820746869732E706F7075702E73746174652E736561726368537472696E6720213D20756E646566696E656420262620746869732E706F7075702E73746174652E736561726368537472696E672E6C656E677468';
wwv_flow_api.g_varchar2_table(1468) := '203E20302029207B0A202020202020202072657475726E20747275653B0A2020202020207D0A20200A20202020202072657475726E2066616C73653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(1469) := '6E616D653A205F706F7075705363726F6C6C43616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20';
wwv_flow_api.g_varchar2_table(1470) := '2020202A2F20200A202020205F706F7075705363726F6C6C43616C6C6261636B3A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(1471) := '69732E6C6F675072656669782C20275F706F7075705363726F6C6C43616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A202020';
wwv_flow_api.g_varchar2_table(1472) := '2020207D293B0A20200A202020202020766172200A202020202020202070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E7428202428704576656E742E63757272656E74546172676574292C202428704576656E742E637572';
wwv_flow_api.g_varchar2_table(1473) := '72656E74546172676574292E6F75746572486569676874282920292C0A2020202020202020736F72746564436F6C756D6E496478203D20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0A2020202020202020736F72';
wwv_flow_api.g_varchar2_table(1474) := '746564436F6C756D6E446972656374696F6E203D20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C200A2020202020202020736561726368537472696E67203D20746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(1475) := '652E736561726368537472696E672C0A2020202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0A20202020202020207363726F6C6C546F70203D2024287045';
wwv_flow_api.g_varchar2_table(1476) := '76656E742E63757272656E74546172676574292E7363726F6C6C546F7028293B0A20200A2020202020206966202820746869732E706F7075702E73746174652E616A6178537461747573203D3D20746869732E435F414A41585F5354415455535F455252';
wwv_flow_api.g_varchar2_table(1477) := '4F522029207B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020746869732E706F7075702E737469636B79486561646572732E6373732827746F70272C207363726F6C6C546F70293B0A20200A20';
wwv_flow_api.g_varchar2_table(1478) := '20202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E65642029207B0A2020202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(1479) := '2E6373732827746F70272C207363726F6C6C546F70202B20746869732E706F7075702E626F64792E66696E642827746827292E666972737428292E6F757465724865696768742829293B20200A2020202020207D0A202020207D2C0A202020202F2A0A20';
wwv_flow_api.g_varchar2_table(1480) := '20202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F70757044726167506F736974696F6E46697843616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A';
wwv_flow_api.g_varchar2_table(1481) := '2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F70757044726167506F736974696F6E46697843616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B';
wwv_flow_api.g_varchar2_table(1482) := '0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757044726167506F736974696F6E46697843616C6C6261636B272C207B0A20202020';
wwv_flow_api.g_varchar2_table(1483) := '2020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E742C200A202020202020202022705569222020203A207055690A2020202020207D293B0A20200A20202020202076617220';
wwv_flow_api.g_varchar2_table(1484) := '0A2020202020202020646F63756D656E745363726F6C6C546F70203D202428646F63756D656E74292E7363726F6C6C546F7028292C0A2020202020202020706F736974696F6E3B0A20200A2020202020206966202820646F63756D656E745363726F6C6C';
wwv_flow_api.g_varchar2_table(1485) := '546F70203E20302029207B0A2020202020202020706F736974696F6E203D207055692E706F736974696F6E3B0A2020202020202020706F736974696F6E2E746F70203D20706F736974696F6E2E746F70202D20646F63756D656E745363726F6C6C546F70';
wwv_flow_api.g_varchar2_table(1486) := '3B0A20200A2020202020202020746869732E706F7075702E636F6E7461696E65722E706172656E7428292E636C6F7365737428222E75692D6469616C6F6722292E6373732822746F70222C20706F736974696F6E2E746F70202B2022707822293B202020';
wwv_flow_api.g_varchar2_table(1487) := '200A2020202020207D2020202020200A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F6744726167537461727443616C6C6261636B0A202020202020';
wwv_flow_api.g_varchar2_table(1488) := '2A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704469616C6F67447261675374617274';
wwv_flow_api.g_varchar2_table(1489) := '43616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70';
wwv_flow_api.g_varchar2_table(1490) := '75704469616C6F6744726167537461727443616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E742C200A2020202020202020227055';
wwv_flow_api.g_varchar2_table(1491) := '69222020203A207055690A2020202020207D293B0A20200A2020202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D756E646566696E65642029207B0A2020202020202020746869732E706F70';
wwv_flow_api.g_varchar2_table(1492) := '75702E686561646572416374696F6E436F6E7461696E65722E6869646528293B20200A2020202020207D0A20200A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570';
wwv_flow_api.g_varchar2_table(1493) := '4469616C6F674472616753746F7043616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A';
wwv_flow_api.g_varchar2_table(1494) := '2F0A202020205F706F7075704469616C6F674472616753746F7043616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(1495) := '454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F674472616753746F7043616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270457665';
wwv_flow_api.g_varchar2_table(1496) := '6E74223A20704576656E742C200A202020202020202022705569222020203A207055690A2020202020207D293B0A20200A2020202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D756E646566';
wwv_flow_api.g_varchar2_table(1497) := '696E65642029207B0A2020202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E73686F7728293B20200A2020202020207D0A20200A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020';
wwv_flow_api.g_varchar2_table(1498) := '202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D';
wwv_flow_api.g_varchar2_table(1499) := '0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(1500) := '676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '656E747320202020200A2020202020207D293B0A20200A202020202020746869732E5F706F70757041646A757374426F647948656967687428293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E';
wwv_flow_api.g_varchar2_table(1502) := '616D653A205F706F707570436F6C756D6E4973446566696E65640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20';
wwv_flow_api.g_varchar2_table(1503) := '2020202A2F20200A202020205F706F707570436F6C756D6E4973446566696E65643A2066756E6374696F6E282070436F6C756D6E4E616D6520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C455645';
wwv_flow_api.g_varchar2_table(1504) := '4C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270436F6C756D6E4E616D6522';
wwv_flow_api.g_varchar2_table(1505) := '3A2070436F6C756D6E4E616D650A2020202020207D293B0A20200A2020202020207661722072657475726E56616C7565203D2066616C73653B0A20200A202020202020696620280A2020202020202020746869732E706F7075702E686561646572732020';
wwv_flow_api.g_varchar2_table(1506) := '20202020202020202020202020202020202020202020202020202020202020213D20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E7320202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1507) := '202020202020213D20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D20202020202020202020213D20756E646566696E65640A202020202020';
wwv_flow_api.g_varchar2_table(1508) := '29207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E2022';
wwv_flow_api.g_varchar2_table(1509) := '272B70436F6C756D6E4E616D652B272220697320646566696E65642E27293B0A202020202020202072657475726E56616C7565203D20747275653B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(1510) := '6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B2722206973206E6F74';
wwv_flow_api.g_varchar2_table(1511) := '20646566696E65642E27293B0A202020202020202072657475726E56616C7565203D2066616C73653B0A2020202020207D0A20200A2020202020200A20202020202072657475726E2072657475726E56616C75653B0A20200A202020207D2C0A20202020';
wwv_flow_api.g_varchar2_table(1512) := '2F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C650A2020202020202A206465736372697074696F6E20203A200A2020202020';
wwv_flow_api.g_varchar2_table(1513) := '202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C653A2066756E637469';
wwv_flow_api.g_varchar2_table(1514) := '6F6E282070436F6C756D6E4E616D652C20704174747220297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E49';
wwv_flow_api.g_varchar2_table(1515) := '73436F6E66696775726174696F6E417661696C61626C65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270436F6C756D6E4E616D6522203A2070436F6C756D6E4E616D652C0A202020';
wwv_flow_api.g_varchar2_table(1516) := '202020202022704174747222202020202020203A2070417474720A2020202020207D293B0A20200A2020202020207661722072657475726E56616C75653B0A20200A202020202020696620280A2020202020202020202020746869732E706C7567696E53';
wwv_flow_api.g_varchar2_table(1517) := '657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E6620202020203D3D20747275650A2020202020202020262620746869732E706F7075702E68656164657273202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1518) := '202020202020202020213D20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E7320202020202020202020202020202020202020202020202020213D20756E646566696E65640A202020';
wwv_flow_api.g_varchar2_table(1519) := '2020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D20202020202020202020213D20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572';
wwv_flow_api.g_varchar2_table(1520) := '732E636F6C756D6E735B2070436F6C756D6E4E616D65205D5B207041747472205D20213D20756E646566696E65642020202020200A20202020202029207B0A202020202020202072657475726E56616C7565203D20746869732E706F7075702E68656164';
wwv_flow_api.g_varchar2_table(1521) := '6572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D5B207041747472205D3B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(1522) := '5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B27223A20617474722022272B70417474722B2722203D2022272B72657475726E56616C75652B';
wwv_flow_api.g_varchar2_table(1523) := '272227293B0A202020202020202072657475726E2072657475726E56616C75653B0A2020202020207D0A202020202020656C7365207B0A202020202020202069662028207041747472203D3D202768656164696E67272029207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(1524) := '2072657475726E56616C7565203D2070436F6C756D6E4E616D653B0A20202020202020207D0A2020202020202020656C7365207B0A2020202020202020202072657475726E56616C7565203D20746869732E706F7075702E64656661756C745265706F72';
wwv_flow_api.g_varchar2_table(1525) := '7453657474696E67735B207041747472205D3B0A20202020202020207D0A20200A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70';
wwv_flow_api.g_varchar2_table(1526) := '7570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B27223A2064656661756C7420617474722022272B70417474722B2722203D2022272B72657475726E5661';
wwv_flow_api.g_varchar2_table(1527) := '6C75652B272227293B0A202020202020202072657475726E2072657475726E56616C75653B0A2020202020207D0A202020207D2C0A20200A202020200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F';
wwv_flow_api.g_varchar2_table(1528) := '706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964780A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A202020';
wwv_flow_api.g_varchar2_table(1529) := '2020202A0A202020202A2F20200A202020205F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964783A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1530) := '5F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E496478272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020';
wwv_flow_api.g_varchar2_table(1531) := '207D293B0A20200A2020202020207661720A202020202020202072657475726E56616C7565203D20312C0A2020202020202020636F6C756D6E3B2020202020200A20200A20202020202069662028200A2020202020202020202020746869732E706C7567';
wwv_flow_api.g_varchar2_table(1532) := '696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E66200A2020202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D20756E64656669';
wwv_flow_api.g_varchar2_table(1533) := '6E65640A2020202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200A2020202020202020262620746869732E706F7075702E686561646572732E';
wwv_flow_api.g_varchar2_table(1534) := '64656661756C74536F72742E636F6C756D6E20202020213D20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E646566696E65640A';
wwv_flow_api.g_varchar2_table(1535) := '20202020202029207B0A2020202020202020636F6C756D6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E636F6C756D6E3B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F';
wwv_flow_api.g_varchar2_table(1536) := '4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420627920636F6C756D6E2022272B636F6C756D6E2B272227293B';
wwv_flow_api.g_varchar2_table(1537) := '0A202020202020202072657475726E56616C7565203D20746869732E5F676574436F6C756D6E4964784279436F6C756D6E4E616D652820636F6C756D6E20293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64';
wwv_flow_api.g_varchar2_table(1538) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420636F6E6669';
wwv_flow_api.g_varchar2_table(1539) := '6775726174696F6E206973206E6F7420646566696E65642C20736F72742062792031737420636F6C756D6E2E27293B0A202020202020202072657475726E56616C7565203D20313B2020202020200A2020202020207D0A20200A20202020202061706578';
wwv_flow_api.g_varchar2_table(1540) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782072657475726E2022272B7265747572';
wwv_flow_api.g_varchar2_table(1541) := '6E56616C75652B272227293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704F70656E476574';
wwv_flow_api.g_varchar2_table(1542) := '44656661756C74536F7274436F6C756D6E446972656374696F6E0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20';
wwv_flow_api.g_varchar2_table(1543) := '2020202A2F20200A202020205F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1544) := '5F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E7473';
wwv_flow_api.g_varchar2_table(1545) := '0A2020202020207D293B0A20200A2020202020207661720A202020202020202072657475726E56616C7565203D2022617363222C0A2020202020202020646972656374696F6E3B0A20200A20202020202069662028200A20202020202020202020207468';
wwv_flow_api.g_varchar2_table(1546) := '69732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E66200A2020202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D';
wwv_flow_api.g_varchar2_table(1547) := '20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200A2020202020202020262620746869732E706F7075702E68';
wwv_flow_api.g_varchar2_table(1548) := '6561646572732E64656661756C74536F72742E636F6C756D6E20202020213D20756E646566696E65640A2020202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E64';
wwv_flow_api.g_varchar2_table(1549) := '6566696E65640A20202020202029207B0A2020202020202020646972656374696F6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E3B0A2020202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(1550) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420646972656374';
wwv_flow_api.g_varchar2_table(1551) := '696F6E20646566696E65642061732022272B646972656374696F6E2B27222E27293B0A202020202020202072657475726E56616C7565203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E0A2020';
wwv_flow_api.g_varchar2_table(1552) := '202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E4765744465666175';
wwv_flow_api.g_varchar2_table(1553) := '6C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F727420646972656374696F6E206173632E27293B0A20202020202020207265747572';
wwv_flow_api.g_varchar2_table(1554) := '6E56616C7565203D2022617363223B0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E4765';
wwv_flow_api.g_varchar2_table(1555) := '7444656661756C74536F7274436F6C756D6E446972656374696F6E2072657475726E2022272B72657475726E56616C75652B272227293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A20200A202020207D2C0A202020202F';
wwv_flow_api.g_varchar2_table(1556) := '2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F674F70656E43616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020';
wwv_flow_api.g_varchar2_table(1557) := '202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704469616C6F674F70656E43616C6C6261636B3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(1558) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F674F70656E43616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74';
wwv_flow_api.g_varchar2_table(1559) := '730A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E697356697369626C65203D20747275653B0A202020202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0A20200A202020';
wwv_flow_api.g_varchar2_table(1560) := '202020242827626F647927292E616464436C6173732827617065782D6E6F2D7363726F6C6C27293B0A20200A202020202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468';
wwv_flow_api.g_varchar2_table(1561) := '3B20692B2B2029207B0A2020202020202020746869732E706F7075702E73746174652E73656C65637465642E7075736828207B0A2020202020202020202022646973706C6179223A20746869732E6D61736B2E73746174652E73656C65637465645B695D';
wwv_flow_api.g_varchar2_table(1562) := '2E646973706C61792C0A202020202020202020202276616C7565223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C0A20202020202020202020226973415045584E756C6C56616C7565223A20746869732E6D61';
wwv_flow_api.g_varchar2_table(1563) := '736B2E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75650A20202020202020207D20293B0A2020202020207D0A20200A202020202020746869732E706F7075702E73746174652E73656C656374656448617368203D2074';
wwv_flow_api.g_varchar2_table(1564) := '6869732E5F706F70757047657453656C65637465644861736828293B200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570446961';
wwv_flow_api.g_varchar2_table(1565) := '6C6F674F70656E43616C6C6261636B20686173682022272B746869732E706F7075702E73746174652E73656C6563746564486173682B272227293B0A20200A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865';
wwv_flow_api.g_varchar2_table(1566) := '636B626F782E697328273A636865636B656427292029207B0A2020202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0A2020202020207D0A202020202020656C7365207B0A20200A202020202020202069';
wwv_flow_api.g_varchar2_table(1567) := '66202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D206E756C6C2029207B0A20202020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E';
wwv_flow_api.g_varchar2_table(1568) := '47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0A20202020202020207D0A2020202020202020656C7365207B';
wwv_flow_api.g_varchar2_table(1569) := '0A20202020202020202020746869732E5F706F707570416A6178506572666F726D2820746869732E706F7075702E73746174652E6C61737446657463686564506167652C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964';
wwv_flow_api.g_varchar2_table(1570) := '782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E20293B0A20202020202020207D202020200A2020202020207D0A20200A202020202020746869732E5F706F70757053686F7753656C656374656455';
wwv_flow_api.g_varchar2_table(1571) := '7064617465282066616C736520293B0A20200A202020202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F73686F776E272C20746869732E5F706F7075704765744576656E74446174612829293B0A202020207D2C0A';
wwv_flow_api.g_varchar2_table(1572) := '202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F67436C6F736543616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A2070617261';
wwv_flow_api.g_varchar2_table(1573) := '6D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F706F7075704469616C6F67436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(1574) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704469616C6F67436C6F736543616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20';
wwv_flow_api.g_varchar2_table(1575) := '617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E706F7075702E73746174652E697356697369626C65203D2066616C73653B0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B62';
wwv_flow_api.g_varchar2_table(1576) := '6F782E70726F702827636865636B6564272C2066616C7365293B0A20200A202020202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B0A2020202020200A202020202020746869732E5F72657365';
wwv_flow_api.g_varchar2_table(1577) := '74466F63757328293B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F686561646572576964676574436C65617246696C746572696E670A2020202020202A20646573637269';
wwv_flow_api.g_varchar2_table(1578) := '7074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F686561646572576964676574436C65617246696C746572696E673A20';
wwv_flow_api.g_varchar2_table(1579) := '66756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F686561646572576964676574436C65617246';
wwv_flow_api.g_varchar2_table(1580) := '696C746572696E67272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(1581) := '73746174652E736561726368436F6C756D6E496478203D20756E646566696E65643B0A20200A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0A';
wwv_flow_api.g_varchar2_table(1582) := '20202020202020202F2F696620636865636B626F78202273686F772073656C65637465642220697320636865636B6564207468656E2073686F77207265706F7274206F662073656C65637465642076616C7565730A2020202020202020746869732E5F70';
wwv_flow_api.g_varchar2_table(1583) := '6F707570416A61784765744F6E6C7953656C656374656428293B0A2020202020207D0A202020202020656C7365207B0A20200A20202020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E49647820213D20';
wwv_flow_api.g_varchar2_table(1584) := '756E646566696E65642029207B0A202020202020202020202F2F696620737065636966696320636F6C756D6E20776173207573656420746F20736F727420726573756C7473207468656E20706572666F726D20616A617820696E636C7564696E6720736F';
wwv_flow_api.g_varchar2_table(1585) := '7274696E670A20202020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F7274656443';
wwv_flow_api.g_varchar2_table(1586) := '6F6C756D6E446972656374696F6E2C206E756C6C2C206E756C6C293B0A20202020202020207D0A2020202020202020656C7365207B0A202020202020202020202F2F6F746865727769736520666574636820616E6420646973706C617920666972737420';
wwv_flow_api.g_varchar2_table(1587) := '7061676520776974682064656661756C7420736F7274696E670A20202020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E496478';
wwv_flow_api.g_varchar2_table(1588) := '28292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0A20202020202020207D0A2020202020207D0A20200A202020200A202020207D2C0A202020202F2A0A2020202020202A';
wwv_flow_api.g_varchar2_table(1589) := '0A2020202020202A2066756E6374696F6E206E616D653A205F6865616465725769646765744B657955704D616E61676549636F6E730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A202020202020';
wwv_flow_api.g_varchar2_table(1590) := '2A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6865616465725769646765744B657955704D616E61676549636F6E733A2066756E6374696F6E2820704576656E7420297B0A20202020202061706578';
wwv_flow_api.g_varchar2_table(1591) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6865616465725769646765744B657955704D616E61676549636F6E73272C207B0A202020202020202022617267756D65';
wwv_flow_api.g_varchar2_table(1592) := '6E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172206974656D203D202428704576656E742E63757272656E74546172676574293B0A20200A';
wwv_flow_api.g_varchar2_table(1593) := '20202020202069662028206974656D2E76616C28292E6C656E677468203D3D20302029207B0A20202020202020206974656D2E616464436C6173732827656D70747927293B0A2020202020207D0A202020202020656C7365207B0A202020202020202069';
wwv_flow_api.g_varchar2_table(1594) := '74656D2E72656D6F7665436C6173732827656D70747927293B0A2020202020207D0A202020207D2C20200A202020202F2A0A20202020202050524F4D50540A202020202A2F0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F';
wwv_flow_api.g_varchar2_table(1595) := '6E206E616D653A205F70726F6D70745265706F736974696F6E0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A2020';
wwv_flow_api.g_varchar2_table(1596) := '20202A2F20200A202020205F70726F6D70745265706F736974696F6E3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(1597) := '2C20275F70726F6D70745265706F736974696F6E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020206F6666736574203D20746869';
wwv_flow_api.g_varchar2_table(1598) := '732E6D61736B2E636F6E7461696E65722E6F666673657428292C0A2020202020202020706F736974696F6E203D20746869732E6D61736B2E636F6E7461696E65722E706F736974696F6E28292C0A202020202020202077696E646F775769647468203D20';
wwv_flow_api.g_varchar2_table(1599) := '242877696E646F77292E6F75746572576964746828292C0A2020202020202020746F7020203D206F66667365742E746F70202B20746869732E6D61736B2E636F6E7461696E65722E6F757465724865696768742829202D312C0A20202020202020206C65';
wwv_flow_api.g_varchar2_table(1600) := '6674203D206F66667365742E6C6566742C0A202020202020202070726F6D7074526573756C745769647468203D20303B0A20200A202020202020696620282021746869732E70726F6D70742E697356697369626C65202920207B0A202020202020202061';
wwv_flow_api.g_varchar2_table(1601) := '7065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D70745265706F736974696F6E2070726F6D7074206E6F742076697369626C652C20646F206E74682E';
wwv_flow_api.g_varchar2_table(1602) := '27293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0A202020202020202022746F70223A20746F702C0A20202020202020';
wwv_flow_api.g_varchar2_table(1603) := '20226C656674223A206C6566740A2020202020207D293B0A0A20202020202070726F6D7074526573756C745769647468203D20746869732E70726F6D70742E636F6E7461696E65722E6F75746572576964746828293B0A20200A20202020202069662028';
wwv_flow_api.g_varchar2_table(1604) := '2070726F6D7074526573756C745769647468202B206C656674203E2077696E646F7757696474682026262021746869732E69672E6973456D6265646564496E477269642029207B0A2020202020202020746869732E70726F6D70742E636F6E7461696E65';
wwv_flow_api.g_varchar2_table(1605) := '722E637373287B0A20202020202020202020226D696E5769647468223A2070726F6D7074526573756C7457696474682C0A20202020202020202020226C656674223A2022222C0A20202020202020202020227269676874223A2077696E646F7757696474';
wwv_flow_api.g_varchar2_table(1606) := '68202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828292D6C6566740A20202020202020207D293B0A20200A2020202020202020746869732E70726F6D70742E666978426F726465722E637373287B0A20202020202020';
wwv_flow_api.g_varchar2_table(1607) := '202020227269676874223A20226175746F222C0A20202020202020202020226C656674223A20300A20202020202020207D290A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(1608) := '6D653A205F70726F6D70744765745A496E6465780A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20';
wwv_flow_api.g_varchar2_table(1609) := '200A202020205F70726F6D70744765745A496E6465783A2066756E6374696F6E282070456C656D20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1610) := '782C20275F70726F6D70744765745A496E646578272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202770456C656D273A2070456C656D0A2020202020207D293B0A20200A20202020202076';
wwv_flow_api.g_varchar2_table(1611) := '6172207A496E646578203B0A20200A202020202020696620282070456C656D203D3D20756E646566696E65642029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E';
wwv_flow_api.g_varchar2_table(1612) := '6C6F675072656669782C20275F70726F6D70744765745A496E646578272C202770456C656D20697320756E646566696E656427293B0A202020202020202072657475726E204E614E3B0A2020202020207D0A202020202020656C73652069662028207045';
wwv_flow_api.g_varchar2_table(1613) := '6C656D2E676574283029203D3D20242827626F647927292E6765742830292029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(1614) := '726F6D70744765745A496E646578272C202770456C656D20697320626F64792C206E6F207A2D696E6465782069732073657427293B0A202020202020202072657475726E204E614E3B0A2020202020207D0A20200A2020202020207A496E646578203D20';
wwv_flow_api.g_varchar2_table(1615) := '7061727365496E742870456C656D2E63737328277A496E6465782729293B20200A20200A202020202020696620282069734E614E287A496E646578292029207B0A202020202020202072657475726E20746869732E5F70726F6D70744765745A496E6465';
wwv_flow_api.g_varchar2_table(1616) := '78282070456C656D2E706172656E74282920293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1617) := '69782C20275F70726F6D70744765745A496E646578207A496E646578272C207A496E646578293B0A202020202020202072657475726E207A496E6465783B0A2020202020207D0A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A';
wwv_flow_api.g_varchar2_table(1618) := '2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744372656174654E65770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A20';
wwv_flow_api.g_varchar2_table(1619) := '20202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744372656174654E65773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2074';
wwv_flow_api.g_varchar2_table(1620) := '6869732E6C6F675072656669782C20275F70726F6D70744372656174654E6577272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A2020202020202020';
wwv_flow_api.g_varchar2_table(1621) := '72657475726E4F626A656374203D207B7D2C0A20202020202020206174747269627574657320203D20746869732E656C656D656E742E6765742830292E617474726962757465732C0A20202020202020202F2F616476616E636564437573746F6D644174';
wwv_flow_api.g_varchar2_table(1622) := '7472696275746573203D20746869732E6F7074696F6E732E6974656D2E61747472692C0A2020202020202020636C617373657320202020203D20617474726962757465732E636C61737320213D20756E646566696E6564203F2061747472696275746573';
wwv_flow_api.g_varchar2_table(1623) := '2E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0A2020202020202020666978426F726465722020203D202428273C64697620636C6173733D22666978426F72646572223E3C2F6469763E27292C0A2020202020202020636F6E74';
wwv_flow_api.g_varchar2_table(1624) := '61696E65722020203D202428273C6469763E3C2F6469763E27292C0A20202020202020206865616465722020202020203D202428273C6469763E3C2F6469763E27292C0A20202020202020206D656E7520202020202020203D202428273C64697620636C';
wwv_flow_api.g_varchar2_table(1625) := '6173733D226D656E75223E3C2F6469763E27292C0A20202020202020206D656E75457870616E6420203D20242827272B0A20202020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D42';
wwv_flow_api.g_varchar2_table(1626) := '7574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C207669657722207469746C653D22272B746869732E435F50524F4D50545F4D454E555F455850414E445F5449544C452B2722';
wwv_flow_api.g_varchar2_table(1627) := '3E272B0A202020202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D636F6D707265737320636F6C6C6170736564223E3C2F7370616E3E272B0A202020202020202020202720203C73';
wwv_flow_api.g_varchar2_table(1628) := '70616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D657870616E6420657870616E646564223E3C2F7370616E3E272B0A20202020202020202020273C2F613E27292C0A20202020202020206D656E75536F72742020';
wwv_flow_api.g_varchar2_table(1629) := '20203D20242827272B0A20202020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D42';
wwv_flow_api.g_varchar2_table(1630) := '7574746F6E2D2D70696C6C20736F727422207469746C653D22272B746869732E435F50524F4D50545F4D454E555F534F52545F5449544C452B27223E272B0A202020202020202020202720203C7370616E20617269612D68696464656E3D227472756522';
wwv_flow_api.g_varchar2_table(1631) := '20636C6173733D22612D49636F6E2069636F6E2D7270742D736F72742D61736320617363223E3C2F7370616E3E272B0A202020202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D22612D49636F6E20';
wwv_flow_api.g_varchar2_table(1632) := '69636F6E2D7270742D736F72742D646573632064657363223E3C2F7370616E3E272B0A20202020202020202020273C2F613E27292C0A20202020202020206D656E75436C656172202020203D20242827272B0A20202020202020202020273C6120687265';
wwv_flow_api.g_varchar2_table(1633) := '663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C653D22272B746869732E';
wwv_flow_api.g_varchar2_table(1634) := '435F50524F4D50545F4D454E555F434C4541525F5449544C452B27223E272B0A202020202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F';
wwv_flow_api.g_varchar2_table(1635) := '7370616E3E272B0A20202020202020202020273C2F613E27292C0A20202020202020206D656E755061737465202020203D20242827272B0A20202020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C61';
wwv_flow_api.g_varchar2_table(1636) := '73733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C653D22272B746869732E435F50524F4D50545F4D454E555F50415354455F5449544C452B27';
wwv_flow_api.g_varchar2_table(1637) := '223E272B0A202020202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D7061737465207061737465223E3C2F7370616E3E272B0A20202020202020202020273C2F613E27292C0A2020';
wwv_flow_api.g_varchar2_table(1638) := '2020202020206D656E75506F707570202020203D20242827272B0A20202020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E792074';
wwv_flow_api.g_varchar2_table(1639) := '2D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C653D22272B746869732E435F50524F4D50545F4D454E555F504F5055505F5449544C452B27223E272B0A202020202020202020202720203C7370616E20617269612D';
wwv_flow_api.g_varchar2_table(1640) := '68696464656E3D22747275652220636C6173733D2266612066612D65787465726E616C2D6C696E6B2D73717561726520706F707570223E3C2F7370616E3E272B0A20202020202020202020273C2F613E27292C0A20200A20200A2020202020202020696E';
wwv_flow_api.g_varchar2_table(1641) := '707574536561726368203D202428273C696E70757420747970653D22746578742220746162696E6465783D2230223E27292C0A202020202020202069636F6E20202020202020203D202428273C7370616E20636C6173733D2266612066612D7365617263';
wwv_flow_api.g_varchar2_table(1642) := '68223E3C2F7370616E3E27292C0A2020202020202020626F647920202020202020203D202428273C6469763E3C212D2D64656661756C7420626F64792D2D3E3C2F6469763E27292C0A20202020202020206F66667365742020202020203D20746869732E';
wwv_flow_api.g_varchar2_table(1643) := '6D61736B2E636F6E7461696E65722E6F666673657428293B0A20200A2020202020206966202820746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E64656427292029207B0A20202020202020206D656E75457870616E642E6164';
wwv_flow_api.g_varchar2_table(1644) := '64436C6173732827657870616E64656427290A2020202020207D0A20200A2020202020206966202820746869732E6D61736B2E73746174652E736F72746564203D3D20756E646566696E65642029207B0A20202020202020206D656E75536F72742E6164';
wwv_flow_api.g_varchar2_table(1645) := '64436C617373282761736327293B0A2020202020207D0A202020202020656C7365206966202820746869732E6D61736B2E73746174652E736F72746564203D3D2027617363272029207B0A20202020202020206D656E75536F72742E616464436C617373';
wwv_flow_api.g_varchar2_table(1646) := '282761736327293B200A2020202020207D0A202020202020656C7365207B0A20202020202020206D656E75536F72742E616464436C61737328276465736327293B0A2020202020207D0A20200A2020202020206D656E750A20202020202020202E617070';
wwv_flow_api.g_varchar2_table(1647) := '656E6428206D656E75457870616E6420290A20202020202020202E617070656E6428206D656E75536F727420290A20202020202020202E617070656E6428206D656E75436C65617220293B0A20202020202020200A202020202020696620282074686973';
wwv_flow_api.g_varchar2_table(1648) := '2E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0A20202020202020206D656E752E617070656E6428206D656E75506173746520293B0A2020202020207D0A20200A202020202020696620282074686973';
wwv_flow_api.g_varchar2_table(1649) := '2E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0A20202020202020206D656E752E617070656E6428206D656E75506F70757020293B0A2020202020207D0A0A2020202020202F2F20696620656C';
wwv_flow_api.g_varchar2_table(1650) := '656D656E74206973206E6F7420656D626564656420696E2067726964206164646974696F6E616C7920736574206D696E57696474680A20202020202069662028746869732E656C656D656E742E636C6F7365737428272E612D47562D636F6C756D6E4974';
wwv_flow_api.g_varchar2_table(1651) := '656D27292E6C656E677468203E203029207B0A20202020202020202020636F6E7461696E65720A202020202020202020202E617474722827646174612D70726F6D7074272C20746869732E776964676574556E697175654964290A202020202020202020';
wwv_flow_api.g_varchar2_table(1652) := '202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D2070726F6D707427290A202020202020202020202E637373287B0A2020202020202020202020202F2F22626F72646572436F6C6F72223A20746869732E696E70';
wwv_flow_api.g_varchar2_table(1653) := '75744373732E626F72646572436F6C6F722C0A20202020202020202020202022666F6E7453697A65222020203A20746869732E696E7075744373732E666F6E7453697A652C0A202020202020202020202020226C696E6548656967687422203A20746869';
wwv_flow_api.g_varchar2_table(1654) := '732E696E7075744373732E6C696E654865696768740A202020202020202020207D290A202020202020202020202E617070656E6428666978426F726465722F2A2E6373732822626F72646572436F6C6F72222C20746869732E696E7075744373732E626F';
wwv_flow_api.g_varchar2_table(1655) := '72646572436F6C6F72292A2F290A202020202020202020202E617474722822746162696E646578222C202D31290A20202020202020203B20202020202020200A2020202020207D20656C7365207B0A20202020202020202020636F6E7461696E65720A20';
wwv_flow_api.g_varchar2_table(1656) := '2020202020202020202E617474722827646174612D70726F6D7074272C20746869732E776964676574556E697175654964290A202020202020202020202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D2070726F';
wwv_flow_api.g_varchar2_table(1657) := '6D707427290A202020202020202020202E637373287B0A202020202020202020202020226D696E5769647468222020203A20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828292C0A2020202020202020202020202F2F2262';
wwv_flow_api.g_varchar2_table(1658) := '6F72646572436F6C6F72223A20746869732E696E7075744373732E626F72646572436F6C6F722C0A20202020202020202020202022666F6E7453697A65222020203A20746869732E696E7075744373732E666F6E7453697A652C0A202020202020202020';
wwv_flow_api.g_varchar2_table(1659) := '202020226C696E6548656967687422203A20746869732E696E7075744373732E6C696E654865696768740A202020202020202020207D290A202020202020202020202E617070656E6428666978426F726465722F2A2E6373732822626F72646572436F6C';
wwv_flow_api.g_varchar2_table(1660) := '6F72222C20746869732E696E7075744373732E626F72646572436F6C6F72292A2F290A202020202020202020202E617474722822746162696E646578222C202D31290A20202020202020203B0A2020202020207D0A0A2020202020200A20200A20202020';
wwv_flow_api.g_varchar2_table(1661) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744372656174654E6577272C20276F6666736574272C206F6666736574293B0A20200A2020';
wwv_flow_api.g_varchar2_table(1662) := '20202020626F64790A20202020202020202E616464436C6173732827626F647927290A20202020202020202E637373287B0A20202020202020202020276D6178486569676874273A20746869732E706C7567696E53657474696E67732E70726F6D70742E';
wwv_flow_api.g_varchar2_table(1663) := '6D61784865696768740A20202020202020207D293B0A20200A2020202020202F2F7462640A2020202020202F2F74686973206973206E6F74206E65656465642C2062656361757365206D61786C656E67746820686173206265656E207573656420746F0A';
wwv_flow_api.g_varchar2_table(1664) := '2020202020202F2F746F206C696D69742070617374696E672076616C7565730A2020202020206966202820617474726962757465732E6D61786C656E67746820213D20756E646566696E65642029207B0A2020202020202020696E707574536561726368';
wwv_flow_api.g_varchar2_table(1665) := '2E6174747228276D61786C656E677468272C20617474726962757465732E6D61786C656E6774682E76616C7565293B20200A2020202020207D0A2020202020200A2020202020206966202820617474726962757465732E706C616365686F6C6465722021';
wwv_flow_api.g_varchar2_table(1666) := '3D20756E646566696E65642029207B0A2020202020202020696E7075745365617263682E617474722827706C616365686F6C646572272C20617474726962757465732E706C616365686F6C6465722E76616C7565293B20200A2020202020207D0A20200A';
wwv_flow_api.g_varchar2_table(1667) := '202020202020666F722028766172206920696E20636C617373657329207B0A2020202020202020696E7075745365617263682E616464436C6173732820636C61737365735B695D2B272D696E7075742720293B20200A2020202020207D0A20200A202020';
wwv_flow_api.g_varchar2_table(1668) := '202020696E7075745365617263682E6174747228276175746F636F6D706C657465272C20276F666627293B0A20200A2020202020206865616465720A20202020202020202E616464436C617373282768656164657227290A20202020202020202E617070';
wwv_flow_api.g_varchar2_table(1669) := '656E642820696E70757453656172636820290A20202020202020202E617070656E64282069636F6E20293B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E68696465546F6F6C626172203D3D20';
wwv_flow_api.g_varchar2_table(1670) := '66616C73652029207B0A2020202020202020636F6E7461696E65722E617070656E64286D656E75293B0A2020202020207D0A20200A202020202020636F6E7461696E65720A20202020202020202E617070656E6428686561646572290A20202020202020';
wwv_flow_api.g_varchar2_table(1671) := '202E617070656E6428626F6479290A20202020202020202E6869646528293B0A2020202020200A20200A20202020202072657475726E4F626A656374203D207B0A202020202020202022637573746F6D54656D706C61746546756E6374696F6E223A2074';
wwv_flow_api.g_varchar2_table(1672) := '6869732E5F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E28292C0A202020202020202022636F6E7461696E657222203A20636F6E7461696E65722C0A20202020202020202268656164657222202020203A2068';
wwv_flow_api.g_varchar2_table(1673) := '65616465722C0A202020202020202022626F6479222020202020203A20626F64792C0A202020202020202022696E7075742220202020203A20696E7075745365617263682C0A20202020202020202269636F6E222020202020203A2069636F6E2C0A2020';
wwv_flow_api.g_varchar2_table(1674) := '20202020202022666978426F7264657222203A20666978426F726465722C0A202020202020202022697356697369626C6522203A2066616C73652C0A2020202020202020226D656E75222020202020203A207B0A2020202020202020202022636F6E7461';
wwv_flow_api.g_varchar2_table(1675) := '696E6572223A206D656E752C0A2020202020202020202022657870616E64222020203A206D656E75457870616E642C0A2020202020202020202022736F72742220202020203A206D656E75536F72742C0A2020202020202020202022636C656172222020';
wwv_flow_api.g_varchar2_table(1676) := '20203A206D656E75436C6561722C0A2020202020202020202022706173746522202020203A206D656E7550617374652C0A2020202020202020202022706F70757022202020203A206D656E75506F7075700A20202020202020207D0A2020202020207D3B';
wwv_flow_api.g_varchar2_table(1677) := '0A20200A20202020202072657475726E4F626A6563742E626F64790A20202020202020202E6F6E2827636C69636B272C20276C69272C20242E70726F78792820746869732E5F70726F6D70744C69436C69636B48616E6C6465722C20746869732029290A';
wwv_flow_api.g_varchar2_table(1678) := '20202020202020202E6F6E28277363726F6C6C272C20746869732E5F6465626F756E636528242E70726F787928746869732E5F70726F6D70745363726F6C6C43616C6C6261636B2C2074686973292C203130302920290A20202020202020202E6F6E2827';
wwv_flow_api.g_varchar2_table(1679) := '6D6F757365656E746572272C20276C69272C242E70726F787928746869732E5F70726F6D7074556E686967686C696768744F746865722C207468697329290A20200A20202020202072657475726E4F626A6563742E696E7075740A20202020202020202E';
wwv_flow_api.g_varchar2_table(1680) := '6F6E2827626C7572272C20242E70726F787928746869732E5F70726F6D7074496E707574426C75722C7468697329290A20202020202020202E6F6E2827666F637573272C20242E70726F787928746869732E5F70726F6D7074496E707574466F6375732C';
wwv_flow_api.g_varchar2_table(1681) := '7468697329290A20202020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E63652820242E70726F78792820746869732E5F6D61736B4B657955702C2074686973292C20746869732E706C7567696E53657474696E67732E70726F';
wwv_flow_api.g_varchar2_table(1682) := '6D70742E6465626F756E636554696D65202920290A20202020202020202E6F6E28276B6579646F776E272C20746869732E5F6465626F756E636528200A202020202020202020202020242E70726F787928200A2020202020202020202020202020746869';
wwv_flow_api.g_varchar2_table(1683) := '732E5F70726F6D7074496E7075744B6579446F776E48616E646C65722C20746869730A202020202020202020202020292C200A202020202020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E6E617669676174696F6E';
wwv_flow_api.g_varchar2_table(1684) := '4465626F756E636554696D650A2020202020202020202029200A2020202020202020293B0A20200A20202020202072657475726E4F626A6563742E6D656E752E657870616E642E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7072';
wwv_flow_api.g_varchar2_table(1685) := '6F6D70744D656E754368616E6765566965772C2074686973202920293B0A20202020202072657475726E4F626A6563742E6D656E752E736F727420202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E75536F';
wwv_flow_api.g_varchar2_table(1686) := '7274546167732C2074686973202920293B0A20202020202072657475726E4F626A6563742E6D656E752E636C656172202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E75436C65617256616C7565732C2074';
wwv_flow_api.g_varchar2_table(1687) := '686973202920293B0A20202020202072657475726E4F626A6563742E6D656E752E7061737465202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E75506173746556616C7565734F70656E506F7075702C2074';
wwv_flow_api.g_varchar2_table(1688) := '686973202920293B0A20202020202072657475726E4F626A6563742E6D656E752E706F707570202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F7075704F70656E2C2074686973202920293B0A20200A202020202020746869';
wwv_flow_api.g_varchar2_table(1689) := '732E70726F6D7074203D2072657475726E4F626A6563743B0A20200A20202020202072657475726E2072657475726E4F626A6563743B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D';
wwv_flow_api.g_varchar2_table(1690) := '653A205F70726F6D7074536574466F6375730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A';
wwv_flow_api.g_varchar2_table(1691) := '202020205F70726F6D7074536574466F6375733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70';
wwv_flow_api.g_varchar2_table(1692) := '74536574466F637573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E70726F6D70742E696E7075742E666F63757328293B0A202020207D2C0A2020';
wwv_flow_api.g_varchar2_table(1693) := '20202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707453686F770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(1694) := '2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707453686F773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C';
wwv_flow_api.g_varchar2_table(1695) := '20746869732E6C6F675072656669782C20275F70726F6D707453686F77272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022636F6E7461696E6572223A20746869732E70726F6D70742E63';
wwv_flow_api.g_varchar2_table(1696) := '6F6E7461696E65720A2020202020207D293B0A20200A202020202020766172200A202020202020202070726F6D70745A496E6465783B0A20200A20200A2020202020202428646F63756D656E74292E6F6E28276D6F757365646F776E2E70726F6D707463';
wwv_flow_api.g_varchar2_table(1697) := '6865636B2D272B746869732E656C656D656E742E6765742830292E69642C20242E70726F787928746869732E5F70726F6D7074436865636B436C69636B4F7574736964652C207468697329293B0A20200A202020202020746869732E70726F6D70742E63';
wwv_flow_api.g_varchar2_table(1698) := '6F6E7461696E65722E73686F7728293B0A20200A202020202020746869732E6D61736B2E636F6E7461696E65722E616464436C6173732827666F637573656427293B0A20200A202020202020746869732E70726F6D70742E697356697369626C65203D20';
wwv_flow_api.g_varchar2_table(1699) := '747275653B0A20200A20200A2020202020202F2F7365742070726F6D7074207A496E64657820696E2063617365206F66206265696E6720757365642061732070617274206F6620696E6C696E65206469616C6F670A20202020202070726F6D70745A496E';
wwv_flow_api.g_varchar2_table(1700) := '646578203D20746869732E5F70726F6D70744765745A496E6465782820746869732E6D61736B2E6974656D436F6E7461696E657220293B0A20200A20202020202069662028202169734E614E282070726F6D70745A496E64657820292029207B0A202020';
wwv_flow_api.g_varchar2_table(1701) := '2020202020746869732E70726F6D70742E636F6E7461696E65722E63737328277A496E646578272C2070726F6D70745A496E6465782B31293B0A2020202020207D0A2020202020200A202020202020746869732E5F6D61736B506F707570427574746F6E';
wwv_flow_api.g_varchar2_table(1702) := '4869646528293B0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1703) := '782C20275F70726F6D707453686F77207A2D696E646578272C2070726F6D70745A496E646578293B0A20200A2020202020206966202820746869732E6D61736B2E73746174652E6572726F7220262620746869732E706C7567696E53746F70706564203D';
wwv_flow_api.g_varchar2_table(1704) := '3D2066616C73652029207B0A2020202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0A2020202020202020746869732E6D61736B2E73746174652E6572726F72203D2066616C73653B0A';
wwv_flow_api.g_varchar2_table(1705) := '2020202020207D0A20200A202020202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F73686F776E272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A20200A202020207D2C0A202020';
wwv_flow_api.g_varchar2_table(1706) := '202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074486964650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A20';
wwv_flow_api.g_varchar2_table(1707) := '20202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074486964653A2066756E6374696F6E282070466F6375734F6E456C656D656E7420297B0A202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(1708) := '6869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D707448696465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270466F6375734F6E45';
wwv_flow_api.g_varchar2_table(1709) := '6C656D656E74223A2070466F6375734F6E456C656D656E740A2020202020207D293B0A20200A202020202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C6173732827666F637573656427293B0A202020202020746869732E70';
wwv_flow_api.g_varchar2_table(1710) := '726F6D70742E696E7075742E76616C286E756C6C293B0A202020202020746869732E70726F6D70742E636F6E7461696E65722E6869646528293B0A20200A2020202020202F2F746869732E70726F6D70742E636F6E7461696E65722E72656D6F76652829';
wwv_flow_api.g_varchar2_table(1711) := '3B0A2020202020202F2F746869732E70726F6D70742E636F6E7461696E6572203D20756E646566696E65643B0A20200A202020202020746869732E70726F6D70742E697356697369626C65203D2066616C73653B0A20200A202020202020746869732E5F';
wwv_flow_api.g_varchar2_table(1712) := '6D61736B506F707570427574746F6E53686F7728293B0A20200A202020202020696620282070466F6375734F6E456C656D656E7420213D20756E646566696E65642026262070466F6375734F6E456C656D656E742E697328273A666F63757361626C6527';
wwv_flow_api.g_varchar2_table(1713) := '292029207B0A202020202020202070466F6375734F6E456C656D656E742E666F63757328293B20200A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F6765744E657874466F63757341626C6528292E666F637573';
wwv_flow_api.g_varchar2_table(1714) := '28293B0A2020202020207D0A2020202020200A202020202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F68696464656E272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A20200A20';
wwv_flow_api.g_varchar2_table(1715) := '20202020202428646F63756D656E74292E6F666628276D6F757365646F776E2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765742830292E6964293B202020200A202020207D2C0A202020202F2A0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(1716) := '2020202A2066756E6374696F6E206E616D653A205F616A6178476574506167654974656D730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A202020';
wwv_flow_api.g_varchar2_table(1717) := '2D0A2020202020202A0A202020202A2F202020200A202020205F616A6178476574506167654974656D733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20';
wwv_flow_api.g_varchar2_table(1718) := '746869732E6C6F675072656669782C20275F616A6178476574506167654974656D73272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172206974656D73203D';
wwv_flow_api.g_varchar2_table(1719) := '205B746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D732C20746869732E6F7074696F6E732E6974656D2E616A61785F6974656D735F746F5F7375626D69745D0A20202020202020202E66696C7465';
wwv_flow_api.g_varchar2_table(1720) := '722866756E6374696F6E202873656C6563746F7229207B0A2020202020202020202072657475726E202873656C6563746F72290A20202020202020207D290A20202020202020202E6A6F696E28272C27293B0A20200A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(1721) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F616A6178476574506167654974656D73272C207B0A20202020202020202272657475726E223A206974656D730A2020202020207D';
wwv_flow_api.g_varchar2_table(1722) := '293B0A20200A20202020202072657475726E206974656D733B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A6178506572666F726D0A2020202020202A206465';
wwv_flow_api.g_varchar2_table(1723) := '736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D7074416A6178506572666F726D3A2066756E';
wwv_flow_api.g_varchar2_table(1724) := '6374696F6E2820705061676520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074416A6178506572666F726D272C207B0A20';
wwv_flow_api.g_varchar2_table(1725) := '2020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227050616765223A2070506167650A2020202020207D293B0A20200A2020202020207661720A20202020202020207265717565737450616765203D2070';
wwv_flow_api.g_varchar2_table(1726) := '50616765203D3D20756E646566696E6564203F2031203A2070506167652C0A2020202020202020616A617844617461203D207B0A2020202020202020202022783031223A20274155544F434F4D504C455445272C20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1727) := '202020202020202020202F2F747279620A2020202020202020202022783032223A20746869732E706C7567696E53657474696E67732E70726F6D70742E726F7773506572506167652C2020202F2F726F77732070657220706167650A2020202020202020';
wwv_flow_api.g_varchar2_table(1728) := '202022783033223A20746869732E5F6D61736B47657456616C756528292C20202020202020202020202020202020202020202F2F73656172636820737472696E670A2020202020202020202022783034223A2072657175657374506167652C2020202020';
wwv_flow_api.g_varchar2_table(1729) := '2020202020202F2F706167650A2020202020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D7328290A20202020202020207D2C0A2020202020202020616A61784F7074696F6E73203D207B0A20202020';
wwv_flow_api.g_varchar2_table(1730) := '202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F70726F6D7074416A61784265666F726553656E642C20746869732C207265717565737450616765292C0A2020202020202020202022737563636573732220202020';
wwv_flow_api.g_varchar2_table(1731) := '3A20242E70726F787928746869732E5F70726F6D7074416A6178537563636573732C2074686973292C0A20202020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F70726F6D7074416A61784572726F722C207468';
wwv_flow_api.g_varchar2_table(1732) := '6973292C0A2020202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F70726F6D7074416A6178436F6D706C6574652C2074686973292C0A20202020202020202020227461726765742220202020203A2074686973';
wwv_flow_api.g_varchar2_table(1733) := '2E656C656D656E742E6765742830290A20202020202020207D3B0A20200A2020202020206966202820746869732E6D61736B2E73746174652E616A617852756E6E696E672029207B0A2020202020202020746869732E6D61736B2E73746174652E786872';
wwv_flow_api.g_varchar2_table(1734) := '2E61626F727428293B0A2020202020202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0A2020202020202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E';
wwv_flow_api.g_varchar2_table(1735) := '616464436C617373282766612066612D73656172636827293B0A2020202020207D0A20200A202020202020746869732E6D61736B2E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E70';
wwv_flow_api.g_varchar2_table(1736) := '6C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F';
wwv_flow_api.g_varchar2_table(1737) := '70726F6D7074416A61784265666F726553656E640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20';
wwv_flow_api.g_varchar2_table(1738) := '2020200A202020205F70726F6D7074416A61784265666F726553656E643A2066756E6374696F6E282070526571756573746564506167652C20704A715848522C207053657474696E67732029207B0A202020202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(1739) := '61676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074416A61784265666F726553656E64272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020';
wwv_flow_api.g_varchar2_table(1740) := '202020202020227052657175657374656450616765223A2070526571756573746564506167652C0A202020202020202022704A71584852223A20704A715848522C0A2020202020202020227053657474696E6773223A207053657474696E67730A202020';
wwv_flow_api.g_varchar2_table(1741) := '2020207D293B0A20200A202020202020766172200A20202020202020206D65737361676520203D20746869732E435F50524F4D50545F544558545F534541524348494E472C0A202020202020202074656D706C617465203D2027272B0A20202020202020';
wwv_flow_api.g_varchar2_table(1742) := '202020273C64697620636C6173733D22736561726368696E67223E272B0A202020202020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0A20202020202020202020273C2F6469763E';
wwv_flow_api.g_varchar2_table(1743) := '273B0A20200A202020202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D20747275653B0A202020202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0A20';
wwv_flow_api.g_varchar2_table(1744) := '200A20200A20202020202069662028207052657175657374656450616765203D3D20312029207B0A2020202020202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B20200A2020202020207D0A20200A20202020';
wwv_flow_api.g_varchar2_table(1745) := '2020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D616E696D2D7370696E2066612D7265667265736827293B0A202020207D2C20200A202020202F2A0A2020202020';
wwv_flow_api.g_varchar2_table(1746) := '202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416674657252656E646572696E67446174610A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A20';
wwv_flow_api.g_varchar2_table(1747) := '20202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D7074416674657252656E646572696E67446174613A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(1748) := '676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074416674657252656E646572696E6744617461272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A';
wwv_flow_api.g_varchar2_table(1749) := '2020202020207D293B0A20200A2020202020207661720A2020202020202020726573756C747352656E6465726564203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E6C656E6774682C0A20202020202020206C6F61644D6F72';
wwv_flow_api.g_varchar2_table(1750) := '65203D202428273C64697620636C6173733D226C6F61644D6F7265223E3C6120687265663D226A6176617363726970743A20766F6964283029223E272B746869732E435F50524F4D50545F544558545F4C4F41445F4D4F52452B273C2F613E3C2F646976';
wwv_flow_api.g_varchar2_table(1751) := '3E27292C0A202020202020202069734C6F61724D6F7265203D20746869732E70726F6D70742E626F64792E66696E6428272E6C6F61644D6F726527292E6C656E677468203E20303B0A20200A2020202020206C6F61644D6F72652E66696E642827612729';
wwv_flow_api.g_varchar2_table(1752) := '2E6F6E2827636C69636B272C20242E70726F78792866756E6374696F6E28297B0A2020202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520';
wwv_flow_api.g_varchar2_table(1753) := '293B0A2020202020207D2C207468697329293B0A20200A2020202020202F2F6C6F61644D6F72652E6373732827626F72646572436F6C6F72272C20746869732E696E7075744373732E626F72646572436F6C6F72290A2020202020200A20200A20202020';
wwv_flow_api.g_varchar2_table(1754) := '202069662028200A2020202020202020746869732E70726F6D70742E626F64792E6F757465724865696768742829203C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D6178486569676874200A20202020202020202626207265';
wwv_flow_api.g_varchar2_table(1755) := '73756C747352656E6465726564203C20746869732E6D61736B2E73746174652E746F74616C436F756E740A20202020202029207B0A2020202020202020696620282069734C6F61724D6F7265203D3D2066616C73652029207B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1756) := '746869732E70726F6D70742E626F64792E617070656E64286C6F61644D6F7265293B20200A20202020202020207D0A20202020202020200A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E70726F6D70742E626F64';
wwv_flow_api.g_varchar2_table(1757) := '792E66696E6428272E6C6F61644D6F726527292E72656D6F766528293B0A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A6178537563';
wwv_flow_api.g_varchar2_table(1758) := '636573730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D707441';
wwv_flow_api.g_varchar2_table(1759) := '6A6178537563636573733A2066756E6374696F6E2870446174612C2070546578745374617475732C20704A71584852297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F';
wwv_flow_api.g_varchar2_table(1760) := '675072656669782C20275F70726F6D7074416A617853756363657373272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174612C0A2020202020202020227054';
wwv_flow_api.g_varchar2_table(1761) := '657874537461747573223A2070546578745374617475732C0A202020202020202022704A71584852223A20704A715848522020202020200A2020202020207D293B0A20200A202020202020746869732E6D61736B2E73746174652E746F74616C436F756E';
wwv_flow_api.g_varchar2_table(1762) := '742020202020203D2070446174612E64617461566F6C756D655B305D2E434E543B0A202020202020746869732E6D61736B2E73746174652E6C6173744665746368656450616765203D2070446174612E726571756573746564506167653B0A2020202020';
wwv_flow_api.g_varchar2_table(1763) := '20746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D20747275653B0A20200A2020202020200A202020202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E6164';
wwv_flow_api.g_varchar2_table(1764) := '64436C617373282766612066612D73656172636827293B0A20200A2020202020202F2F616464206E756C6C2076616C756520696620646566696E656420616E64206669727374207061676520746F20646973706C61790A20202020202069662028200A20';
wwv_flow_api.g_varchar2_table(1765) := '20202020202020746869732E6D61736B2E73746174652E6C6173744665746368656450616765203D3D2031200A2020202020202020262620746869732E5F6D61736B47657456616C756528292E6C656E677468203D3D2030200A20202020202020202626';
wwv_flow_api.g_varchar2_table(1766) := '20746869732E6F7074696F6E732E6974656D2E6C6F765F646973706C61795F6E756C6C200A20202020202029207B0A202020202020202070446174612E646174612E756E7368696674287B0A202020202020202020202252223A20746869732E5F676574';
wwv_flow_api.g_varchar2_table(1767) := '4974656D4C4F564E756C6C56616C756528292C0A202020202020202020202244223A20746869732E5F6765744974656D4C4F564E756C6C5465787428292C0A20202020202020202020226973415045584E756C6C56616C7565223A20747275650A202020';
wwv_flow_api.g_varchar2_table(1768) := '20202020207D293B0A2020202020207D0A20200A2020202020207044617461203D20746869732E5F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473282070446174612C20746869732E6D61736B2E7374617465';
wwv_flow_api.g_varchar2_table(1769) := '2E73656C656374656420293B0A20200A2020202020206966202820746869732E6D61736B2E73746174652E6C6173744665746368656450616765203D3D20312029207B0A2020202020202020746869732E5F70726F6D707452656E646572446174612820';
wwv_flow_api.g_varchar2_table(1770) := '704461746120293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F70726F6D7074417070656E64446174612820704461746120293B2020202020200A2020202020207D0A20200A202020202020746869732E5F';
wwv_flow_api.g_varchar2_table(1771) := '70726F6D7074416674657252656E646572696E674461746128293B0A20200A202020202020696620282070446174612E717565727920213D20756E646566696E65642029207B0A2020202020202020746869732E5F77726974655175657279546F436F6E';
wwv_flow_api.g_varchar2_table(1772) := '736F6C65282070446174612E717565727920293B0A2020202020207D2020200A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A61784572726F720A202020';
wwv_flow_api.g_varchar2_table(1773) := '2020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D7074416A61784572726F72';
wwv_flow_api.g_varchar2_table(1774) := '3A2066756E6374696F6E28704A715848522C2070546578745374617475732C20704572726F725468726F776E297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C20746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(1775) := '656669782C20275F70726F6D7074416A61784572726F72272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704A71584852223A20704A715848522C2020202020200A2020202020202020';
wwv_flow_api.g_varchar2_table(1776) := '227054657874537461747573223A2070546578745374617475732C0A202020202020202022704572726F725468726F776E223A20704572726F725468726F776E0A2020202020207D293B0A20200A2020202020206966202820704A715848522E73746174';
wwv_flow_api.g_varchar2_table(1777) := '757354657874203D3D202761626F7274272029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074416A6178457272';
wwv_flow_api.g_varchar2_table(1778) := '6F72272C2027414A41582063616C6C2061626F727465642127293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528';
wwv_flow_api.g_varchar2_table(1779) := '746869732E435F4C4F475F4552524F522C20746869732E6C6F675072656669782C20275F70726F6D7074416A61784572726F72272C207B0A2020202020202020202027704A71584852272020202020203A20704A715848522C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1780) := '27705465787453746174757327203A2070546578745374617475732C0A2020202020202020202027704572726F725468726F776E273A20704572726F725468726F776E0A20202020202020207D293B0A2020202020207D0A20200A202020202020766172';
wwv_flow_api.g_varchar2_table(1781) := '2061727261793B0A20200A202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B0A20200A202020202020746869732E5F6D61736B416A61785374617465427574746F6E53657445';
wwv_flow_api.g_varchar2_table(1782) := '72726F72287B0A202020202020202022616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E666F2C0A2020202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572';
wwv_flow_api.g_varchar2_table(1783) := '726F722C0A20202020202020202274656368496E666F22203A20704A715848522E726573706F6E73654A534F4E2E74656368496E666F0A2020202020207D293B0A20200A202020202020746869732E5F6D61736B416A61785374617465427574746F6E45';
wwv_flow_api.g_varchar2_table(1784) := '72726F7228293B0A20200A2020202020200A202020202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F6572726F72272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A202020202020';
wwv_flow_api.g_varchar2_table(1785) := '746869732E5F7468726F774572726F72546578742820704572726F725468726F776E20293B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744576656E';
wwv_flow_api.g_varchar2_table(1786) := '74446174610A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D7074';
wwv_flow_api.g_varchar2_table(1787) := '4765744576656E74446174613A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074476574457665';
wwv_flow_api.g_varchar2_table(1788) := '6E7444617461272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722072657475726E4F626A656374203D207B0A20202020202020202270726F6D7074223A20';
wwv_flow_api.g_varchar2_table(1789) := '7B0A2020202020202020202022636F6E7461696E6572223A20746869732E70726F6D70742E636F6E7461696E65722C0A2020202020202020202022686561646572222020203A20746869732E70726F6D70742E6865616465722C0A202020202020202020';
wwv_flow_api.g_varchar2_table(1790) := '2022626F64792220202020203A20746869732E70726F6D70742E626F64792C0A2020202020202020202022696E70757422202020203A20746869732E70726F6D70742E696E7075740A20202020202020207D2C0A2020202020202020226D61736B223A20';
wwv_flow_api.g_varchar2_table(1791) := '7B0A202020202020202020202273656C65637465642220202020203A20746869732E6D61736B2E73746174652E73656C65637465642C0A202020202020202020202264617461417661696C61626C65223A20746869732E6D61736B2E73746174652E6172';
wwv_flow_api.g_varchar2_table(1792) := '65526573756C7473417661696C61626C650A20202020202020207D0A20200A2020202020207D3B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1793) := '782C20275F70726F6D70744765744576656E7444617461272C202772657475726E73272C2072657475726E4F626A656374293B0A20200A20202020202072657475726E2072657475726E4F626A6563743B0A202020207D2C0A202020202F2A0A20202020';
wwv_flow_api.g_varchar2_table(1794) := '20202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A6178436F6D706C6574650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A20';
wwv_flow_api.g_varchar2_table(1795) := '20202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D7074416A6178436F6D706C6574653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C';
wwv_flow_api.g_varchar2_table(1796) := '4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074416A6178436F6D706C657465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732020202020200A2020202020207D293B0A20';
wwv_flow_api.g_varchar2_table(1797) := '200A202020202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0A202020202020746869732E5F70726F6D7074436865636B5769647468446966666572656E636528293B0A202020207D2C0A202020202F2A';
wwv_flow_api.g_varchar2_table(1798) := '0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074436865636B5769647468446966666572656E63650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A';
wwv_flow_api.g_varchar2_table(1799) := '2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F70726F6D7074436865636B5769647468446966666572656E63653A2066756E6374696F6E28297B0A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(1800) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E6365272C207B0A202020202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(1801) := '3A20617267756D656E74730A2020202020207D293B0A20200A20202020202076617220646966666572656E63653B0A20200A202020202020696620282021746869732E70726F6D70742E697356697369626C652029207B0A202020202020202061706578';
wwv_flow_api.g_varchar2_table(1802) := '2E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E63652070726F6D7074206E6F742076697369626C652C20';
wwv_flow_api.g_varchar2_table(1803) := '646F206E746827293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020646966666572656E6365203D20746869732E70726F6D70742E636F6E7461696E65722E6F7574657257696474682829202D';
wwv_flow_api.g_varchar2_table(1804) := '20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828293B202020200A20200A2020202020206966202820646966666572656E6365203E20302029207B0A2020202020202020746869732E70726F6D70742E666978426F726465';
wwv_flow_api.g_varchar2_table(1805) := '722E63737328277769647468272C20646966666572656E63652B31293B0A2020202020202020746869732E70726F6D70742E666978426F726465722E73686F7728293B0A2020202020207D202020200A202020202020656C7365207B0A20202020202020';
wwv_flow_api.g_varchar2_table(1806) := '20746869732E70726F6D70742E666978426F726465722E6869646528293B0A2020202020207D0A20200A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E';
wwv_flow_api.g_varchar2_table(1807) := '75506173746556616C7565734F70656E506F7075700A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F';
wwv_flow_api.g_varchar2_table(1808) := '202020200A202020205F70726F6D70744D656E75506173746556616C7565734F70656E506F7075703A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869';
wwv_flow_api.g_varchar2_table(1809) := '732E6C6F675072656669782C20275F70726F6D70744D656E75506173746556616C7565734F70656E506F707570272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020';
wwv_flow_api.g_varchar2_table(1810) := '746869732E5F70726F6D70744869646528293B0A20200A2020202020202F2F766172206E65775061737465506F707570203D20746869732E5F7061737465506F7075704372656174654E657728293B0A2020202020206966202820746869732E70617374';
wwv_flow_api.g_varchar2_table(1811) := '652E706F7075702E636F6E7461696E6572203D3D20756E646566696E65642029207B0A2020202020202020746869732E70617374652E706F707570203D20746869732E5F7061737465506F7075704372656174654E657728293B20200A2020202020207D';
wwv_flow_api.g_varchar2_table(1812) := '202020200A20200A202020202020746869732E70617374652E706F7075702E636F6E7461696E65722E6469616C6F6728276F70656E27293B0A202020202020746869732E5F7061737465506F7075705061737465466F726D28293B0A202020207D2C0A20';
wwv_flow_api.g_varchar2_table(1813) := '2020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F7075705061737465466F726D0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020';
wwv_flow_api.g_varchar2_table(1814) := '202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F7061737465506F7075705061737465466F726D3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(1815) := '61676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F7061737465506F7075705061737465466F726D272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020';
wwv_flow_api.g_varchar2_table(1816) := '207D293B0A20200A202020202020746869732E70617374652E706F7075702E626F64790A20202020202020202E656D70747928290A20202020202020202E72656D6F7665417474722827636C61737327290A20202020202020202E616464436C61737328';
wwv_flow_api.g_varchar2_table(1817) := '746869732E70617374652E636C61737365732E626F6479290A20202020202020202E616464436C6173732827666F726D27290A20200A202020202020746869732E70617374652E706F7075702E74657874617265612E76616C286E756C6C292E61707065';
wwv_flow_api.g_varchar2_table(1818) := '6E64546F2820746869732E70617374652E706F7075702E626F647920292E666F63757328293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E70617273652E73686F7728293B0A202020202020746869732E7061737465';
wwv_flow_api.g_varchar2_table(1819) := '2E706F7075702E627574746F6E732E6261636B2E6869646528293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E636C6561722E6869646528293B0A202020202020746869732E70617374652E706F7075702E62757474';
wwv_flow_api.g_varchar2_table(1820) := '6F6E732E6170706C792E6869646528293B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F7075704F70656E43616C6C6261636B0A2020202020202A206465';
wwv_flow_api.g_varchar2_table(1821) := '736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F7061737465506F7075704F70656E43616C6C6261636B';
wwv_flow_api.g_varchar2_table(1822) := '3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F7061737465506F7075704F70656E43616C6C6261636B272C';
wwv_flow_api.g_varchar2_table(1823) := '207B0A202020202020202022617267756D656E7473223A20617267756D656E747320202020200A2020202020207D293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465';
wwv_flow_api.g_varchar2_table(1824) := '506F707570436C6F736543616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020';
wwv_flow_api.g_varchar2_table(1825) := '200A202020205F7061737465506F707570436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1826) := '69782C20275F7061737465506F707570436C6F736543616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E747320202020200A2020202020207D293B0A202020207D2C0A202020202F2A0A202020202020';
wwv_flow_api.g_varchar2_table(1827) := '2A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F7075704265666F7265436C6F736543616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A20202020';
wwv_flow_api.g_varchar2_table(1828) := '20202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F7061737465506F7075704265666F7265436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0A202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(1829) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F7061737465506F7075704265666F7265436C6F736543616C6C6261636B272C207B0A202020202020202022617267756D656E74';
wwv_flow_api.g_varchar2_table(1830) := '73223A20617267756D656E747320202020200A2020202020207D293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F707570416374696F6E50617273650A202020';
wwv_flow_api.g_varchar2_table(1831) := '2020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F202020200A202020205F7061737465506F707570416374696F';
wwv_flow_api.g_varchar2_table(1832) := '6E50617273653A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F707570416374696F6E5061';
wwv_flow_api.g_varchar2_table(1833) := '727365272C207B0A202020202020202022617267756D656E7473223A20617267756D656E747320202020200A2020202020207D293B0A20200A202020202020766172200A202020202020202076616C75652020202020202020203D20746869732E706173';
wwv_flow_api.g_varchar2_table(1834) := '74652E706F7075702E74657874617265612E76616C28292E7472696D28292C0A202020202020202076616C75657341727261792020203D2076616C75652E73706C697428225C6E22292C0A20202020202020206C696D69742020202020202020203D2074';
wwv_flow_api.g_varchar2_table(1835) := '6869732E706C7567696E53657474696E67732E6D61786C656E677468203F20746869732E706C7567696E53657474696E67732E6D61786C656E677468203A20302C0A202020202020202076616C75654C656E6774682020203D20302C0A20202020202020';
wwv_flow_api.g_varchar2_table(1836) := '20746F74616C4C656E6774682020203D20302C0A202020202020202070617273656441727261792020203D205B5D2C0A20202020202020206F75744F664C696D69744172726179203D205B5D0A2020202020203B0A20200A2020202020202F2F73746F72';
wwv_flow_api.g_varchar2_table(1837) := '6520696E666F726D6174696F6E2061626F7574207061737465642076616C7565730A202020202020746869732E70617374652E73746174652E706173746564203D20242E657874656E64285B5D2C2076616C7565734172726179293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(1838) := '2020666F722028207661722069203D20303B2069203C2076616C75657341727261792E6C656E6774683B20692B2B2029207B0A20200A202020202020202069662028206C696D6974203E20302029207B0A2020202020202020202076616C75654C656E67';
wwv_flow_api.g_varchar2_table(1839) := '7468203D2076616C75657341727261795B695D2E6C656E6774683B0A20200A20202020202020202020696620282076616C75654C656E677468203E206C696D69742029207B0A2020202020202020202020202F2F76616C7565206C656E67746820697320';
wwv_flow_api.g_varchar2_table(1840) := '67726561746572207468656E20746F74616C206C696D69740A2020202020202020202020206F75744F664C696D69744172726179203D2076616C75657341727261792E736C69636528692C2076616C75657341727261792E6C656E677468293B0A202020';
wwv_flow_api.g_varchar2_table(1841) := '202020202020202020627265616B3B0A202020202020202020207D0A20202020202020202020656C7365207B0A20200A20202020202020202020202069662028200A2020202020202020202020202020202020282069203D3D20302026262076616C7565';
wwv_flow_api.g_varchar2_table(1842) := '4C656E677468203C3D206C696D697420290A20202020202020202020202020207C7C20282069203E203020262620746F74616C4C656E677468202B2076616C75654C656E6774682B31203C3D206C696D697420290A20202020202020202020202029207B';
wwv_flow_api.g_varchar2_table(1843) := '0A20202020202020202020202020202F2F73746F72652076616C75650A202020202020202020202020202070617273656441727261792E70757368282076616C75657341727261795B695D20293B0A2020202020202020202020202020746F74616C4C65';
wwv_flow_api.g_varchar2_table(1844) := '6E677468203D2070617273656441727261792E746F537472696E6728292E6C656E6774683B202020202020202020200A2020202020202020202020207D0A202020202020202020202020656C7365207B0A20202020202020202020202020202F2F69203E';
wwv_flow_api.g_varchar2_table(1845) := '203020616E64206E65787420696E646578657320776F6E2774206D61746368206C696D69740A20202020202020202020202020206F75744F664C696D69744172726179203D2076616C75657341727261792E736C69636528692C2076616C756573417272';
wwv_flow_api.g_varchar2_table(1846) := '61792E6C656E677468293B0A2020202020202020202020202020627265616B3B0A2020202020202020202020207D0A202020202020202020207D0A20202020202020207D0A2020202020202020656C7365207B0A202020202020202020202F2F74686572';
wwv_flow_api.g_varchar2_table(1847) := '65206973206E6F206C696D69746174696F6E0A2020202020202020202070617273656441727261792E70757368282076616C75657341727261795B695D20293B0A20202020202020207D0A2020202020207D0A20200A202020202020746869732E706173';
wwv_flow_api.g_varchar2_table(1848) := '74652E73746174652E706172736564203D20242E657874656E64285B5D2C207061727365644172726179293B0A202020202020746869732E70617374652E73746174652E6F75744F664C696D6974203D20242E657874656E64285B5D2C206F75744F664C';
wwv_flow_api.g_varchar2_table(1849) := '696D69744172726179293B0A20200A202020202020746869732E5F7061737465506F70757053686F775061727365526573756C7428293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A';
wwv_flow_api.g_varchar2_table(1850) := '205F7061737465506F70757053686F7756616C756573546F42654170706C6965640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020';
wwv_flow_api.g_varchar2_table(1851) := '202020202A0A202020202A2F20200A202020205F7061737465506F70757053686F7756616C756573546F42654170706C6965643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1852) := '5F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F70757053686F7756616C756573546F42654170706C696564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E747320202020200A20';
wwv_flow_api.g_varchar2_table(1853) := '20202020207D293B0A20200A202020202020766172200A20202020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292E616464436C6173732827742D5265706F727420742D5265706F72742D2D737472657463';
wwv_flow_api.g_varchar2_table(1854) := '6820742D5265706F72742D2D737461746963526F77436F6C6F727320742D5265706F72742D2D726F77486967686C696768744F666620742D5265706F72742D2D696E6C696E6527292C0A20202020202020207461626C65203D202428273C7461626C653E';
wwv_flow_api.g_varchar2_table(1855) := '3C2F7461626C653E27292E616464436C6173732827742D5265706F72742D7265706F727427292C0A20202020202020207472203D202428273C74723E3C2F74723E27292C0A20202020202020207468203D202428273C74683E3C2F74683E27292E616464';
wwv_flow_api.g_varchar2_table(1856) := '436C6173732827742D5265706F72742D636F6C4865616427292E617474722827616C69676E272C20276C65667427292C0A202020202020202074656D706C617465203D20277B7B2361727261797D7D3C74723E3C746420636C6173733D22742D5265706F';
wwv_flow_api.g_varchar2_table(1857) := '72742D63656C6C223E7B7B2E7D7D3C2F74643E3C2F74723E7B7B2F61727261797D7D272C0A202020202020202072656E64657265643B0A20200A202020202020746869732E70617374652E706F7075702E74657874617265612E64657461636828293B0A';
wwv_flow_api.g_varchar2_table(1858) := '202020202020746869732E70617374652E706F7075702E626F64790A20202020202020202E656D70747928290A20202020202020202E72656D6F7665417474722827636C61737327290A20202020202020202E616464436C61737328746869732E706173';
wwv_flow_api.g_varchar2_table(1859) := '74652E636C61737365732E626F6479290A20202020202020202E616464436C617373282776616C756573496E27293B0A20200A202020202020746869732E70617374652E706F7075702E627574746F6E732E70617273652E6869646528293B0A20202020';
wwv_flow_api.g_varchar2_table(1860) := '2020746869732E70617374652E706F7075702E627574746F6E732E6261636B2E73686F7728293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E636C6561722E73686F7728293B0A202020202020746869732E70617374';
wwv_flow_api.g_varchar2_table(1861) := '652E706F7075702E627574746F6E732E6170706C792E73686F7728293B0A20200A20202020202072656E6465726564203D2024284D757374616368652E72656E646572282074656D706C6174652C207B226172726179223A20746869732E70617374652E';
wwv_flow_api.g_varchar2_table(1862) := '73746174652E7061727365647D29293B0A20200A2020202020207461626C650A20202020202020202E617070656E64282074722E636C6F6E6528290A202020202020202020202E617070656E64282074682E636C6F6E6528292E68746D6C282074686973';
wwv_flow_api.g_varchar2_table(1863) := '2E435F504F5055505F50415354455F53554D4D4152595F54485F56414C5545535F494E20292029200A2020202020202020290A20202020202020202E617070656E64282072656E646572656420290A20202020202020202E617070656E64546F28207461';
wwv_flow_api.g_varchar2_table(1864) := '626C65436F6E7461696E657220290A2020202020203B0A20200A202020202020746869732E70617374652E706F7075702E626F64792E617070656E6428207461626C65436F6E7461696E657220290A20200A202020202020746869732E70617374652E70';
wwv_flow_api.g_varchar2_table(1865) := '6F7075702E627574746F6E732E6261636B2E6F66662827636C69636B27292E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F70757053686F775061727365526573756C742C2074686973202920293B0A202020207D';
wwv_flow_api.g_varchar2_table(1866) := '2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F70757053686F7756616C756573457863656564696E670A2020202020202A206465736372697074696F6E20203A200A2020202020';
wwv_flow_api.g_varchar2_table(1867) := '202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F7061737465506F70757053686F7756616C756573457863656564696E673A2066756E6374696F6E28297B0A';
wwv_flow_api.g_varchar2_table(1868) := '202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F70757053686F7756616C756573457863656564696E67272C207B0A20202020';
wwv_flow_api.g_varchar2_table(1869) := '2020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A20202020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292E616464436C6173';
wwv_flow_api.g_varchar2_table(1870) := '732827742D5265706F727420742D5265706F72742D2D7374726574636820742D5265706F72742D2D737461746963526F77436F6C6F727320742D5265706F72742D2D726F77486967686C696768744F666620742D5265706F72742D2D696E6C696E652729';
wwv_flow_api.g_varchar2_table(1871) := '2C0A20202020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27292E616464436C6173732827742D5265706F72742D7265706F727427292C0A20202020202020207472203D202428273C74723E3C2F74723E27292C0A202020';
wwv_flow_api.g_varchar2_table(1872) := '20202020207468203D202428273C74683E3C2F74683E27292E616464436C6173732827742D5265706F72742D636F6C4865616427292E617474722827616C69676E272C20276C65667427292C0A202020202020202074656D706C617465203D20277B7B23';
wwv_flow_api.g_varchar2_table(1873) := '61727261797D7D3C74723E3C746420636C6173733D22742D5265706F72742D63656C6C223E7B7B2E7D7D3C2F74643E3C2F74723E7B7B2F61727261797D7D272C0A202020202020202072656E64657265643B0A20200A202020202020746869732E706173';
wwv_flow_api.g_varchar2_table(1874) := '74652E706F7075702E74657874617265612E64657461636828293B0A2020202020200A202020202020746869732E70617374652E706F7075702E627574746F6E732E70617273652E6869646528293B0A202020202020746869732E70617374652E706F70';
wwv_flow_api.g_varchar2_table(1875) := '75702E627574746F6E732E6261636B2E73686F7728293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E636C6561722E73686F7728293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E';
wwv_flow_api.g_varchar2_table(1876) := '6170706C792E73686F7728293B0A20200A202020202020746869732E70617374652E706F7075702E626F64790A20202020202020202E656D70747928290A20202020202020202E72656D6F7665417474722827636C61737327290A20202020202020202E';
wwv_flow_api.g_varchar2_table(1877) := '616464436C61737328746869732E70617374652E636C61737365732E626F6479290A20202020202020202E616464436C617373282776616C7565734F757427293B0A20200A20200A20202020202072656E6465726564203D2024284D757374616368652E';
wwv_flow_api.g_varchar2_table(1878) := '72656E646572282074656D706C6174652C207B226172726179223A20746869732E70617374652E73746174652E6F75744F664C696D69747D29293B0A20200A2020202020207461626C650A20202020202020202E617070656E64282074722E636C6F6E65';
wwv_flow_api.g_varchar2_table(1879) := '28290A202020202020202020202E617070656E64282074682E636C6F6E6528292E68746D6C2820746869732E435F504F5055505F50415354455F53554D4D4152595F54485F56414C5545535F4F555420292029200A2020202020202020290A2020202020';
wwv_flow_api.g_varchar2_table(1880) := '2020202E617070656E64282072656E646572656420290A20202020202020202E617070656E64546F28207461626C65436F6E7461696E657220290A2020202020203B0A20200A202020202020746869732E70617374652E706F7075702E626F64792E6170';
wwv_flow_api.g_varchar2_table(1881) := '70656E6428207461626C65436F6E7461696E657220290A20200A202020202020746869732E70617374652E706F7075702E627574746F6E732E6261636B2E6F66662827636C69636B27292E6F6E2827636C69636B272C20242E70726F7879282074686973';
wwv_flow_api.g_varchar2_table(1882) := '2E5F7061737465506F70757053686F775061727365526573756C742C2074686973202920293B202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F70757053';
wwv_flow_api.g_varchar2_table(1883) := '686F775061727365526573756C740A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A20202020';
wwv_flow_api.g_varchar2_table(1884) := '5F7061737465506F70757053686F775061727365526573756C743A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(1885) := '275F7061737465506F70757053686F775061727365526573756C74272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A202020202020202073686F7756';
wwv_flow_api.g_varchar2_table(1886) := '616C756573546F62654170706C696564203D20273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D2273686F77546F42654170706C696564223E272B746869732E435F504F5055505F50415354455F53554D4D41';
wwv_flow_api.g_varchar2_table(1887) := '52595F53484F575F4C4953545F414E43484F522B273C2F613E272C0A202020202020202073686F7756616C756573457863656564696E672020203D20273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D227368';
wwv_flow_api.g_varchar2_table(1888) := '6F77457863656564696E67223E272B746869732E435F504F5055505F50415354455F53554D4D4152595F53484F575F4C4953545F414E43484F522B273C2F613E272C0A20202020202020207461626C65436F6E7461696E6572203D202428273C6469763E';
wwv_flow_api.g_varchar2_table(1889) := '3C2F6469763E27292E616464436C6173732827742D5265706F727420742D5265706F72742D2D7374726574636820742D5265706F72742D2D737461746963526F77436F6C6F727320742D5265706F72742D2D726F77486967686C696768744F666620742D';
wwv_flow_api.g_varchar2_table(1890) := '5265706F72742D2D696E6C696E6527292C0A20202020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27292E616464436C6173732827742D5265706F72742D7265706F727427292C0A20202020202020207472203D20242827';
wwv_flow_api.g_varchar2_table(1891) := '3C74723E3C2F74723E27292C0A20202020202020207468203D202428273C74683E3C2F74683E27292E616464436C6173732827742D5265706F72742D636F6C4865616427292E617474722827616C69676E272C20276C65667427292C0A20202020202020';
wwv_flow_api.g_varchar2_table(1892) := '207464203D202428273C74643E3C2F74643E27292E616464436C6173732827742D5265706F72742D63656C6C27292E617474722827616C69676E272C20276C65667427292C0A20202020202020207465787450617374656456616C7565732C0A20202020';
wwv_flow_api.g_varchar2_table(1893) := '20202020746578744F75744F664C696D697456616C7565732C0A20202020202020206D61784C656E677468203D20746869732E706C7567696E53657474696E67732E6D61786C656E677468203D3D20756E646566696E6564203F20746869732E435F504F';
wwv_flow_api.g_varchar2_table(1894) := '5055505F50415354455F53554D4D4152595F4D41584C454E4754485F4E4F54534554203A20746869732E706C7567696E53657474696E67732E6D61786C656E6774683B0A20200A202020202020746869732E70617374652E706F7075702E626F64790A20';
wwv_flow_api.g_varchar2_table(1895) := '202020202020202E656D70747928290A20202020202020202E72656D6F7665417474722827636C61737327290A20202020202020202E616464436C61737328746869732E70617374652E636C61737365732E626F6479290A20202020202020202E616464';
wwv_flow_api.g_varchar2_table(1896) := '436C617373282773756D6D61727927293B0A20200A20200A202020202020746869732E70617374652E706F7075702E627574746F6E732E70617273652E6869646528293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E';
wwv_flow_api.g_varchar2_table(1897) := '6261636B2E6869646528293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E636C6561722E73686F7728293B0A202020202020746869732E70617374652E706F7075702E627574746F6E732E6170706C792E73686F7728';
wwv_flow_api.g_varchar2_table(1898) := '293B0A20200A2020202020206966202820746869732E70617374652E73746174652E7061727365642E6C656E677468203E20302029207B0A20202020202020207465787450617374656456616C756573203D20746869732E435F504F5055505F50415354';
wwv_flow_api.g_varchar2_table(1899) := '455F53554D4D4152595F56414C5545535F544F5F42455F4150504C4945442E7265706C61636528272530272C2073686F7756616C756573546F62654170706C696564293B0A2020202020207D0A202020202020656C7365207B0A20202020202020207465';
wwv_flow_api.g_varchar2_table(1900) := '787450617374656456616C756573203D20746869732E435F504F5055505F50415354455F53554D4D4152595F56414C5545535F544F5F42455F4150504C4945442E7265706C61636528272530272C202727293B0A2020202020207D0A20200A2020202020';
wwv_flow_api.g_varchar2_table(1901) := '206966202820746869732E70617374652E73746174652E6F75744F664C696D69742E6C656E677468203E20302029207B0A2020202020202020746578744F75744F664C696D697456616C756573203D20746869732E435F504F5055505F50415354455F53';
wwv_flow_api.g_varchar2_table(1902) := '554D4D4152595F56414C5545535F455843454544494E475F4C494D49542E7265706C61636528272530272C2073686F7756616C756573457863656564696E67293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746578744F';
wwv_flow_api.g_varchar2_table(1903) := '75744F664C696D697456616C756573203D20746869732E435F504F5055505F50415354455F53554D4D4152595F56414C5545535F455843454544494E475F4C494D49542E7265706C61636528272530272C202727293B0A2020202020207D0A20200A2020';
wwv_flow_api.g_varchar2_table(1904) := '202020207461626C650A20202020202020202E617070656E64282074722E636C6F6E652829200A202020202020202020202E617070656E64282074682E636C6F6E6528292E746578742820746869732E435F504F5055505F50415354455F53554D4D4152';
wwv_flow_api.g_varchar2_table(1905) := '595F54485F53554D4D41525920292E617474722827636F6C7370616E272C20322920290A2020202020202020290A20202020202020202E617070656E64282074722E636C6F6E6528290A202020202020202020202E617070656E64282074642E636C6F6E';
wwv_flow_api.g_varchar2_table(1906) := '6528292E68746D6C2820746869732E435F504F5055505F50415354455F53554D4D4152595F5041535445445F434F554E5420292029200A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E70617374';
wwv_flow_api.g_varchar2_table(1907) := '652E73746174652E7061737465642E6C656E677468202920290A2020202020202020290A20202020202020202E617070656E64282074722E636C6F6E6528290A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820';
wwv_flow_api.g_varchar2_table(1908) := '746869732E435F504F5055505F50415354455F53554D4D4152595F5041535445445F4C454E47485420292029200A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E70617374652E73746174652E70';
wwv_flow_api.g_varchar2_table(1909) := '61737465642E6A6F696E28746869732E435F56414C55455F534550415241544F52292E6C656E67746820292029200A2020202020202020290A20202020202020202E617070656E64282074722E636C6F6E6528290A202020202020202020202E61707065';
wwv_flow_api.g_varchar2_table(1910) := '6E64282074642E636C6F6E6528292E68746D6C2820746869732E435F504F5055505F50415354455F53554D4D4152595F4D41585F4C454E47544820292029200A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820';
wwv_flow_api.g_varchar2_table(1911) := '6D61784C656E67746820292029200A2020202020202020290A20202020202020202E617070656E64282074722E636C6F6E6528290A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C28207465787450617374656456';
wwv_flow_api.g_varchar2_table(1912) := '616C75657320292029200A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E70617374652E73746174652E7061727365642E6C656E67746820292029200A2020202020202020290A20202020202020';
wwv_flow_api.g_varchar2_table(1913) := '202E617070656E64282074722E636C6F6E6528290A202020202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746578744F75744F664C696D697456616C75657320292029200A202020202020202020202E617070656E64';
wwv_flow_api.g_varchar2_table(1914) := '282074642E636C6F6E6528292E68746D6C2820746869732E70617374652E73746174652E6F75744F664C696D69742E6C656E67746820292029200A2020202020202020290A2020202020203B0A20200A2020202020207461626C652E66696E6428272E73';
wwv_flow_api.g_varchar2_table(1915) := '686F77546F42654170706C69656427292E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F70757053686F7756616C756573546F42654170706C6965642C20746869732029293B0A2020202020207461626C652E6669';
wwv_flow_api.g_varchar2_table(1916) := '6E6428272E73686F77457863656564696E6727292E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F70757053686F7756616C756573457863656564696E672C20746869732029293B0A20200A202020202020746162';
wwv_flow_api.g_varchar2_table(1917) := '6C65436F6E7461696E65722E617070656E6428207461626C6520293B0A202020202020746869732E70617374652E706F7075702E626F64792E617070656E6428207461626C65436F6E7461696E657220293B0A202020207D2C0A202020202F2A0A202020';
wwv_flow_api.g_varchar2_table(1918) := '2020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F707570416374696F6E436C6561720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020';
wwv_flow_api.g_varchar2_table(1919) := '202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F7061737465506F707570416374696F6E436C6561723A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869';
wwv_flow_api.g_varchar2_table(1920) := '732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F707570416374696F6E436C656172272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B';
wwv_flow_api.g_varchar2_table(1921) := '0A20200A202020202020746869732E5F7061737465506F7075705061737465466F726D28293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7061737465506F707570416374696F';
wwv_flow_api.g_varchar2_table(1922) := '6E4170706C790A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F7061737465506F';
wwv_flow_api.g_varchar2_table(1923) := '707570416374696F6E4170706C793A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F707570';
wwv_flow_api.g_varchar2_table(1924) := '416374696F6E4170706C79272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020202F2F746869732E5F656C656D656E7453657456616C75652820746869732E70617374';
wwv_flow_api.g_varchar2_table(1925) := '652E73746174652E7061727365642E6A6F696E2820746869732E435F56414C55455F534550415241544F52202920293B0A20200A202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0A202020202020746869732E5F';
wwv_flow_api.g_varchar2_table(1926) := '70726F6D7074456D7074795461677328293B0A20200A202020202020666F72202876617220693D303B2069203C20746869732E70617374652E73746174652E7061727365642E6C656E6774683B20692B2B29207B0A2020202020202020746869732E5F6D';
wwv_flow_api.g_varchar2_table(1927) := '61736B537461746553656C656374656441646428200A202020202020202020207B0A20202020202020202020202022646973706C6179222020202020202020203A20746869732E70617374652E73746174652E7061727365645B695D2C0A202020202020';
wwv_flow_api.g_varchar2_table(1928) := '2020202020202276616C75652220202020202020202020203A20746869732E70617374652E73746174652E7061727365645B695D0A202020202020202020207D2C202020202F2F6F626A6563740A20202020202020202020747275652C202F2F69732065';
wwv_flow_api.g_varchar2_table(1929) := '787472612076616C75650A2020202020202020202066616C7365202F2F6973206E756C6C2076616C75650A2020202020202020293B0A2020202020207D202020200A20200A202020202020746869732E5F70726F6D70744170706C7956616C7565732820';
wwv_flow_api.g_varchar2_table(1930) := '7472756520293B0A202020202020746869732E5F70726F6D707452656E6465725461677328293B0A20200A202020202020746869732E5F6765744F6E4C6F61644C6F762820746869732E5F656C656D656E7447657456616C7565282920293B0A20202020';
wwv_flow_api.g_varchar2_table(1931) := '20200A202020202020746869732E70617374652E706F7075702E636F6E7461696E65722E6469616C6F672827636C6F736527293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70';
wwv_flow_api.g_varchar2_table(1932) := '61737465506F7075704372656174654E65770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A';
wwv_flow_api.g_varchar2_table(1933) := '202020205F7061737465506F7075704372656174654E65773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1934) := '7061737465506F7075704372656174654E6577272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020766172200A2020202020202020626F6479202020202020202020';
wwv_flow_api.g_varchar2_table(1935) := '3D202428273C64697620636C6173733D22626F6479223E3C2F6469763E27292C0A2020202020202020746578746172656120202020203D202428273C746578746172656120706C616365686F6C6465723D22272B746869732E435F504F5055505F504153';
wwv_flow_api.g_varchar2_table(1936) := '54455F54455854415245415F504C414345484F4C4445522B27223E3C2F746578746172656127292C0A2020202020202020666F6F746572202020202020203D202428273C64697620636C6173733D22666F6F746572223E3C2F6469763E27292C0A202020';
wwv_flow_api.g_varchar2_table(1937) := '2020202020666F6F7465724C6566742020203D202428273C64697620636C6173733D226C656674223E3C2F6469763E27292C0A2020202020202020666F6F746572526967687420203D202428273C64697620636C6173733D227269676874223E3C2F6469';
wwv_flow_api.g_varchar2_table(1938) := '763E27292C0A2020202020202020746162732020202020202020203D202428273C756C3E3C6C693E5061737465643C2F6C693E3C2F756C3E27292C0A2020202020202020627574746F6E506172736520203D202428273C627574746F6E20636C6173733D';
wwv_flow_api.g_varchar2_table(1939) := '22742D427574746F6E20742D427574746F6E2D2D686F74207061727365223E272B746869732E435F504F5055505F50415354455F42544E5F50415253455F544558542B273C2F627574746F6E3E27292C0A2020202020202020627574746F6E4170706C79';
wwv_flow_api.g_varchar2_table(1940) := '20203D202428273C627574746F6E20636C6173733D22742D427574746F6E20742D427574746F6E2D2D686F74206170706C79223E272B746869732E435F504F5055505F50415354455F42544E5F53454C4543545F544558542B273C2F627574746F6E3E27';
wwv_flow_api.g_varchar2_table(1941) := '292C0A2020202020202020627574746F6E446562756720203D202428273C627574746F6E20636C6173733D22742D427574746F6E206465627567223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E';
wwv_flow_api.g_varchar2_table(1942) := '3E27292C0A2020202020202020627574746F6E4261636B2020203D202428273C627574746F6E20636C6173733D22742D427574746F6E206261636B223E272B746869732E435F504F5055505F50415354455F42544E5F4241434B5F544558542B273C2F62';
wwv_flow_api.g_varchar2_table(1943) := '7574746F6E3E27292C0A2020202020202020627574746F6E436C65617220203D202428273C627574746F6E20636C6173733D22742D427574746F6E20636C656172223E272B746869732E435F504F5055505F50415354455F42544E5F434C4541525F5445';
wwv_flow_api.g_varchar2_table(1944) := '58542B273C2F627574746F6E3E27292C0A20200A2020202020202020636F6E7461696E6572202020203D202428273C64697620636C6173733D22707265746975734C6F762D636F6E7461696E65722220646174612D617065782D6974656D3D22272B7468';
wwv_flow_api.g_varchar2_table(1945) := '69732E656C656D656E742E6765742830292E69642B27223E3C2F6469763E27292C0A20202020202020206F7074696F6E732020202020203D207B0A20202020202020202020226469616C6F67436C617373222020203A2022707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(1946) := '616E6365644C6F764974656D207061737465222C0A20202020202020202020226175746F4F70656E222020202020203A2066616C73652C0A2020202020202020202022617070656E64546F222020202020203A2027626F6479272C0A2020202020202020';
wwv_flow_api.g_varchar2_table(1947) := '2020226D6F64616C222020202020202020203A20747275652C0A20202020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E7469746C652C0A20202020202020202020227769';
wwv_flow_api.g_varchar2_table(1948) := '647468222020202020202020203A203530302C0A20202020202020202020226D696E5769647468222020202020203A203530302C0A20202020202020202020226865696768742220202020202020203A20226175746F222C0A2020202020202020202022';
wwv_flow_api.g_varchar2_table(1949) := '6D696E4865696768742220202020203A20226175746F222C0A2020202020202020202022726573697A61626C652220202020203A2066616C73652C0A2020202020202020202022647261676761626C652220202020203A2066616C73652C0A2020202020';
wwv_flow_api.g_varchar2_table(1950) := '202020202022636C6F73654F6E45736361706522203A20746869732E706C7567696E53657474696E67732E706F7075702E636C6F73654F6E4573636170652C0A20202020202020202020226F70656E22202020202020202020203A20242E70726F787928';
wwv_flow_api.g_varchar2_table(1951) := '20746869732E5F7061737465506F7075704F70656E43616C6C6261636B2C207468697320292C0A2020202020202020202022636C6F7365222020202020202020203A20242E70726F78792820746869732E5F7061737465506F707570436C6F736543616C';
wwv_flow_api.g_varchar2_table(1952) := '6C6261636B2C207468697320292C0A20202020202020202020226265666F7265436C6F7365222020203A20242E70726F78792820746869732E5F7061737465506F7075704265666F7265436C6F736543616C6C6261636B2C207468697320290A20202020';
wwv_flow_api.g_varchar2_table(1953) := '202020207D2C0A202020202020202072657475726E4F626A6563743B0A20200A202020202020636F6E7461696E65722E6469616C6F6728206F7074696F6E7320293B0A202020202020636F6E7461696E65722E61747472287B0A20202020202020202774';
wwv_flow_api.g_varchar2_table(1954) := '6162696E646578273A20302C0A202020202020202027646174612D7061737465273A20746869732E776964676574556E6971756549640A2020202020207D293B0A20200A20200A202020202020626F64792E617070656E64282074657874617265612029';
wwv_flow_api.g_varchar2_table(1955) := '3B0A20200A202020202020627574746F6E50617273652E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F707570416374696F6E50617273652C20746869732029293B0A202020202020627574746F6E436C6561722E';
wwv_flow_api.g_varchar2_table(1956) := '6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F707570416374696F6E436C6561722C20746869732029293B0A202020202020627574746F6E4170706C792E6F6E2827636C69636B272C20242E70726F787928207468';
wwv_flow_api.g_varchar2_table(1957) := '69732E5F7061737465506F707570416374696F6E4170706C792C20746869732029293B0A20200A202020202020666F6F7465724C6566740A20202020202020202E617070656E642820627574746F6E4261636B20293B0A20200A202020202020666F6F74';
wwv_flow_api.g_varchar2_table(1958) := '657252696768740A20202020202020202E617070656E642820627574746F6E436C65617220290A20202020202020202E617070656E642820627574746F6E506172736520290A20202020202020202E617070656E642820627574746F6E4170706C792029';
wwv_flow_api.g_varchar2_table(1959) := '3B0A20200A202020202020666F6F7465720A20202020202020202E617070656E6428666F6F7465724C656674290A20202020202020202E617070656E6428666F6F7465725269676874293B0A2020202020200A202020202020636F6E7461696E65720A20';
wwv_flow_api.g_varchar2_table(1960) := '202020202020202E617070656E642820626F647920290A20202020202020202E617070656E642820666F6F74657220293B0A20200A20202020202072657475726E4F626A656374203D207B0A202020202020202022636F6E7461696E6572223A20636F6E';
wwv_flow_api.g_varchar2_table(1961) := '7461696E65722C0A202020202020202022626F64792220202020203A20626F64792C0A202020202020202022666F6F746572222020203A20666F6F7465722C0A202020202020202022627574746F6E73223A207B0A202020202020202020202270617273';
wwv_flow_api.g_varchar2_table(1962) := '65223A20627574746F6E50617273652C0A2020202020202020202022636C656172223A20627574746F6E436C6561722C0A20202020202020202020226170706C79223A20627574746F6E4170706C792C0A20202020202020202020226261636B223A2062';
wwv_flow_api.g_varchar2_table(1963) := '7574746F6E4261636B0A20202020202020207D2C0A202020202020202022746578746172656122203A2074657874617265610A2020202020207D3B0A20200A20202020202072657475726E2072657475726E4F626A6563740A202020207D2C0A20200A20';
wwv_flow_api.g_varchar2_table(1964) := '2020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E75536F7274546167730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A202020';
wwv_flow_api.g_varchar2_table(1965) := '2020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F70726F6D70744D656E75536F7274546167733A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(1966) := '737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744D656E75536F727454616773272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020';
wwv_flow_api.g_varchar2_table(1967) := '202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172200A2020202020202020746172676574203D202428704576656E742E746172676574292C0A2020202020202020646972656374696F6E203D';
wwv_flow_api.g_varchar2_table(1968) := '20746869732E6D61736B2E73746174652E736F72746564203D3D202761736327203F20276465736327203A2027617363273B202020200A20200A202020202020746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869732E';
wwv_flow_api.g_varchar2_table(1969) := '5F736F72744A736F6E282022646973706C6179222C20646972656374696F6E202920293B0A20200A202020202020746869732E5F70726F6D707452656E6465725461677328293B0A202020202020746869732E5F70726F6D70744170706C7956616C7565';
wwv_flow_api.g_varchar2_table(1970) := '732874727565293B0A20200A2020202020202F2F736574207374617465206F66206D61736B0A202020202020746869732E6D61736B2E73746174652E736F72746564203D20646972656374696F6E3B0A20200A2020202020206966202820746869732E70';
wwv_flow_api.g_varchar2_table(1971) := '726F6D70742E697356697369626C652029207B0A20202020202020202F2F736574207374617465206F662070726F6D70740A2020202020202020746869732E70726F6D70742E6D656E752E736F72742E72656D6F7665436C617373282761736320646573';
wwv_flow_api.g_varchar2_table(1972) := '6327292E616464436C6173732820646972656374696F6E20293B0A2020202020207D0A20200A202020202020746869732E5F70726F6D7074536574466F63757328293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A206675';
wwv_flow_api.g_varchar2_table(1973) := '6E6374696F6E206E616D653A205F70726F6D70744D656E75436C65617256616C7565730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(1974) := '2020202020202A0A202020202A2F20200A202020205F70726F6D70744D656E75436C65617256616C7565733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20';
wwv_flow_api.g_varchar2_table(1975) := '746869732E6C6F675072656669782C20275F70726F6D70744D656E75436C65617256616C756573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E5F';
wwv_flow_api.g_varchar2_table(1976) := '70726F6D7074456D7074794D61736B537461746528293B0A202020202020746869732E5F70726F6D7074456D7074795461677328293B0A2020202020202F2F746869732E5F70726F6D70744869676C6967687452656D6F766543757272656E744C692829';
wwv_flow_api.g_varchar2_table(1977) := '3B0A202020202020746869732E5F70726F6D70744C6952656D6F766553656C656374696F6E28293B0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A202020202020746869732E5F70726F6D707453656C656374466972';
wwv_flow_api.g_varchar2_table(1978) := '7374526F7728293B0A202020202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0A20200A202020202020746869732E5F70726F6D7074536574466F63757328293B0A202020207D2C0A202020202F2A0A2020202020';
wwv_flow_api.g_varchar2_table(1979) := '202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656E646572546167730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A20202020';
wwv_flow_api.g_varchar2_table(1980) := '20202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707452656E646572546167733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C455645';
wwv_flow_api.g_varchar2_table(1981) := '4C362C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657254616773272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722072656E';
wwv_flow_api.g_varchar2_table(1982) := '6465726564203D20303B0A202020202020766172206C696D697454616773203D20746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F3B0A20200A2020202020202F2F656D707479206172726179206F6620746167732069';
wwv_flow_api.g_varchar2_table(1983) := '6E206D61736B0A202020202020746869732E5F70726F6D7074456D7074795461677328293B0A20200A2020202020202F2F7265637265617465206172726179206F6620746167732066726F6D2073656C65637465642076616C7565730A20202020202066';
wwv_flow_api.g_varchar2_table(1984) := '6F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B20297B0A20200A20202020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D7074';
wwv_flow_api.g_varchar2_table(1985) := '2E617265546167734C696D697465642026262069203E3D206C696D6974546167732029207B0A202020202020202020202F2F72656E6465722073756D6D617279207461670A20202020202020202020746869732E5F70726F6D70745461677353756D6D61';
wwv_flow_api.g_varchar2_table(1986) := '72792820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468202D2072656E646572656420293B0A20202020202020202020627265616B3B0A20202020202020207D0A20200A20202020202020206966202820746869732E706C';
wwv_flow_api.g_varchar2_table(1987) := '7567696E53657474696E67732E646973706C6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0A20202020202020202020746869732E5F70726F6D707454616773';
wwv_flow_api.g_varchar2_table(1988) := '4164644E65772820746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174652E73656C65';
wwv_flow_api.g_varchar2_table(1989) := '637465645B695D2E6973457874726156616C756520293B0A2020202020202020202072656E64657265642B2B3B0A20202020202020207D0A2020202020202020656C736520696620282021746869732E706C7567696E53657474696E67732E646973706C';
wwv_flow_api.g_varchar2_table(1990) := '6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C455645';
wwv_flow_api.g_varchar2_table(1991) := '4C362C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657254616773272C202776616C75652022272B746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652B2722206973206E6F7420696E207661';
wwv_flow_api.g_varchar2_table(1992) := '6C75652066726F6D2073716C2071756572792E27293B0A20202020202020207D0A2020202020202020656C7365207B0A20202020202020202020746869732E5F70726F6D7074546167734164644E65772820746869732E6D61736B2E73746174652E7365';
wwv_flow_api.g_varchar2_table(1993) := '6C65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C756520293B0A2020';
wwv_flow_api.g_varchar2_table(1994) := '202020202020202072656E64657265642B2B3B0A20202020202020207D0A20200A2020202020207D0A20200A202020202020696620282072656E6465726564203D3D20302026262021746869732E706C7567696E53657474696E67732E70726F6D70742E';
wwv_flow_api.g_varchar2_table(1995) := '617265546167734C696D697465642029207B0A2020202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0A2020202020207D2020200A202020202020656C7365207B0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1996) := '7074506C616365486F6C6465724869646528293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E754368616E6765566965770A20202020';
wwv_flow_api.g_varchar2_table(1997) := '20202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744D656E754368616E67655669';
wwv_flow_api.g_varchar2_table(1998) := '65773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744D656E754368616E676556696577272C20';
wwv_flow_api.g_varchar2_table(1999) := '7B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020206966202820746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E64656427292029207B0A202020';
wwv_flow_api.g_varchar2_table(2000) := '2020202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C6173732827657870616E64656427293B0A2020202020202020746869732E70726F6D70742E6D656E752E657870616E642E72656D6F7665436C6173732827657870616E';
wwv_flow_api.g_varchar2_table(2001) := '64656427290A20200A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E6D61736B2E636F6E7461696E65722E616464436C6173732827657870616E64656427293B0A2020202020202020746869732E70726F6D70742E';
wwv_flow_api.g_varchar2_table(2002) := '6D656E752E657870616E642E616464436C6173732827657870616E64656427290A2020202020207D0A20200A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A20200A202020202020746869732E5F70726F6D7074536574';
wwv_flow_api.g_varchar2_table(2003) := '466F63757328293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074556E686967686C696768744F746865720A2020202020202A206465736372697074696F6E20203A';
wwv_flow_api.g_varchar2_table(2004) := '200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074556E686967686C696768744F746865723A2066756E6374696F6E28207045';
wwv_flow_api.g_varchar2_table(2005) := '76656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074556E686967686C696768744F74686572272C207B0A202020';
wwv_flow_api.g_varchar2_table(2006) := '202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020746869732E70726F6D70742E626F64792E66696E6428276C692729';
wwv_flow_api.g_varchar2_table(2007) := '2E6E6F742820704576656E742E74617267657420292E72656D6F7665417474722827617269612D686967686C69676874656427293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F';
wwv_flow_api.g_varchar2_table(2008) := '70726F6D70745363726F6C6C43616C6C6261636B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20';
wwv_flow_api.g_varchar2_table(2009) := '200A202020205F70726F6D70745363726F6C6C43616C6C6261636B3A2066756E6374696F6E2820704576656E7429207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F';
wwv_flow_api.g_varchar2_table(2010) := '675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E742C200A2020202020';
wwv_flow_api.g_varchar2_table(2011) := '202020227363726F6C6C546F70223A20746869732E70726F6D70742E626F64792E7363726F6C6C546F7028290A2020202020207D293B0A20200A202020202020766172200A202020202020202070657263656E74203D20746869732E5F6765745363726F';
wwv_flow_api.g_varchar2_table(2012) := '6C6C50657263656E742820746869732E70726F6D70742E626F64792C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D617848656967687420293B0A20200A202020202020696620282070657263656E74203E2039302026262074';
wwv_flow_api.g_varchar2_table(2013) := '6869732E6D61736B2E73746174652E616A617852756E6E696E67203D3D2066616C73652029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(2014) := '2C20275F70726F6D70745363726F6C6C43616C6C6261636B272C202752656163686564206F76657220393025206F6620636F6E7461696E6572207363726F6C6C2E20506572666F726D20414A415827293B0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(2015) := '7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520293B0A2020202020207D0A202020202020656C736520696620282070657263656E74203E20393020262620746869732E6D6173';
wwv_flow_api.g_varchar2_table(2016) := '6B2E73746174652E616A617852756E6E696E67203D3D20747275652029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D';
wwv_flow_api.g_varchar2_table(2017) := '70745363726F6C6C43616C6C6261636B272C2027546865726520697320414A4158206177616974696E6720666F7220726573756C74732E20414A4158206E6F7420706572666F726D656427293B0A2020202020207D0A202020202020656C7365207B0A20';
wwv_flow_api.g_varchar2_table(2018) := '20202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C20274A757374207363726F6C6C2E20';
wwv_flow_api.g_varchar2_table(2019) := '646F206E6F7468696E6727293B200A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074496E707574426C75720A2020202020202A2064657363';
wwv_flow_api.g_varchar2_table(2020) := '72697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074496E707574426C75723A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(2021) := '297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E707574426C7572272C207B0A202020202020202022617267756D65';
wwv_flow_api.g_varchar2_table(2022) := '6E7473223A20617267756D656E74730A2020202020207D293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074496E707574466F6375730A2020202020202A20646573';
wwv_flow_api.g_varchar2_table(2023) := '6372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074496E707574466F6375733A2066756E6374696F';
wwv_flow_api.g_varchar2_table(2024) := '6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E707574466F637573272C207B0A202020202020202022617267';
wwv_flow_api.g_varchar2_table(2025) := '756D656E7473223A20617267756D656E74730A2020202020207D293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074446973706C61794572726F720A202020202020';
wwv_flow_api.g_varchar2_table(2026) := '2A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074446973706C61794572726F723A20';
wwv_flow_api.g_varchar2_table(2027) := '66756E6374696F6E2820705465787420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074446973706C61794572726F72272C';
wwv_flow_api.g_varchar2_table(2028) := '207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227054657874223A2070546578742C200A20202020202020202270726F6D7074223A20746869732E70726F6D70740A2020202020207D293B0A';
wwv_flow_api.g_varchar2_table(2029) := '20200A202020202020746869732E70726F6D70742E626F64792E68746D6C2820273C64697620636C6173733D2270726F6D70744572726F72223E3C7370616E20636C6173733D2266612066612D6578636C616D6174696F6E2D747269616E676C65223E3C';
wwv_flow_api.g_varchar2_table(2030) := '2F7370616E3E20272B70546578742B273C2F6469763E2720293B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C20746869732E6C6F675072656669782C20275F70726F6D7074446973706C61';
wwv_flow_api.g_varchar2_table(2031) := '794572726F72272C207054657874293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744C6952656D6F766553656C656374696F6E0A2020202020202A206465736372';
wwv_flow_api.g_varchar2_table(2032) := '697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744C6952656D6F766553656C656374696F6E3A206675';
wwv_flow_api.g_varchar2_table(2033) := '6E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744869676C6967687452656D6F7665416C6C272C207B0A';
wwv_flow_api.g_varchar2_table(2034) := '202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E70726F6D70742E626F64792E66696E6428275B617269612D73656C65637465643D747275655D27292E72656D6F';
wwv_flow_api.g_varchar2_table(2035) := '7665417474722827617269612D73656C656374656427293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744869676C6967687452656D6F766543757272656E744C69';
wwv_flow_api.g_varchar2_table(2036) := '0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744869676C696768';
wwv_flow_api.g_varchar2_table(2037) := '7452656D6F766543757272656E744C693A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744869';
wwv_flow_api.g_varchar2_table(2038) := '676C6967687452656D6F766543757272656E744C69272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E6D61736B2E73746174652E63757272656E7453';
wwv_flow_api.g_varchar2_table(2039) := '656C656374696F6E2E72656D6F7665417474722827617269612D686967686C69676874656427293B0A202020202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20756E646566696E65643B0A202020207D2C0A';
wwv_flow_api.g_varchar2_table(2040) := '202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074486967686C696768744C690A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A202020';
wwv_flow_api.g_varchar2_table(2041) := '2020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074486967686C696768744C693A2066756E6374696F6E2820704C69456C656D656E7420297B0A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(2042) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074486967686C696768744C69272C207B0A202020202020202022617267756D656E7473223A20617267756D656E7473';
wwv_flow_api.g_varchar2_table(2043) := '2C0A202020202020202022704C69456C656D656E74223A20704C69456C656D656E740A2020202020207D293B0A20200A2020202020202F2F72656D6F76652073656C656374696F6E20696E20616C6C20736574206F6620646174610A2020202020206966';
wwv_flow_api.g_varchar2_table(2044) := '202820746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E20213D20756E646566696E65642029207B0A2020202020202020746869732E5F70726F6D70744869676C6967687452656D6F766543757272656E744C6928293B20';
wwv_flow_api.g_varchar2_table(2045) := '200A2020202020207D202020200A20200A202020202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20704C69456C656D656E743B0A20200A202020202020704C69456C656D656E742E61747472282761726961';
wwv_flow_api.g_varchar2_table(2046) := '2D686967686C696768746564272C2074727565293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707453656C6563744669727374526F770A2020202020202A20646573';
wwv_flow_api.g_varchar2_table(2047) := '6372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707453656C6563744669727374526F773A2066756E';
wwv_flow_api.g_varchar2_table(2048) := '6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707453656C6563744669727374526F77272C207B0A20202020';
wwv_flow_api.g_varchar2_table(2049) := '2020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722066697273744C696E65203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E666972737428293B0A20';
wwv_flow_api.g_varchar2_table(2050) := '200A202020202020746869732E5F70726F6D7074486967686C696768744C69282066697273744C696E6520293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6461746145787465';
wwv_flow_api.g_varchar2_table(2051) := '6E6453656C656374656446726F6D41727261794F664F626A656374730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A';
wwv_flow_api.g_varchar2_table(2052) := '0A202020202A2F20200A202020205F64617461457874656E6453656C656374656446726F6D41727261794F664F626A656374733A2066756E6374696F6E282070446174612C207053656C656374656420297B0A202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(2053) := '6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C207B0A202020202020202022617267756D';
wwv_flow_api.g_varchar2_table(2054) := '656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174612C0A2020202020202020227053656C6563746564223A207053656C65637465640A2020202020207D293B0A20200A202020202020666F722028207661';
wwv_flow_api.g_varchar2_table(2055) := '72206920696E2070446174612E646174612029207B0A2020202020202020666F7220282076617220793D303B2079203C207053656C65637465642E6C656E6774683B20792B2B2029207B0A2020202020202020202069662028207053656C65637465645B';
wwv_flow_api.g_varchar2_table(2056) := '795D2E76616C75652E746F537472696E672829203D3D2070446174612E646174615B695D2E522E746F537472696E6728292029207B0A20202020202020202020202070446174612E646174615B695D2E73656C6563746564203D20747275653B0A202020';
wwv_flow_api.g_varchar2_table(2057) := '202020202020202020636F6E74696E75653B0A202020202020202020207D0A20200A20202020202020207D0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2074';
wwv_flow_api.g_varchar2_table(2058) := '6869732E6C6F675072656669782C20275F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C202272657475726E6564207044617461222C207044617461293B0A20200A20202020202072657475726E207044';
wwv_flow_api.g_varchar2_table(2059) := '6174613B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707454656D706C61746544656661756C740A2020202020202A206465736372697074696F6E20203A200A202020';
wwv_flow_api.g_varchar2_table(2060) := '2020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707454656D706C61746544656661756C743A2066756E6374696F6E28297B0A202020202020';
wwv_flow_api.g_varchar2_table(2061) := '7661720A202020202020202074656D706C617465203D2027272B0A20202020202020202020277B7B23646174617D7D272B0A20202020202020202020273C6C69272B0A202020202020202020202720617269612D72657475726E2D76616C75653D227B7B';
wwv_flow_api.g_varchar2_table(2062) := '7B527D7D7D22272B0A202020202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0A2020202020202020202027207B7B2373656C65637465647D7D617269612D73656C65637465643D2274727565227B7B2F';
wwv_flow_api.g_varchar2_table(2063) := '73656C65637465647D7D272B0A2020202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(2064) := '27207469746C653D227B7B7B447D7D7D22272B0A202020202020202020202720636C6173733D2264656661756C7422272B0A20202020202020202020273E272B0A2020202020202020202027207B7B7B447D7D7D272B0A20202020202020202020273C2F';
wwv_flow_api.g_varchar2_table(2065) := '6C693E272B0A20202020202020202020277B7B2F646174617D7D273B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074';
wwv_flow_api.g_varchar2_table(2066) := '54656D706C61746544656661756C74272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202272657475726E73223A2074656D706C6174650A2020202020207D293B0A20200A20202020202072';
wwv_flow_api.g_varchar2_table(2067) := '657475726E2074656D706C6174653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656E64657244617461496E437573746F6D54656D706C6174650A2020202020';
wwv_flow_api.g_varchar2_table(2068) := '202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707452656E64657244617461496E43';
wwv_flow_api.g_varchar2_table(2069) := '7573746F6D54656D706C6174653A2066756E6374696F6E2820704461746120297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D';
wwv_flow_api.g_varchar2_table(2070) := '707452656E64657244617461496E437573746F6D54656D706C617465272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174610A2020202020207D293B0A2020';
wwv_flow_api.g_varchar2_table(2071) := '0A202020202020766172200A202020202020202072656E6465726564203D2027272C0A20202020202020206C692C0A2020202020202020697353656C6563746564203D2066616C73652C0A2020202020202020726F7748746D6C3B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(2072) := '20666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0A2020202020202020697353656C6563746564203D2070446174612E646174615B695D2E73656C6563746564203F2074727565203A20';
wwv_flow_api.g_varchar2_table(2073) := '66616C73653B0A2020202020202020726F7748746D6C203D20746869732E70726F6D70742E637573746F6D54656D706C61746546756E6374696F6E2E63616C6C28746869732C2070446174612E646174615B695D20293B0A20202020202020206C69203D';
wwv_flow_api.g_varchar2_table(2074) := '2027272B0A20202020202020202020273C6C692720202020202020202020202020202020202020202020202020202020202020202020202020202B0A2020202020202020202027207469746C653D22272B70446174612E646174615B695D2E442B272227';
wwv_flow_api.g_varchar2_table(2075) := '202020202020202020202020202B0A202020202020202020202720636C6173733D22637573746F6D222720202020202020202020202020202020202020202020202020202B0A202020202020202020202720617269612D72657475726E2D76616C75653D';
wwv_flow_api.g_varchar2_table(2076) := '22272B70446174612E646174615B695D2E522B272227202B0A202020202020202020202720617269612D646973706C61792D76616C75653D22272B70446174612E646174615B695D2E442B2722272B0A202020202020202020202720617269612D73656C';
wwv_flow_api.g_varchar2_table(2077) := '65637465643D22272B697353656C65637465642B272227202020202020202020202B0A20202020202020202020273E272B726F7748746D6C2B273C2F6C693E273B0A202020202020202072656E6465726564202B3D206C693B0A2020202020207D0A2020';
wwv_flow_api.g_varchar2_table(2078) := '0A20202020202072657475726E2072656E64657265643B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074417070656E64446174610A2020202020202A206465';
wwv_flow_api.g_varchar2_table(2079) := '736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074417070656E64446174613A2066756E637469';
wwv_flow_api.g_varchar2_table(2080) := '6F6E2820704461746120297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C207B0A20202020';
wwv_flow_api.g_varchar2_table(2081) := '2020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174610A2020202020207D293B0A20200A202020202020766172200A202020202020202072656E64657265642C0A20202020202020';
wwv_flow_api.g_varchar2_table(2082) := '2074656D706C617465203D20746869732E5F70726F6D707454656D706C61746544656661756C7428293B0A20200A202020202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0A202020202020202072657475726E2076';
wwv_flow_api.g_varchar2_table(2083) := '6F69642830293B0A2020202020207D0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C73652029207B0A2020202020202020617065782E';
wwv_flow_api.g_varchar2_table(2084) := '64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C202272656E646572206461746120696E2064656661756C742074656D706C61';
wwv_flow_api.g_varchar2_table(2085) := '746522293B0A20200A2020202020202020747279207B0A2020202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282074656D706C6174652C20704461746129293B0A20202020202020207D206361746368282065';
wwv_flow_api.g_varchar2_table(2086) := '72726F722029207B0A20202020202020202020746869732E5F7468726F774572726F72286572726F72293B0A20202020202020207D0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(2087) := '6528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C202272656E646572206461746120696E20637573746F6D2074656D706C61746522293B0A20200A20202020';
wwv_flow_api.g_varchar2_table(2088) := '2020202072656E6465726564203D20746869732E5F70726F6D707452656E64657244617461496E437573746F6D54656D706C6174652820704461746120293B0A2020202020207D0A202020200A202020202020746869732E70726F6D70742E626F64792E';
wwv_flow_api.g_varchar2_table(2089) := '66696E642827756C27292E617070656E64282072656E646572656420293B0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A20200A202020202020746869732E5F747269676765724576656E7428277061656C695F7072';
wwv_flow_api.g_varchar2_table(2090) := '6F6D70745F646174615F617070656E646564272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D';
wwv_flow_api.g_varchar2_table(2091) := '7074447261774D696E696D616C496E7075744C656E6774680A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020';
wwv_flow_api.g_varchar2_table(2092) := '202A2F20200A202020205F70726F6D7074447261774D696E696D616C496E7075744C656E6774683A2066756E6374696F6E2820704D65737361676520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(2093) := '4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074447261774D696E696D616C496E7075744C656E677468272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270';
wwv_flow_api.g_varchar2_table(2094) := '4D657373616765223A20704D6573736167650A2020202020207D293B0A20200A202020202020766172200A20202020202020206D657373616765203D20704D6573736167652E7265706C61636528272530272C20746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(2095) := '6E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468292C0A202020202020202074656D706C617465203D2027272B0A20202020202020202020273C64697620636C6173733D226E6F64617461666F756E64223E272B0A202020202020';
wwv_flow_api.g_varchar2_table(2096) := '202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0A20202020202020202020273C2F6469763E273B0A20200A202020202020746869732E70726F6D70742E626F64792E68746D6C282074';
wwv_flow_api.g_varchar2_table(2097) := '656D706C61746520293B0A202020202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374';
wwv_flow_api.g_varchar2_table(2098) := '696F6E206E616D653A205F70726F6D7074447261774E6F64617461466F756E640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A202020';
wwv_flow_api.g_varchar2_table(2099) := '2020202A0A202020202A2F20200A202020205F70726F6D7074447261774E6F64617461466F756E643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869';
wwv_flow_api.g_varchar2_table(2100) := '732E6C6F675072656669782C20275F70726F6D7074447261774E6F64617461466F756E64272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A2020202020202F2F0A202020202020766172';
wwv_flow_api.g_varchar2_table(2101) := '200A20202020202020206D657373616765203D20746869732E435F50524F4D50545F544558545F4E4F5F444154415F464F554E442C0A202020202020202074656D706C617465203D2027272B0A20202020202020202020273C64697620636C6173733D22';
wwv_flow_api.g_varchar2_table(2102) := '6E6F64617461666F756E64223E272B0A202020202020202020202720203C7370616E20636C6173733D2266612066612D7461626C652D7365617263682069636F6E223E3C2F7370616E3E272B0A202020202020202020202720203C7370616E20636C6173';
wwv_flow_api.g_varchar2_table(2103) := '733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0A20202020202020202020273C2F6469763E273B0A20200A202020202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B0A202020202020';
wwv_flow_api.g_varchar2_table(2104) := '746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656E';
wwv_flow_api.g_varchar2_table(2105) := '646572446174610A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074';
wwv_flow_api.g_varchar2_table(2106) := '52656E646572446174613A2066756E6374696F6E2820704461746120297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70745265';
wwv_flow_api.g_varchar2_table(2107) := '6E64657244617461272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174610A2020202020207D293B0A20200A202020202020766172200A2020202020202020';
wwv_flow_api.g_varchar2_table(2108) := '72656E64657265642C0A202020202020202064656661756C7454656D706C617465203D20746869732E5F70726F6D707454656D706C61746544656661756C7428293B0A20200A202020202020696620282070446174612E646174612E6C656E677468203D';
wwv_flow_api.g_varchar2_table(2109) := '3D20302029207B0A2020202020202020746869732E5F70726F6D7074447261774E6F64617461466F756E6428293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020696620282021746869732E5F';
wwv_flow_api.g_varchar2_table(2110) := '636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E2820704461746120292026262021746869732E5F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E2820704461746120292029207B0A202020';
wwv_flow_api.g_varchar2_table(2111) := '2020202020746869732E5F70726F6D7074446973706C61794572726F722827496E76616C69642053514C20717565727927293B0A2020202020202020746869732E5F7468726F774572726F7254657874282753514C207175657279206C61636B73206469';
wwv_flow_api.g_varchar2_table(2112) := '73706C617920616E642072657475726E20636F6C756D6E732E20416C69617365732022642220616E6420227222206172652072657175697265642127293B0A2020202020207D0A20200A2020202020206966202820746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(2113) := '696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C73652029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(2114) := '782C20275F70726F6D707452656E64657244617461272C202272656E646572206461746120696E2064656661756C742074656D706C61746522293B0A20200A202020202020202064656661756C7454656D706C617465203D20273C756C3E272B64656661';
wwv_flow_api.g_varchar2_table(2115) := '756C7454656D706C6174652B273C2F756C3E273B20200A20200A2020202020202020747279207B0A2020202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282064656661756C7454656D706C6174652C20704461';
wwv_flow_api.g_varchar2_table(2116) := '746129293B0A20202020202020207D20636174636828206572726F722029207B0A20202020202020202020746869732E5F7468726F774572726F72286572726F72293B0A20202020202020207D0A20200A2020202020207D0A202020202020656C736520';
wwv_flow_api.g_varchar2_table(2117) := '7B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461272C202272656E646572206461746120696E20';
wwv_flow_api.g_varchar2_table(2118) := '637573746F6D2074656D706C61746522293B0A20200A202020202020202072656E6465726564203D20746869732E5F70726F6D707452656E64657244617461496E437573746F6D54656D706C6174652820704461746120293B0A20202020202020207265';
wwv_flow_api.g_varchar2_table(2119) := '6E6465726564203D20273C756C3E272B72656E64657265642B273C2F756C3E273B0A2020202020207D0A20200A202020202020746869732E70726F6D70742E626F64792E68746D6C282072656E646572656420293B0A202020202020746869732E5F7072';
wwv_flow_api.g_varchar2_table(2120) := '6F6D70745265706F736974696F6E28293B0A202020202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D20747275653B0A202020202020746869732E5F70726F6D707453656C6563744669727374526F77';
wwv_flow_api.g_varchar2_table(2121) := '28293B0A20200A202020202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F646174615F72656E6465726564272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A202020207D2C0A2020';
wwv_flow_api.g_varchar2_table(2122) := '20202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7265736574466F6375730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(2123) := '2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F7265736574466F6375733A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2074';
wwv_flow_api.g_varchar2_table(2124) := '6869732E6C6F675072656669782C20275F7265736574466F637573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A20200A2020202020206966202820746869732E69672E6973';
wwv_flow_api.g_varchar2_table(2125) := '456D6265646564496E477269642029207B0A2020202020202020766172200A20202020202020202020776964676574203D20746869732C0A202020202020202020207265636F72644964203D20746869732E69672E677269642E6D6F64656C2E67657452';
wwv_flow_api.g_varchar2_table(2126) := '65636F7264496428746869732E69672E677269642E76696577242E67726964282767657453656C65637465645265636F72647327295B305D292C0A20202020202020202020636F6C756D6E203D20746869732E69672E726567696F6E2E696E7465726163';
wwv_flow_api.g_varchar2_table(2127) := '746976654772696428276F7074696F6E27292E636F6E6669672E636F6C756D6E732E66696C7465722866756E6374696F6E202870436F6C756D6E29207B0A2020202020202020202020200A20202020202020202020202072657475726E2070436F6C756D';
wwv_flow_api.g_varchar2_table(2128) := '6E2E7374617469634964203D3D3D207769646765742E6F7074696F6E732E6974656D2E6E616D650A202020202020202020207D295B305D3B0A202020202020202020200A2020202020202020746869732E69672E677269642E76696577242E6772696428';
wwv_flow_api.g_varchar2_table(2129) := '27676F746F43656C6C272C207265636F726449642C20636F6C756D6E2E6E616D65290A20202020202020202F2F746869732E69672E677269642E666F63757328293B0A2020202020202020746869732E69672E726567696F6E2E696E7465726163746976';
wwv_flow_api.g_varchar2_table(2130) := '65477269642827666F63757327293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E656C656D656E742E666F63757328293B0A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A';
wwv_flow_api.g_varchar2_table(2131) := '2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744869676C6967687465640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A20202020';
wwv_flow_api.g_varchar2_table(2132) := '20202A2020202D0A2020202020202A0A202020202A2F0A202020205F70726F6D70744765744869676C6967687465643A2066756E6374696F6E28297B0A2020202020207661722072657475726E56616C7565203D20746869732E70726F6D70742E626F64';
wwv_flow_api.g_varchar2_table(2133) := '792E66696E6428275B617269612D686967686C6967687465643D2274727565225D27293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(2134) := '275F70726F6D70744765744869676C696768746564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202272657475726E73223A2072657475726E56616C75650A2020202020207D293B0A20';
wwv_flow_api.g_varchar2_table(2135) := '200A20202020202072657475726E2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B506F707570427574746F6E4B6579446F776E0A202020';
wwv_flow_api.g_varchar2_table(2136) := '2020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B506F707570427574746F6E4B65';
wwv_flow_api.g_varchar2_table(2137) := '79446F776E3A2066756E6374696F6E2820704576656E742029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B506F70757042';
wwv_flow_api.g_varchar2_table(2138) := '7574746F6E4B6579446F776E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A2020202020207661720A202020';
wwv_flow_api.g_varchar2_table(2139) := '20202020206B6579436F6465203D20704576656E742E6B6579436F64653B0A20200A2020202020206966202820746869732E5F69734E617669676174696F6E4B657928206B6579436F64652029203D3D2027444F574E272029207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(2140) := '746869732E5F70726F6D7074536561726368496E707574466F63757348616E646C657228293B0A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B';
wwv_flow_api.g_varchar2_table(2141) := '537461746553656C656374656452656D6F76650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F2020';
wwv_flow_api.g_varchar2_table(2142) := '0A202020205F6D61736B537461746553656C656374656452656D6F76653A2066756E6374696F6E282070496E6465782029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2074686973';
wwv_flow_api.g_varchar2_table(2143) := '2E6C6F675072656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270496E646578223A2070496E6465780A20';
wwv_flow_api.g_varchar2_table(2144) := '20202020207D293B0A20200A2020202020207661722072656D6F7665643B0A20200A20202020202072656D6F766564203D20746869732E6D61736B2E73746174652E73656C65637465642E73706C696365282070496E6465782C203120293B0A20200A20';
wwv_flow_api.g_varchar2_table(2145) := '2020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C202772656D6F766564206F626A65';
wwv_flow_api.g_varchar2_table(2146) := '6374272C2072656D6F766564293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B537461746553656C65637465644164640A2020202020202A206465736372697074696F';
wwv_flow_api.g_varchar2_table(2147) := '6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B537461746553656C65637465644164643A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(2148) := '704F626A6563742C20704973457874726156616C75652C207049734E756C6C56616C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(2149) := '275F6D61736B537461746553656C6563746564416464272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704F626A65637422202020202020202020202020203A20704F626A6563742C0A';
wwv_flow_api.g_varchar2_table(2150) := '202020202020202022704973457874726156616C756522202020202020203A20704973457874726156616C75652C0A2020202020202020227049734E756C6C56616C75652220202020202020203A207049734E756C6C56616C75650A2020202020207D29';
wwv_flow_api.g_varchar2_table(2151) := '3B0A20200A2020202020206966202820704973457874726156616C75652029207B0A2020202020202020704F626A6563742E6973457874726156616C7565203D20747275653B2020202020200A2020202020207D0A20200A202020202020696620282070';
wwv_flow_api.g_varchar2_table(2152) := '49734E756C6C56616C75652029207B0A2020202020202020704F626A6563742E6973415045584E756C6C56616C7565203D20747275653B200A2020202020207D0A20200A202020202020746869732E6D61736B2E73746174652E73656C65637465642E70';
wwv_flow_api.g_varchar2_table(2153) := '7573682820704F626A65637420293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B537461746553656C6563746564476574496E6465780A2020202020202A2064';
wwv_flow_api.g_varchar2_table(2154) := '65736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6D61736B537461746553656C6563746564476574496E646578';
wwv_flow_api.g_varchar2_table(2155) := '3A2066756E6374696F6E28207056616C756520297B0A202020202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0A202020202020202069662028';
wwv_flow_api.g_varchar2_table(2156) := '20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869';
wwv_flow_api.g_varchar2_table(2157) := '732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564476574496E646578272C207B0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202020202020227056616C7565';
wwv_flow_api.g_varchar2_table(2158) := '223A207056616C75652C0A2020202020202020202020202272657475726E223A20690A202020202020202020207D293B20202020202020200A20200A2020202020202020202072657475726E20693B0A20202020202020207D0A2020202020207D0A2020';
wwv_flow_api.g_varchar2_table(2159) := '0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564476574496E646578272C207B0A20202020202020';
wwv_flow_api.g_varchar2_table(2160) := '2022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75652C0A20202020202020202272657475726E223A202D310A2020202020207D293B20202020202020200A20200A20202020202072';
wwv_flow_api.g_varchar2_table(2161) := '657475726E202D313B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074497356616C756553656C65637465640A2020202020202A206465736372697074696F6E20203A';
wwv_flow_api.g_varchar2_table(2162) := '200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074497356616C756553656C65637465643A2066756E6374696F6E2820705661';
wwv_flow_api.g_varchar2_table(2163) := '6C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074497356616C756553656C6563746564272C207B0A2020202020';
wwv_flow_api.g_varchar2_table(2164) := '20202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75650A2020202020207D293B0A20200A2020202020207661722072657475726E56616C7565203D20746869732E6D61736B2E73';
wwv_flow_api.g_varchar2_table(2165) := '746174652E73656C65637465642E696E6465784F6628207056616C75652029203E202D313B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(2166) := '20275F70726F6D7074497356616C756553656C6563746564272C202272657475726E73222C207B0A20202020202020202272657475726E56616C7565223A2072657475726E56616C75650A2020202020207D293B0A20200A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(2167) := '2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C690A2020202020202A';
wwv_flow_api.g_varchar2_table(2168) := '206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707452656D6F7665486967686C69676874';
wwv_flow_api.g_varchar2_table(2169) := '656466726F6D416C6C4C693A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707452656D6F766548';
wwv_flow_api.g_varchar2_table(2170) := '6967686C69676874656466726F6D416C6C4C69272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A202020202020746869732E70726F6D70742E626F64792E66696E642820276C69';
wwv_flow_api.g_varchar2_table(2171) := '5B617269612D686967686C6967687465645D2720292E72656D6F7665417474722827617269612D686967686C69676874656427293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F';
wwv_flow_api.g_varchar2_table(2172) := '70726F6D707452656D6F7665486967686C69676874656446726F6D4C690A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A202020202020';
wwv_flow_api.g_varchar2_table(2173) := '2A0A202020202A2F20200A202020205F70726F6D707452656D6F7665486967686C69676874656446726F6D4C693A2066756E6374696F6E2820704C6920297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F';
wwv_flow_api.g_varchar2_table(2174) := '4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707452656D6F7665486967686C69676874656446726F6D4C69272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020';
wwv_flow_api.g_varchar2_table(2175) := '27704C69273A20704C690A2020202020207D293B0A20200A202020202020704C692E72656D6F7665417474722827617269612D686967686C69676874656427293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066';
wwv_flow_api.g_varchar2_table(2176) := '756E6374696F6E206E616D653A205F70726F6D70744765744C6953656C65637465640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A20';
wwv_flow_api.g_varchar2_table(2177) := '20202020202A0A202020202A2F20200A202020205F70726F6D70744765744C6953656C65637465643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(2178) := '69732E6C6F675072656669782C20275F70726F6D70744765744C6953656C6563746564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A20202020202072657475726E20746869';
wwv_flow_api.g_varchar2_table(2179) := '732E70726F6D70742E626F64792E66696E6428276C6927292E66696C746572282066756E6374696F6E282070496E6465782C2070456C656D20297B0A202020202020202072657475726E20242870456C656D292E697328275B617269612D73656C656374';
wwv_flow_api.g_varchar2_table(2180) := '65643D747275655D27293B0A2020202020207D20293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707453656C65637456616C75650A2020202020202A206465736372';
wwv_flow_api.g_varchar2_table(2181) := '697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707453656C65637456616C75653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(2182) := '2820704C6920297B0A2020202020207661720A202020202020202076616C756552657475726E20203D20704C692E617474722827617269612D72657475726E2D76616C756527292C0A202020202020202076616C7565446973706C6179203D20704C692E';
wwv_flow_api.g_varchar2_table(2183) := '617474722827617269612D646973706C61792D76616C756527292C0A20202020202020206973415045584E756C6C56616C7565203D20704C692E617474722827617269612D6E756C6C2D76616C756527292C0A202020202020202063757272656E74203D';
wwv_flow_api.g_varchar2_table(2184) := '20746869732E5F70726F6D70744765744C6953656C656374656428292E666972737428293B0A20202020202020202F2F6368616E67654576656E74203D20747275653B0A20200A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(2185) := '2E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704C692220';
wwv_flow_api.g_varchar2_table(2186) := '2020203A20704C692C0A20202020202020202276616C75652220203A2076616C756552657475726E2C0A202020202020202022646973706C6179223A2076616C7565446973706C61792C0A2020202020202020226E756C6C222020203A20697341504558';
wwv_flow_api.g_varchar2_table(2187) := '4E756C6C56616C75650A2020202020207D293B0A20200A2020202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C736529207B0A2020202020202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(2188) := '2E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C7565206E6F20726573756C747320746F2062652073656C65637465642127293B0A2020202020';
wwv_flow_api.g_varchar2_table(2189) := '20202072657475726E20766F69642830293B0A2020202020207D0A20200A20202020202069662028200A2020202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650A20';
wwv_flow_api.g_varchar2_table(2190) := '20202020202020262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203D3D20310A20202020202029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E49';
wwv_flow_api.g_varchar2_table(2191) := '4E472C20746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C756520646573656C65637420616E642073656C656374206E657720287465726D696E617465206368616E6765206576656E742927293B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(2192) := '202020747279207B0A20202020202020202020746869732E5F70726F6D7074556E73656C65637456616C7565282063757272656E742E617474722827617269612D72657475726E2D76616C756527292C2063757272656E742C2066616C736520293B0A20';
wwv_flow_api.g_varchar2_table(2193) := '202020202020207D20636174636828206572726F722029207B0A20202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0A20202020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B';
wwv_flow_api.g_varchar2_table(2194) := '0A20202020202020207D0A20202020202020200A2020202020207D0A202020202020656C736520696620280A2020202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C7365';
wwv_flow_api.g_varchar2_table(2195) := '0A2020202020202020262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20310A20202020202029207B0A2020202020202020746869732E5F70726F6D707452656D6F7665486967686C69676874656466726F6D41';
wwv_flow_api.g_varchar2_table(2196) := '6C6C4C6928293B0A2020202020202020746869732E5F70726F6D7074456D7074795461677328293B0A2020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0A2020202020207D0A20200A20202020202074686973';
wwv_flow_api.g_varchar2_table(2197) := '2E5F6D61736B537461746553656C6563746564416464280A20202020202020207B0A2020202020202020202022646973706C6179223A2076616C7565446973706C61792C0A202020202020202020202276616C75652220203A2076616C75655265747572';
wwv_flow_api.g_varchar2_table(2198) := '6E0A20202020202020207D2C20202020202020202020202020202020202020202020202020202F2F206F626A6563740A202020202020202066616C73652C202020202020202020202020202020202020202020202F2F2069732065787472612076616C75';
wwv_flow_api.g_varchar2_table(2199) := '652C0A2020202020202020286973415045584E756C6C56616C7565203D3D2022747275652229202F2F206973206E756C6C2076616C75650A202020202020293B0A20200A2020202020202F2F746869732E5F70726F6D70744170706C7956616C75657328';
wwv_flow_api.g_varchar2_table(2200) := '206368616E67654576656E7420293B0A202020202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0A202020202020746869732E5F70726F6D707452656E6465725461677328293B0A20200A202020202020704C692E';
wwv_flow_api.g_varchar2_table(2201) := '617474722827617269612D73656C6563746564272C2074727565293B0A20200A202020202020746869732E5F70726F6D7074486967686C696768744C6928704C69293B0A20200A202020202020746869732E6D61736B2E73746174652E63757272656E74';
wwv_flow_api.g_varchar2_table(2202) := '53656C656374696F6E203D20704C693B0A20200A2020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0A2020202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A202020202020202074';
wwv_flow_api.g_varchar2_table(2203) := '6869732E5F70726F6D7074536574466F63757328293B0A2020202020207D0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0A20202020202020202F2F6D';
wwv_flow_api.g_varchar2_table(2204) := '756C7469706C652073656C656374696F6E0A20202020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973526170696453656C656374696F6E2029207B0A20200A202020202020202020206966202820746869';
wwv_flow_api.g_varchar2_table(2205) := '732E70726F6D70742E696E7075742E76616C28292E6C656E677468203E20302029207B0A2020202020202020202020202F2F656D707479206D61736B20696E7075740A2020202020202020202020202F2F74726967676572206B657920757020746F2070';
wwv_flow_api.g_varchar2_table(2206) := '6F70756C617465206E6577206175746F636F6D706C6574650A202020202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C292E7472696767657228276B6579757027293B0A202020202020202020207D0A2020202020';
wwv_flow_api.g_varchar2_table(2207) := '20202020200A20202020202020207D0A2020202020202020656C7365207B0A202020202020202020202F2F6C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D706C65746520';
wwv_flow_api.g_varchar2_table(2208) := '726573756C740A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C7565272C20276C656E6774';
wwv_flow_api.g_varchar2_table(2209) := '68206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D706C65746520726573756C742E27293B0A2020202020202020202072657475726E20766F69642830293B0A20202020202020207D0A20';
wwv_flow_api.g_varchar2_table(2210) := '20202020207D0A202020202020656C7365207B0A20202020202020202F2F73696E676C652073656C656374696F6E0A20202020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973526170696453656C656374';
wwv_flow_api.g_varchar2_table(2211) := '696F6E2029207B0A20200A202020202020202020206966202820746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203E20302029207B0A2020202020202020202020202F2F72617069642073656C656374696F6E206973206F6E';
wwv_flow_api.g_varchar2_table(2212) := '0A202020202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C292E7472696767657228276B6579757027293B0A202020202020202020207D0A20202020202020202020656C7365207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(2213) := '2F2F6C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D706C65746520726573756C740A202020202020202020207D0A20202020202020207D0A2020202020202020656C7365';
wwv_flow_api.g_varchar2_table(2214) := '207B0A20202020202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B20200A20202020202020207D0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A';
wwv_flow_api.g_varchar2_table(2215) := '2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074556E73656C65637456616C75650A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A20202020';
wwv_flow_api.g_varchar2_table(2216) := '20202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074556E73656C65637456616C75653A2066756E6374696F6E28207056616C75652C20704C692C2070547269676765724368616E67654576656E7420297B0A202020';
wwv_flow_api.g_varchar2_table(2217) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074556E73656C65637456616C7565272C207B0A202020202020202022617267756D656E7473';
wwv_flow_api.g_varchar2_table(2218) := '223A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75652C0A202020202020202022704C69223A20704C690A2020202020207D293B0A20200A202020202020766172200A202020202020202076616C7565203D2070';
wwv_flow_api.g_varchar2_table(2219) := '56616C75652C0A2020202020202020696E6465784F66203D20746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C756520292C0A202020202020202072656D6F766564203D206E756C6C3B0A20200A202020202020';
wwv_flow_api.g_varchar2_table(2220) := '6966202820696E6465784F66203C20302029207B0A2020202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0A2020202020207D0A20';
wwv_flow_api.g_varchar2_table(2221) := '200A2020202020206966202820704C6920213D20756E646566696E65642029207B0A2020202020202020704C692E72656D6F7665417474722827617269612D73656C656374656427290A2020202020207D0A2020202020200A202020202020746869732E';
wwv_flow_api.g_varchar2_table(2222) := '5F6D61736B537461746553656C656374656452656D6F76652820696E6465784F6620293B0A20200A202020202020746869732E5F70726F6D70744170706C7956616C756573282070547269676765724368616E67654576656E7420293B0A202020202020';
wwv_flow_api.g_varchar2_table(2223) := '746869732E5F74616752656D6F7665546F426544656C65746564282076616C756520293B0A20200A20200A2020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0A2020202020202020746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(2224) := '5265706F736974696F6E28293B20200A2020202020207D0A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744170706C7956616C7565730A2020202020202A206465';
wwv_flow_api.g_varchar2_table(2225) := '736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744170706C7956616C7565733A2066756E6374';
wwv_flow_api.g_varchar2_table(2226) := '696F6E282070547269676765724368616E676520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744170706C7956616C7565';
wwv_flow_api.g_varchar2_table(2227) := '73272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270547269676765724368616E6765223A2070547269676765724368616E67652C0A20202020202020202276616C756573206C656E67';
wwv_flow_api.g_varchar2_table(2228) := '746822203A20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774682C0A20202020202020202276616C7565732220202020202020203A20242E657874656E64285B5D2C20746869732E6D61736B2E73746174652E73656C656374';
wwv_flow_api.g_varchar2_table(2229) := '6564290A2020202020207D293B0A20200A2020202020207661722061727261794F6656616C756573203D205B5D3B0A2020202020200A2020202020206966202820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E2030';
wwv_flow_api.g_varchar2_table(2230) := '2029207B0A20200A2020202020202020666F7220282076617220693D303B20693C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0A2020202020202020202061727261794F6656616C7565732E70';
wwv_flow_api.g_varchar2_table(2231) := '7573682820746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C756520293B0A20202020202020207D0A20200A2020202020202020746869732E5F656C656D656E7453657456616C7565282061727261794F6656616C7565732E';
wwv_flow_api.g_varchar2_table(2232) := '6A6F696E2820746869732E435F56414C55455F534550415241544F52202920293B0A20202020202020200A20202020202020202F2F746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869732E5F736F72744A736F6E2820';
wwv_flow_api.g_varchar2_table(2233) := '22646973706C6179222C20746869732E6D61736B2E73746174652E736F72746564202920293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F656C656D656E7453657456616C756528206E756C6C20293B0A20';
wwv_flow_api.g_varchar2_table(2234) := '200A2020202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0A2020202020207D0A20200A202020202020696620282070547269676765724368616E67652029207B0A2020202020202020746869732E5F74726967';
wwv_flow_api.g_varchar2_table(2235) := '6765724576656E7428276368616E6765272C20746869732E5F70726F6D70744765744576656E74446174612829293B0A20202020202020202F2F617065782E6576656E742E747269676765722820746869732E656C656D656E742E6765742830292C2027';
wwv_flow_api.g_varchar2_table(2236) := '6368616E67652720293B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074546167734765744F626A6563740A2020202020202A2064657363726970';
wwv_flow_api.g_varchar2_table(2237) := '74696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074546167734765744F626A6563743A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(2238) := '28207052657475726E20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C207B0A20';
wwv_flow_api.g_varchar2_table(2239) := '2020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227052657475726E223A207052657475726E0A2020202020207D293B0A20200A202020202020666F7220282076617220693D303B2069203C2074686973';
wwv_flow_api.g_varchar2_table(2240) := '2E6D61736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0A20202020202020206966202820746869732E6D61736B2E73746174652E746167735B695D2E76616C7565203D3D207052657475726E2029207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(2241) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C20277052657475726E2068617320696E64657820272B';
wwv_flow_api.g_varchar2_table(2242) := '69293B0A2020202020202020202072657475726E20746869732E6D61736B2E73746174652E746167735B695D3B0A20202020202020207D0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C';
wwv_flow_api.g_varchar2_table(2243) := '4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0A20200A20202020202072657475726E2075';
wwv_flow_api.g_varchar2_table(2244) := '6E646566696E65643B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707454616773476574496E6465780A2020202020202A206465736372697074696F6E20203A';
wwv_flow_api.g_varchar2_table(2245) := '200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707454616773476574496E6465783A2066756E6374696F6E2820705265747572';
wwv_flow_api.g_varchar2_table(2246) := '6E20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C207B0A20202020202020202261';
wwv_flow_api.g_varchar2_table(2247) := '7267756D656E7473223A20617267756D656E74732C0A2020202020202020227052657475726E223A207052657475726E2C200A20202020202020202274616773222020203A20746869732E6D61736B2E73746174652E746167730A2020202020207D293B';
wwv_flow_api.g_varchar2_table(2248) := '0A20200A202020202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0A20202020202020206966202820746869732E6D61736B2E73746174652E746167735B';
wwv_flow_api.g_varchar2_table(2249) := '695D2E76616C7565203D3D207052657475726E2029207B0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707454616773';
wwv_flow_api.g_varchar2_table(2250) := '476574496E646578272C20277052657475726E2068617320696E64657820272B69293B0A2020202020202020202072657475726E20693B0A20202020202020207D0A2020202020207D0A20200A202020202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(2251) := '6528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(2252) := '2072657475726E202D313B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744C69427952657475726E56616C75650A2020202020202A20646573637269707469';
wwv_flow_api.g_varchar2_table(2253) := '6F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744765744C69427952657475726E56616C75653A2066756E6374';
wwv_flow_api.g_varchar2_table(2254) := '696F6E28207056616C756520297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C75';
wwv_flow_api.g_varchar2_table(2255) := '65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227056616C7565223A207056616C75650A2020202020207D293B0A20200A202020202020766172206C69203D20746869732E70726F6D';
wwv_flow_api.g_varchar2_table(2256) := '70742E626F64792E66696E6428276C6927292E66696C746572282066756E6374696F6E282070496E6465782C2070456C656D20297B0A202020202020202072657475726E20242870456C656D292E617474722827617269612D72657475726E2D76616C75';
wwv_flow_api.g_varchar2_table(2257) := '6527292E746F537472696E672829203D3D207056616C75652E746F537472696E6728293B0A2020202020207D20293B0A20200A20202020202069662028206C692E6C656E677468203E20302029207B0A2020202020202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(2258) := '65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C2027666F756E64206C6920656C656D656E74272C206C69293B0A20202020';
wwv_flow_api.g_varchar2_table(2259) := '20207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E';
wwv_flow_api.g_varchar2_table(2260) := '56616C7565272C20277468657265206973206E6F206C6920656C656D656E7420776974682072657475726E2076616C7565272C207056616C7565293B200A2020202020207D0A20202020202072657475726E206C693B0A202020207D2C0A202020202F2A';
wwv_flow_api.g_varchar2_table(2261) := '0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F74616752656D6F766546726F6D4D61736B0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020';
wwv_flow_api.g_varchar2_table(2262) := '202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F74616752656D6F766546726F6D4D61736B3A2066756E6374696F6E2820704576656E7420297B0A202020202020766172200A202020202020202076616C7565';
wwv_flow_api.g_varchar2_table(2263) := '203D202428704576656E742E746172676574292E636C6F73657374282764697627292E617474722827617269612D72657475726E2D76616C756527293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(2264) := '5F44454255472C20746869732E6C6F675072656669782C20275F74616752656D6F766546726F6D4D61736B272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A207045';
wwv_flow_api.g_varchar2_table(2265) := '76656E742C0A20202020202020202276616C7565223A2076616C75652020202020200A2020202020207D293B0A20200A202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0A20200A2020202020206966';
wwv_flow_api.g_varchar2_table(2266) := '202820746869732E6D61736B2E73746174652E64697361626C65642029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F746167';
wwv_flow_api.g_varchar2_table(2267) := '52656D6F766546726F6D4D61736B272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0A2020202020202020704576656E742E70726576656E7444656661756C7428293B0A2020202020202020704576';
wwv_flow_api.g_varchar2_table(2268) := '656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020746869732E5F6D61736B537461746553656C656374656452656D6F';
wwv_flow_api.g_varchar2_table(2269) := '76652820746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C7565202920293B0A202020202020746869732E5F74616752656D6F7665546F426544656C65746564282076616C756520293B0A202020202020746869';
wwv_flow_api.g_varchar2_table(2270) := '732E5F70726F6D70744170706C7956616C75657328207472756520293B0A20200A2020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0A2020202020202020746869732E5F70726F6D70745265706F736974696F6E';
wwv_flow_api.g_varchar2_table(2271) := '28293B0A2020202020202020746869732E5F70726F6D70744765744C69427952657475726E56616C7565282076616C756520292E72656D6F7665417474722827617269612D73656C656374656427290A2020202020202020746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(2272) := '536574466F63757328293B0A2020202020207D0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F74616752656D6F7665546F426544656C657465640A2020202020202A206465';
wwv_flow_api.g_varchar2_table(2273) := '736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F74616752656D6F7665546F426544656C657465643A2066756E63';
wwv_flow_api.g_varchar2_table(2274) := '74696F6E28207052657475726E20297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F74616752656D6F7665546F426544656C6574656427';
wwv_flow_api.g_varchar2_table(2275) := '2C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227052657475726E223A207052657475726E0A2020202020207D293B0A20200A202020202020766172200A2020202020202020696E646578';
wwv_flow_api.g_varchar2_table(2276) := '4F66203D20746869732E5F70726F6D707454616773476574496E64657828207052657475726E20292C0A2020202020202020746167203D20756E646566696E65643B0A20200A2020202020206966202820696E6465784F66203C20302029207B0A202020';
wwv_flow_api.g_varchar2_table(2277) := '2020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F74616752656D6F7665546F426544656C65746564272C2027546167206E6F7420666F756E642729';
wwv_flow_api.g_varchar2_table(2278) := '3B2020202020200A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020746167203D20746869732E6D61736B2E73746174652E746167735B696E6465784F665D3B0A20200A2020202020202F2F72656D';
wwv_flow_api.g_varchar2_table(2279) := '6F7665207461672066726F6D20646F6D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F74616752656D6F7665546F426544656C6574656427';
wwv_flow_api.g_varchar2_table(2280) := '2C202774616720746F2062652072656D6F7665642066726F6D20444F4D272C20746167293B0A2020202020207461672E636F6E7461696E65722E72656D6F766528293B0A20200A2020202020202F2F72656D6F7665207461672066726F6D206C69737420';
wwv_flow_api.g_varchar2_table(2281) := '6F6620746167730A202020202020746869732E6D61736B2E73746174652E746167732E73706C6963652820696E6465784F662C203120293B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E';
wwv_flow_api.g_varchar2_table(2282) := '616D653A205F70726F6D7074546167734164644E65770A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A';
wwv_flow_api.g_varchar2_table(2283) := '2F0A202020205F70726F6D7074546167734164644E65773A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C756520297B0A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(2284) := '2E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074546167734164644E6577272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044697370';
wwv_flow_api.g_varchar2_table(2285) := '6C6179222020202020203A2070446973706C61792C0A2020202020202020227052657475726E22202020202020203A207052657475726E2C0A202020202020202022704973457874726156616C756522203A20704973457874726156616C75650A202020';
wwv_flow_api.g_varchar2_table(2286) := '2020207D293B0A20200A202020202020766172200A2020202020202020657874726156616C7565436C617373203D20704973457874726156616C7565203F202720657874726127203A2027272C0A20202020202020206E6577546167203D20242827272B';
wwv_flow_api.g_varchar2_table(2287) := '0A20202020202020202020273C64697620636C6173733D22746167272B657874726156616C7565436C6173732B272220617269612D72657475726E2D76616C75653D22272B7052657475726E2B2722207469746C653D22272B70446973706C61792B2722';
wwv_flow_api.g_varchar2_table(2288) := '3E272B0A202020202020202020202720203C7370616E20636C6173733D2276616C7565223E272B70446973706C61792B273C2F7370616E3E272B0A202020202020202020202720203C7370616E20636C6173733D2266612066612D74696D65732072656D';
wwv_flow_api.g_varchar2_table(2289) := '6F7665223E3C2F7370616E3E272B0A20202020202020202020273C2F6469763E272B0A202020202020202020202727292C0A20202020202020206E65775461674F626A656374203D207B0A202020202020202020202276616C7565223A20705265747572';
wwv_flow_api.g_varchar2_table(2290) := '6E2C0A2020202020202020202022646973706C6179223A2070446973706C61792C0A2020202020202020202022636F6E7461696E6572223A206E65775461672C0A20202020202020202020226973457874726156616C7565223A20704973457874726156';
wwv_flow_api.g_varchar2_table(2291) := '616C7565203F2074727565203A2066616C73650A20202020202020207D3B0A20200A202020202020746869732E6D61736B2E73746174652E746167732E7075736828206E65775461674F626A65637420293B0A202020202020746869732E6D61736B2E74';
wwv_flow_api.g_varchar2_table(2292) := '616773436F6E7461696E65722E617070656E6428206E657754616720293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70745461677353756D6D6172794F70656E5365';
wwv_flow_api.g_varchar2_table(2293) := '6C65637465640A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707454';
wwv_flow_api.g_varchar2_table(2294) := '61677353756D6D6172794F70656E53656C65637465643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F';
wwv_flow_api.g_varchar2_table(2295) := '6D70745461677353756D6D6172794F70656E53656C6563746564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020207D293B0A20200A2020202020206966202820746869732E706C7567696E5365';
wwv_flow_api.g_varchar2_table(2296) := '7474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F';
wwv_flow_api.g_varchar2_table(2297) := '6D70745461677353756D6D6172794F70656E53656C65637465642C20706F707570206E6F7420617661696C61626C652C20646F206E746827293B0A20200A2020202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F';
wwv_flow_api.g_varchar2_table(2298) := '782E70726F702827636865636B6564272C2074727565293B0A2020202020202020746869732E5F706F7075704F70656E28293B0A2020202020200A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A20';
wwv_flow_api.g_varchar2_table(2299) := '66756E6374696F6E206E616D653A205F70726F6D70745461677353756D6D6172790A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020';
wwv_flow_api.g_varchar2_table(2300) := '202020202A0A202020202A2F20200A202020205F70726F6D70745461677353756D6D6172793A2066756E6374696F6E2820704E6F7452656E6465726564436E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F';
wwv_flow_api.g_varchar2_table(2301) := '4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D617279272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704E6F7452656E';
wwv_flow_api.g_varchar2_table(2302) := '6465726564436E74223A20704E6F7452656E6465726564436E740A2020202020207D293B0A20200A202020202020766172200A2020202020202020746578743B0A202020202020202073756D6D617279546167203D20242827272B0A2020202020202020';
wwv_flow_api.g_varchar2_table(2303) := '2020273C64697620636C6173733D227461672073756D6D617279223E64656661756C742073756D6D6172793C2F6469763E270A2020202020202020293B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D';
wwv_flow_api.g_varchar2_table(2304) := '70742E617265546167734C696D6974656420262620746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F203E20302029207B0A202020202020202074657874203D20746869732E435F544147535F4C494D495445445F4F54';
wwv_flow_api.g_varchar2_table(2305) := '484552532E7265706C6163652820272530272C20704E6F7452656E6465726564436E7420293B0A2020202020207D0A202020202020656C7365207B0A202020202020202074657874203D20746869732E435F544147535F4C494D495445445F302E726570';
wwv_flow_api.g_varchar2_table(2306) := '6C6163652820272530272C20704E6F7452656E6465726564436E74293B0A2020202020207D0A20200A20202020202073756D6D6172795461672E7465787428207465787420293B0A20200A20202020202073756D6D6172795461672E6F6E2827636C6963';
wwv_flow_api.g_varchar2_table(2307) := '6B272C2066756E6374696F6E28704576656E74297B20704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B207D293B0A20202020202073756D6D6172795461672E6F6E282764626C636C69636B272C20242E70726F7879';
wwv_flow_api.g_varchar2_table(2308) := '28746869732E5F70726F6D70745461677353756D6D6172794F70656E53656C65637465642C207468697329293B0A20200A202020202020746869732E6D61736B2E74616773436F6E7461696E65722E617070656E64282073756D6D61727954616720293B';
wwv_flow_api.g_varchar2_table(2309) := '0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074436865636B436C69636B4F7574736964650A2020202020202A206465736372697074696F6E20203A200A2020202020';
wwv_flow_api.g_varchar2_table(2310) := '202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074436865636B436C69636B4F7574736964653A2066756E6374696F6E2820704576656E742029';
wwv_flow_api.g_varchar2_table(2311) := '7B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074436865636B436C69636B4F757473696465272C207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(2312) := '22617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74222020202020202020202020202020203A20704576656E742C0A202020202020202022704576656E742E63757272656E7454617267657422203A207045';
wwv_flow_api.g_varchar2_table(2313) := '76656E742E63757272656E745461726765742C0A202020202020202022704576656E742E7461726765742220202020202020203A20704576656E742E7461726765740A2020202020207D293B0A20200A20202020202069662028200A2020202020202020';
wwv_flow_api.g_varchar2_table(2314) := '242E636F6E7461696E732820746869732E70726F6D70742E636F6E7461696E65722E6765742830292C20704576656E742E7461726765742029200A20202020202020207C7C20242E636F6E7461696E732820746869732E6D61736B2E636F6E7461696E65';
wwv_flow_api.g_varchar2_table(2315) := '722E6765742830292C20704576656E742E74617267657420290A20202020202020207C7C202428704576656E742E746172676574292E697328272E72656D6F766527290A20202020202020207C7C2077696E646F772E67657453656C656374696F6E2829';
wwv_flow_api.g_varchar2_table(2316) := '2E746F537472696E6728292E6C656E677468203E20300A20202020202029207B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A202020202020656C7365207B0A20202020202020202F2F646F6E277420666F63757320';
wwv_flow_api.g_varchar2_table(2317) := '616E7920656C656D656E742C20656E642D7573657220636C69636B6564206F75747369646520706C7567696E20646F6D206E6F6465730A2020202020202020746869732E5F70726F6D7074486964652820756E646566696E656420293B0A202020202020';
wwv_flow_api.g_varchar2_table(2318) := '7D0A20200A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6765744E657874466F63757341626C650A2020202020202A206465736372697074696F6E20203A200A202020202020';
wwv_flow_api.g_varchar2_table(2319) := '2A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6765744E657874466F63757341626C653A2066756E6374696F6E28297B0A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(2320) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6765744E657874466F63757341626C65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A';
wwv_flow_api.g_varchar2_table(2321) := '2020202020207D293B0A20200A202020202020766172207461626261626C654172722C20696E6465784F662C206E6578743B0A20200A202020202020746869732E656C656D656E742E73686F7728293B0A2020202020200A202020202020746162626162';
wwv_flow_api.g_varchar2_table(2322) := '6C65417272203D202428273A7461626261626C6527292E746F417272617928293B0A202020202020696E6465784F66203D207461626261626C654172722E696E6465784F662820746869732E656C656D656E742E67657428302920293B0A202020202020';
wwv_flow_api.g_varchar2_table(2323) := '6E657874203D207461626261626C654172725B20696E6465784F662B31205D3B0A20200A202020202020746869732E656C656D656E742E6869646528293B0A20200A20202020202072657475726E2024286E657874293B0A20200A202020207D2C0A2020';
wwv_flow_api.g_varchar2_table(2324) := '0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744E617669676174654172726F77730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A';
wwv_flow_api.g_varchar2_table(2325) := '0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F70726F6D70744E617669676174654172726F77733A2066756E6374696F6E282070446972656374696F6E20297B0A202020202020617065';
wwv_flow_api.g_varchar2_table(2326) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744E617669676174654172726F7773272C207B0A202020202020202022617267756D656E7473223A2061';
wwv_flow_api.g_varchar2_table(2327) := '7267756D656E74732C0A20202020202020202270446972656374696F6E223A2070446972656374696F6E0A2020202020207D293B0A20200A202020202020766172200A2020202020202020726573756C747352656E6465726564203D20746869732E7072';
wwv_flow_api.g_varchar2_table(2328) := '6F6D70742E626F64792E66696E6428276C6927292E6C656E6774682C0A2020202020202020616C6C50726576203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E70726576416C6C28292E6C656E6774682C0A2020';
wwv_flow_api.g_varchar2_table(2329) := '202020202020616C6C4E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E657874416C6C28292E6C656E6774682C0A20202020202020207363726F6C6C746F70203D20746869732E70726F6D70742E62';
wwv_flow_api.g_varchar2_table(2330) := '6F64792E7363726F6C6C546F7028292C0A2020202020202020686569676874546F546F70426F726465722C0A20202020202020206E6578742C0A2020202020202020706F736974696F6E2C0A20202020202020207363726F6C6C56616C75653B0A20200A';
wwv_flow_api.g_varchar2_table(2331) := '202020202020696620282070446972656374696F6E203D3D2027444F574E272029207B0A20202020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E65787428293B0A2020202020207D0A';
wwv_flow_api.g_varchar2_table(2332) := '202020202020656C736520696620282070446972656374696F6E203D3D202755502720297B0A20202020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E7072657628293B0A202020202020';
wwv_flow_api.g_varchar2_table(2333) := '7D0A202020202020656C7365207B0A202020202020202072657475726E20766F69642830293B0A20202020202020202F2F0A2020202020207D0A20200A202020202020706F736974696F6E203D206E6578742E706F736974696F6E28293B0A20200A2020';
wwv_flow_api.g_varchar2_table(2334) := '2020202069662028206E6578742E6C656E677468203E20302029207B0A2020202020202020746869732E5F70726F6D7074486967686C696768744C6928206E65787420293B20200A20200A2020202020202020686569676874546F546F70426F72646572';
wwv_flow_api.g_varchar2_table(2335) := '203D20706F736974696F6E2E746F702D7363726F6C6C746F703B0A20200A20202020202020206966202820686569676874546F546F70426F72646572203E3D203020262620686569676874546F546F70426F72646572203C3D20746869732E706C756769';
wwv_flow_api.g_varchar2_table(2336) := '6E53657474696E67732E70726F6D70742E6D61784865696768742D6E6578742E6F7574657248656967687428292029207B0A202020202020202020202F2F646F206E6F7468696E672C206C6920656C656D656E742069732066756C6C792076697369626C';
wwv_flow_api.g_varchar2_table(2337) := '650A20202020202020207D0A2020202020202020656C7365207B0A20202020202020202020696620282070446972656374696F6E203D3D2027444F574E272029207B0A2020202020202020202020207363726F6C6C56616C7565203D2028207363726F6C';
wwv_flow_api.g_varchar2_table(2338) := '6C746F70202B2028686569676874546F546F70426F726465722B6E6578742E6F757465724865696768742829202D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D617848656967687429202920200A202020202020202020207D';
wwv_flow_api.g_varchar2_table(2339) := '0A20202020202020202020656C7365207B0A2020202020202020202020207363726F6C6C56616C7565203D207363726F6C6C746F70202B20686569676874546F546F70426F726465723B0A202020202020202020207D0A20200A20202020202020202020';
wwv_flow_api.g_varchar2_table(2340) := '746869732E70726F6D70742E626F64792E7363726F6C6C546F7028207363726F6C6C56616C756520293B20200A20202020202020207D0A2020202020207D0A202020202020656C7365207B0A20202020202020206966202820726573756C747352656E64';
wwv_flow_api.g_varchar2_table(2341) := '65726564203C20746869732E6D61736B2E73746174652E746F74616C436F756E742029207B0A20202020202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C6173744665746368';
wwv_flow_api.g_varchar2_table(2342) := '65645061676520293B0A20202020202020207D0A20200A2020202020207D0A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D70744C69436C69636B48616E';
wwv_flow_api.g_varchar2_table(2343) := '6C6465720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D70744C6943';
wwv_flow_api.g_varchar2_table(2344) := '6C69636B48616E6C6465723A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70';
wwv_flow_api.g_varchar2_table(2345) := '744C69436C69636B48616E6C646572272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A20202020202076617220';
wwv_flow_api.g_varchar2_table(2346) := '0A2020202020202020746172676574203D202428704576656E742E746172676574292E697328276C692729203F202428704576656E742E74617267657429203A202428704576656E742E746172676574292E636C6F7365737428276C6927293B0A20200A';
wwv_flow_api.g_varchar2_table(2347) := '20202020202069662028207461726765742E697328275B617269612D73656C65637465643D2274727565225D27292029207B0A2020202020202020746869732E5F70726F6D7074556E73656C65637456616C756528207461726765742E61747472282761';
wwv_flow_api.g_varchar2_table(2348) := '7269612D72657475726E2D76616C756527292C207461726765742C207472756520293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C';
wwv_flow_api.g_varchar2_table(2349) := '392C20746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C6465722063757272656E746C792073656C6563746564206974656D733A20272C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E67';
wwv_flow_api.g_varchar2_table(2350) := '74682C20746869732E6D61736B2E73746174652E73656C6563746564293B0A20200A2020202020202020746869732E5F70726F6D707453656C65637456616C7565282074617267657420293B0A2020202020207D0A2020202020200A20200A202020207D';
wwv_flow_api.g_varchar2_table(2351) := '2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B48616E646C65466F6375730A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A';
wwv_flow_api.g_varchar2_table(2352) := '2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6D61736B48616E646C65466F6375733A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(2353) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B48616E646C65466F637573272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020';
wwv_flow_api.g_varchar2_table(2354) := '20202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B48616E646C65426C75720A202020202020';
wwv_flow_api.g_varchar2_table(2355) := '2A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B48616E646C65426C75723A2066756E63';
wwv_flow_api.g_varchar2_table(2356) := '74696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B48616E646C65426C7572272C207B0A202020';
wwv_flow_api.g_varchar2_table(2357) := '202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E';
wwv_flow_api.g_varchar2_table(2358) := '6374696F6E206E616D653A205F6D61736B48616E646C654B6579446F776E0A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020';
wwv_flow_api.g_varchar2_table(2359) := '202A0A202020202A2F20200A202020205F6D61736B48616E646C654B6579446F776E3A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2074';
wwv_flow_api.g_varchar2_table(2360) := '6869732E6C6F675072656669782C20275F6D61736B48616E646C654B6579446F776E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A20202020';
wwv_flow_api.g_varchar2_table(2361) := '20207D293B0A20200A2020202020207661720A20202020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0A202020202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174';
wwv_flow_api.g_varchar2_table(2362) := '696F6E4B657928206B6579436F646520293B0A20200A202020202020696620282069734E617669676174696F6E446972656374696F6E203D3D2027444F574E272029207B0A2020202020202020746869732E5F70726F6D7074536561726368496E707574';
wwv_flow_api.g_varchar2_table(2363) := '466F63757348616E646C657228293B0A2020202020207D0A20200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B48616E646C654B657950726573730A2020202020202A20';
wwv_flow_api.g_varchar2_table(2364) := '6465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B48616E646C654B657950726573733A206675';
wwv_flow_api.g_varchar2_table(2365) := '6E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6D61736B48616E646C654B65795072657373272C20';
wwv_flow_api.g_varchar2_table(2366) := '7B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020696620282021746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(2367) := '6E67732E69734175746F636F6D706C657465417661696C61626C652029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F6D6173';
wwv_flow_api.g_varchar2_table(2368) := '6B48616E646C654B65795072657373272C20274175746F636F6D706C657465206973206E6F7420617661696C61626C6527293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A20202020202069662028207045';
wwv_flow_api.g_varchar2_table(2369) := '76656E742E6B6579436F646520213D2031332029207B0A2020202020202020746869732E70726F6D70742E696E7075742E76616C2820704576656E742E6B657920290A2020202020207D0A20200A202020202020746869732E70726F6D70742E696E7075';
wwv_flow_api.g_varchar2_table(2370) := '742E7472696767657228276B6579757027293B0A20200A202020202020746869732E5F70726F6D707453686F7728293B0A20200A2020202020202F2F7462642074696D656F75740A20202020202073657454696D656F75742820242E70726F7879282066';
wwv_flow_api.g_varchar2_table(2371) := '756E6374696F6E28297B0A2020202020202020746869732E5F70726F6D7074536574466F63757328293B0A2020202020207D2C207468697320292C2031303020293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E';
wwv_flow_api.g_varchar2_table(2372) := '6374696F6E206E616D653A205F70726F6D7074536561726368496E707574466F63757348616E646C65720A2020202020202A206465736372697074696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020';
wwv_flow_api.g_varchar2_table(2373) := '202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074536561726368496E707574466F63757348616E646C65723A2066756E6374696F6E2820704576656E7420297B0A202020202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(2374) := '7361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C207B0A202020202020202022617267756D656E7473223A2061726775';
wwv_flow_api.g_varchar2_table(2375) := '6D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A2020202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0A2020202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(2376) := '6275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C202741504558206974656D2069732064697361';
wwv_flow_api.g_varchar2_table(2377) := '626C65642C20646F206E6F7468696E672E27293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020696620282021746869732E706C7567696E53657474696E67732E69734175746F636F6D706C65';
wwv_flow_api.g_varchar2_table(2378) := '7465417661696C61626C652029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F';
wwv_flow_api.g_varchar2_table(2379) := '63757348616E646C6572272C20274175746F636F6D706C657465206973206E6F7420617661696C61626C6527293B0A202020202020202072657475726E20766F69642830293B0A2020202020207D0A20200A202020202020696620282021746869732E70';
wwv_flow_api.g_varchar2_table(2380) := '726F6D70742E697356697369626C652029207B0A2020202020202020746869732E5F70726F6D707453686F7728293B0A20200A2020202020202020696620280A20202020202020202020746869732E706C7567696E53657474696E67732E70726F6D7074';
wwv_flow_api.g_varchar2_table(2381) := '2E69734D696E696D616C496E7075744C656E6774680A20202020202020202020262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203D3D20300A2020202020202020297B0A202020';
wwv_flow_api.g_varchar2_table(2382) := '20202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020293B0A20202020202020207D0A2020';
wwv_flow_api.g_varchar2_table(2383) := '202020202020656C73652069662028200A20202020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E677468200A20202020202020202020262620746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(2384) := '7449734D696E696D616C496E7075744C656E6774684D61746368656428290A202020202020202029207B0A20202020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D';
wwv_flow_api.g_varchar2_table(2385) := '50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F5820293B0A20202020202020207D0A2020202020202020656C7365207B0A20202020202020202020746869732E5F70726F6D7074416A6178506572666F726D28293B0A20202020';
wwv_flow_api.g_varchar2_table(2386) := '202020207D0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0A2020202020207D0A202020200A202020202020746869732E5F70726F6D7074536574466F637573';
wwv_flow_api.g_varchar2_table(2387) := '28293B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D707449734D696E696D616C496E7075744C656E6774684D6174636865640A2020202020202A206465736372697074';
wwv_flow_api.g_varchar2_table(2388) := '696F6E20203A200A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D707449734D696E696D616C496E7075744C656E6774684D617463';
wwv_flow_api.g_varchar2_table(2389) := '6865643A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707449734D696E696D616C496E7075744C';
wwv_flow_api.g_varchar2_table(2390) := '656E6774684D617463686564272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020207661722072657475726E56616C7565203D20746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(2391) := '696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203E20746869732E70726F6D70742E696E7075742E76616C28292E6C656E6774683B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F';
wwv_flow_api.g_varchar2_table(2392) := '4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707449734D696E696D616C496E7075744C656E6774684D6174636865642072657475726E73272C2072657475726E56616C7565293B0A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(2393) := '2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F736F72744A736F6E0A2020202020202A206465736372697074696F6E0A2020202020202A20706172';
wwv_flow_api.g_varchar2_table(2394) := '616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F736F72744A736F6E3A2066756E6374696F6E28207050726F70657274792C2070446972656374696F6E20297B0A20202020';
wwv_flow_api.g_varchar2_table(2395) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F736F72744A736F6E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74';
wwv_flow_api.g_varchar2_table(2396) := '732C0A2020202020202020227050726F7065727479223A207050726F70657274792C0A20202020202020202270446972656374696F6E223A2070446972656374696F6E0A2020202020207D293B0A20200A20202020202076617220736F72744F72646572';
wwv_flow_api.g_varchar2_table(2397) := '3B0A20200A202020202020696620282070446972656374696F6E203D3D2027617363272029207B0A2020202020202020736F72744F72646572203D20313B0A2020202020207D0A202020202020656C7365207B0A2020202020202020736F72744F726465';
wwv_flow_api.g_varchar2_table(2398) := '72203D202D313B0A2020202020207D0A20200A20202020202072657475726E2066756E6374696F6E2028612C6229207B0A2020202020202020202076617220726573756C74203D2028615B7050726F70657274795D203C20625B7050726F70657274795D';
wwv_flow_api.g_varchar2_table(2399) := '29203F202D31203A2028615B7050726F70657274795D203E20625B7050726F70657274795D29203F2031203A20303B0A2020202020202020202072657475726E20726573756C74202A20736F72744F726465723B0A2020202020207D0A20200A20202020';
wwv_flow_api.g_varchar2_table(2400) := '7D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F686967686C69676874576F72640A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A20';
wwv_flow_api.g_varchar2_table(2401) := '20202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F686967686C69676874576F72643A2066756E6374696F6E282070546578742C2070536561726368537472696E6720297B0A202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(2402) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F686967686C69676874576F7264272C207B0A202020202020202022617267756D656E747322203A20617267756D656E74732C0A';
wwv_flow_api.g_varchar2_table(2403) := '2020202020202020227054657874222020202020202020203A2070546578742C0A20202020202020202270536561726368537472696E6722203A2070536561726368537472696E670A2020202020207D293B0A20200A202020202020766172200A202020';
wwv_flow_api.g_varchar2_table(2404) := '202020202074657874203D2070546578742C0A2020202020202020736561726368537472696E67203D2070536561726368537472696E672C0A2020202020202020726573756C74546578742C0A2020202020202020706F736974696F6E203D2074657874';
wwv_flow_api.g_varchar2_table(2405) := '2E746F55707065724361736528292E696E6465784F662820736561726368537472696E672E746F557070657243617365282920292C0A202020202020202073746172742C0A20202020202020206D6964646C652C0A2020202020202020656E643B0A2020';
wwv_flow_api.g_varchar2_table(2406) := '0A20200A2020202020206966202820706F736974696F6E203E202D312029207B0A202020202020202073746172742020203D20746578742E73756273747228302C20706F736974696F6E20293B0A20202020202020206D6964646C6520203D2074657874';
wwv_flow_api.g_varchar2_table(2407) := '2E7375627374722873746172742E6C656E6774682C20736561726368537472696E672E6C656E677468293B0A2020202020202020656E6420202020203D20746578742E73756273747228706F736974696F6E2B6D6964646C652E6C656E6774682C207465';
wwv_flow_api.g_varchar2_table(2408) := '78742E6C656E677468293B0A202020202020202072657475726E2073746172742B273C7370616E20636C6173733D22686967686C69676874223E272B6D6964646C652B273C2F7370616E3E272B656E643B0A2020202020207D0A202020202020656C7365';
wwv_flow_api.g_varchar2_table(2409) := '207B0A202020202020202072657475726E2070546578743B0A2020202020207D0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6765744974656D436F6E7461696E65720A20202020';
wwv_flow_api.g_varchar2_table(2410) := '20202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6765744974656D436F6E7461696E65723A2066756E63';
wwv_flow_api.g_varchar2_table(2411) := '74696F6E28297B0A2020202020207661722072657475726E4F626A656374203D20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E6974656D436F6E7461696E657227293B0A20200A202020202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(2412) := '7361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765744974656D436F6E7461696E6572272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020';
wwv_flow_api.g_varchar2_table(2413) := '2020202272657475726E223A2072657475726E4F626A6563740A2020202020207D293B0A20200A20202020202072657475726E2072657475726E4F626A6563740A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A206675';
wwv_flow_api.g_varchar2_table(2414) := '6E6374696F6E206E616D653A205F69734E617669676174696F6E4B65790A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A2020';
wwv_flow_api.g_varchar2_table(2415) := '20202A2F20200A202020205F69734E617669676174696F6E4B65793A2066756E6374696F6E2820704B6579436F64652029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(2416) := '2E6C6F675072656669782C20275F69734E617669676174696F6E4B6579272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704B6579436F6465223A20704B6579436F64650A2020202020';
wwv_flow_api.g_varchar2_table(2417) := '207D293B0A20200A2020202020207661722072657475726E56616C7565203D2066616C73653B0A20200A2020202020206966202820704B6579436F6465203D3D2034302029207B0A202020202020202072657475726E56616C7565203D2027444F574E27';
wwv_flow_api.g_varchar2_table(2418) := '3B0A2020202020207D0A202020202020656C7365206966202820704B6579436F6465203D3D2033382029207B0A202020202020202072657475726E56616C7565203D20275550273B0A2020202020207D0A202020202020656C7365206966202820704B65';
wwv_flow_api.g_varchar2_table(2419) := '79436F6465203D3D2033372029207B0A202020202020202072657475726E56616C7565203D20274C454654273B0A2020202020207D0A202020202020656C7365206966202820704B6579436F6465203D3D2033392029207B0A2020202020202020726574';
wwv_flow_api.g_varchar2_table(2420) := '75726E56616C7565203D20275249474854273B0A2020202020207D0A20200A202020202020656C7365207B0A202020202020202072657475726E56616C7565203D2066616C73653B0A2020202020207D0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(2421) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F69734E617669676174696F6E4B6579272C202272657475726E73222C2072657475726E56616C7565293B0A20200A2020202020207265747572';
wwv_flow_api.g_varchar2_table(2422) := '6E2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B47657456616C75650A2020202020202A206465736372697074696F6E0A202020202020';
wwv_flow_api.g_varchar2_table(2423) := '2A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B47657456616C75653A2066756E6374696F6E28297B0A2020202020207661722072657475726E5661';
wwv_flow_api.g_varchar2_table(2424) := '6C7565203D20746869732E70726F6D70742E696E7075742E76616C28293B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B';
wwv_flow_api.g_varchar2_table(2425) := '47657456616C7565272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202272657475726E223A2072657475726E56616C75650A2020202020207D293B0A20200A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(2426) := '2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B4B657955704D616E61676549636F6E730A2020202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(2427) := '0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B4B657955704D616E61676549636F6E733A2066756E6374696F6E28297B0A202020';
wwv_flow_api.g_varchar2_table(2428) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B657955704D616E61676549636F6E73272C207B0A202020202020202022617267756D656E';
wwv_flow_api.g_varchar2_table(2429) := '7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020206966202820746869732E706F7075702E7365617263682E76616C28292E6C656E677468203D3D20302029207B0A2020202020202020746869732E706F7075702E7365';
wwv_flow_api.g_varchar2_table(2430) := '617263682E616464436C6173732827656D70747927293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E706F7075702E7365617263682E72656D6F7665436C6173732827656D70747927293B0A2020202020207D';
wwv_flow_api.g_varchar2_table(2431) := '0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F70726F6D7074496E7075744B6579446F776E48616E646C65720A2020202020202A206465736372697074696F6E0A2020202020202A';
wwv_flow_api.g_varchar2_table(2432) := '20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F70726F6D7074496E7075744B6579446F776E48616E646C65723A2066756E6374696F6E2820704576656E742029';
wwv_flow_api.g_varchar2_table(2433) := '7B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C207B0A202020202020';
wwv_flow_api.g_varchar2_table(2434) := '202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172200A20202020202020206B6579436F6465203D20704576656E742E';
wwv_flow_api.g_varchar2_table(2435) := '6B6579436F64652C0A202020202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579436F646520293B0A20200A2020202020206966202820704576656E742E73686966';
wwv_flow_api.g_varchar2_table(2436) := '744B65792029207B0A202020202020202072657475726E2066616C73653B0A2020202020207D0A20200A20202020202069662028206B6579436F6465203D3D20392029207B0A2020202020202020617065782E64656275672E6D65737361676528746869';
wwv_flow_api.g_varchar2_table(2437) := '732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C2027544142206B657920707265737365642E27293B0A2020202020202020746869732E5F70726F';
wwv_flow_api.g_varchar2_table(2438) := '6D7074486964652820746869732E6D61736B2E706F707570427574746F6E20293B0A2020202020207D2020202020200A202020202020656C73652069662028206B6579436F6465203D3D20323729207B0A20202020202020202F2F7768656E2065736361';
wwv_flow_api.g_varchar2_table(2439) := '7065206F722074616220707265737365640A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E';
wwv_flow_api.g_varchar2_table(2440) := '48616E646C6572272C2027455343415045206B657920707265737365642E27293B0A2020202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B0A20202020202020200A20202020';
wwv_flow_api.g_varchar2_table(2441) := '2020202072657475726E2066616C73653B0A2020202020207D0A202020202020656C736520696620282069734E617669676174696F6E446972656374696F6E2029207B0A20200A20202020202020206966202820746869732E6D61736B2E73746174652E';
wwv_flow_api.g_varchar2_table(2442) := '617265526573756C7473417661696C61626C652029207B0A20202020202020202020704576656E742E70726576656E7444656661756C7428293B0A20202020202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E';
wwv_flow_api.g_varchar2_table(2443) := '28293B0A20200A20202020202020202020746869732E5F70726F6D70744E617669676174654172726F7773282069734E617669676174696F6E446972656374696F6E20293B20200A20202020202020207D0A2020202020202020656C7365207B0A202020';
wwv_flow_api.g_varchar2_table(2444) := '20202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C20276E6F20726573756C';
wwv_flow_api.g_varchar2_table(2445) := '747320617661696C61626C6527293B20202020202020200A20202020202020207D0A2020202020207D0A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B4B657955700A';
wwv_flow_api.g_varchar2_table(2446) := '2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B4B657955703A2066756E6374696F';
wwv_flow_api.g_varchar2_table(2447) := '6E2820704576656E7420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570272C207B0A2020202020202020226172';
wwv_flow_api.g_varchar2_table(2448) := '67756D656E7473223A20617267756D656E74732C0A202020202020202022704576656E74223A20704576656E740A2020202020207D293B0A20200A202020202020766172200A20202020202020206B6579436F6465203D20704576656E742E6B6579436F';
wwv_flow_api.g_varchar2_table(2449) := '64652C0A202020202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579436F646520292C0A2020202020202020686967686C696768746564203D20746869732E5F7072';
wwv_flow_api.g_varchar2_table(2450) := '6F6D70744765744869676C69676874656428293B0A20200A20202020202069662028206B6579436F6465203D3D20392029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(2451) := '69732E6C6F675072656669782C20275F6D61736B4B65795570272C2027544142206B65792072656C65617365642E20446F206E6F7420706572666F726D206175746F636F6D706C65746520626563617573652069742077617320616C726561647927293B';
wwv_flow_api.g_varchar2_table(2452) := '0A202020202020202072657475726E2066616C73653B200A2020202020207D0A20200A20202020202069662028206B6579436F6465203D3D2031362029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(2453) := '475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570272C20275348494654206B65792072656C65617365642E20446F206E6F7420706572666F726D206175746F636F6D706C65746527293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(2454) := '72657475726E2066616C73653B200A2020202020207D0A20200A202020202020696620282069734E617669676174696F6E446972656374696F6E2029207B0A202020202020202072657475726E2066616C73653B0A2020202020207D0A20202020202065';
wwv_flow_api.g_varchar2_table(2455) := '6C73652069662028206B6579436F6465203D3D2031332029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570';
wwv_flow_api.g_varchar2_table(2456) := '272C2027656E746572207072657373656427293B0A20200A20202020202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C73652029207B0A2020202020202020202061706578';
wwv_flow_api.g_varchar2_table(2457) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027726573756C747320617265206E6F742079657420617661696C61626C6527293B202020';
wwv_flow_api.g_varchar2_table(2458) := '20202020200A2020202020202020202072657475726E2066616C73653B0A20202020202020207D0A20200A20202020202020206966202820686967686C6967687465642E697328275B617269612D73656C65637465643D2274727565225D27292029207B';
wwv_flow_api.g_varchar2_table(2459) := '0A20202020202020202020746869732E5F70726F6D7074556E73656C65637456616C75652820686967686C6967687465642E617474722827617269612D72657475726E2D76616C756527292C20686967686C6967687465642C207472756520293B0A2020';
wwv_flow_api.g_varchar2_table(2460) := '2020202020207D0A2020202020202020656C7365207B0A20202020202020202020746869732E5F70726F6D707453656C65637456616C75652820686967686C69676874656420293B0A20202020202020207D0A20202020202020200A2020202020202020';
wwv_flow_api.g_varchar2_table(2461) := '72657475726E2066616C73653B0A2020202020207D0A20200A202020202020696620280A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774680A2020202020202020';
wwv_flow_api.g_varchar2_table(2462) := '262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203D3D20300A2020202020202020262620746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203D3D2030';
wwv_flow_api.g_varchar2_table(2463) := '0A202020202020297B0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020293B0A20';
wwv_flow_api.g_varchar2_table(2464) := '20202020207D0A202020202020656C73652069662028200A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E677468200A2020202020202020262620746869732E5F7072';
wwv_flow_api.g_varchar2_table(2465) := '6F6D707449734D696E696D616C496E7075744C656E6774684D61746368656428290A20202020202029207B0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50';
wwv_flow_api.g_varchar2_table(2466) := '545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F5820293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020746869732E5F70726F6D7074416A6178506572666F726D28293B20200A2020202020207D0A20';
wwv_flow_api.g_varchar2_table(2467) := '20202020200A2020202020200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E0A2020202020202A20';
wwv_flow_api.g_varchar2_table(2468) := '6465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F636865636B496644617461436F6E7461696E73446973706C6179';
wwv_flow_api.g_varchar2_table(2469) := '436F6C756D6E3A2066756E6374696F6E282070446174612029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F636865636B4966446174';
wwv_flow_api.g_varchar2_table(2470) := '61436F6E7461696E73446973706C6179436F6C756D6E272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174610A2020202020207D293B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(2471) := '2076617220657869737473203D2066616C73653B0A20200A202020202020666F72202820766172206920696E2070446174612E646174612029207B0A20202020202020206966202870446174612E646174615B695D2E4420213D20756E646566696E6564';
wwv_flow_api.g_varchar2_table(2472) := '29207B0A20202020202020202020657869737473203D20747275653B0A20202020202020202020627265616B3B0A20202020202020207D0A2020202020207D0A20200A20202020202072657475726E206578697374733B0A202020207D2C0A202020202F';
wwv_flow_api.g_varchar2_table(2473) := '2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E0A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(2474) := '3A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E3A2066756E6374696F6E282070446174612029207B';
wwv_flow_api.g_varchar2_table(2475) := '0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E272C207B0A20';
wwv_flow_api.g_varchar2_table(2476) := '2020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227044617461223A2070446174610A2020202020207D293B0A20200A20202020202076617220657869737473203D2066616C73653B0A20200A20202020';
wwv_flow_api.g_varchar2_table(2477) := '2020666F72202820766172206920696E2070446174612E646174612029207B0A20202020202020206966202870446174612E646174615B695D2E5220213D20756E646566696E656429207B0A20202020202020202020657869737473203D20747275653B';
wwv_flow_api.g_varchar2_table(2478) := '0A20202020202020202020627265616B3B0A20202020202020207D0A2020202020207D0A20200A20202020202072657475726E206578697374733B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E';
wwv_flow_api.g_varchar2_table(2479) := '616D653A205F6765745363726F6C6C50657263656E740A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A';
wwv_flow_api.g_varchar2_table(2480) := '202020205F6765745363726F6C6C50657263656E743A2066756E6374696F6E282070456C656D656E742C20704D617848656967687420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C';
wwv_flow_api.g_varchar2_table(2481) := '20746869732E6C6F675072656669782C20275F6765745363726F6C6C50657263656E74272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A20202020202020202270456C656D656E742220203A2070456C656D65';
wwv_flow_api.g_varchar2_table(2482) := '6E742C0A202020202020202022704D6178486569676874223A20704D61784865696768740A2020202020207D293B0A20200A202020202020766172200A20202020202020207363726F6C6C6564203D2070456C656D656E742E7363726F6C6C546F702829';
wwv_flow_api.g_varchar2_table(2483) := '2C0A20202020202020207265616C486569676874203D2070456C656D656E742E6368696C6472656E28292E6F757465724865696768742829202D20704D61784865696768742C0A202020202020202070657263656E74203B0A20200A2020202020207065';
wwv_flow_api.g_varchar2_table(2484) := '7263656E74203D207363726F6C6C6564202A20313030202F207265616C4865696768743B0A20202020202070657263656E74203D2070657263656E74203E20313030203F20313030203A2070657263656E743B0A20200A202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(2485) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765745363726F6C6C50657263656E74272C207B0A202020202020202027726573756C74273A2070657263656E740A20202020';
wwv_flow_api.g_varchar2_table(2486) := '20207D293B0A20200A20202020202072657475726E2070657263656E743B0A202020207D2C0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6372656174654974656D506F707570427574746F';
wwv_flow_api.g_varchar2_table(2487) := '6E0A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6372656174654974656D506F707570427574';
wwv_flow_api.g_varchar2_table(2488) := '746F6E3A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6372656174654974656D506F707570427574746F6E';
wwv_flow_api.g_varchar2_table(2489) := '272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A20200A2020202020202F2F0A202020202020766172200A2020202020202020627574746F6E203D202428273C627574746F6E3E3C2F62';
wwv_flow_api.g_varchar2_table(2490) := '7574746F6E3E27292C0A202020202020202069636F6E203D202428273C7370616E3E3C2F7370616E3E27293B0A20200A20202020202069636F6E2E616464436C617373282027666120272B746869732E6F7074696F6E732E6974656D2E69636F6E20293B';
wwv_flow_api.g_varchar2_table(2491) := '0A20200A202020202020627574746F6E2E616464436C6173732827612D427574746F6E20612D427574746F6E2D2D706F7075704C4F5627293B0A202020202020627574746F6E2E6174747228276964272C20746869732E6F7074696F6E732E6974656D2E';
wwv_flow_api.g_varchar2_table(2492) := '6E616D652B275F425554544F4E2720293B0A202020202020627574746F6E2E6174747228276F6E636C69636B272C20276A6176617363726970743A2072657475726E2066616C73653B27290A202020202020627574746F6E2E617070656E64282069636F';
wwv_flow_api.g_varchar2_table(2493) := '6E20293B0A20200A20202020202072657475726E20627574746F6E3B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6372656174654974656D416A6178427574746F6E0A20202020';
wwv_flow_api.g_varchar2_table(2494) := '20202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6372656174654974656D416A6178427574746F6E3A20';
wwv_flow_api.g_varchar2_table(2495) := '66756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6372656174654974656D416A6178427574746F6E272C207B0A20';
wwv_flow_api.g_varchar2_table(2496) := '2020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B0A2020202020200A202020202020766172200A2020202020202020627574746F6E203D202428273C627574746F6E3E3C2F627574746F6E3E27292C0A20';
wwv_flow_api.g_varchar2_table(2497) := '2020202020202069636F6E203D202428273C7370616E3E3C2F7370616E3E27293B0A20200A20202020202069636F6E2E616464436C61737328202766612066612D7365617263682069636F6E2720293B0A20200A202020202020627574746F6E2E616464';
wwv_flow_api.g_varchar2_table(2498) := '436C6173732827612D427574746F6E20612D427574746F6E2D2D616A6178496E64696361746F7220612D427574746F6E2D2D706F7075704C4F5627293B0A202020202020627574746F6E2E6174747228276964272C20746869732E6F7074696F6E732E69';
wwv_flow_api.g_varchar2_table(2499) := '74656D2E6E616D652B275F425554544F4E5F414A41582720293B0A202020202020627574746F6E2E6174747228276F6E636C69636B272C20276A6176617363726970743A2072657475726E2066616C73653B27290A202020202020627574746F6E2E6170';
wwv_flow_api.g_varchar2_table(2500) := '70656E64282069636F6E20293B0A20200A20202020202072657475726E20627574746F6E3B0A202020207D2C20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B4765744D696E57696474';
wwv_flow_api.g_varchar2_table(2501) := '680A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B4765744D696E57696474683A';
wwv_flow_api.g_varchar2_table(2502) := '2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4765744D696E5769647468272C207B0A2020202020';
wwv_flow_api.g_varchar2_table(2503) := '20202022617267756D656E7473223A20617267756D656E74732C0A202020202020202027656C656D656E74273A20746869732E656C656D656E742E6765742830290A2020202020207D293B0A20200A202020202020766172200A20202020202020207265';
wwv_flow_api.g_varchar2_table(2504) := '7475726E56616C75652C0A2020202020202020636C6F6E6564203D20746869732E656C656D656E742E636C6F6E652866616C7365293B0A20200A2020202020206966202820746869732E656C656D656E742E697328273A76697369626C6527292029207B';
wwv_flow_api.g_varchar2_table(2505) := '0A202020202020202072657475726E56616C7565203D20746869732E656C656D656E742E6F75746572576964746828293B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(2506) := '2E6C6F675072656669782C20275F6D61736B4765744D696E5769647468272C20276974656D2069732076697369626C652C206D696E2D776964746820736574206261736564206F6E206F75746572207769647468206F662076697369626C65206974656D';
wwv_flow_api.g_varchar2_table(2507) := '2E27293B0A2020202020207D0A202020202020656C7365207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F6D61736B4765744D69';
wwv_flow_api.g_varchar2_table(2508) := '6E5769647468272C20276F6E2070616765206C6F6164206974656D2069732068696464656E2E2044657465726D696E6520697473206D696E2D7769647468206261736564206F6E20636C6F6E656420656C656D656E7420617070656E64656420746F2062';
wwv_flow_api.g_varchar2_table(2509) := '6F64792E27293B0A2020202020202020242827626F647927292E617070656E6428636C6F6E6564293B0A202020202020202072657475726E56616C7565203D20636C6F6E65642E6F75746572576964746828293B0A2020202020202020636C6F6E65642E';
wwv_flow_api.g_varchar2_table(2510) := '72656D6F766528293B0A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4765744D696E5769647468272C';
wwv_flow_api.g_varchar2_table(2511) := '207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202027656C656D656E74273A20746869732E656C656D656E742E6765742830292C0A20202020202020202272657475726E56616C7565223A207265';
wwv_flow_api.g_varchar2_table(2512) := '7475726E56616C75650A2020202020207D293B0A20200A20202020202072657475726E2072657475726E56616C75653B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6D61736B43';
wwv_flow_api.g_varchar2_table(2513) := '72656174654E65770A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F6D61736B4372656174';
wwv_flow_api.g_varchar2_table(2514) := '654E65773A2066756E6374696F6E28297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C207B0A2020';
wwv_flow_api.g_varchar2_table(2515) := '20202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202027656C656D656E74273A20746869732E656C656D656E742E6765742830290A2020202020207D293B0A2020202020200A202020202020766172200A202020';
wwv_flow_api.g_varchar2_table(2516) := '20202020206D696E5769647468202020203D20302C0A2020202020202020636C6F6E65642C0A2020202020202020636C617373657320202020203D20746869732E656C656D656E742E6765742830292E617474726962757465732E636C61737320213D20';
wwv_flow_api.g_varchar2_table(2517) := '756E646566696E6564203F20746869732E656C656D656E742E6765742830292E617474726962757465732E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0A20202020202020206D61736B4C617965722020203D202428273C6469';
wwv_flow_api.g_varchar2_table(2518) := '7620636C6173733D226D61736B696E67223E3C2F6469763E27292C0A2020202020202020706F707570427574746F6E203D20746869732E5F6372656174654974656D506F707570427574746F6E28292C0A2020202020202020616A617853746174654275';
wwv_flow_api.g_varchar2_table(2519) := '74746F6E203D20746869732E5F6372656174654974656D416A6178427574746F6E28292C0A202020202020202070616C6365686F6C64657254657874203D20746869732E656C656D656E742E617474722827706C616365686F6C6465722729203D3D2075';
wwv_flow_api.g_varchar2_table(2520) := '6E646566696E6564203F202222203A20746869732E656C656D656E742E617474722827706C616365686F6C64657227292C0A2020202020202020706C616365686F6C646572203D202428273C64697620636C6173733D22706C616365686F6C646572223E';
wwv_flow_api.g_varchar2_table(2521) := '272B70616C6365686F6C646572546578742B273C2F6469763E27292C0A2020202020202020636F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0A20202020202020206974656D436F6E7461696E6572203D202428273C6469763E3C';
wwv_flow_api.g_varchar2_table(2522) := '2F6469763E27292C0A20202020202020206974656D436F6E7461696E6572426F6479203D202428273C6469763E3C2F6469763E27292C0A202020202020202074616773436F6E7465696E6572203D202428273C6469763E3C2F6469763E27292C0A202020';
wwv_flow_api.g_varchar2_table(2523) := '202020202072657475726E4F626A6563743B0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C20';
wwv_flow_api.g_varchar2_table(2524) := '27636C6173736573272C20636C6173736573293B0A20200A202020202020636F6E7461696E65720A20202020202020202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D206D61736B27293B0A20200A2020202020';
wwv_flow_api.g_varchar2_table(2525) := '20666F722028766172206920696E20636C617373657329207B0A2020202020202020636F6E7461696E65722E616464436C6173732820636C61737365735B695D2B272D6D61736B2720293B20200A2020202020207D0A20202020202020200A2020202020';
wwv_flow_api.g_varchar2_table(2526) := '206974656D436F6E7461696E65720A20202020202020202E616464436C61737328276974656D436F6E7461696E657227290A20202020202020202F2F2E6373732827626F72646572436F6C6F72272C20746869732E696E7075744373732E626F72646572';
wwv_flow_api.g_varchar2_table(2527) := '436F6C6F72293B0A20200A2020202020202F2F6966202820746869732E706C7567696E53657474696E67732E69734175746F636F6D706C657465417661696C61626C65203D3D20747275652029207B0A20202020202020202F2F696E2063617365206F66';
wwv_flow_api.g_varchar2_table(2528) := '20706F707570207265706F7274206973206E6F7420617661696C61626C652C206D616B65206D61736B20666F63757361626C650A20202020202020202F2F736F2074686520656E642D757365722063616E206E6176696761746520746F206669656C6420';
wwv_flow_api.g_varchar2_table(2529) := '7573696E6720746162206B65790A20202020202020206974656D436F6E7461696E65722E61747472287B0A2020202020202020202027746162696E646578273A20302C0A2020202020202020202027646174612D6D61736B273A20746869732E77696467';
wwv_flow_api.g_varchar2_table(2530) := '6574556E6971756549640A20202020202020207D293B0A2020202020202F2F7D0A20200A2020202020206974656D436F6E7461696E6572426F64790A20202020202020202E616464436C61737328276974656D436F6E7461696E6572426F647927290A20';
wwv_flow_api.g_varchar2_table(2531) := '202020202020202E617070656E64282074616773436F6E7465696E65722E616464436C617373282774616773272920290A20202020202020202E617070656E6428206D61736B4C6179657220290A20202020202020202E617070656E64546F2820697465';
wwv_flow_api.g_varchar2_table(2532) := '6D436F6E7461696E657220293B0A20200A2020202020206974656D436F6E7461696E65722E617070656E642820706C616365686F6C64657220293B0A20200A2020202020206974656D436F6E7461696E65722E617070656E64546F2820636F6E7461696E';
wwv_flow_api.g_varchar2_table(2533) := '657220293B0A20200A2020202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0A2020202020202020706F707570427574746F6E2E6F6E2827636C69636B272C2024';
wwv_flow_api.g_varchar2_table(2534) := '2E70726F787928746869732E5F706F7075704F70656E4279427574746F6E2C207468697329293B0A20202020202020206974656D436F6E7461696E65722E61667465722820706F707570427574746F6E20293B0A2020202020207D0A202020200A202020';
wwv_flow_api.g_varchar2_table(2535) := '2020206974656D436F6E7461696E65722E61667465722820616A61785374617465427574746F6E2E68696465282920293B0A20200A2020202020202F2F7472616E7366657220726573756C74207769647468206F662041504558206974656D2061667465';
wwv_flow_api.g_varchar2_table(2536) := '722072656E646572696E672074686520656C656D656E740A202020202020636F6E7461696E65722E637373287B0A2020202020202020226D696E576964746822203A20746869732E5F6D61736B4765744D696E576964746828292C0A2020202020202020';
wwv_flow_api.g_varchar2_table(2537) := '226D696E486569676874223A20746869732E656C656D656E742E6F7574657248656967687428290A2020202020207D293B2020202020200A20200A20202020202072657475726E4F626A656374203D207B0A202020202020202022636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(2538) := '222020202020202020203A20636F6E7461696E65722C0A2020202020202020226974656D436F6E7461696E65722220202020203A206974656D436F6E7461696E65722C0A2020202020202020226974656D436F6E7461696E6572426F647922203A206974';
wwv_flow_api.g_varchar2_table(2539) := '656D436F6E7461696E6572426F64792C0A20202020202020202274616773436F6E7461696E65722220202020203A2074616773436F6E7465696E65722C0A202020202020202022706C616365686F6C64657222202020202020203A20706C616365686F6C';
wwv_flow_api.g_varchar2_table(2540) := '6465722C0A202020202020202022706F707570427574746F6E22202020202020203A20706F707570427574746F6E2C0A202020202020202022616A61785374617465427574746F6E222020203A207B0A2020202020202020202022627574746F6E223A20';
wwv_flow_api.g_varchar2_table(2541) := '616A61785374617465427574746F6E2C0A20202020202020202020226572726F724D657373616765223A20756E646566696E65642C0A202020202020202020202269734572726F72223A2066616C73650A20202020202020207D2C0A2020202020202020';
wwv_flow_api.g_varchar2_table(2542) := '2F2F0A2020202020202020226669656C64436F6E7461696E65722220202020202020203A2024282723272B746869732E6F7074696F6E732E6974656D2E6E616D652B275F434F4E5441494E455227292C0A2020202020202020226C6162656C2220202020';
wwv_flow_api.g_varchar2_table(2543) := '202020202020202020202020203A202428275B666F723D272B746869732E6F7074696F6E732E6974656D2E6E616D652B275D27292C0A2020202020202020226C6162656C5769647468222020202020202020202020203A202428275B666F723D272B7468';
wwv_flow_api.g_varchar2_table(2544) := '69732E6F7074696F6E732E6974656D2E6E616D652B275D27292E6F75746572576964746828292C0A2020202020202020227374617465223A207B0A20202020202020202020227868722220202020202020202020202020202020203A20756E646566696E';
wwv_flow_api.g_varchar2_table(2545) := '65642C0A2020202020202020202022697356697369626C652220202020202020202020203A2066616C73652C0A202020202020202020202263757272656E7453656172636854657874222020203A2027272C0A20202020202020202020226C6173744665';
wwv_flow_api.g_varchar2_table(2546) := '7463686564506167652220202020203A206E756C6C2C0A2020202020202020202022746F74616C436F756E7422202020202020202020203A20302C0A2020202020202020202022616A617852756E6E696E67222020202020202020203A2066616C73652C';
wwv_flow_api.g_varchar2_table(2547) := '0A202020202020202020202263757272656E7453656C656374696F6E22202020203A20756E646566696E65642C0A2020202020202020202022617265526573756C7473417661696C61626C6522203A2066616C73652C0A20202020202020202020227365';
wwv_flow_api.g_varchar2_table(2548) := '6C6563746564222020202020202020202020203A205B5D2C0A20202020202020202020227461677322202020202020202020202020202020203A205B5D2C0A2020202020202020202022736F727465642220202020202020202020202020203A20756E64';
wwv_flow_api.g_varchar2_table(2549) := '6566696E65642C0A202020202020202020202264697361626C6564222020202020202020202020203A2066616C73652C0A2020202020202020202022657874726156616C756573222020202020202020203A205B5D2C0A20202020202020202020226572';
wwv_flow_api.g_varchar2_table(2550) := '726F72222020202020202020202020202020203A2066616C73650A20202020202020207D0A2020202020207D3B0A20200A202020202020696620282072657475726E4F626A6563742E6669656C64436F6E7461696E65722E697328272E742D466F726D2D';
wwv_flow_api.g_varchar2_table(2551) := '6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C27292029207B0A202020202020202072657475726E4F626A6563742E6669656C64436F6E7461696E65722E616464436C617373282769732D61637469766527293B0A2020202020';
wwv_flow_api.g_varchar2_table(2552) := '207D0A20200A20202020202072657475726E4F626A6563742E6974656D436F6E7461696E65720A20202020202020202E6F6E2827636C69636B272C20202020242E70726F78792820746869732E5F70726F6D7074536561726368496E707574466F637573';
wwv_flow_api.g_varchar2_table(2553) := '48616E646C65722C2074686973202920290A20202020202020202E6F6E2827666F637573272C20202020242E70726F78792820746869732E5F6D61736B48616E646C65466F6375732C2074686973202920290A20202020202020202E6F6E2827626C7572';
wwv_flow_api.g_varchar2_table(2554) := '272C2020202020242E70726F78792820746869732E5F6D61736B48616E646C65426C75722C2074686973202920290A20202020202020202E6F6E28276B65797072657373272C20242E70726F78792820746869732E5F6D61736B48616E646C654B657950';
wwv_flow_api.g_varchar2_table(2555) := '726573732C2074686973202920290A20202020202020202E6F6E28276B6579646F776E272C2020242E70726F78792820746869732E5F6D61736B48616E646C654B6579446F776E2C2074686973202920293B0A20200A2020202020202F2F6C697374656E';
wwv_flow_api.g_varchar2_table(2556) := '20746F206576656E7420636C69636B206F6E202278222069636F6E20696E207461670A20202020202072657475726E4F626A6563742E74616773436F6E7461696E65722E6F6E2827636C69636B272C20272E72656D6F7665272C20242E70726F78792820';
wwv_flow_api.g_varchar2_table(2557) := '746869732E5F74616752656D6F766546726F6D4D61736B2C2074686973202920293B0A20200A20202020202072657475726E4F626A6563742E706F707570427574746F6E2E6F6E28276B6579646F776E272C20242E70726F78792820746869732E5F6D61';
wwv_flow_api.g_varchar2_table(2558) := '736B506F707570427574746F6E4B6579446F776E2C2074686973202920293B0A20200A20202020202072657475726E2072657475726E4F626A6563743B0A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(2559) := '206E616D653A205F77726974655175657279546F436F6E736F6C650A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A20202020';
wwv_flow_api.g_varchar2_table(2560) := '2A2F0A202020205F77726974655175657279546F436F6E736F6C653A2066756E6374696F6E28207051756572792029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C';
wwv_flow_api.g_varchar2_table(2561) := '6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74730A2020202020207D293B200A20200A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(2562) := '737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027737461727427293B200A20200A202020202020766172206172726179203D20705175';
wwv_flow_api.g_varchar2_table(2563) := '6572792E73706C697428225C6E22293B0A20200A202020202020666F7220282076617220693D303B2069203C2061727261792E6C656E6774683B20692B2B2029207B0A2020202020202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(2564) := '5F4C4F475F4C4556454C362C20272320272C2061727261795B695D293B202020202020200A2020202020207D0A20200A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(2565) := '5072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027656E6427293B200A202020207D2C0A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F7468726F774572726F72546578';
wwv_flow_api.g_varchar2_table(2566) := '740A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A2020202020202A0A202020202A2F20200A202020205F7468726F774572726F72546578743A20';
wwv_flow_api.g_varchar2_table(2567) := '66756E6374696F6E2820705465787420297B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F7468726F774572726F7254657874272C207B0A';
wwv_flow_api.g_varchar2_table(2568) := '202020202020202022617267756D656E7473223A20617267756D656E74732C0A2020202020202020227054657874223A2070546578742020202020200A2020202020207D293B200A2020202020207468726F772070546578743B0A20200A202020207D2C';
wwv_flow_api.g_varchar2_table(2569) := '0A20200A202020202F2A0A2020202020202A0A2020202020202A2066756E6374696F6E206E616D653A205F6465626F756E63650A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A';
wwv_flow_api.g_varchar2_table(2570) := '2020202020202A2020202D0A2020202020202A0A202020202A2F0A202020205F6465626F756E63653A2066756E6374696F6E2866756E632C20776169742C20696D6D65646961746529207B0A2020202020202F2F617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(2571) := '676528746869732E435F4C4F475F4C4556454C392C20276465626F756E6365272C202766756E63272C2066756E632C202777616974272C20776169742C2027696D6D656469617465272C20696D6D656469617465293B0A20200A20202020202076617220';
wwv_flow_api.g_varchar2_table(2572) := '74696D656F75743B0A20202020202072657475726E2066756E6374696F6E2829207B0A202020202020202076617220636F6E74657874203D20746869732C2061726773203D20617267756D656E74733B0A2020202020202020766172206C61746572203D';
wwv_flow_api.g_varchar2_table(2573) := '2066756E6374696F6E2829207B0A2020202020202020202074696D656F7574203D206E756C6C3B0A202020202020202020206966202821696D6D656469617465292066756E632E6170706C7928636F6E746578742C2061726773293B0A20202020202020';
wwv_flow_api.g_varchar2_table(2574) := '207D3B0A20202020202020207661722063616C6C4E6F77203D20696D6D656469617465202626202174696D656F75743B0A2020202020202020636C65617254696D656F75742874696D656F7574293B0A202020202020202074696D656F7574203D207365';
wwv_flow_api.g_varchar2_table(2575) := '7454696D656F7574286C617465722C2077616974293B0A20202020202020206966202863616C6C4E6F77292066756E632E6170706C7928636F6E746578742C2061726773293B0A2020202020207D3B0A202020207D2C0A202020202F2A0A202020202020';
wwv_flow_api.g_varchar2_table(2576) := '2A0A2020202020202A2066756E6374696F6E206E616D653A205F7468726F774572726F720A2020202020202A206465736372697074696F6E0A2020202020202A20706172616D733A0A2020202020202A2020202D0A2020202020202A2020202D0A202020';
wwv_flow_api.g_varchar2_table(2577) := '2020202A0A202020202A2F20200A202020205F7468726F774572726F723A2066756E6374696F6E2820704572726F725468726F776E2029207B0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C';
wwv_flow_api.g_varchar2_table(2578) := '20746869732E6C6F675072656669782C20275F7468726F774572726F72272C207B0A202020202020202022617267756D656E7473223A20617267756D656E74732C0A202020202020202022704572726F725468726F776E223A20704572726F725468726F';
wwv_flow_api.g_varchar2_table(2579) := '776E0A2020202020207D293B200A20200A2020202020207468726F7720704572726F725468726F776E3B0A202020207D0A20200A20207D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(510206198538181981)
,p_plugin_id=>wwv_flow_api.id(502801666440273201)
,p_file_name=>'enhancedLovItem.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
