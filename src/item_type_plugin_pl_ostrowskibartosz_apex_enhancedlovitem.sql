prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>1680777737499838
,p_default_application_id=>1001
,p_default_owner=>'APEXCONNECT'
);
end;
/
prompt --application/shared_components/plugins/item_type/pl_ostrowskibartosz_apex_enhancedlovitem
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(133975348538976887)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_display_name=>'APEX Enhanced LOV item'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
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
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'APEX Enhanced LOV item is powerful combobox to select singular / multiple values in two modes: autocomplete and popup report. The plugin provides high customization possibilities through its attributes. ',
'</p>',
'<p>',
'  Author: Bartosz Ostrowski, Twitter: bostrowsk1, E-mail: ostrowski.bartosz@gmail.com',
'</p>'))
,p_version_identifier=>'1.0.3'
,p_about_url=>'https://github.com/bostrowski/APEX-Enhanced-Lov-Item'
,p_files_version=>105
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(134035369400710406)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
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
,p_depending_on_attribute_id=>wwv_flow_api.id(134052554219088401)
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
 p_id=>wwv_flow_api.id(134035941352711755)
,p_plugin_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(134036360364712778)
,p_plugin_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(135312627557562454)
,p_plugin_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(135824375810030810)
,p_plugin_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(135896471945386792)
,p_plugin_attribute_id=>wwv_flow_api.id(134035369400710406)
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
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(134036712953716015)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Custom Search Logic'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(134037347629718445)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>45
,p_prompt=>'Custom Autocomplete Template'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(134046082270069502)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Default Autocomplete Search'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D%'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(134046974051073006)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>10
,p_display_value=>'DISPLAY_COLUMN %'
,p_return_value=>'D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134047313803073815)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>20
,p_display_value=>'% DISPLAY_COLUMN'
,p_return_value=>'%D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134047708545074581)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>30
,p_display_value=>'% DISPLAY_COLUMN %'
,p_return_value=>'%D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134048184268075204)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>40
,p_display_value=>'DISPLAY_COLUMN'
,p_return_value=>'D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134048527592076468)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>50
,p_display_value=>'RETURN_COLUMN %'
,p_return_value=>'R%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134048906791077592)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>60
,p_display_value=>'% RETURN_COLUMN'
,p_return_value=>'%R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134049326507078279)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
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
 p_id=>wwv_flow_api.id(134049761982078797)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>80
,p_display_value=>'RETURN_COLUMN'
,p_return_value=>'R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134050141245079409)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
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
 p_id=>wwv_flow_api.id(134050507369080079)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
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
 p_id=>wwv_flow_api.id(134050896951080957)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
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
 p_id=>wwv_flow_api.id(134051326846081616)
,p_plugin_attribute_id=>wwv_flow_api.id(134046082270069502)
,p_display_sequence=>120
,p_display_value=>'DISPLAY_OR_RETURN_COLUMN'
,p_return_value=>'DR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>upper(r) like upper(:SEARCH_STRING)',
'or upper(d) like upper(:SEARCH_STRING)',
'</code></pre>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(134052554219088401)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
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
 p_id=>wwv_flow_api.id(134053928661090859)
,p_plugin_attribute_id=>wwv_flow_api.id(134052554219088401)
,p_display_sequence=>10
,p_display_value=>'Autocomplete'
,p_return_value=>'AUTOCOMPLETE'
,p_help_text=>'When checked the end-user can perform autocomplete.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134054354611092863)
,p_plugin_attribute_id=>wwv_flow_api.id(134052554219088401)
,p_display_sequence=>20
,p_display_value=>'Popup Report'
,p_return_value=>'POPOUP_REPORT'
,p_help_text=>'When checked the end-user can select values from popup report.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(134307175950054928)
,p_plugin_attribute_id=>wwv_flow_api.id(134052554219088401)
,p_display_sequence=>30
,p_display_value=>'Multiple Selection'
,p_return_value=>'MS'
,p_help_text=>'When checked end-user can select multiple values in autocomplete and popup report. Otherwise end-user can select singular value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(134197051553491629)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Popup Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134052554219088401)
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
 p_id=>wwv_flow_api.id(134690391575349180)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
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
 p_id=>wwv_flow_api.id(134703346713112697)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>50
,p_display_value=>'Clicking On Row Selects It'
,p_return_value=>'CORSI'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, clicking on row in popup report selects radio / checkbox input.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(136818211299005457)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
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
 p_id=>wwv_flow_api.id(136873844099073178)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>70
,p_display_value=>'Resizable'
,p_return_value=>'RESIZABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to resize popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(136874193814081854)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>80
,p_display_value=>'Draggable'
,p_return_value=>'DRAGGABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change position of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(136874683041082872)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>90
,p_display_value=>'Close On Escape'
,p_return_value=>'COE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible close popup report by pressing <code>Escape</code> key.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(136908408675166852)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>100
,p_display_value=>'Rows Per Page'
,p_return_value=>'RPP'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change amount of rows rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(136908843510168464)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>110
,p_display_value=>'Search In All Columns'
,p_return_value=>'SIAC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to search for given phrase in all columns of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(137062273816868705)
,p_plugin_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_display_sequence=>120
,p_display_value=>'Adjust Height To Report Rows'
,p_return_value=>'AHTRR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, popup report adjusts its height its content height.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(134690865767357569)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Report Columns Configuration'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134197051553491629)
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
 p_id=>wwv_flow_api.id(135313042982567946)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>15
,p_prompt=>'Number Of Tags'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(135824774280080918)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>11
,p_prompt=>'Minimal Input Length'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_unit=>'Characters'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134035369400710406)
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
 p_id=>wwv_flow_api.id(136704582710247593)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Report Basic Configuration'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'DDC:DRC'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134197051553491629)
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
 p_id=>wwv_flow_api.id(136704861081248505)
,p_plugin_attribute_id=>wwv_flow_api.id(136704582710247593)
,p_display_sequence=>10
,p_display_value=>'Display "Display" Column'
,p_return_value=>'DDC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>D</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(136705191277249135)
,p_plugin_attribute_id=>wwv_flow_api.id(136704582710247593)
,p_display_sequence=>20
,p_display_value=>'Display "Return" Column'
,p_return_value=>'DRC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>R</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(136818607042008738)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Custom Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'CT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(140890828712447148)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>62
,p_prompt=>'Dialog Width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'720'
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134052554219088401)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'POPOUP_REPORT'
,p_help_text=>'This attribute defines popup dialog width.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(140921749393448779)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>64
,p_prompt=>'Dialog Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'541'
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134197051553491629)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'AHTRR'
,p_help_text=>'This attribute defines popup dialog height.'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35994252598287005)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Autocomplete Results Max Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'200'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134052554219088401)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_help_text=>'This attribute defines maximum height in pixels for autocomplete.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36022699844516228)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Autocomplete Rows To Fetch'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'20'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(134052554219088401)
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
 p_id=>wwv_flow_api.id(133980054936882530)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'LOV'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106663597352960231)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_popup_data_rendered'
,p_display_name=>'Popup report data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106662939895960230)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_popup_error'
,p_display_name=>'Popup report error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106663245204960231)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_popup_hidden'
,p_display_name=>'Popup report closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106664014598960231)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_popup_shown'
,p_display_name=>'Popup report open'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106665628151960233)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_prompt_data_appended'
,p_display_name=>'Autocomplete data appended'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106666004683960233)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_prompt_data_rendered'
,p_display_name=>'Autocomplete data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106665194360960232)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_prompt_error'
,p_display_name=>'Autocomplete error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106664832044960232)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_name=>'paeli_prompt_hidden'
,p_display_name=>'Autocomplete closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(106664384948960232)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
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
 p_id=>wwv_flow_api.id(134019429770664670)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
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
wwv_flow_api.g_varchar2_table(19) := '2E2E272C0D0A2020435F50524F4D50545F544558545F4C4F41445F4D4F524520202020202020202020202020203A20274C6F6164206D6F72652E2E2E272C0D0A2020435F4552524F525F44454255475F4F46462020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(20) := '2020203A2027506C6561736520636F6E74616374206170706C69636174696F6E2061646D696E6973747261746F7220666F72206D6F726520696E666F726D6174696F6E2E272B225C6E222B2744657461696C656420696E666F726D6174696F6E20617661';
wwv_flow_api.g_varchar2_table(21) := '696C61626C6520696E206465627567206D6F64652E272C0D0A2020435F544147535F4C494D495445445F4F5448455253202020202020202020202020202020203A2027616E64202530206D6F72652E2E2E272C0D0A2020435F544147535F4C494D495445';
wwv_flow_api.g_varchar2_table(22) := '445F302020202020202020202020202020202020202020203A202725302073656C6563746564272C0D0A2020435F504F5055505F504147494E4154494F4E5F5052455620202020202020202020202020203A202750726576696F7573272C0D0A2020435F';
wwv_flow_api.g_varchar2_table(23) := '504F5055505F504147494E4154494F4E5F4E45585420202020202020202020202020203A20274E657874272C0D0A2020435F504F5055505F4845414445525F534F52545F4153435F5449544C4520202020202020203A2027536F727420617363656E6469';
wwv_flow_api.g_varchar2_table(24) := '6E67272C0D0A2020435F504F5055505F4845414445525F534F52545F444553435F5449544C45202020202020203A2027536F72742064657363656E64696E67272C0D0A2020435F504F5055505F544558545F534541524348494E47202020202020202020';
wwv_flow_api.g_varchar2_table(25) := '2020202020203A202757616974696E6720666F7220726573756C74732E2E2E272C0D0A0D0A20205F6372656174653A2066756E6374696F6E28297B0D0A20202020766172200D0A202020202020706F707570436F6C756D6E53657474696E67734A736F6E';
wwv_flow_api.g_varchar2_table(26) := '203D20756E646566696E65642C0D0A20202020202069734261736963436F6E66696775726174696F6E203D2066616C73653B0D0A0D0A20202020746869732E6C6F67507265666978203D2027232028272B746869732E656C656D656E742E676574283029';
wwv_flow_api.g_varchar2_table(27) := '2E69642B272920272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B273A273B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F637265617465272C20276F7074696F6E73272C20746869';
wwv_flow_api.g_varchar2_table(28) := '732E6F7074696F6E732C2074686973293B0D0A0D0A20202020746869732E5F73757065722820746869732E6F7074696F6E7320293B0D0A20202020746869732E5F6170706C795472616E736C6174696F6E7328293B0D0A0D0A20202020746869732E706C';
wwv_flow_api.g_varchar2_table(29) := '7567696E53746F70706564203D2066616C73653B0D0A0D0A20202020696620280D0A2020202020202F2F706F7075702073657474696E677320697320656D7074790D0A202020202020746869732E6F7074696F6E732E617474726962757465732E706F70';
wwv_flow_api.g_varchar2_table(30) := '757053657474696E6773203D3D206E756C6C0D0A2020202020207C7C20280D0A20202020202020202F2F706F7075702073657474696E6773206973206E6F7420656D7074792062757420636865636B626F78206973206E6F7420636865636B65640D0A20';
wwv_flow_api.g_varchar2_table(31) := '20202020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C0D0A2020202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E';
wwv_flow_api.g_varchar2_table(32) := '67732E696E6465784F6628275243432729203D3D202D310D0A202020202020290D0A2020202029207B0D0A20202020202069734261736963436F6E66696775726174696F6E203D20747275653B0D0A202020207D0D0A0D0A2020202069662028200D0A20';
wwv_flow_api.g_varchar2_table(33) := '2020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C200D0A202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E';
wwv_flow_api.g_varchar2_table(34) := '696E6465784F66282743542729203E202D310D0A2020202029207B0D0A202020202020706F7075705469746C6554657874203D20746869732E6F7074696F6E732E617474726962757465732E706F7075705469746C65546578740D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(35) := '202020656C7365207B0D0A202020202020706F7075705469746C6554657874203D20746869732E6F7074696F6E732E6974656D2E706C61696E5F6C6162656C3B0D0A202020207D0D0A0D0A0D0A20202020746869732E706C7567696E53657474696E6773';
wwv_flow_api.g_varchar2_table(36) := '203D207B0D0A20202020202022697344656275674F6E22202020202020202020202020202020203A20746869732E6F7074696F6E732E64656275672C0D0A20202020202022646973706C6179457874726122202020202020202020202020203A20746869';
wwv_flow_api.g_varchar2_table(37) := '732E6F7074696F6E732E6974656D2E6C6F765F646973706C61795F65787472612C0D0A20202020202022706F7075705365617263684465626F756E636554696D652220203A203330302C0D0A2020202020202269734175746F636F6D706C657465417661';
wwv_flow_api.g_varchar2_table(38) := '696C61626C652220203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F662827415554';
wwv_flow_api.g_varchar2_table(39) := '4F434F4D504C4554452729203E202D312C0D0A202020202020226973506F7075705265706F7274417661696C61626C65222020203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C202626207468';
wwv_flow_api.g_varchar2_table(40) := '69732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F662827504F504F55505F5245504F52542729203E202D312C0D0A2020202020202269734D756C7469706C6553656C656374696F6E222020202020203A207468';
wwv_flow_api.g_varchar2_table(41) := '69732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274D532729203E202D312C0D0A20202020';
wwv_flow_api.g_varchar2_table(42) := '202022706F707570223A207B0D0A2020202020202020227769647468222020202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757057696474682C0D0A2020202020202020226865696768';
wwv_flow_api.g_varchar2_table(43) := '742220202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F7075704865696768742C0D0A2020202020202020227469746C65222020202020202020202020202020202020203A20706F70757054';
wwv_flow_api.g_varchar2_table(44) := '69746C65546578742C0D0A202020202020202022726F777350657250616765222020202020202020202020203A2031302C0D0A20202020202020202269735265706F72744261736963436F6E66222020202020203A2069734261736963436F6E66696775';
wwv_flow_api.g_varchar2_table(45) := '726174696F6E2C0D0A20202020202020202269735265706F7274416476616E636564436F6E66222020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F70';
wwv_flow_api.g_varchar2_table(46) := '74696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275243432729203E202D312C0D0A2020202020202020226973446973706C6179436F6C756D6E56697369626C6522203A20746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(47) := '2E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F6628274444';
wwv_flow_api.g_varchar2_table(48) := '432729203E202D312C0D0A202020202020202022697352657475726E436F6C756D6E56697369626C652220203A20746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E756C6C2026';
wwv_flow_api.g_varchar2_table(49) := '2620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F6628274452432729203E202D312C0D0A202020202020202022636C69636B4F6E526F7753656C656374734974222020';
wwv_flow_api.g_varchar2_table(50) := '20203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827';
wwv_flow_api.g_varchar2_table(51) := '434F5253492729203E202D312C0D0A202020202020202022647261676761626C652220202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C2026262074';
wwv_flow_api.g_varchar2_table(52) := '6869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827445241474741424C452729203E202D312C0D0A202020202020202022726573697A61626C652220202020202020202020202020203A20';
wwv_flow_api.g_varchar2_table(53) := '746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282752455349';
wwv_flow_api.g_varchar2_table(54) := '5A41424C452729203E202D312C0D0A202020202020202022636C6F73654F6E45736361706522202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C2026262074';
wwv_flow_api.g_varchar2_table(55) := '6869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827434F452729203E202D312C0D0A20202020202020202273686F77526F7773506572506167652220202020202020203A20746869732E6F';
wwv_flow_api.g_varchar2_table(56) := '7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275250502729203E202D31';
wwv_flow_api.g_varchar2_table(57) := '2C0D0A202020202020202022736561726368496E416C6C436F6C756D6E732220202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(58) := '617474726962757465732E706F70757053657474696E67732E696E6465784F662827534941432729203E202D312C0D0A20202020202020202261646A757374486569676874546F526573756C74732220203A20746869732E6F7074696F6E732E61747472';
wwv_flow_api.g_varchar2_table(59) := '6962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282741485452522729203E202D310D0A2020202020207D';
wwv_flow_api.g_varchar2_table(60) := '2C0D0A2020202020202F2F0D0A2020202020202270726F6D7074223A207B0D0A2020202020202020226D61784865696768742220202020202020202020202020203A207061727365496E7428746869732E6F7074696F6E732E617474726962757465732E';
wwv_flow_api.g_varchar2_table(61) := '6175746F436F6D706C6574654D6178486569676874292C0D0A2020202020202020226E617669676174696F6E4465626F756E636554696D6522203A2031302C0D0A2020202020202020226465626F756E636554696D652220202020202020202020203A20';
wwv_flow_api.g_varchar2_table(62) := '3230302C202F2F544244206174727962757420706C7567696E750D0A202020202020202022726F777350657250616765222020202020202020202020203A207061727365496E7428746869732E6F7074696F6E732E617474726962757465732E6175746F';
wwv_flow_api.g_varchar2_table(63) := '436F6D706C657465526F77733253686F77292C200D0A202020202020202022617265546167734C696D69746564222020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67';
wwv_flow_api.g_varchar2_table(64) := '7320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274C44542729203E202D312C0D0A2020202020202020226973437573746F6D54656D';
wwv_flow_api.g_varchar2_table(65) := '706C61746522202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F43';
wwv_flow_api.g_varchar2_table(66) := '6F6D706C65746553657474696E67732E696E6465784F6628275543542729203E202D312C0D0A202020202020202022746167734E6F2220202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E617574';
wwv_flow_api.g_varchar2_table(67) := '6F436F6D706C657465546167734E6F2C0D0A20202020202020202274656D706C617465222020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677354656D';
wwv_flow_api.g_varchar2_table(68) := '706C6174652C0D0A20202020202020202269734D696E696D616C496E7075744C656E677468222020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C2026262074';
wwv_flow_api.g_varchar2_table(69) := '6869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274D494C2729203E202D312C0D0A2020202020202020226D696E696D616C496E7075744C656E6774682220202020203A';
wwv_flow_api.g_varchar2_table(70) := '20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C6574654D696E496E7075744C656E6774682C0D0A2020202020202020226973526170696453656C656374696F6E22202020202020203A20746869732E6F7074696F6E';
wwv_flow_api.g_varchar2_table(71) := '732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F66282752';
wwv_flow_api.g_varchar2_table(72) := '532729203E202D310D0A20202020202020200D0A2020202020207D0D0A202020207D3B0D0A0D0A20202020746869732E696E707574437373203D207B0D0A20202020202022626F72646572436F6C6F7222203A20746869732E656C656D656E742E637373';
wwv_flow_api.g_varchar2_table(73) := '2827626F72646572436F6C6F7227292C0D0A20202020202022666F6E7453697A6522202020203A20746869732E656C656D656E742E6373732827666F6E7453697A6527292C0D0A202020202020226C696E654865696768742220203A20746869732E656C';
wwv_flow_api.g_varchar2_table(74) := '656D656E742E63737328276C696E6548656967687427290D0A202020207D3B0D0A202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D7320213D20756E646566696E6564202920';
wwv_flow_api.g_varchar2_table(75) := '7B0D0A20202020202024282723272B746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D73292E6F6E28276368616E6765272C20242E70726F787928746869732E5F636173636164696E674C6F764974';
wwv_flow_api.g_varchar2_table(76) := '656D2C207468697329293B0D0A202020207D0D0A202020200D0A202020200D0A202020202F2F637265617465206D61736B2068616E646C696E67206576656E747320616E6420646973706C6179696E6720746167730D0A20202020746869732E6D61736B';
wwv_flow_api.g_varchar2_table(77) := '203D20746869732E5F6D61736B4372656174654E657728293B0D0A0D0A20202020746869732E6D61736B203D20242E657874656E642820746869732E6D61736B2C207B0D0A202020202020227374617465223A207B0D0A20202020202020202278687222';
wwv_flow_api.g_varchar2_table(78) := '20202020202020202020202020202020203A20756E646566696E65642C0D0A202020202020202022697356697369626C652220202020202020202020203A2066616C73652C0D0A20202020202020202263757272656E7453656172636854657874222020';
wwv_flow_api.g_varchar2_table(79) := '203A2027272C0D0A2020202020202020226C61737446657463686564506167652220202020203A206E756C6C2C0D0A202020202020202022746F74616C436F756E7422202020202020202020203A20302C0D0A202020202020202022616A617852756E6E';
wwv_flow_api.g_varchar2_table(80) := '696E67222020202020202020203A2066616C73652C0D0A20202020202020202263757272656E7453656C656374696F6E22202020203A20756E646566696E65642C0D0A202020202020202022617265526573756C7473417661696C61626C6522203A2066';
wwv_flow_api.g_varchar2_table(81) := '616C73652C0D0A20202020202020202273656C6563746564222020202020202020202020203A205B5D2C0D0A2020202020202020227461677322202020202020202020202020202020203A205B5D2C0D0A202020202020202022736F7274656422202020';
wwv_flow_api.g_varchar2_table(82) := '20202020202020202020203A20756E646566696E65642C0D0A20202020202020202264697361626C6564222020202020202020202020203A2066616C73652C0D0A202020202020202022657874726156616C756573222020202020202020203A205B5D2C';
wwv_flow_api.g_varchar2_table(83) := '0D0A2020202020202020226572726F72222020202020202020202020202020203A2066616C73650D0A2020202020207D0D0A202020207D20293B202020200D0A0D0A20202020746869732E70726F6D7074203D207B0D0A20202020202022637573746F6D';
wwv_flow_api.g_varchar2_table(84) := '54656D706C61746546756E6374696F6E223A20746869732E5F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E28292C0D0A20202020202022636F6E7461696E657222202020202020202020202020203A20756E64';
wwv_flow_api.g_varchar2_table(85) := '6566696E65642C0D0A20202020202022666978426F7264657222202020202020202020202020203A20756E646566696E65642C0D0A2020202020202268656164657222202020202020202020202020202020203A20756E646566696E65642C0D0A202020';
wwv_flow_api.g_varchar2_table(86) := '20202022626F6479222020202020202020202020202020202020203A20756E646566696E65642C0D0A20202020202022696E7075742220202020202020202020202020202020203A20756E646566696E65642C0D0A20202020202022697356697369626C';
wwv_flow_api.g_varchar2_table(87) := '6522202020202020202020202020203A2066616C73650D0A202020207D3B0D0A0D0A0D0A202020202F2F746F206265206368616E67656420746F2070726976617465206D6574686F640D0A202020206966202820746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(88) := '6E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E662029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(89) := '2020207472797B0D0A20202020202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D204A534F4E2E706172736528746869732E6F7074696F6E732E617474726962757465732E706F707570436F6C756D6E53657474696E677329';
wwv_flow_api.g_varchar2_table(90) := '3B0D0A20202020202020207D206361746368286572726F7229207B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202020202020202022616464496E666F2220203A';
wwv_flow_api.g_varchar2_table(91) := '206572726F722E6E616D652B273A20272B6572726F722E6D6573736167652C0D0A202020202020202020202020226572726F7222202020203A2027496E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D';
wwv_flow_api.g_varchar2_table(92) := '652B272220636F6E66696775726174696F6E2E272C0D0A2020202020202020202020202274656368496E666F22203A205B0D0A20202020202020202020202020207B0D0A20202020202020202020202020202020226E616D65223A2027526561736F6E27';
wwv_flow_api.g_varchar2_table(93) := '2C0D0A202020202020202020202020202020202276616C7565223A202750617273696E67204A534F4E206F626A65637420666F7220706F707570207265706F7274206661696C65643A20696E61766C6964204A534F4E206F626A6563742E270D0A202020';
wwv_flow_api.g_varchar2_table(94) := '20202020202020202020207D2C0D0A20202020202020202020202020207B0D0A20202020202020202020202020202020226E616D65223A20274A534F4E206F626A65637420746F207061727365272C0D0A20202020202020202020202020202020227661';
wwv_flow_api.g_varchar2_table(95) := '6C7565223A20746869732E6F7074696F6E732E617474726962757465732E706F707570436F6C756D6E53657474696E67730D0A20202020202020202020202020207D0D0A20202020202020202020202020200D0A2020202020202020202020205D0D0A20';
wwv_flow_api.g_varchar2_table(96) := '2020202020202020207D2C2074727565293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F722820293B0D0A20202020202020207D0D0A2020202020207D0D0A0D0A20202020202074686973';
wwv_flow_api.g_varchar2_table(97) := '2E706F707570203D207B0D0A20202020202020202264656661756C745265706F727453657474696E6773223A207B0D0A202020202020202020202F2F2268656164696E67223A2022222C0D0A20202020202020202020227468416C69676E223A20226C65';
wwv_flow_api.g_varchar2_table(98) := '6674222C0D0A20202020202020202020227464416C69676E223A20226C656674222C0D0A202020202020202020202276697369626C65223A20747275652C0D0A2020202020202020202022736F7274222020203A20747275652C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(99) := '20202266696C74657222203A20747275650D0A20202020202020207D2C0D0A202020202020202022686561646572732220203A20706F707570436F6C756D6E53657474696E67734A736F6E2C0D0A202020202020202022636F6E7461696E6572223A2074';
wwv_flow_api.g_varchar2_table(100) := '6869732E5F706F7075704372656174654E657728292C0D0A202020202020202022686561646572416374696F6E436F6E7461696E6572223A20756E646566696E65642C0D0A2020202020202020227374617465223A207B0D0A2020202020202020202022';
wwv_flow_api.g_varchar2_table(101) := '696E666F726D6174696F6E546578742220202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022696E666F726D6174696F6E54656D706C61746522202020202020203A20756E646566696E65642C0D0A20202020202020';
wwv_flow_api.g_varchar2_table(102) := '2020202273656C656374696E672220202020202020202020202020202020203A2066616C73652C202F2F746F207265636F676E697A65206D616E75616C2073656C65637420616E6420636C6F73650D0A2020202020202020202022786872222020202020';
wwv_flow_api.g_varchar2_table(103) := '2020202020202020202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022697356697369626C652220202020202020202020202020202020203A2066616C73652C0D0A20202020202020202020226C6173744665746368';
wwv_flow_api.g_varchar2_table(104) := '6564506167652220202020202020202020203A206E756C6C2C0D0A2020202020202020202022736561726368537472696E672220202020202020202020202020203A20756E646566696E65642C0D0A202020202020202020202273656172636853747269';
wwv_flow_api.g_varchar2_table(105) := '6E674F6E466F63757322202020202020203A20756E646566696E65642C0D0A2020202020202020202022736F72746564436F6C756D6E4964782220202020202020202020203A206E756C6C2C0D0A2020202020202020202022736F72746564436F6C756D';
wwv_flow_api.g_varchar2_table(106) := '6E446972656374696F6E2220202020203A2027617363272C0D0A2020202020202020202022616A617852756E6E696E67222020202020202020202020202020203A2066616C73652C0D0A2020202020202020202022736561726368436F6C756D6E496478';
wwv_flow_api.g_varchar2_table(107) := '2220202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022616A61784461746146657463686564436F756E74222020202020203A20302C0D0A2020202020202020202022616A617844617461546F74616C436F756E7422';
wwv_flow_api.g_varchar2_table(108) := '20202020202020203A20756E646566696E65642C0D0A2020202020202020202022616A617853746174757322202020202020202020202020202020203A20756E646566696E65642C0D0A2020202020202020202022616A617843757272656E7450616765';
wwv_flow_api.g_varchar2_table(109) := '4461746122202020202020203A205B5D2C0D0A2020202020202020202022616A617853656C65637465644461746122202020202020202020203A205B5D2C0D0A2020202020202020202022616A617843757272656E7450616765526F776E756D53746172';
wwv_flow_api.g_varchar2_table(110) := '74223A20756E646566696E65642C0D0A2020202020202020202022616A617843757272656E7450616765526F776E756D456E642220203A20756E646566696E65642C0D0A2020202020202020202022636163686522202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(111) := '2020202020203A205B5D2C202F2A20646F20646F706973616E6961206B69656479C59B202A2F0D0A202020202020202020202273656C6563746564222020202020202020202020202020202020203A205B5D2C0D0A202020202020202020202273656C65';
wwv_flow_api.g_varchar2_table(112) := '63746564486173682220202020202020202020202020203A20300D0A20202020202020207D0D0A2020202020207D3B0D0A0D0A202020202020746869732E706F707570203D20242E657874656E642820746869732E706F7075702C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(113) := '202020226469616C6F6748656164657222202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E706172656E7428292E66696E6428272E75692D6469616C6F672D7469746C6562617227292C0D0A2020202020202020226865';
wwv_flow_api.g_varchar2_table(114) := '6164657222202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E68656164657227292C0D0A202020202020202022696E666F726D6174696F6E436F6E7461696E65722220203A2074686973';
wwv_flow_api.g_varchar2_table(115) := '2E706F7075702E636F6E7461696E65722E66696E6428272E696E666F726D6174696F6E27292C0D0A202020202020202022696E666F726D6174696F6E5465787422202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428';
wwv_flow_api.g_varchar2_table(116) := '272E696E666F726D6174696F6E202E7465787427292C0D0A202020202020202022626F6479222020202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E626F647927292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(117) := '20202022666F6F74657222202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E666F6F74657227292C0D0A20202020202020202273686F7753656C6563746564436F6E7461696E65722220';
wwv_flow_api.g_varchar2_table(118) := '3A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E666F6F7465722D73686F7753656C656374656427292C0D0A202020202020202022737469636B7948656164657273222020202020202020203A20756E646566696E65642C0D0A';
wwv_flow_api.g_varchar2_table(119) := '20202020202020202273656172636822202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572203A696E70757427292C0D0A2020202020202020227365';
wwv_flow_api.g_varchar2_table(120) := '6C656374416C6C436865636B626F782220202020203A20756E646566696E65642C0D0A20202020202020202273686F7753656C6563746564436865636B626F782220203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E666F6F';
wwv_flow_api.g_varchar2_table(121) := '746572203A636865636B626F7827292C0D0A20202020202020202273686F7753656C65637465644C6162656C2220202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E666F6F746572206C6162656C27292C0D0A202020';
wwv_flow_api.g_varchar2_table(122) := '202020202022636C6561722220202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572202E636C65617227292C0D0A20202020202020202273656C6563';
wwv_flow_api.g_varchar2_table(123) := '7422202020202020202020202020202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E73656C65637427292C0D0A202020202020202022706167696E6174696F6E436F6E7461696E6572222020203A20746869732E706F';
wwv_flow_api.g_varchar2_table(124) := '7075702E636F6E7461696E65722E66696E6428272E706167696E6174696F6E436F6E7461696E657227292C0D0A202020202020202022706167696E6174696F6E507265765061676522202020203A20746869732E706F7075702E636F6E7461696E65722E';
wwv_flow_api.g_varchar2_table(125) := '66696E6428272E7072657627292C0D0A202020202020202022706167696E6174696F6E4E6578745061676522202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E6E65787427292C0D0A20202020202020202270616769';
wwv_flow_api.g_varchar2_table(126) := '6E6174696F6E43757272656E742220202020203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E63757272656E7427292C0D0A202020202020202022726F7773506572506167652220202020202020202020203A20746869732E';
wwv_flow_api.g_varchar2_table(127) := '706F7075702E636F6E7461696E65722E66696E64282773656C65637427292C0D0A202020202020202022636F6E74656E745461626C6522202020202020202020203A20756E646566696E65642C0D0A202020202020202022726F77735065725061676543';
wwv_flow_api.g_varchar2_table(128) := '6F6E7461696E65722220203A20746869732E706F7075702E636F6E7461696E65722E66696E6428272E726F777350657250616765436F6E7461696E657227290D0A2020202020207D20293B0D0A0D0A202020202020746869732E706F7075702E626F6479';
wwv_flow_api.g_varchar2_table(129) := '2E6F6E28277363726F6C6C272C20242E70726F78792820746869732E5F706F7075705363726F6C6C43616C6C6261636B2C2074686973202920293B2020200D0A202020202020746869732E706F7075702E636C6561722E6F6E2827636C69636B272C2024';
wwv_flow_api.g_varchar2_table(130) := '2E70726F78792820746869732E5F706F707570536561726368436C6561722C20746869732C2074727565202920293B0D0A2020202020200D0A202020202020746869732E706F7075702E706167696E6174696F6E50726576506167652E6F6E2827636C69';
wwv_flow_api.g_varchar2_table(131) := '636B272C20242E70726F78792820746869732E5F706F707570506167696E6174696F6E50726576506167652C20746869732029293B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E6F6E2827636C69636B';
wwv_flow_api.g_varchar2_table(132) := '272C20242E70726F78792820746869732E5F706F707570506167696E6174696F6E4E657874506167652C20746869732029293B0D0A202020202020746869732E706F7075702E726F7773506572506167652E6F6E28276368616E6765272C20242E70726F';
wwv_flow_api.g_varchar2_table(133) := '78792820746869732E5F706F7075704368616E6765526F7773506572506167652C2074686973202920290D0A0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E6F6E28276368616E6765272C20242E70';
wwv_flow_api.g_varchar2_table(134) := '726F78792820746869732E5F706F70757053686F7753656C6563746564436865636B626F784368616E67652C2074686973202920293B0D0A0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E636C69636B';
wwv_flow_api.g_varchar2_table(135) := '4F6E526F7753656C6563747349742029207B0D0A2020202020202020746869732E706F7075702E636F6E7461696E65722E6F6E2827636C69636B272C20277464272C20242E70726F78792820746869732E5F706F707570436C69636B4F6E43656C6C2C20';
wwv_flow_api.g_varchar2_table(136) := '746869732920293B0D0A2020202020207D0D0A2020202020200D0A202020202020746869732E706F7075702E636F6E7461696E65720D0A20202020202020202E6F6E2827636C69636B272C2020272E66616B65436865636B626F78272C20202020202020';
wwv_flow_api.g_varchar2_table(137) := '2020202020242E70726F78792820746869732E5F706F70757046616B65436865636B626F78436C69636B2C20202020202020202020746869732920290D0A20202020202020202E6F6E2827636C69636B272C202027627574746F6E2E73656C656374272C';
wwv_flow_api.g_varchar2_table(138) := '202020202020202020202020242E70726F78792820746869732E5F706F70757053656C656374416E64436C6F73652C20202020202020202020202020746869732920290D0A20202020202020202E6F6E2827636C69636B272C202027612E73686F775365';
wwv_flow_api.g_varchar2_table(139) := '6C6563746564272C2020202020202020202020242E70726F78792820746869732E5F706F70757053686F7753656C6563746564436865636B626F784368616E67652C20746869732920290D0A20202020202020202E6F6E2827636C69636B272C20202761';
wwv_flow_api.g_varchar2_table(140) := '2E636C65617246696C746572696E67272C202020202020202020242E70726F78792820746869732E5F706F707570436C65617246696C746572696E672C20202020202020202020202020746869732920290D0A20202020202020202E6F6E2827636C6963';
wwv_flow_api.g_varchar2_table(141) := '6B272C2020272E66616B65526164696F272C202020202020202020202020202020242E70726F78792820746869732E5F706F70757046616B65526164696F436C69636B2C20202020202020202020202020746869732920290D0A20202020202020202E6F';
wwv_flow_api.g_varchar2_table(142) := '6E28276368616E6765272C202774683A66697273742D6368696C64203A636865636B626F78272C20242E70726F78792820746869732E5F706F7075705468436865636B626F784368616E67652C2020202020202020202020746869732920290D0A202020';
wwv_flow_api.g_varchar2_table(143) := '20202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A636865636B626F78272C20242E70726F78792820746869732E5F706F7075705464436865636B626F784368616E67652C20202020202020202020207468697329';
wwv_flow_api.g_varchar2_table(144) := '20290D0A20202020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A726164696F272C20202020242E70726F78792820746869732E5F706F7075705464526164696F4368616E67652C202020202020202020202020';
wwv_flow_api.g_varchar2_table(145) := '2020746869732920293B0D0A0D0A202020202020746869732E706F7075702E7365617263680D0A20202020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E636528242E70726F78792820746869732E5F706F7075705365617263';
wwv_flow_api.g_varchar2_table(146) := '684B657955702C20746869732C206E756C6C2C206E756C6C292C20746869732E706C7567696E53657474696E67732E706F7075705365617263684465626F756E636554696D6529290D0A20202020202020202E6F6E28276B65797570272C20242E70726F';
wwv_flow_api.g_varchar2_table(147) := '78792820746869732E5F6D61736B4B657955704D616E61676549636F6E732C20746869732920290D0A20202020202020202E6F6E2827666F637573272C20242E70726F78792820746869732E5F706F707570536561726368466F6375732C207468697320';
wwv_flow_api.g_varchar2_table(148) := '2920293B0D0A0D0A0D0A202020207D0D0A0D0A20202020746869732E6D61736B2E6974656D436F6E7461696E65720D0A2020202020202E6F6E2827636C69636B272C20202020242E70726F78792820746869732E5F70726F6D7074536561726368496E70';
wwv_flow_api.g_varchar2_table(149) := '7574466F63757348616E646C65722C2074686973202920290D0A2020202020202E6F6E2827666F637573272C20202020242E70726F78792820746869732E5F6D61736B48616E646C65466F6375732C2074686973202920290D0A2020202020202E6F6E28';
wwv_flow_api.g_varchar2_table(150) := '27626C7572272C2020202020242E70726F78792820746869732E5F6D61736B48616E646C65426C75722C2074686973202920290D0A2020202020202E6F6E28276B65797072657373272C20242E70726F78792820746869732E5F6D61736B48616E646C65';
wwv_flow_api.g_varchar2_table(151) := '4B657950726573732C2074686973202920290D0A2020202020202E6F6E28276B6579646F776E272C2020242E70726F78792820746869732E5F6D61736B48616E646C654B6579446F776E2C2074686973202920293B0D0A0D0A202020202F2F6C69737465';
wwv_flow_api.g_varchar2_table(152) := '6E20746F206576656E7420636C69636B206F6E202278222069636F6E20696E207461670D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E6F6E2827636C69636B272C20272E72656D6F7665272C20242E70726F78792820746869';
wwv_flow_api.g_varchar2_table(153) := '732E5F6D61736B52656D6F766554616746726F6D444F4D2C2074686973202920293B0D0A0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E6F6E28276B6579646F776E272C20242E70726F78792820746869732E5F6D61736B506F70';
wwv_flow_api.g_varchar2_table(154) := '7570427574746F6E4B6579446F776E2C2074686973202920290D0A0D0A20202020746869732E776964676574556E69717565496420203D202428273C6469763E3C2F6469763E27292E756E69717565496428292E617474722827696427293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(155) := '202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F637265617465272C2027506C7567696E20696E7374616E636520637265617465642E20556E69717565206964203D20272B746869732E776964676574556E6971';
wwv_flow_api.g_varchar2_table(156) := '756549642C20746869732E6F7074696F6E73293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020746869732E5F6372656174654D61736B4465627567427574746F';
wwv_flow_api.g_varchar2_table(157) := '6E28293B20200D0A202020207D0D0A0D0A202020206966202820746869732E656C656D656E742E76616C28292E6C656E677468203E20302026262021746869732E706C7567696E53746F707065642029207B0D0A202020202020746869732E5F6765744F';
wwv_flow_api.g_varchar2_table(158) := '6E4C6F61644C6F762820746869732E656C656D656E742E76616C282920293B0D0A202020207D0D0A0D0A20202020746869732E5F696E74656772617465576974684170657841706928293B0D0A0D0A2020202024282077696E646F7720292E726573697A';
wwv_flow_api.g_varchar2_table(159) := '6528242E70726F7879282066756E6374696F6E28297B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C202777696E646F7720726573697A65642C207265706F736974696F6E2070726F6D707427293B0D0A';
wwv_flow_api.g_varchar2_table(160) := '0D0A2020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A20202020202020200D0A2020202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A2020202020207D0D0A202020207D2C';
wwv_flow_api.g_varchar2_table(161) := '207468697329293B0D0A0D0A20202020746869732E656C656D656E742E61667465722820746869732E6D61736B2E636F6E7461696E657220293B0D0A20202020746869732E656C656D656E742E6869646528293B0D0A20202020746869732E656C656D65';
wwv_flow_api.g_varchar2_table(162) := '6E742E6F6E28276170657872656672657368272C20242E70726F787928746869732E5F6D616E75616C5265667265736843616C6C6261636B2C207468697329293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(163) := '69782C2027706C7567696E53657474696E6773272C20746869732E706C7567696E53657474696E6773293B202020200D0A0D0A20207D2C0D0A2F2F206A517565727920776964676574206E6174697665206D6574686F64730D0A2F2F0D0A20205F646573';
wwv_flow_api.g_varchar2_table(164) := '74726F793A2066756E6374696F6E28297B0D0A20207D2C0D0A2F2F0D0A20205F7365744F7074696F6E3A2066756E6374696F6E2820704B65792C207056616C75652029207B0D0A202020206966202820704B6579203D3D3D202276616C7565222029207B';
wwv_flow_api.g_varchar2_table(165) := '0D0A2020202020207056616C7565203D20746869732E5F636F6E73747261696E28207056616C756520293B0D0A202020207D0D0A0D0A20202020746869732E5F73757065722820704B65792C207056616C756520293B0D0A20207D2C20200D0A20206F70';
wwv_flow_api.g_varchar2_table(166) := '74696F6E733A2066756E6374696F6E2820704F7074696F6E7320297B0D0A20202020746869732E5F73757065722820704F7074696F6E7320293B0D0A20207D2C0D0A2F2F0D0A20205F7365744F7074696F6E733A2066756E6374696F6E2820704F707469';
wwv_flow_api.g_varchar2_table(167) := '6F6E732029207B0D0A20202020746869732E5F73757065722820704F7074696F6E7320293B0D0A20207D2C0D0A20205F636173636164696E674C6F764974656D3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(168) := '69732E6C6F675072656669782C20275F636173636164696E674C6F764974656D27293B0D0A0D0A202020207661720D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A2022434153434144494E474C4F56222C0D0A';
wwv_flow_api.g_varchar2_table(169) := '202020202020202022706167654974656D73223A202723272B746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D730D0A2020202020207D2C0D0A202020202020616A61784F7074696F6E73203D207B';
wwv_flow_api.g_varchar2_table(170) := '0D0A2020202020202020226265666F726553656E64223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E6728293B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(171) := '7D2C2074686973292C0D0A202020202020202022636F6D706C657465223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4869646528293B202020202020';
wwv_flow_api.g_varchar2_table(172) := '202020200D0A20202020202020207D2C74686973290D0A2020202020207D3B0D0A0D0A20202020617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178';
wwv_flow_api.g_varchar2_table(173) := '446174612C20616A61784F7074696F6E7320293B0D0A20207D2C0D0A20205F747269676765724576656E743A2066756E6374696F6E2820704576656E744E616D652C2070446174612029207B0D0A20202020617065782E64656275672E6C6F6728746869';
wwv_flow_api.g_varchar2_table(174) := '732E6C6F675072656669782C20275F747269676765724576656E7427293B0D0A0D0A20202020617065782E6576656E742E747269676765722820746869732E656C656D656E742E6765742830292C20704576656E744E616D652C20704461746120293B0D';
wwv_flow_api.g_varchar2_table(175) := '0A20207D2C0D0A20205F6D616E75616C5265667265736843616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D616E75616C5265667265736843616C6C';
wwv_flow_api.g_varchar2_table(176) := '6261636B27293B0D0A0D0A20202020746869732E5F6765744F6E4C6F61644C6F7628293B0D0A20207D2C0D0A20205F676574436F6C756D6E4964784279436F6C756D6E4E616D653A2066756E6374696F6E282070436F6C756D6E4E616D6520297B0D0A20';
wwv_flow_api.g_varchar2_table(177) := '202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D65272C202770436F6C756D6E4E616D65272C2070436F6C756D6E4E616D652C2027636F6C756D6E7327';
wwv_flow_api.g_varchar2_table(178) := '2C20746869732E6F7074696F6E732E636F6C756D6E73293B0D0A0D0A20202020766172200D0A20202020202072657475726E56616C7565203D20756E646566696E65643B0D0A0D0A20202020666F722028766172206920696E20746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(179) := '6E732E636F6C756D6E7329207B0D0A2020202020206966202820746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D45203D3D2070436F6C756D6E4E616D6529207B0D0A2020202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(180) := '6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D6E2022272B70436F6C756D6E4E616D652B272220666F756E642C2072657475726E20697473204944582E27293B0D0A20';
wwv_flow_api.g_varchar2_table(181) := '2020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E4944583B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020696620282072657475726E';
wwv_flow_api.g_varchar2_table(182) := '56616C7565203D3D20756E646566696E65642029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D6E2022272B7043';
wwv_flow_api.g_varchar2_table(183) := '6F6C756D6E4E616D652B2722206E6F7420666F756E642C2072657475726E2031737420636F6C756D6E2E272C20746869732E6F7074696F6E732E636F6C756D6E735B305D2E494458293B0D0A20202020202072657475726E56616C7565203D2074686973';
wwv_flow_api.g_varchar2_table(184) := '2E6F7074696F6E732E636F6C756D6E735B305D2E4944583B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520726574';
wwv_flow_api.g_varchar2_table(185) := '75726E732022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20207072696E7446756E6374696F6E546F436F6E736F6C653A2066756E6374696F6E28207046';
wwv_flow_api.g_varchar2_table(186) := '756E6374696F6E426F647920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20277072696E7446756E6374696F6E546F436F6E736F6C6527293B0D0A0D0A20202020766172206172726179203D20704675';
wwv_flow_api.g_varchar2_table(187) := '6E6374696F6E426F64792E73706C697428225C6E22293B0D0A0D0A20202020666F722028207661722069203D20303B2069203C2061727261792E6C656E6774683B20692B2B2029207B0D0A202020202020617065782E64656275672E696E666F28746869';
wwv_flow_api.g_varchar2_table(188) := '732E6C6F675072656669782C202723272C2061727261795B695D293B20200D0A202020207D0D0A20207D2C0D0A20205F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E3A2066756E6374696F6E28297B0D0A2020';
wwv_flow_api.g_varchar2_table(189) := '2020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E27293B0D0A0D0A202020207661722066756E633B0D0A0D0A202020207472';
wwv_flow_api.g_varchar2_table(190) := '79207B0D0A20202020202066756E63203D206E65772046756E6374696F6E280D0A20202020202020202270526F77222C0D0A202020202020202022746869732E64617461203D2070526F773B5C6E222B0D0A2020202020202020272F2F617065782E6465';
wwv_flow_api.g_varchar2_table(191) := '6275672E6C6F672822272B746869732E6C6F675072656669782B27222C202270726F6D7074437573746F6D54656D706C617465222C2070526F77293B272B225C6E222B0D0A2020202020202020746869732E706C7567696E53657474696E67732E70726F';
wwv_flow_api.g_varchar2_table(192) := '6D70742E74656D706C6174650D0A202020202020293B0D0A0D0A202020202020746869732E7072696E7446756E6374696F6E546F436F6E736F6C65282066756E632E746F537472696E67282920293B0D0A0D0A202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(193) := '6C6F6728746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374696F6E206372656174656422293B0D0A202020200D0A202020207D20636174636828';
wwv_flow_api.g_varchar2_table(194) := '6572726F7229207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374696F6E2063616E';
wwv_flow_api.g_varchar2_table(195) := '277420626520637265617465643A20222B6572726F722E6D657373616765293B0D0A202020202020746869732E7072696E7446756E6374696F6E546F436F6E736F6C652820746869732E706C7567696E53657474696E67732E70726F6D70742E74656D70';
wwv_flow_api.g_varchar2_table(196) := '6C61746520293B0D0A0D0A202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A202020202020202022616464496E666F2220203A202746756E6374696F6E2072657475726E696E672070726F6D70';
wwv_flow_api.g_varchar2_table(197) := '742074656D706C61746520686173206572726F72732E272C0D0A2020202020202020226572726F7222202020203A2027496E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B272220636F6E666967';
wwv_flow_api.g_varchar2_table(198) := '75726174696F6E2E272C0D0A20202020202020202274656368496E666F22203A205B0D0A202020202020202020207B0D0A202020202020202020202020226E616D65223A206572726F722E6E616D652C0D0A2020202020202020202020202276616C7565';
wwv_flow_api.g_varchar2_table(199) := '223A206572726F722E6D6573736167650D0A202020202020202020207D2C0D0A202020202020202020207B0D0A202020202020202020202020226E616D65223A202746756E6374696F6E272C0D0A2020202020202020202020202276616C7565223A2074';
wwv_flow_api.g_varchar2_table(200) := '6869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C6174650D0A202020202020202020207D0D0A0D0A202020202020202020200D0A20202020202020205D0D0A2020202020207D2C2074727565293B0D0A0D0A20202020202074';
wwv_flow_api.g_varchar2_table(201) := '6869732E5F6D61736B416A61785374617465427574746F6E4572726F722820293B0D0A202020207D0D0A202020200D0A202020200D0A2020202072657475726E2066756E633B0D0A0D0A20207D2C0D0A20205F6170706C795472616E736C6174696F6E73';
wwv_flow_api.g_varchar2_table(202) := '3A2066756E6374696F6E28297B0D0A20202020766172207472616E736C6174696F6E73203D20746869732E6F7074696F6E732E617474726962757465732E7472616E736C6174696F6E733B0D0A0D0A2020202069662028207472616E736C6174696F6E73';
wwv_flow_api.g_varchar2_table(203) := '2E6C656E677468203E20302029207B0D0A202020202020666F72202820766172206920696E207472616E736C6174696F6E732029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F617070';
wwv_flow_api.g_varchar2_table(204) := '6C795472616E736C6174696F6E73272C207472616E736C6174696F6E735B695D2E5452414E534C415441424C455F4D4553534147452C207472616E736C6174696F6E735B695D2E4D4553534147455F54455854293B0D0A2020202020202020746869735B';
wwv_flow_api.g_varchar2_table(205) := '7472616E736C6174696F6E735B695D2E5452414E534C415441424C455F4D4553534147452E7265706C61636528275041454C495F272C2027435F27295D203D207472616E736C6174696F6E735B695D2E4D4553534147455F544558543B0D0A2020202020';
wwv_flow_api.g_varchar2_table(206) := '207D0D0A202020207D0D0A20207D2C0D0A20205F696E7465677261746557697468417065784170693A2066756E6374696F6E28202029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567';
wwv_flow_api.g_varchar2_table(207) := '726174655769746841706578417069272C20746869732E656C656D656E742E676574283029293B0D0A0D0A20202020766172200D0A202020202020704F7074696F6E73203D207B0D0A20202020202020202273657456616C7565223A20242E70726F7879';
wwv_flow_api.g_varchar2_table(208) := '2866756E6374696F6E28207056616C75652C2070446973706C617956616C75652029207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E7465677261746557697468417065784170';
wwv_flow_api.g_varchar2_table(209) := '69272C202773657456616C7565272C20277056616C75653D22272B7056616C75652B2722272C202770446973706C617956616C75653D22272B70446973706C617956616C75652B272227293B0D0A0D0A202020202020202020202F2F6966205375707072';
wwv_flow_api.g_varchar2_table(210) := '657373204368616E6765206576656E74206F662064796E616D6963205365742076616C756520616374696F6E2069732073657420746F204E4F0D0A20202020202020202020696620282021617267756D656E74735B325D2029207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(211) := '2020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773657456616C7565272C20275375707072657373204368616E6765204576656E742069732073';
wwv_flow_api.g_varchar2_table(212) := '657420746F20224E6F222E204368616E6765206576656E742077696C6C20626520646F75626C65642E27293B0D0A202020202020202020207D0D0A0D0A2020202020202020202069662028207056616C75652E6C656E677468203D3D20302029207B0D0A';
wwv_flow_api.g_varchar2_table(213) := '202020202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202020202020202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A202020202020202020202020746869732E656C656D656E74';
wwv_flow_api.g_varchar2_table(214) := '2E76616C286E756C6C293B0D0A202020202020202020207D0D0A20202020202020202020656C7365207B0D0A2020202020202020202020202F2F74727565202D3E2074726967676572206368616E6765206576656E740D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(215) := '746869732E5F6765744F6E4C6F61644C6F7628207056616C756520293B0D0A202020202020202020207D0D0A202020202020202020200D0A0D0A20202020202020207D2C2074686973292C20202020202020200D0A20202020202020202F2F5370656369';
wwv_flow_api.g_varchar2_table(216) := '667920612076616C7565207468617420746F206265207573656420746F2064657465726D696E6520696620746865206974656D206973206E756C6C2E200D0A20202020202020202F2F546869732069732075736564207768656E20746865206974656D20';
wwv_flow_api.g_varchar2_table(217) := '737570706F72747320646566696E6974696F6E206F662061204C697374206F662056616C7565732C200D0A20202020202020202F2F7768657265206120646576656C6F7065722063616E20646566696E652061204E756C6C2052657475726E2056616C75';
wwv_flow_api.g_varchar2_table(218) := '6520666F7220746865206974656D20616E64200D0A20202020202020202F2F7768657265207468652064656661756C74206974656D2068616E646C696E67206E6565647320746F206B6E6F77207468697320696E206F7264657220746F20617373657274';
wwv_flow_api.g_varchar2_table(219) := '20696620746865206974656D206973206E756C6C206F7220656D7074792E0D0A20202020202020206E756C6C56616C75653A202022222C0D0A202020202020202022656E61626C65223A20242E70726F78792866756E6374696F6E2829207B0D0A202020';
wwv_flow_api.g_varchar2_table(220) := '20202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C2027656E61626C6527293B0D0A0D';
wwv_flow_api.g_varchar2_table(221) := '0A20202020202020202020746869732E5F656E61626C6528293B0D0A20202020202020207D2C2074686973292C0D0A20202020202020202264697361626C65223A20242E70726F78792866756E6374696F6E2829207B0D0A202020202020202020206170';
wwv_flow_api.g_varchar2_table(222) := '65782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C202764697361626C6527293B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(223) := '202020746869732E5F64697361626C6528293B0D0A20202020202020207D2C2074686973292C0D0A20202020202020202261667465724D6F64696679223A20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020617065782E64';
wwv_flow_api.g_varchar2_table(224) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C202761667465724D6F64696679272C20746869732E656C656D656E';
wwv_flow_api.g_varchar2_table(225) := '742E76616C2829293B0D0A202020202020202020202F2F20636F646520746F20616C77617973206669726520616674657220746865206974656D20686173206265656E206D6F646966696564202876616C7565207365742C20656E61626C65642C206574';
wwv_flow_api.g_varchar2_table(226) := '632E290D0A20202020202020207D2C2074686973292C0D0A2020202020202020226C6F6164696E67496E64696361746F72223A20242E70726F78792866756E6374696F6E2820704C6F6164696E67496E64696361746F722420297B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(227) := '202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C20276C6F6164696E67496E64696361746F72';
wwv_flow_api.g_varchar2_table(228) := '27293B0D0A202020202020202020202F2F20636F646520746F2061646420746865206C6F6164696E6720696E64696361746F7220696E20746865206265737420706C61636520666F7220746865206974656D0D0A2020202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(229) := '20704C6F6164696E67496E64696361746F72243B0D0A20202020202020207D2C2074686973292C202020202020200D0A20202020202020200D0A0D0A202020202020202022736574466F637573546F223A20242E70726F78792866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(230) := '7B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C2027736574466F63';
wwv_flow_api.g_varchar2_table(231) := '7573546F27293B0D0A202020202020202020202F2F7462642C2077207A616C657A6E6F736369206F642074727962750D0A0D0A2020202020202020202072657475726E20746869732E6D61736B2E706F707570427574746F6E3B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(232) := '7D2C2074686973292C0D0A2020202020202020227365745374796C65546F223A20746869732E6D61736B2E636F6E7461696E65722C202020200D0A20202020202020202267657456616C7565223A20242E70726F78792866756E6374696F6E2829207B0D';
wwv_flow_api.g_varchar2_table(233) := '0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E69642C202767657456616C7565';
wwv_flow_api.g_varchar2_table(234) := '27293B0D0A202020202020202020200D0A2020202020202020202072657475726E20746869732E656C656D656E742E76616C28293B0D0A0D0A20202020202020207D2C2074686973292C0D0A20202020202020202273686F77223A20242E70726F787928';
wwv_flow_api.g_varchar2_table(235) := '66756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E6765742830292E';
wwv_flow_api.g_varchar2_table(236) := '69642C202773686F7727293B0D0A202020202020202020202F2F20636F646520746861742073686F777320746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A20202020202020202268696465223A20242E70726F7879';
wwv_flow_api.g_varchar2_table(237) := '2866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E656C656D656E742E676574283029';
wwv_flow_api.g_varchar2_table(238) := '2E69642C20276869646527293B0D0A202020202020202020202F2F20636F6465207468617420686964657320746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A20202020202020202261646456616C7565223A20242E';
wwv_flow_api.g_varchar2_table(239) := '70726F78792866756E6374696F6E28207056616C75652029207B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20746869732E65';
wwv_flow_api.g_varchar2_table(240) := '6C656D656E742E6765742830292E69642C202761646456616C7565272C207056616C7565293B0D0A202020202020202020202F2F20636F646520746861742061646473207056616C756520746F207468652076616C75657320616C726561647920696E20';
wwv_flow_api.g_varchar2_table(241) := '746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A2020202020207D3B0D0A0D0A20202020617065782E7769646765742E696E6974506167654974656D2820746869732E656C656D656E742E617474722827696427292C';
wwv_flow_api.g_varchar2_table(242) := '20704F7074696F6E73293B202020200D0A20207D2C0D0A2F2F20200D0A2F2F205075626C696320706C7567696E206D6574686F64730D0A2F2F0D0A0D0A2F2F20200D0A2F2F205072697661746520706C7567696E206D6574686F64730D0A2F2F0D0A2020';
wwv_flow_api.g_varchar2_table(243) := '5F64697361626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F64697361626C6527293B0D0A0D0A20202020746869732E656C656D656E742E70726F702820226469';
wwv_flow_api.g_varchar2_table(244) := '7361626C6564222C207472756520293B0D0A20202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E616464436C617373282764697361626C65642729';
wwv_flow_api.g_varchar2_table(245) := '3B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E70726F70282764697361626C6564272C2074727565293B0D0A20207D2C0D0A20205F656E61626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(246) := '6F6728746869732E6C6F675072656669782C20275F656E61626C6527293B0D0A0D0A20202020746869732E656C656D656E742E70726F7028202264697361626C6564222C2066616C736520293B0D0A20202020746869732E6D61736B2E73746174652E64';
wwv_flow_api.g_varchar2_table(247) := '697361626C6564203D2066616C73653B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C617373282764697361626C656427293B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E70726F702827';
wwv_flow_api.g_varchar2_table(248) := '64697361626C6564272C2066616C7365293B0D0A20207D2C0D0A20205F6372656174654D61736B4465627567427574746F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(249) := '275F6372656174654D61736B4465627567427574746F6E27293B0D0A0D0A0D0A2020202076617220627574746F6E203D202428273C627574746F6E20636C6173733D2264656275674175746F636F6D706C65746520612D427574746F6E20612D42757474';
wwv_flow_api.g_varchar2_table(250) := '6F6E2D2D706F7075704C4F56223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27292E636C69636B28242E70726F7879282066756E6374696F6E28704576656E74297B0D0A2020202020207045';
wwv_flow_api.g_varchar2_table(251) := '76656E742E70726576656E7444656661756C7428293B0D0A0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C202764656275672070726F6D7074272C20746869732E6D61736B293B0D0A0D0A202020207D2C';
wwv_flow_api.g_varchar2_table(252) := '20746869732029293B0D0A0D0A20202020627574746F6E2E6174747228277469746C65272C202757726974657320746F20636F6E736F6C65206175746F636F6D706C65746520737461746527293B0D0A0D0A202020202F2F746869732E656C656D656E74';
wwv_flow_api.g_varchar2_table(253) := '2E61667465722820627574746F6E20293B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E61667465722820627574746F6E20293B0D0A0D0A20207D2C0D0A20205F676574457874726156616C7565733A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(254) := '7056616C75657353656E742C20704461746152657475726E656420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C7565732820272B746869732E656C656D656E742E67';
wwv_flow_api.g_varchar2_table(255) := '65742830292E69642B27202927293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C20277056616C75657353656E74272C207056616C75657353656E74293B0D';
wwv_flow_api.g_varchar2_table(256) := '0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C2027704461746152657475726E6564272C20704461746152657475726E65642E6C656E6774682C20704461746152';
wwv_flow_api.g_varchar2_table(257) := '657475726E6564293B0D0A0D0A2020202076617220657874726156616C756573203D20242E657874656E64285B5D2C207056616C75657353656E74292E66696C7465722866756E6374696F6E2028656C656D656E7429207B0D0A20202020202072657475';
wwv_flow_api.g_varchar2_table(258) := '726E20656C656D656E7420213D206E756C6C20262620656C656D656E742E6C656E677468203E20303B0D0A202020207D293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20704461746152657475726E65642E6C656E6774683B2069';
wwv_flow_api.g_varchar2_table(259) := '2B2B2029207B0D0A0D0A202020202020696E6465784F66203D20657874726156616C7565732E696E6465784F662820704461746152657475726E65645B695D2E522E746F537472696E67282920293B0D0A0D0A2020202020206966202820696E6465784F';
wwv_flow_api.g_varchar2_table(260) := '66203E202D312029207B0D0A2020202020202020657874726156616C7565732E73706C6963652820696E6465784F662C203120293B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F67657445';
wwv_flow_api.g_varchar2_table(261) := '7874726156616C756573272C202772656D6F76696E6720272B704461746152657475726E65645B695D2E522E746F537472696E6728292B272066726F6D20272C20657874726156616C756573293B0D0A2020202020207D0D0A202020202020656C736520';
wwv_flow_api.g_varchar2_table(262) := '7B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C20276C6F6F6B696E6720666F7220272B704461746152657475726E65645B695D2E522E746F537472';
wwv_flow_api.g_varchar2_table(263) := '696E6728292B2720696E20272C20657874726156616C756573293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F676574457874726156616C756573272C';
wwv_flow_api.g_varchar2_table(264) := '2027657874726156616C756573272C20657874726156616C756573293B202020200D0A0D0A2020202072657475726E20657874726156616C7565733B0D0A20207D2C0D0A20202F2F66612D6578636C616D6174696F6E2D747269616E676C650D0A20205F';
wwv_flow_api.g_varchar2_table(265) := '6D61736B506F707570427574746F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E4869646527293B0D0A202020200D';
wwv_flow_api.g_varchar2_table(266) := '0A20202020746869732E6D61736B2E706F707570427574746F6E2E6869646528293B0D0A20207D2C0D0A20205F6D61736B506F707570427574746F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(267) := '69732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E53686F7727293B0D0A202020200D0A20202020746869732E6D61736B2E706F707570427574746F6E2E73686F7728293B0D0A20207D2C0D0A20205F6D61736B416A61785374';
wwv_flow_api.g_varchar2_table(268) := '617465427574746F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E4869646527293B0D0A0D0A202020200D';
wwv_flow_api.g_varchar2_table(269) := '0A20202020746869732E5F6D61736B506F707570427574746F6E53686F7728293B0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A20207D2C0D0A20205F6D61736B416A61785374';
wwv_flow_api.g_varchar2_table(270) := '617465427574746F6E5365744572726F723A2066756E6374696F6E2820704F626A6563742C207053746F70506C7567696E20297B200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A6178';
wwv_flow_api.g_varchar2_table(271) := '5374617465427574746F6E5365744572726F7227293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F72272C2027704F626A65637427';
wwv_flow_api.g_varchar2_table(272) := '2C20704F626A656374293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F72272C20277053746F70506C7567696E272C207053746F70';
wwv_flow_api.g_varchar2_table(273) := '506C7567696E293B0D0A202020200D0A20202020242E657874656E6428746869732E6D61736B2E616A61785374617465427574746F6E2C207B226572726F724F626A656374223A704F626A6563747D293B0D0A0D0A202020202F2F6572726F72206F6363';
wwv_flow_api.g_varchar2_table(274) := '757265642062757420646F6E2774206861766520746F2073746F7020706C7567696E2075736167650D0A20202020746869732E6D61736B2E73746174652E6572726F72203D20747275653B0D0A0D0A2020202069662028207053746F70506C7567696E20';
wwv_flow_api.g_varchar2_table(275) := '2920207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F722073746F7020706C7567696E2127293B20200D0A2020202020207468';
wwv_flow_api.g_varchar2_table(276) := '69732E706C7567696E53746F70706564203D20747275653B20200D0A202020202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0D0A202020207D0D0A20207D2C0D0A20205F6D61736B416A61785374617465427574';
wwv_flow_api.g_varchar2_table(277) := '746F6E446973706C61794572726F723A2066756E6374696F6E2820297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E446973706C61794572726F7227';
wwv_flow_api.g_varchar2_table(278) := '293B0D0A0D0A20202020766172200D0A202020202020636F6E7461696E65722020203D202428273C64697620636C6173733D22636F6E7461696E6572223E3C2F6469763E27292C0D0A2020202020206469764572726F72202020203D202428273C646976';
wwv_flow_api.g_varchar2_table(279) := '20636C6173733D226572726F72223E3C2F6469763E27292C0D0A2020202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0D0A20202020202064697654656368496E666F203D';
wwv_flow_api.g_varchar2_table(280) := '202428273C6469763E3C2F6469763E27292C0D0A202020202020707265203D202428273C7072653E3C2F7072653E27292C0D0A2020202020206F7074696F6E7320203D207B0D0A2020202020202020226469616C6F67436C617373222020203A20227072';
wwv_flow_api.g_varchar2_table(281) := '65746975732D2D656E68616E6365644C6F764974656D206572726F72222C0D0A2020202020202020226175746F4F70656E222020202020203A20747275652C0D0A202020202020202022617070656E64546F222020202020203A2027626F6479272C0D0A';
wwv_flow_api.g_varchar2_table(282) := '2020202020202020226D6F64616C222020202020202020203A20747275652C0D0A202020202020202022706F736974696F6E222020202020203A207B0D0A20202020202020202020226D79223A202263656E746572222C200D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(283) := '226174223A202263656E746572222C200D0A20202020202020202020226F66223A2077696E646F770D0A20202020202020207D2C0D0A2020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E67732E';
wwv_flow_api.g_varchar2_table(284) := '706F7075702E7469746C652C0D0A2020202020202020227769647468222020202020202020203A203830302C0D0A2020202020202020226D696E5769647468222020202020203A203530302C0D0A20202020202020202268656967687422202020202020';
wwv_flow_api.g_varchar2_table(285) := '20203A203534312C0D0A2020202020202020226D696E4865696768742220202020203A203235352C0D0A202020202020202022726573697A61626C652220202020203A2066616C73652C0D0A202020202020202022647261676761626C65222020202020';
wwv_flow_api.g_varchar2_table(286) := '203A2066616C73652C0D0A202020202020202022636C6F73654F6E45736361706520223A20747275652C0D0A2020202020202020226F70656E22202020202020202020203A20242E70726F7879282066756E6374696F6E28297B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(287) := '2020242827626F647927292E616464436C6173732827617065782D6E6F2D7363726F6C6C27293B2020202020202020202020202020202020200D0A20202020202020207D2C207468697320292C0D0A2020202020202020226265666F7265436C6F736522';
wwv_flow_api.g_varchar2_table(288) := '2020203A20242E70726F7879282066756E6374696F6E28297B0D0A20202020202020202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B2020202020202020202020202020202020200D0A202020';
wwv_flow_api.g_varchar2_table(289) := '20202020207D2C207468697320290D0A2020202020207D3B2020202020200D0A0D0A202020206966202820746869732E706C7567696E53746F70706564203D3D2066616C73652029207B0D0A2020202020200D0A202020202020746869732E5F6D61736B';
wwv_flow_api.g_varchar2_table(290) := '506F707570427574746F6E53686F7728293B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E536574';
wwv_flow_api.g_varchar2_table(291) := '74696E67732E697344656275674F6E2029207B0D0A20202020202069662028200D0A2020202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20213D20756E646566696E65';
wwv_flow_api.g_varchar2_table(292) := '64200D0A2020202020202020262620746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20696E7374616E63656F662041727261790D0A20202020202029207B0D0A202020202020202066';
wwv_flow_api.g_varchar2_table(293) := '6F72202876617220693D303B2069203C20746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F2E6C656E6774683B20692B2B29207B0D0A202020202020202020207072652E617070656E64';
wwv_flow_api.g_varchar2_table(294) := '2820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F5B695D2E6E616D652B273A20272B746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E';
wwv_flow_api.g_varchar2_table(295) := '74656368496E666F5B695D2E76616C756520293B0D0A202020202020202020207072652E617070656E6428225C6E22293B0D0A20202020202020207D0D0A2020202020207D0D0A202020202020656C7365206966202820746869732E6D61736B2E616A61';
wwv_flow_api.g_varchar2_table(296) := '785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20213D20756E646566696E656420297B0D0A20202020202020207072652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E657272';
wwv_flow_api.g_varchar2_table(297) := '6F724F626A6563742E74656368496E666F20293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207072652E617070656E6428746869732E435F4552524F525F44454255475F4F4646293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(298) := '0D0A202020206469764D6573736167652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E6572726F7220293B0D0A202020206469764572726F722E617070656E642820746869732E6D';
wwv_flow_api.g_varchar2_table(299) := '61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E616464496E666F20293B0D0A0D0A2020202064697654656368496E666F2E617070656E6428707265293B0D0A202020200D0A0D0A20202020636F6E7461696E65720D0A20';
wwv_flow_api.g_varchar2_table(300) := '20202020202E617070656E64286469764D657373616765290D0A2020202020202E617070656E64286469764572726F72290D0A2020202020202E617070656E642864697654656368496E666F290D0A2020202020202E6469616C6F6728206F7074696F6E';
wwv_flow_api.g_varchar2_table(301) := '7320293B0D0A0D0A20207D2C0D0A20205F6D61736B416A61785374617465427574746F6E4572726F723A2066756E6374696F6E2820297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A';
wwv_flow_api.g_varchar2_table(302) := '61785374617465427574746F6E4572726F72272C20746869732E706C7567696E53746F70706564293B0D0A0D0A20202020746869732E5F6D61736B506F707570427574746F6E4869646528293B0D0A202020200D0A0D0A20202020746869732E6D61736B';
wwv_flow_api.g_varchar2_table(303) := '2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290D0A2020202020202E72656D6F7665436C61737328290D0A2020202020202E616464436C617373282769636F6E2066612066612D6578636C616D6174696F6E';
wwv_flow_api.g_varchar2_table(304) := '2D747269616E676C652066612D616E696D2D666C617368206572726F7227293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0D0A0D0A202020206966202820746869732E706C';
wwv_flow_api.g_varchar2_table(305) := '7567696E53746F707065642029207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E282027636C69636B272C20242E70726F78792820746869732E5F6D61736B416A61785374617465427574';
wwv_flow_api.g_varchar2_table(306) := '746F6E446973706C61794572726F722C2074686973202920293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E65282027636C69636B272C20';
wwv_flow_api.g_varchar2_table(307) := '242E70726F78792820746869732E5F6D61736B416A61785374617465427574746F6E446973706C61794572726F722C2074686973202920293B20200D0A202020207D0D0A202020200D0A20207D2C0D0A20205F6D61736B416A6178537461746542757474';
wwv_flow_api.g_varchar2_table(308) := '6F6E52756E6E696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E52756E6E696E6727293B0D0A0D0A202020207468';
wwv_flow_api.g_varchar2_table(309) := '69732E5F6D61736B506F707570427574746F6E4869646528293B0D0A202020200D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290D0A2020202020202E72656D6F76';
wwv_flow_api.g_varchar2_table(310) := '65417474722827636C61737327290D0A2020202020202E616464436C617373282769636F6E2066612066612D726566726573682066612D616E696D2D7370696E27293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E';
wwv_flow_api.g_varchar2_table(311) := '2E627574746F6E2E73686F7728293B0D0A20207D2C0D0A20205F6D61736B416A61785374617465427574746F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(312) := '5F6D61736B416A61785374617465427574746F6E53686F7727293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0D0A20207D2C0D0A20205F6765744F6E4C6F61644C6F763A20';
wwv_flow_api.g_varchar2_table(313) := '66756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F7627293B0D0A0D0A202020207661720D0A2020202020206D6F646520202020';
wwv_flow_api.g_varchar2_table(314) := '203D207056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564203F202747455453455353494F4E535441544527203A20274745544F4E4C5953454C4543544544272C0D0A20202020202076616C7565732020203D20';
wwv_flow_api.g_varchar2_table(315) := '7056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564203F205B5D203A207056616C75652E73706C697428746869732E435F56414C55455F534550415241544F52292C0D0A202020202020616A617844617461203D';
wwv_flow_api.g_varchar2_table(316) := '207B0D0A202020202020202022783031223A206D6F64652C20202F2F747279620D0A202020202020202022663031223A2076616C756573202F2F73656C65637465642076616C7565730D0A2020202020207D2C0D0A202020202020616A61784F7074696F';
wwv_flow_api.g_varchar2_table(317) := '6E73203D207B0D0A20202020202020200D0A2020202020202020226265666F726553656E6422203A20242E70726F78792866756E6374696F6E2820704A715848522C207053657474696E677320297B0D0A20202020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(318) := '672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20276265666F72652073656E6427293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E67';
wwv_flow_api.g_varchar2_table(319) := '28293B0D0A0D0A20202020202020207D2C2074686973292C0D0A2020202020202020227375636365737322202020203A20242E70726F78792866756E6374696F6E2820704D6F64652C207056616C75657353656E742C2070446174612C20705465787453';
wwv_flow_api.g_varchar2_table(320) := '74617475732C20704A71584852297B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C2027704D6F6465272C20704D6F6465';
wwv_flow_api.g_varchar2_table(321) := '293B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20277056616C75657353656E74272C207056616C75657353656E7429';
wwv_flow_api.g_varchar2_table(322) := '3B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20277044617461272C207044617461293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(323) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20277054657874537461747573272C207054657874537461747573293B0D0A2020202020202020202061';
wwv_flow_api.g_varchar2_table(324) := '7065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C2027704A71584852272C20704A71584852293B0D0A0D0A20202020202020202020766172200D0A20202020';
wwv_flow_api.g_varchar2_table(325) := '20202020202020206F626A65637454656D702C0D0A20202020202020202020202076616C75657345787472613B0D0A0D0A2020202020202020202070446174612E646174612E736F72742820746869732E5F736F72744A736F6E28202244222C20226173';
wwv_flow_api.g_varchar2_table(326) := '6322202920293B0D0A20202020202020202020746869732E6D61736B2E73746174652E736F72746564203D2022617363223B0D0A0D0A20202020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(327) := '746869732E5F70726F6D7074456D7074794D61736B28293B0D0A0D0A20202020202020202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A2020202020202020202020200D0A20';
wwv_flow_api.g_varchar2_table(328) := '20202020202020202020206F626A65637454656D70203D207B0D0A20202020202020202020202020202276616C75652220203A2070446174612E646174615B695D2E522E746F537472696E6728292C0D0A20202020202020202020202020202264697370';
wwv_flow_api.g_varchar2_table(329) := '6C6179223A2070446174612E646174615B695D2E440D0A2020202020202020202020207D3B0D0A0D0A202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428206F626A65637454656D702C2066616C73652C20';
wwv_flow_api.g_varchar2_table(330) := '66616C736520293B0D0A202020202020202020207D0D0A0D0A202020202020202020202F2F6966202820704D6F6465203D3D20274745544F4E4C5953454C4543544544272029207B0D0A202020202020202020206966202820704D6F6465203D3D202747';
wwv_flow_api.g_varchar2_table(331) := '455453455353494F4E5354415445272029207B0D0A2020202020202020202020207056616C75657353656E74203D2070446174612E73657373696F6E3B0D0A202020202020202020207D0D0A0D0A2020202020202020202069662028200D0A2020202020';
wwv_flow_api.g_varchar2_table(332) := '20202020202020746869732E706C7567696E53657474696E67732E646973706C61794578747261200D0A2020202020202020202020202626207056616C75657353656E7420213D20756E646566696E65640D0A2020202020202020202020202626207056';
wwv_flow_api.g_varchar2_table(333) := '616C75657353656E742E6C656E677468203E2030200D0A2020202020202020202029207B0D0A0D0A20202020202020202020202076616C7565734578747261203D20746869732E5F676574457874726156616C75657328207056616C75657353656E742E';
wwv_flow_api.g_varchar2_table(334) := '73706C697428746869732E435F56414C55455F534550415241544F52292C2070446174612E6461746120293B0D0A0D0A202020202020202020202020666F7220282076617220693D303B2069203C2076616C75657345787472612E6C656E6774683B2069';
wwv_flow_api.g_varchar2_table(335) := '2B2B2029207B0D0A20202020202020202020202020206F626A65637454656D70203D207B0D0A202020202020202020202020202020202276616C75652220203A2076616C75657345787472615B695D2C0D0A202020202020202020202020202020202264';
wwv_flow_api.g_varchar2_table(336) := '6973706C6179223A2076616C75657345787472615B695D0D0A20202020202020202020202020207D3B0D0A0D0A2020202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428206F626A65637454656D702C2066';
wwv_flow_api.g_varchar2_table(337) := '616C73652C207472756520293B0D0A2020202020202020202020207D0D0A202020202020202020207D0D0A202020202020202020202F2F7D0D0A202020200D0A20202020202020202020746869732E5F70726F6D707452656E6465725461677328293B0D';
wwv_flow_api.g_varchar2_table(338) := '0A0D0A20202020202020202020746869732E5F70726F6D70744170706C7956616C756573282066616C736520293B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4869646528293B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(339) := '202020202F2F7768656E2041504558206974656D20636F6E7461696E73206D756C7469706C652076616C756573206275740D0A202020202020202020202F2F697420697320636F6E6669677572656420746F20776F726B20776974682073696E67756C61';
wwv_flow_api.g_varchar2_table(340) := '722073656C656374696F6E0D0A2020202020202020202069662028200D0A202020202020202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A2020202020202020';
wwv_flow_api.g_varchar2_table(341) := '20202020262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20310D0A2020202020202020202029207B0D0A202020202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E53657445';
wwv_flow_api.g_varchar2_table(342) := '72726F72287B0D0A2020202020202020202020202020226572726F7222202020203A2027496E76616C696420696E7075742076616C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272C0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(343) := '202020202022616464496E666F2220203A2027546865206974656D20697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076';
wwv_flow_api.g_varchar2_table(344) := '616C7565732E272C0D0A20202020202020202020202020202274656368496E666F22203A2027436865636B2073657373696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E742E617474722827696427292B27';
wwv_flow_api.g_varchar2_table(345) := '2220616E6420696E73706563742070726F6365737365732068616E646C696E672073657373696F6E2076616C7565206F66206974656D2E270D0A2020202020202020202020207D2C2066616C7365293B0D0A0D0A20202020202020202020202074686973';
wwv_flow_api.g_varchar2_table(346) := '2E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A202020202020202020202020746869732E5F7468726F774572726F725465787428200D0A202020202020202020202020202027496E76616C696420696E707574207661';
wwv_flow_api.g_varchar2_table(347) := '6C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272B0D0A202020202020202020202020202027546865206974656D20697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374';
wwv_flow_api.g_varchar2_table(348) := '696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272B0D0A202020202020202020202020202027436865636B2073657373696F6E2076616C756520666F722041504558206974656D2022272B746869';
wwv_flow_api.g_varchar2_table(349) := '732E656C656D656E742E617474722827696427292B272220616E6420696E73706563742070726F6365737365732068616E646C696E672073657373696F6E2076616C7565206F66206974656D2E270D0A202020202020202020202020293B0D0A20202020';
wwv_flow_api.g_varchar2_table(350) := '2020202020207D0D0A0D0A20202020202020207D2C20746869732C206D6F64652C207056616C756520292C0D0A2020202020202020226572726F72222020202020203A20242E70726F78792866756E6374696F6E28704A715848522C2070546578745374';
wwv_flow_api.g_varchar2_table(351) := '617475732C20704572726F725468726F776E297B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20276572726F7227293B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(352) := '20617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C2027704A71584852272C20704A71584852293B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C';
wwv_flow_api.g_varchar2_table(353) := '6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20277054657874537461747573272C207054657874537461747573293B0D0A20202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(354) := '6765744F6E4C6F61644C6F76272C2027704572726F725468726F776E272C20704572726F725468726F776E293B0D0A0D0A202020202020202020202F2F6572726F724D6573736167650D0A202020202020202020206966202820746869732E656C656D65';
wwv_flow_api.g_varchar2_table(355) := '6E742E76616C28292E6C656E677468203E20302029207B0D0A202020202020202020202020746869732E5F6D61736B447261775461677346726F6D496E76616C696456616C75657328293B0D0A202020202020202020207D0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(356) := '2020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202020202020202022616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E666F2C0D0A202020202020';
wwv_flow_api.g_varchar2_table(357) := '202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0D0A2020202020202020202020202274656368496E666F22203A20704A715848522E726573706F6E73654A534F4E2E74656368496E666F';
wwv_flow_api.g_varchar2_table(358) := '0D0A202020202020202020207D293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A20202020202020202020746869732E5F7468726F774572726F725465787428207045';
wwv_flow_api.g_varchar2_table(359) := '72726F725468726F776E20293B0D0A202020202020202020200D0A20202020202020207D2C2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F78792866756E6374696F6E28297B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(360) := '7D2C2074686973290D0A2020202020207D3B202020200D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202776616C75657320746F206765742074616773272C76';
wwv_flow_api.g_varchar2_table(361) := '616C756573293B0D0A202020200D0A20202020617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B';
wwv_flow_api.g_varchar2_table(362) := '0D0A20207D2C0D0A20202F2A0D0A20202020504F5055500D0A20202A2F0D0A20205F6D61736B447261775461677346726F6D496E76616C696456616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869';
wwv_flow_api.g_varchar2_table(363) := '732E6C6F675072656669782C20275F6D61736B447261775461677346726F6D496E76616C696456616C75657327293B0D0A0D0A202020207661722076616C756573203D20746869732E656C656D656E742E76616C28292E73706C697428746869732E435F';
wwv_flow_api.g_varchar2_table(364) := '56414C55455F534550415241544F52293B0D0A0D0A20202020696620282076616C7565732E6C656E677468203E20302029207B0D0A202020202020666F722028766172206920696E2076616C75657329207B0D0A20202020202020202F2F5F70726F6D70';
wwv_flow_api.g_varchar2_table(365) := '74546167734164644E65773A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C756520297B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E6577282076616C7565735B69';
wwv_flow_api.g_varchar2_table(366) := '5D2C2076616C7565735B695D2C207472756520293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F70726F6D7074506C616365486F6C6465724869646528293B0D0A202020200D0A202020207D0D0A2020202020200D0A20207D2C0D0A20';
wwv_flow_api.g_varchar2_table(367) := '205F706F70757053656C656374656447657456616C75654172723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C656374656447657456616C756541';
wwv_flow_api.g_varchar2_table(368) := '727227293B0D0A2020202076617220617272203D205B5D3B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(369) := '696620282021746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0D0A20202020202020206172722E707573682820746869732E706F7075702E73746174652E73656C65637465645B';
wwv_flow_api.g_varchar2_table(370) := '695D2E76616C756520293B20200D0A2020202020207D0D0A2020202020200D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C656374656447657456616C756541';
wwv_flow_api.g_varchar2_table(371) := '7272272C20617272293B0D0A2020202072657475726E206172723B0D0A20207D2C0D0A20205F706F707570416A61784765744F6E6C7953656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(372) := '2E6C6F675072656669782C20275F706F707570416A61784765744F6E6C7953656C656374656427293B0D0A0D0A202020207661720D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A20274745544F4E4C5953454C';
wwv_flow_api.g_varchar2_table(373) := '4543544544272C2020202020202020202020202020202F2F747279620D0A202020202020202022663031223A20746869732E5F706F70757053656C656374656447657456616C75654172722829202F2F73656C65637465642076616C7565730D0A202020';
wwv_flow_api.g_varchar2_table(374) := '2020207D2C0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0D0A20202020';
wwv_flow_api.g_varchar2_table(375) := '20202020227375636365737322202020203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2020202074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F70';
wwv_flow_api.g_varchar2_table(376) := '6F707570416A61784572726F722C20202020202074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C20202074686973290D0A2020202020207D';
wwv_flow_api.g_varchar2_table(377) := '3B0D0A0D0A202020202F2F7462640D0A20202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20';
wwv_flow_api.g_varchar2_table(378) := '616A6178446174612C20616A61784F7074696F6E7320293B0D0A0D0A20207D2C0D0A20205F706F707570416A6178506572666F726D3A2066756E6374696F6E282070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E';
wwv_flow_api.g_varchar2_table(379) := '2C2070536561726368537472696E672C2070536561726368436F6C756D6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A6178506572666F726D27293B0D0A0D0A2020202076';
wwv_flow_api.g_varchar2_table(380) := '61720D0A202020202020736561726368537472696E67203D2070536561726368537472696E672C0D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A2027504F505550272C20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(381) := '2020202020202020202F2F747279620D0A202020202020202022783032223A20746869732E5F706F707570476574526F77735065725061676528292C20202020202F2F726F77732070657220706167650D0A202020202020202022783033223A20705365';
wwv_flow_api.g_varchar2_table(382) := '61726368537472696E672C202020202020202020202020202020202020202F2F73656172636820737472696E670D0A202020202020202022783034223A207050616765203D3D20756E646566696E6564203F2031203A2070506167652C20202F2F706167';
wwv_flow_api.g_varchar2_table(383) := '650D0A202020202020202022783035223A2070536F72744279436F6C756D6E4964782C0D0A202020202020202022783036223A2070446972656374696F6E2C0D0A202020202020202022783037223A2070536561726368436F6C756D6E0D0A2020202020';
wwv_flow_api.g_varchar2_table(384) := '207D2C0D0A0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0D0A20202020';
wwv_flow_api.g_varchar2_table(385) := '20202020227375636365737322202020203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F706F7075';
wwv_flow_api.g_varchar2_table(386) := '70416A61784572726F722C2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C2074686973290D0A2020202020207D3B0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(387) := '66202820746869732E706F7075702E73746174652E616A617852756E6E696E672029207B0D0A202020202020746869732E5F706F707570416A617841626F727428293B0D0A20202020202073657454696D656F75742820242E70726F7879282074686973';
wwv_flow_api.g_varchar2_table(388) := '2E5F706F707570416A6178506572666F726D2C20746869732C2070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C2070536561726368537472696E672C2070536561726368436F6C756D6E20292C203330302029';
wwv_flow_api.g_varchar2_table(389) := '3B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A0D0A202020202F2F69742077696C6C2062652073657420616761696E20616674657220616A61782077696C6C20737563636565640D0A20202020746869732E706F';
wwv_flow_api.g_varchar2_table(390) := '7075702E73746174652E736561726368537472696E67202020202020202020203D2070536561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E6C6173744665746368656450616765202020202020203D207050616765';
wwv_flow_api.g_varchar2_table(391) := '203D3D20756E646566696E6564203F2031203A2070506167653B0D0A20202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D2070536F72744279436F6C756D6E4964783B0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(392) := '2E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D2070446972656374696F6E3B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478202020202020203D207053656172';
wwv_flow_api.g_varchar2_table(393) := '6368436F6C756D6E3B0D0A0D0A0D0A20202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C2061';
wwv_flow_api.g_varchar2_table(394) := '6A6178446174612C20616A61784F7074696F6E7320293B0D0A0D0A20207D2C0D0A20205F706F707570416A61784265666F726553656E643A2066756E6374696F6E282020704A715848522C207053657474696E67732029207B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(395) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784265666F726553656E6427293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D20747275653B0D0A20202020';
wwv_flow_api.g_varchar2_table(396) := '746869732E706F7075702E636F6E74656E745461626C65203D20756E646566696E65643B0D0A20202020746869732E706F7075702E626F64792E616464436C6173732827736561726368696E6727293B0D0A0D0A202020206966202820746869732E706F';
wwv_flow_api.g_varchar2_table(397) := '7075702E73746174652E697356697369626C6520262620746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E656429207B0D0A202020202020746869732E5F706F7075705265706F727448656164';
wwv_flow_api.g_varchar2_table(398) := '65725769646765744869646528293B20200D0A202020207D0D0A0D0A20202020746869732E5F706F7075705265706F727452656E646572536561726368696E672830293B0D0A202020200D0A20207D2C0D0A20205F706F707570416A6178446174614669';
wwv_flow_api.g_varchar2_table(399) := '6E64496E646578427952657475726E56616C75653A2066756E6374696F6E282070446174612C207052657475726E56616C75652029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757041';
wwv_flow_api.g_varchar2_table(400) := '6A61784461746146696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C7565272C207052657475726E56616C7565293B0D0A0D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E';
wwv_flow_api.g_varchar2_table(401) := '6C656E6774683B20692B2B2029207B0D0A202020202020696620282070446174612E646174615B695D2E52203D3D207052657475726E56616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(402) := '69782C20275F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C756520666F756E6420617420696E64657820272B69293B0D0A202020202020202072657475726E20693B0D0A20';
wwv_flow_api.g_varchar2_table(403) := '20202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C2027705265';
wwv_flow_api.g_varchar2_table(404) := '7475726E56616C7565206E6F7420666F756E6427293B0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20205F706F707570457874656E6444617461576974684E756C6C56616C7565733A2066756E6374696F6E2820704461746120297B0D0A';
wwv_flow_api.g_varchar2_table(405) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570457874656E6444617461576974684E756C6C56616C756573272C20277044617461272C207044617461293B0D0A0D0A202020207661720D0A2020';
wwv_flow_api.g_varchar2_table(406) := '20202020697353656C6563746564203D2066616C73653B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B297B0D0A20202020202069662028';
wwv_flow_api.g_varchar2_table(407) := '20746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0D0A2020202020202020697353656C6563746564203D20747275653B0D0A2020202020202020627265616B3B0D0A2020202020';
wwv_flow_api.g_varchar2_table(408) := '207D0D0A202020207D0D0A0D0A2020202070446174612E646174612E756E7368696674287B0D0A2020202020202252223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652C0D0A2020202020202244223A2074686973';
wwv_flow_api.g_varchar2_table(409) := '2E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F746578742C0D0A202020202020226973415045584E756C6C56616C7565223A20747275652C0D0A2020202020202273656C6563746564223A20697353656C65637465640D0A202020207D293B0D';
wwv_flow_api.g_varchar2_table(410) := '0A0D0A2020202072657475726E2070446174613B0D0A0D0A20207D2C0D0A20205F706F707570457874656E644461746157697468457874726156616C7565733A2066756E6374696F6E282070446174612029207B0D0A20202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(411) := '2E6C6F6728746869732E6C6F675072656669782C20275F706F707570457874656E644461746157697468457874726156616C756573272C20277044617461272C207044617461293B0D0A0D0A20202020766172200D0A2020202020206964782C0D0A2020';
wwv_flow_api.g_varchar2_table(412) := '202020206E65774172726179203D20242E657874656E6428205B5D2C2070446174612E6461746120292C0D0A2020202020206E6577526F774F626A6563743B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F707570';
wwv_flow_api.g_varchar2_table(413) := '2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020696478203D20746869732E5F706F707570416A61784461746146696E64496E646578427952657475726E56616C7565282070446174612C20746869732E';
wwv_flow_api.g_varchar2_table(414) := '706F7075702E73746174652E73656C65637465645B695D2E76616C756520293B0D0A0D0A2020202020206966202820696478203D3D202D312029207B0D0A0D0A20202020202020206E6577526F774F626A656374203D207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(415) := '2252223A20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0D0A202020202020202020202244223A20746869732E706F7075702E73746174652E73656C65637465645B695D2E646973706C61792C0D0A20202020';
wwv_flow_api.g_varchar2_table(416) := '2020202020202273656C6563746564223A20747275652C0D0A20202020202020202020226578747261223A20747275650D0A20202020202020207D3B0D0A0D0A202020202020202069662028206E6577526F774F626A6563742E52203D3D20746869732E';
wwv_flow_api.g_varchar2_table(417) := '6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652029207B0D0A202020202020202020202F2F6E756C6C2076616C75650D0A202020202020202020206E6577526F774F626A6563742E6578747261203D2066616C73653B0D0A20202020';
wwv_flow_api.g_varchar2_table(418) := '2020202020206E6577526F774F626A6563742E6973415045584E756C6C56616C7565203D20747275653B0D0A20202020202020207D0D0A0D0A20202020202020206E657741727261792E756E7368696674286E6577526F774F626A656374290D0A202020';
wwv_flow_api.g_varchar2_table(419) := '2020207D0D0A202020207D0D0A0D0A2020202070446174612E64617461203D206E657741727261793B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20205F706F707570416A6178537563636573733A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(420) := '2070446174612C2070546578745374617475732C20704A71584852297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A617853756363657373272C20277044617461272C2070446174';
wwv_flow_api.g_varchar2_table(421) := '61293B0D0A0D0A20202020766172206D657373616765203D20746869732E435F504F5055505F544558545F46494C54455245445F494E464F0D0A202020202020202020202E7265706C61636528272530272C2070446174612E746F74616C436F756E7429';
wwv_flow_api.g_varchar2_table(422) := '0D0A202020202020202020202E7265706C61636528272531272C2070446174612E736561726368537472696E6729202B20746869732E435F504F5055505F544558545F434C4541525F46494C544552494E473B0D0A0D0A20202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(423) := '70496E666F726D6174696F6E4869646528293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617853746174757320202020202020202020202020202020203D20746869732E435F414A41585F5354415455535F535543434553533B';
wwv_flow_api.g_varchar2_table(424) := '0D0A0D0A20202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2020202020203D2070446174612E736F72744279436F6C756D6E446972656374696F6E3B0D0A20202020746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(425) := '746174652E736F72746564436F6C756D6E4964782020202020202020202020203D2070446174612E736F72744279436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E6C6173744665746368656450616765202020202020';
wwv_flow_api.g_varchar2_table(426) := '2020202020203D2070446174612E726571756573746564506167653B0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E672020202020202020202020202020203D2070446174612E736561726368537472696E673B0D';
wwv_flow_api.g_varchar2_table(427) := '0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782020202020202020202020203D2070446174612E736561726368436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E616A6178';
wwv_flow_api.g_varchar2_table(428) := '44617461546F74616C436F756E742020202020202020203D2070446174612E746F74616C436F756E743B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E74506167654461746120202020202020203D2074686973';
wwv_flow_api.g_varchar2_table(429) := '2E5F64617461457874656E6453656C656374656446726F6D41727261794F664F626A656374732870446174612C20746869732E706F7075702E73746174652E73656C6563746564292E646174613B0D0A20202020746869732E706F7075702E7374617465';
wwv_flow_api.g_varchar2_table(430) := '2E616A617843757272656E7450616765526F776E756D5374617274203D2070446174612E726F776E756D53746172743B0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D456E642020203D20';
wwv_flow_api.g_varchar2_table(431) := '70446174612E726F776E756D456E643B0D0A0D0A0D0A20202020696620282070446174612E72657175657374203D3D20274745544F4E4C5953454C4543544544272029207B0D0A2020202020207044617461203D20746869732E5F706F70757045787465';
wwv_flow_api.g_varchar2_table(432) := '6E644461746157697468457874726156616C7565732820704461746120293B2020202020200D0A202020202020746869732E706F7075702E73746174652E616A617853656C656374656444617461203D20746869732E706F7075702E73746174652E616A';
wwv_flow_api.g_varchar2_table(433) := '617843757272656E7450616765446174613B0D0A202020202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A202020202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A0D0A202020207D';
wwv_flow_api.g_varchar2_table(434) := '0D0A20202020656C736520696620282070446174612E72657175657374203D3D2027504F505550272029207B0D0A202020202020746869732E5F706F707570526F77735065725061676553686F7728293B0D0A202020202020746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(435) := '506167696E6174696F6E53686F7728293B0D0A0D0A202020202020696620282070446174612E736561726368537472696E6720213D206E756C6C202626202070446174612E646174612E6C656E677468203E20302029207B0D0A20202020202020207468';
wwv_flow_api.g_varchar2_table(436) := '69732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F504F5055505F544558545F46494C54455245445F494E464F293B20200D0A2020202020207D0D0A0D0A2020202020202F2F68616E646C6520';
wwv_flow_api.g_varchar2_table(437) := '41504558204C4F56206E756C6C2076616C75650D0A20202020202069662028200D0A2020202020202020746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D2031200D0A202020202020202026262070446174612E73';
wwv_flow_api.g_varchar2_table(438) := '6561726368537472696E67203D3D206E756C6C0D0A2020202020202020262620280D0A20202020202020202020746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F7465787420213D20756E646566696E65640D0A202020202020202020';
wwv_flow_api.g_varchar2_table(439) := '207C7C20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C756520213D20756E646566696E65640D0A2020202020202020290D0A20202020202029207B0D0A20202020202020207044617461203D20746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(440) := '457874656E6444617461576974684E756C6C56616C7565732820704461746120293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F7075705265706F727452656E6465722820704461746120293B0D0A0D0A202020202F';
wwv_flow_api.g_varchar2_table(441) := '2F6966207468657265206973206E6F2073656172636820737472696E6720636C65617220676C6F62616C20736561726368206974656D0D0A20202020696620282021746869732E706F7075702E73746174652E736561726368537472696E672026262021';
wwv_flow_api.g_varchar2_table(442) := '746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782029207B0D0A202020202020746869732E706F7075702E7365617263682E76616C286E756C6C293B0D0A202020207D0D0A0D0A20202020696620282070446174612E7175';
wwv_flow_api.g_varchar2_table(443) := '65727920213D20756E646566696E65642029207B0D0A202020202020746869732E5F77726974655175657279546F436F6E736F6C65282070446174612E717565727920293B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F672874';
wwv_flow_api.g_varchar2_table(444) := '6869732E6C6F675072656669782C20275F706F707570416A617853756363657373272C20277374617465272C20746869732E706F7075702E7374617465293B0D0A20207D2C0D0A20202F2F746869732E5F706F707570416A6178447261774572726F7228';
wwv_flow_api.g_varchar2_table(445) := '20704A715848522E726573706F6E73654A534F4E2E6572726F722C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F20293B0D0A20205F706F707570416A6178447261774572726F723A2066756E6374696F6E282070416A617852';
wwv_flow_api.g_varchar2_table(446) := '6573706F6E736520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A6178447261774572726F72272C2070416A6178526573706F6E7365293B0D0A0D0A20202020766172200D0A20';
wwv_flow_api.g_varchar2_table(447) := '2020202020636F6E7461696E65722020203D202428273C64697620636C6173733D22616A61784572726F72223E3C2F6469763E27292C0D0A2020202020206469764572726F72202020203D202428273C64697620636C6173733D226572726F72223E3C2F';
wwv_flow_api.g_varchar2_table(448) := '6469763E27292C0D0A2020202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0D0A20202020202064697654656368496E666F203D202428273C6469763E3C2F6469763E2729';
wwv_flow_api.g_varchar2_table(449) := '2C0D0A202020202020707265203D202428273C7072653E3C2F7072653E27293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020666F72202876617220693D303B20';
wwv_flow_api.g_varchar2_table(450) := '69203C2070416A6178526573706F6E73652E74656368496E666F2E6C656E6774683B20692B2B29207B0D0A20202020202020207072652E617070656E64282070416A6178526573706F6E73652E74656368496E666F5B695D2E6E616D652B273A20272B70';
wwv_flow_api.g_varchar2_table(451) := '416A6178526573706F6E73652E74656368496E666F5B695D2E76616C756520293B0D0A20202020202020207072652E617070656E6428225C6E22293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207072652E';
wwv_flow_api.g_varchar2_table(452) := '617070656E6428746869732E435F4552524F525F44454255475F4F4646293B0D0A202020207D0D0A0D0A202020206469764D6573736167652E617070656E64282070416A6178526573706F6E73652E6572726F7220293B0D0A202020206469764572726F';
wwv_flow_api.g_varchar2_table(453) := '722E617070656E64282070416A6178526573706F6E73652E616464496E666F20293B0D0A0D0A2020202064697654656368496E666F2E617070656E6428707265293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E617070656E642864';
wwv_flow_api.g_varchar2_table(454) := '69764D657373616765290D0A2020202020202E617070656E64286469764572726F72290D0A2020202020202E617070656E642864697654656368496E666F293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D70747928292E61707065';
wwv_flow_api.g_varchar2_table(455) := '6E6428636F6E7461696E6572293B0D0A20202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A20202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A20207D2C20200D0A20205F706F7075';
wwv_flow_api.g_varchar2_table(456) := '70416A61784572726F723A2066756E6374696F6E28704A715848522C2070546578745374617475732C20704572726F725468726F776E297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570';
wwv_flow_api.g_varchar2_table(457) := '416A61784572726F72272C2027704A71584852272C20704A71584852293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C20277054657874537461747573272C';
wwv_flow_api.g_varchar2_table(458) := '207054657874537461747573293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C2027704572726F725468726F776E272C20704572726F725468726F776E293B';
wwv_flow_api.g_varchar2_table(459) := '0D0A0D0A202020207661722061727261793B0D0A0D0A202020206966202820704A715848522E73746174757354657874203D3D202761626F7274272029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(460) := '2C20275F706F707570416A61784572726F72272C2027414A41582063616C6C2061626F727465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E73746174652E616A';
wwv_flow_api.g_varchar2_table(461) := '617853746174757320202020202020202020203D20746869732E435F414A41585F5354415455535F4552524F523B0D0A20202020746869732E706F7075702E73746174652E616A61784461746146657463686564436F756E74203D20756E646566696E65';
wwv_flow_api.g_varchar2_table(462) := '643B0D0A20202020746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742020203D20756E646566696E65643B0D0A0D0A20202020746869732E5F706F7075704865616465724869646528293B0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(463) := '2E5F706F707570466F6F7465724869646528293B0D0A0D0A202020202F2A0D0A2020202069662028207054657874537461747573203D3D20277061727365726572726F72272029207B0D0A202020202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(464) := '2E6C6F675072656669782C2027414A415820726573706E736520656E64656420696E207061727365206572726F7227293B0D0A202020202020746869732E5F706F707570416A6178447261774572726F7228293B0D0A202020207D0D0A20202020656C73';
wwv_flow_api.g_varchar2_table(465) := '65200D0A202020202A2F0D0A202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F20213D20756E646566696E65642029207B0D0A2020202020200D0A202020202020746869732E5F706F707570416A6178447261';
wwv_flow_api.g_varchar2_table(466) := '774572726F722820704A715848522E726573706F6E73654A534F4E20293B0D0A0D0A202020202020666F72202876617220693D303B2069203C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F2E6C656E6774683B20692B2B2029';
wwv_flow_api.g_varchar2_table(467) := '207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E6E616D652C20704A715848522E7265';
wwv_flow_api.g_varchar2_table(468) := '73706F6E73654A534F4E2E74656368496E666F5B695D2E76616C7565293B0D0A0D0A20202020202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E696E6465784F6628275C6E2729203E';
wwv_flow_api.g_varchar2_table(469) := '202D312029207B0D0A202020202020202020206172726179203D20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E73706C697428275C6E27293B0D0A0D0A20202020202020202020666F72202820766172';
wwv_flow_api.g_varchar2_table(470) := '2079203D20303B2079203C2061727261792E6C656E6774683B20792B2B2029207B0D0A202020202020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F';
wwv_flow_api.g_varchar2_table(471) := '6E73654A534F4E2E74656368496E666F5B695D2E6E616D652C2061727261795B795D293B2020202020202020202020200D0A202020202020202020207D0D0A20202020202020207D0D0A2020202020207D2020202020200D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(472) := '2020746869732E5F706F707570416A6178436F6D706C65746528293B0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F6572726F72272C20746869732E5F706F7075704765744576656E7444617461282929';
wwv_flow_api.g_varchar2_table(473) := '3B0D0A20202020746869732E5F7468726F774572726F722820704572726F725468726F776E20293B0D0A20207D2C0D0A20205F706F707570416A6178436F6D706C6574653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(474) := '6728746869732E6C6F675072656669782C20275F706F707570416A6178436F6D706C65746527293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A0D0A202020200D0A0D0A202020';
wwv_flow_api.g_varchar2_table(475) := '20617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A6178436F6D706C657465272C2027706F707570207374617465272C20746869732E706F7075702E7374617465293B0D0A0D0A20207D2C0D0A0D0A20';
wwv_flow_api.g_varchar2_table(476) := '205F706F707570416A617841626F72743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570416A617841626F727427293B0D0A0D0A20202020746869732E706F';
wwv_flow_api.g_varchar2_table(477) := '7075702E73746174652E7868722E61626F727428293B0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A202020200D0A0D0A20207D2C0D0A0D0A20205F706F70757047657453656C656374';
wwv_flow_api.g_varchar2_table(478) := '6564486173683A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757047657453656C65637465644861736827293B0D0A0D0A20202020766172200D0A2020202020';
wwv_flow_api.g_varchar2_table(479) := '206E65774172726179203D20746869732E706F7075702E73746174652E73656C65637465642E6D61702866756E6374696F6E287043757272656E7456616C75652C2070496E6465782C20704172726179297B0D0A202020202020202072657475726E2070';
wwv_flow_api.g_varchar2_table(480) := '43757272656E7456616C75652E76616C75653B0D0A2020202020207D292C0D0A20202020202068617368436F6465203D20746869732E5F67657448617368436F646528206E657741727261792E6A6F696E28273A272920293B0D0A0D0A20202020617065';
wwv_flow_api.g_varchar2_table(481) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757047657453656C6563746564486173682072657475726E7320272C2068617368436F6465293B0D0A0D0A2020202072657475726E2068617368436F64653B0D0A2020';
wwv_flow_api.g_varchar2_table(482) := '7D2C0D0A20205F67657448617368436F64653A2066756E6374696F6E282070537472696E672029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F67657448617368436F6465272C2070537472696E';
wwv_flow_api.g_varchar2_table(483) := '67293B0D0A202020202F2F696D706C656D656E746174696F6E206F662068747470733A2F2F737461636B6F766572666C6F772E636F6D2F7175657374696F6E732F373631363436312F67656E65726174652D612D686173682D66726F6D2D737472696E67';
wwv_flow_api.g_varchar2_table(484) := '2D696E2D6A6176617363726970740D0A20202020766172200D0A20202020202068617368203D20302C200D0A202020202020692C200D0A2020202020206368723B0D0A0D0A202020206966202870537472696E672E6C656E677468203D3D3D203029207B';
wwv_flow_api.g_varchar2_table(485) := '0D0A20202020202072657475726E20686173683B0D0A202020207D0D0A0D0A20202020666F72202869203D20303B2069203C2070537472696E672E6C656E6774683B20692B2B29207B0D0A2020202020206368722020203D2070537472696E672E636861';
wwv_flow_api.g_varchar2_table(486) := '72436F646541742869293B0D0A2020202020206861736820203D20282868617368203C3C203529202D206861736829202B206368723B0D0A20202020202068617368207C3D20303B202F2F20436F6E7665727420746F20333262697420696E7465676572';
wwv_flow_api.g_varchar2_table(487) := '0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F67657448617368436F64652072657475726E73272C2068617368293B0D0A2020202072657475726E20686173683B0D0A20207D2C';
wwv_flow_api.g_varchar2_table(488) := '0D0A20205F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(489) := '706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B272C20704576656E742C20705569293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E73656C656374696E672029207B0D0A202020202020746869';
wwv_flow_api.g_varchar2_table(490) := '732E706F7075702E73746174652E73656C656374696E67203D2066616C73653B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E73746174652E73656C6563746564486173';
wwv_flow_api.g_varchar2_table(491) := '6820213D20746869732E5F706F70757047657453656C65637465644861736828292029207B0D0A202020202F2F6966202820746869732E706F7075702E73746174652E73656C65637465642E6C656E677468203E20302029207B0D0A2020202020207265';
wwv_flow_api.g_varchar2_table(492) := '7475726E20636F6E6669726D2820746869732E435F504F5055505F544558545F554E53415645445F4348414E4745532E7265706C61636528272530272C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774682920293B0D0A';
wwv_flow_api.g_varchar2_table(493) := '202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074506C616365486F6C64657253686F773A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(494) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074506C616365486F6C64657253686F7727293B0D0A0D0A20202020746869732E6D61736B2E706C616365686F6C6465722E73686F7728293B0D0A20207D2C0D0A20';
wwv_flow_api.g_varchar2_table(495) := '205F70726F6D7074506C616365486F6C646572486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074506C616365486F6C6465724869646527293B0D';
wwv_flow_api.g_varchar2_table(496) := '0A0D0A20202020746869732E6D61736B2E706C616365686F6C6465722E6869646528293B0D0A20207D2C0D0A20205F70726F6D7074456D707479546167733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(497) := '2E6C6F675072656669782C20275F70726F6D7074456D7074795461677327293B0D0A0D0A20202020746869732E6D61736B2E73746174652E74616773203D205B5D3B0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E656D7074';
wwv_flow_api.g_varchar2_table(498) := '7928293B0D0A202020200D0A20207D2C0D0A20205F70726F6D7074456D7074794D61736B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074456D7074794D';
wwv_flow_api.g_varchar2_table(499) := '61736B27293B0D0A0D0A20202020746869732E6D61736B2E73746174652E73656C6563746564203D205B5D3B0D0A20207D2C0D0A0D0A20205F706F70757053656C656374416E64436C6F73653A2066756E6374696F6E28297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(500) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C656374416E64436C6F736527293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A20202020746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(501) := '456D7074795461677328293B0D0A0D0A20202020746869732E656C656D656E742E76616C286E756C6C293B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774';
wwv_flow_api.g_varchar2_table(502) := '683B20692B2B29207B0D0A202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A20202020202020207B0D0A2020202020202020202022646973706C6179222020202020202020203A20746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(503) := '746174652E73656C65637465645B695D2E646973706C61792C0D0A202020202020202020202276616C75652220202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0D0A202020202020';
wwv_flow_api.g_varchar2_table(504) := '20202020226973415045584E756C6C56616C756522203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652C0D0A20202020202020207D2C202F2F704F626A6563740D0A20202020202020';
wwv_flow_api.g_varchar2_table(505) := '2066616C73652C202F2F70547269676765724368616E67654576656E740D0A2020202020202020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973457874726156616C75652C202F2F704973457874726156616C75650D0A20';
wwv_flow_api.g_varchar2_table(506) := '20202020202020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C7565202F2F7049734E756C6C56616C75650D0A2020202020202020293B0D0A202020207D0D0A0D0A20202020746869732E5F70';
wwv_flow_api.g_varchar2_table(507) := '726F6D70744170706C7956616C75657328207472756520293B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C656374696E67203D20747275653B0D0A0D0A20202020746869732E5F706F707570436C6F736528293B0D0A20202020';
wwv_flow_api.g_varchar2_table(508) := '2F2F0D0A20207D2C0D0A20205F706F707570436C65617246696C746572696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436C65617246696C746572';
wwv_flow_api.g_varchar2_table(509) := '696E6727293B0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F70757053686F7753656C6563746564';
wwv_flow_api.g_varchar2_table(510) := '436865636B626F784368616E676528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570536561726368436C65617228207472756520293B0D0A202020207D0D0A20207D2C0D0A20205F706F7075705365';
wwv_flow_api.g_varchar2_table(511) := '61726368436C6561723A2066756E6374696F6E282070506572666F726D416A617820297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368436C656172272C2027666F726365';
wwv_flow_api.g_varchar2_table(512) := '206B6579207570272C2070506572666F726D416A6178293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E67203D206E756C6C3B0D0A20202020746869732E706F7075702E7365617263682E76616C286E756C';
wwv_flow_api.g_varchar2_table(513) := '6C293B0D0A0D0A20202020696620282070506572666F726D416A61782029207B0D0A202020202020746869732E706F7075702E7365617263682E7472696767657228276B6579757027293B0D0A0D0A202020202020746869732E5F706F707570416A6178';
wwv_flow_api.g_varchar2_table(514) := '506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E282929';
wwv_flow_api.g_varchar2_table(515) := '3B0D0A202020207D0D0A0D0A202020202F2F0D0A202020200D0A20207D2C0D0A20205F706F7075704E65774F7074696F6E3A2066756E6374696F6E28207056616C75652C207054657874297B0D0A2020202072657475726E202428273C6F7074696F6E20';
wwv_flow_api.g_varchar2_table(516) := '76616C75653D22272B7056616C75652B27223E272B70546578742B273C2F6F7074696F6E3E27293B0D0A20207D2C0D0A20205F706F707570446562756753746174654F626A6563743A2066756E6374696F6E28297B0D0A20202020617065782E64656275';
wwv_flow_api.g_varchar2_table(517) := '672E6C6F6728746869732E6C6F675072656669782C20275F706F707570446562756753746174654F626A656374272C20746869732E706F7075702E7374617465293B0D0A0D0A20202020666F72202820766172206920696E20746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(518) := '73746174652029207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174655B695D20696E7374616E63656F662041727261792029207B0D0A2020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(519) := '656669782C2027746869732E706F7075702E73746174652E272B692B272041525241592053544152542720293B20200D0A0D0A2020202020202020666F72202820766172207820696E20746869732E706F7075702E73746174655B695D2029207B0D0A20';
wwv_flow_api.g_varchar2_table(520) := '202020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B275B272B782B275D272C20746869732E706F7075702E73746174655B695D5B785D20293B20';
wwv_flow_api.g_varchar2_table(521) := '200D0A20202020202020207D0D0A0D0A2020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B2720415252415920454E442720293B20200D0A202020';
wwv_flow_api.g_varchar2_table(522) := '20202020200D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020617065782E64656275672E6C6F672820746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B27203D2022272B74';
wwv_flow_api.g_varchar2_table(523) := '6869732E706F7075702E73746174655B695D2B27222720293B20200D0A2020202020207D0D0A0D0A2020202020200D0A202020207D0D0A0D0A20207D2C0D0A20205F706F707570436C6F73653A2066756E6374696F6E28297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(524) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436C6F736527293B0D0A0D0A20202020746869732E706F7075702E636F6E7461696E65722E6469616C6F672827636C6F736527293B0D0A0D0A20202020746869732E5F';
wwv_flow_api.g_varchar2_table(525) := '747269676765724576656E7428277061656C695F706F7075705F68696464656E272C20746869732E5F706F7075704765744576656E74446174612829293B0D0A20207D2C0D0A20205F706F7075704765744576656E74446174613A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(526) := '28297B0D0A2020202072657475726E207B0D0A2020202020202268656164657222202020202020203A20746869732E706F7075702E6865616465722C0D0A20202020202022636F6E7461696E657222202020203A20746869732E706F7075702E636F6E74';
wwv_flow_api.g_varchar2_table(527) := '61696E65722C0D0A20202020202022626F6479222020202020202020203A20746869732E706F7075702E626F64792C0D0A20202020202022666F6F74657222202020202020203A20746869732E706F7075702E666F6F7465722C0D0A2020202020202270';
wwv_flow_api.g_varchar2_table(528) := '6167696E6174696F6E222020203A20746869732E706F7075702E706167696E6174696F6E2C0D0A2020202020202273656172636822202020202020203A20746869732E706F7075702E7365617263682C0D0A20202020202022726F777350657250616765';
wwv_flow_api.g_varchar2_table(529) := '2220203A20746869732E706F7075702E726F7773506572506167652C0D0A20202020202022636F6E74656E745461626C6522203A20746869732E706F7075702E636F6E74656E745461626C652C0D0A202020202020227374617465222020202020202020';
wwv_flow_api.g_varchar2_table(530) := '3A207B0D0A20202020202020202273656C65637465642220202020202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465642C0D0A202020202020202022736561726368537472696E6722202020202020202020203A';
wwv_flow_api.g_varchar2_table(531) := '20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020202022736561726368436F6C756D6E49647822202020202020203A20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C';
wwv_flow_api.g_varchar2_table(532) := '0D0A202020202020202022736F72746564436F6C756D6E49647822202020202020203A20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A202020202020202022736F72746564436F6C756D6E446972656374696F';
wwv_flow_api.g_varchar2_table(533) := '6E22203A20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0D0A202020202020202022616A617852756E6E696E672220202020202020202020203A20746869732E706F7075702E73746174652E616A61';
wwv_flow_api.g_varchar2_table(534) := '7852756E6E696E670D0A2020202020207D0D0A202020207D3B0D0A20207D2C0D0A20205F706F7075704F70656E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70';
wwv_flow_api.g_varchar2_table(535) := '75704F70656E27293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D70747928293B0D0A20202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F70656E27293B0D0A0D0A20207D2C0D0A20205F706F7075';
wwv_flow_api.g_varchar2_table(536) := '704F70656E4279427574746F6E3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E4279427574746F6E27293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(537) := '20704576656E742E70726576656E7444656661756C7428293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(538) := '6669782C20275F706F7075704F70656E4279427574746F6E272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20';
wwv_flow_api.g_varchar2_table(539) := '202020746869732E5F706F7075704F70656E28293B0D0A20207D2C0D0A20205F706F707570437265617465506167696E6174696F6E436F6E7461696E65723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(540) := '2E6C6F675072656669782C20275F706F707570437265617465506167696E6174696F6E436F6E7461696E657227293B0D0A202020207661720D0A2020202020202F2F0D0A202020202020706167696E6174696F6E436F6E7461696E65722020203D202428';
wwv_flow_api.g_varchar2_table(541) := '273C64697620636C6173733D22706167696E6174696F6E436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020706167696E6174696F6E50726576696F7573202020203D202428273C6120687265663D226A6176617363726970743A2076';
wwv_flow_api.g_varchar2_table(542) := '6F69642830292220636C6173733D2270726576223E3C7370616E20636C6173733D2266612066612D63617265742D6C656674223E3C2F7370616E3E20272B746869732E435F504F5055505F504147494E4154494F4E5F505245562B273C2F613E27292C0D';
wwv_flow_api.g_varchar2_table(543) := '0A202020202020706167696E6174696F6E43757272656E7420202020203D202428273C7370616E20636C6173733D2263757272656E74223E3F3C2F7370616E3E27292C0D0A202020202020706167696E6174696F6E4E65787420202020202020203D2024';
wwv_flow_api.g_varchar2_table(544) := '28273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D226E657874223E272B746869732E435F504F5055505F504147494E4154494F4E5F4E4558542B27203C7370616E20636C6173733D2266612066612D636172';
wwv_flow_api.g_varchar2_table(545) := '65742D7269676874223E3C2F7370616E3E3C2F613E27293B0D0A0D0A202020202F2F706167696E6174650D0A20202020706167696E6174696F6E436F6E7461696E65720D0A2020202020202E617070656E642820706167696E6174696F6E50726576696F';
wwv_flow_api.g_varchar2_table(546) := '757320290D0A2020202020202E617070656E642820706167696E6174696F6E43757272656E7420290D0A2020202020202E617070656E642820706167696E6174696F6E4E65787420293B0D0A0D0A2020202072657475726E20706167696E6174696F6E43';
wwv_flow_api.g_varchar2_table(547) := '6F6E7461696E65723B0D0A0D0A20207D2C0D0A20205F706F7075704372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704372656174654E';
wwv_flow_api.g_varchar2_table(548) := '657727293B0D0A20202020766172200D0A202020202020686561646572202020202020202020202020202020203D202428273C64697620636C6173733D22686561646572223E3C2F6469763E27292C0D0A202020202020696E666F726D6174696F6E2020';
wwv_flow_api.g_varchar2_table(549) := '2020202020202020203D202428273C64697620636C6173733D22696E666F726D6174696F6E2068696464656E223E203C64697620636C6173733D2274657874223E3C2F6469763E203C2F6469763E27292C0D0A202020202020736561726368436F6E7461';
wwv_flow_api.g_varchar2_table(550) := '696E6572202020202020203D202428273C64697620636C6173733D22736561726368436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020726F777350657250616765436F6E7461696E657220203D202428273C64697620636C6173733D';
wwv_flow_api.g_varchar2_table(551) := '22726F777350657250616765436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020726F77735065725061676553656C65637420202020203D202428273C73656C6563743E3C2F73656C65637427292C0D0A0D0A20202020202073656172';
wwv_flow_api.g_varchar2_table(552) := '6368496E70757420202020202020202020203D202428273C696E70757420747970653D22746578742220706C616365686F6C6465723D22272B746869732E435F504F5055505F5345415243485F504C414345484F4C4445522B272220636C6173733D2265';
wwv_flow_api.g_varchar2_table(553) := '6D707479223E27292C0D0A20202020202073656172636849636F6E2020202020202020202020203D202428273C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E27292C0D0A20202020202073656172';
wwv_flow_api.g_varchar2_table(554) := '6368436C65617249636F6E202020202020203D202428273C7370616E20636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E27292C0D0A2020202020202F2F0D0A202020202020626F64792020202020202020202020';
wwv_flow_api.g_varchar2_table(555) := '202020202020203D202428273C64697620636C6173733D22626F6479223E3C2F6469763E27292C0D0A2020202020202F2F0D0A202020202020666F6F746572202020202020202020202020202020203D202428273C64697620636C6173733D22666F6F74';
wwv_flow_api.g_varchar2_table(556) := '6572223E3C2F6469763E27292C0D0A202020202020666F6F74657253686F7753656C6563746564202020203D202428273C64697620636C6173733D22666F6F7465722D73686F7753656C6563746564223E3C2F6469763E27292C0D0A202020202020666F';
wwv_flow_api.g_varchar2_table(557) := '6F746572427574746F6E732020202020202020203D202428273C64697620636C6173733D22666F6F7465722D627574746F6E73223E3C2F6469763E27292C0D0A0D0A202020202020627574746F6E53656C656374202020202020202020203D202428273C';
wwv_flow_api.g_varchar2_table(558) := '627574746F6E20636C6173733D22742D427574746F6E20742D427574746F6E2D2D686F742073656C656374223E272B746869732E435F504F5055505F42544E5F53454C4543545F544558542B273C2F627574746F6E3E27292C0D0A202020202020627574';
wwv_flow_api.g_varchar2_table(559) := '746F6E446562756720202020202020202020203D202428273C627574746F6E20636C6173733D22742D427574746F6E206465627567223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27292C0D';
wwv_flow_api.g_varchar2_table(560) := '0A0D0A20202020202073686F7753656C6563746564496E70757420202020203D202428273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865';
wwv_flow_api.g_varchar2_table(561) := '636B626F78223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0D0A20202020202073686F7753656C65637465644C6162656C20202020203D202428';
wwv_flow_api.g_varchar2_table(562) := '273C6C6162656C3E272B746869732E435F504F5055505F53484F575F53454C45435445445F4C4142454C2B273C2F6C6162656C3E27292C0D0A202020202020636F6E7461696E6572202020202020202020202020203D202428273C64697620636C617373';
wwv_flow_api.g_varchar2_table(563) := '3D22636F6E7461696E65722220646174612D617065782D6974656D3D22272B746869732E656C656D656E742E6765742830292E69642B27223E3C2F6469763E27292C0D0A2020202020206578747261436C6173732020202020202020202020203D207468';
wwv_flow_api.g_varchar2_table(564) := '69732E706C7567696E53657474696E67732E706F7075702E636C69636B4F6E526F7753656C656374734974203F202773656C656374566961526F777327203A2027272C0D0A2020202020206F7074696F6E732020202020202020202020202020203D207B';
wwv_flow_api.g_varchar2_table(565) := '0D0A2020202020202020226469616C6F67436C617373222020203A2022707265746975732D2D656E68616E6365644C6F764974656D20222B6578747261436C6173732C0D0A2020202020202020226175746F4F70656E222020202020203A2066616C7365';
wwv_flow_api.g_varchar2_table(566) := '2C0D0A202020202020202022617070656E64546F222020202020203A2027626F6479272C0D0A2020202020202020226D6F64616C222020202020202020203A20747275652C0D0A2020202020202020227469746C65222020202020202020203A20746869';
wwv_flow_api.g_varchar2_table(567) := '732E706C7567696E53657474696E67732E706F7075702E7469746C652C0D0A2020202020202020227769647468222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E77696474682C0D0A202020202020202022';
wwv_flow_api.g_varchar2_table(568) := '6D696E5769647468222020202020203A203530302C0D0A2020202020202020226865696768742220202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E61646A757374486569676874546F526573756C7473203F2035';
wwv_flow_api.g_varchar2_table(569) := '3030203A20746869732E706C7567696E53657474696E67732E706F7075702E6865696768742C0D0A2020202020202020226D696E4865696768742220202020203A203235352C0D0A202020202020202022726573697A61626C652220202020203A207468';
wwv_flow_api.g_varchar2_table(570) := '69732E706C7567696E53657474696E67732E706F7075702E726573697A61626C652C0D0A202020202020202022647261676761626C652220202020203A20746869732E706C7567696E53657474696E67732E706F7075702E647261676761626C652C0D0A';
wwv_flow_api.g_varchar2_table(571) := '202020202020202022636C6F73654F6E45736361706522203A20746869732E706C7567696E53657474696E67732E706F7075702E636C6F73654F6E4573636170652C0D0A202020202020202022726573697A6553746F7022202020203A20242E70726F78';
wwv_flow_api.g_varchar2_table(572) := '792820746869732E5F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B2C207468697320292C0D0A2020202020202020226472616722202020202020202020203A20242E70726F78792820746869732E5F706F7075704472616750';
wwv_flow_api.g_varchar2_table(573) := '6F736974696F6E46697843616C6C6261636B2C207468697320292C0D0A2020202020202020226472616753746172742220202020203A20242E70726F78792820746869732E5F706F7075704469616C6F6744726167537461727443616C6C6261636B2C20';
wwv_flow_api.g_varchar2_table(574) := '7468697320292C0D0A2020202020202020226472616753746F70222020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F674472616753746F7043616C6C6261636B2C207468697320292C0D0A2020202020202020226F7065';
wwv_flow_api.g_varchar2_table(575) := '6E22202020202020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F674F70656E43616C6C6261636B2C207468697320292C0D0A202020202020202022636C6F7365222020202020202020203A20242E70726F787928207468';
wwv_flow_api.g_varchar2_table(576) := '69732E5F706F7075704469616C6F67436C6F736543616C6C6261636B2C207468697320292C0D0A2020202020202020226265666F7265436C6F7365222020203A20242E70726F78792820746869732E5F706F7075704469616C6F674265666F7265436C6F';
wwv_flow_api.g_varchar2_table(577) := '736543616C6C6261636B2C207468697320290D0A2020202020207D3B0D0A0D0A20202020636F6E7461696E65722E6469616C6F6728206F7074696F6E7320293B0D0A0D0A202020202F2F73656172636820696E20616C6C20636F6C756D6E730D0A202020';
wwv_flow_api.g_varchar2_table(578) := '206966202820746869732E706C7567696E53657474696E67732E706F7075702E736561726368496E416C6C436F6C756D6E732029207B0D0A202020202020736561726368436F6E7461696E65720D0A20202020202020202E617070656E64282073656172';
wwv_flow_api.g_varchar2_table(579) := '6368496E70757420290D0A20202020202020202E617070656E64282073656172636849636F6E20290D0A20202020202020202E617070656E642820736561726368436C65617249636F6E20293B0D0A0D0A2020202020206865616465722E617070656E64';
wwv_flow_api.g_varchar2_table(580) := '2820736561726368436F6E7461696E657220290D0A202020207D0D0A0D0A202020202F2F726F77732070657220706167650D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167';
wwv_flow_api.g_varchar2_table(581) := '652029207B0D0A202020202020666F72202876617220693D313B20693C3D31303B20692B2B29207B0D0A2020202020202020726F77735065725061676553656C6563742E617070656E642820746869732E5F706F7075704E65774F7074696F6E28692A31';
wwv_flow_api.g_varchar2_table(582) := '302C692A31302920293B0D0A2020202020207D0D0A0D0A202020202020726F777350657250616765436F6E7461696E65722E617070656E642820726F77735065725061676553656C65637420293B0D0A2020202020206865616465722E617070656E6428';
wwv_flow_api.g_varchar2_table(583) := '20726F777350657250616765436F6E7461696E657220290D0A202020207D0D0A0D0A2020202069662028200D0A20202020202021746869732E706C7567696E53657474696E67732E706F7075702E736561726368496E416C6C436F6C756D6E730D0A2020';
wwv_flow_api.g_varchar2_table(584) := '2020202026262021746869732E706C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167650D0A2020202029207B0D0A2020202020206865616465722E616464436C6173732827706167696E6174696F6E4F6E6C7927293B';
wwv_flow_api.g_varchar2_table(585) := '0D0A202020207D0D0A0D0A202020202F2F706167696E6174696F6E0D0A202020206865616465722E617070656E642820746869732E5F706F707570437265617465506167696E6174696F6E436F6E7461696E6572282920293B0D0A202020200D0A202020';
wwv_flow_api.g_varchar2_table(586) := '2073686F7753656C6563746564496E7075742E756E69717565496428293B0D0A2020202073686F7753656C65637465644C6162656C2E617474722827666F72272C2073686F7753656C6563746564496E7075742E61747472282769642729293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(587) := '20202020666F6F74657253686F7753656C65637465640D0A2020202020202E617070656E64282073686F7753656C6563746564496E70757420290D0A2020202020202E617070656E64282073686F7753656C65637465644C6162656C20293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(588) := '2020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020627574746F6E44656275672E636C69636B2820242E70726F78792820746869732E5F706F707570446562756753746174654F62';
wwv_flow_api.g_varchar2_table(589) := '6A6563742C2074686973202920293B0D0A202020202020666F6F746572427574746F6E732E617070656E642820627574746F6E446562756720293B0D0A202020207D0D0A0D0A20202020666F6F746572427574746F6E732E617070656E64282062757474';
wwv_flow_api.g_varchar2_table(590) := '6F6E53656C65637420293B0D0A0D0A20202020666F6F7465720D0A2020202020202E617070656E6428666F6F74657253686F7753656C6563746564292020202020200D0A2020202020202E617070656E6428666F6F746572427574746F6E73293B0D0A0D';
wwv_flow_api.g_varchar2_table(591) := '0A20202020636F6E7461696E65720D0A2020202020202E617070656E64282068656164657220290D0A2020202020202E617070656E642820696E666F726D6174696F6E20290D0A2020202020202E617070656E642820626F647920290D0A202020202020';
wwv_flow_api.g_varchar2_table(592) := '2E617070656E642820666F6F74657220293B0D0A0D0A2020202072657475726E20636F6E7461696E65723B0D0A20207D2C0D0A20205F706F7075704469616C6F67696E42746E436C69636B3A2066756E6374696F6E2820704576656E7420297B0D0A2020';
wwv_flow_api.g_varchar2_table(593) := '2020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F67696E42746E436C69636B27293B0D0A20207D2C0D0A20205F706F707570536561726368496E53656C6563746564446174613A2066756E';
wwv_flow_api.g_varchar2_table(594) := '6374696F6E282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C2070536561726368537472696E672C20704973536561726368476C6F62616C20297B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(595) := '69732E6C6F675072656669782C20275F706F707570536561726368496E53656C656374656444617461272C20746869732E706F7075702E73746174652E616A617843757272656E745061676544617461293B0D0A20202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(596) := '6F6728746869732E6C6F675072656669782C20275F706F707570536561726368496E53656C656374656444617461272C2070536561726368436F6C756D6E4E616D652C2070536561726368537472696E672C20704973536561726368476C6F62616C293B';
wwv_flow_api.g_varchar2_table(597) := '0D0A0D0A20202020766172200D0A2020202020206E6577446174612C0D0A2020202020206D6573736167653B0D0A0D0A202020206966202820704973536561726368476C6F62616C2029207B0D0A2020202020206E657744617461203D20746869732E70';
wwv_flow_api.g_varchar2_table(598) := '6F7075702E73746174652E616A617853656C6563746564446174612E66696C746572282066756E6374696F6E282070526F7720297B0D0A0D0A2020202020202020666F72202820766172206920696E2070526F772029207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(599) := '696620282070526F775B695D2E746F537472696E6728292E746F55707065724361736528292E696E6465784F66282070536561726368537472696E672E746F55707065724361736528292029203E202D312029207B0D0A20202020202020202020202072';
wwv_flow_api.g_varchar2_table(600) := '657475726E20747275653B0D0A202020202020202020207D0D0A20202020202020207D0D0A202020202020202072657475726E2066616C73653B0D0A2020202020207D20293B0D0A0D0A202020207D200D0A20202020656C7365207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(601) := '6E657744617461203D20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E66696C746572282066756E6374696F6E282070526F7720297B0D0A202020202020202072657475726E2070526F775B207053656172636843';
wwv_flow_api.g_varchar2_table(602) := '6F6C756D6E4E616D65205D2E746F55707065724361736528292E696E6465784F66282070536561726368537472696E672E746F55707065724361736528292029203E202D310D0A2020202020207D20293B0D0A202020207D2020200D0A20200D0A202020';
wwv_flow_api.g_varchar2_table(603) := '20617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368496E53656C656374656444617461272C202766696C7465726564272C206E657744617461293B0D0A0D0A20202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(604) := '702E73746174652E736561726368537472696E67202020203D2070536561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D2070536561726368436F6C756D6E4964783B0D0A';
wwv_flow_api.g_varchar2_table(605) := '0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E745061676544617461203D206E6577446174613B0D0A20202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A206E657744617461';
wwv_flow_api.g_varchar2_table(606) := '7D20293B0D0A202020200D0A202020206D657373616765203D20746869732E435F504F5055505F544558545F53454143485F494E5F53454C45435445440D0A20202020202020202E7265706C61636528272530272C206E6577446174612E6C656E677468';
wwv_flow_api.g_varchar2_table(607) := '290D0A20202020202020202E7265706C61636528272531272C20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E6C656E677468293B0D0A0D0A20202020746869732E5F706F707570496E666F726D6174696F6E4170';
wwv_flow_api.g_varchar2_table(608) := '70656E6428206D6573736167652C20746869732E435F504F5055505F544558545F53454143485F494E5F53454C4543544544293B0D0A0D0A0D0A20207D2C0D0A20205F706F707570536561726368426C75723A2066756E6374696F6E2820704576656E74';
wwv_flow_api.g_varchar2_table(609) := '20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368426C7572272C2027704576656E74272C20704576656E74293B0D0A20202020617065782E64656275672E6C6F672874';
wwv_flow_api.g_varchar2_table(610) := '6869732E6C6F675072656669782C20275F706F707570536561726368426C7572272C202763757272656E742076616C75652022272B746869732E706F7075702E7365617263682E76616C28292B272227293B0D0A20202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(611) := '6F6728746869732E6C6F675072656669782C20275F706F707570536561726368426C7572272C2027666F6375732076616C75652022272B746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375732B2722272020293B0D';
wwv_flow_api.g_varchar2_table(612) := '0A0D0A20202020766172206E65774576656E74203D20617065782E6A51756572792E4576656E742820276B65797570272C207B2077686963683A20242E75692E6B6579436F64652E454E5445522C206B6579436F64653A203133207D20293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(613) := '2020206966202820746869732E706F7075702E7365617263682E76616C282920213D20746869732E706F7075702E73746174652E736561726368537472696E674F6E466F63757329207B200D0A202020202020746869732E706F7075702E736561726368';
wwv_flow_api.g_varchar2_table(614) := '2E74726967676572286E65774576656E74293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F706F707570536561726368466F6375733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869';
wwv_flow_api.g_varchar2_table(615) := '732E6C6F675072656669782C20275F706F707570536561726368466F637573272C20704576656E74293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E674F6E466F637573203D20746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(616) := '7365617263682E76616C28293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536561726368466F637573272C202763757272656E742073656172636820737472696E672069732022';
wwv_flow_api.g_varchar2_table(617) := '272B746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375732B272227293B0D0A20207D2C0D0A20205F706F7075705365617263684B657955703A2066756E6374696F6E282070536561726368436F6C756D6E4E616D65';
wwv_flow_api.g_varchar2_table(618) := '2C2070536561726368436F6C756D6E4964782C20704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705365617263684B65795570272C20704576656E742E6B6579436F64';
wwv_flow_api.g_varchar2_table(619) := '65293B0D0A0D0A20202020766172200D0A2020202020207365617263684974656D20202020203D202428704576656E742E63757272656E74546172676574292C0D0A202020202020736561726368537472696E672020203D207365617263684974656D2E';
wwv_flow_api.g_varchar2_table(620) := '76616C28292C0D0A2020202020206973536561726368476C6F62616C203D20704576656E742E63757272656E74546172676574203D3D20746869732E706F7075702E7365617263682E6765742830293B0D0A0D0A202020202F2F7768656E206F74686572';
wwv_flow_api.g_varchar2_table(621) := '206B6579207468656E2022656E7465722220747269676765726564206B65797570206576656E740D0A202020206966202820704576656E742E6B6579436F646520213D2031332029207B0D0A20202020202072657475726E20766F69642830293B0D0A20';
wwv_flow_api.g_varchar2_table(622) := '2020207D0D0A0D0A202020202F2F7768656E206F6E6C792073656C65637465642076616C756573206172652063757272656E746C792070726573656E7465640D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865';
wwv_flow_api.g_varchar2_table(623) := '636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570536561726368496E53656C656374656444617461282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E496478';
wwv_flow_api.g_varchar2_table(624) := '2C20736561726368537472696E672C206973536561726368476C6F62616C20293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020202F2F776861742074797065206F6620736561726368206973206265696E';
wwv_flow_api.g_varchar2_table(625) := '6720706572666F726D65640D0A2020202069662028206973536561726368476C6F62616C2029207B0D0A2020202020202F2F736561726368207468726F75676820616C6C20636F6C756D6E732020202020200D0A202020202020746869732E5F706F7075';
wwv_flow_api.g_varchar2_table(626) := '70416A6178506572666F726D2820312C206E756C6C2C206E756C6C2C20736561726368537472696E6720293B20200D0A202020207D0D0A20202020656C7365207B0D0A2020202020202F2F736561726368206F6E6C7920696E2073656C65637465642063';
wwv_flow_api.g_varchar2_table(627) := '6F6C756D6E0D0A202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C75';
wwv_flow_api.g_varchar2_table(628) := '6D6E446972656374696F6E2C20736561726368537472696E672C2070536561726368436F6C756D6E496478293B0D0A202020202020746869732E5F706F707570536561726368436C6561722866616C7365293B0D0A202020202020746869732E5F6D6173';
wwv_flow_api.g_varchar2_table(629) := '6B4B657955704D616E61676549636F6E7328293B0D0A202020207D0D0A20207D2C0D0A20205F706F7075704765744D61784469616C6F674865696768743A2066756E6374696F6E2820705265706F727448656967687420297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(630) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C2027705265706F7274486569676874272C20705265706F7274486569676874293B0D0A202020207661720D0A202020';
wwv_flow_api.g_varchar2_table(631) := '202020706F707570486561646572203D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428292C0D0A202020202020746F74616C486569676874203D20303B0D0A0D0A20202020746F74616C486569676874202B';
wwv_flow_api.g_varchar2_table(632) := '3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C65272920';
wwv_flow_api.g_varchar2_table(633) := '29207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F70';
wwv_flow_api.g_varchar2_table(634) := '75702E6865616465722E697328273A76697369626C6527292029207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966';
wwv_flow_api.g_varchar2_table(635) := '202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A20202020';
wwv_flow_api.g_varchar2_table(636) := '7D0D0A0D0A20202020746F74616C486569676874202B3D20705265706F72744865696768743B0D0A0D0A202020206966202820746F74616C486569676874203E20242877696E646F77292E6F7574657248656967687428292029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(637) := '2F2F7265647563652062792070616464696E6720666F7220746F7020616E6420626F74746F6D0D0A202020202020746F74616C486569676874203D20242877696E646F77292E6F757465724865696768742829202D2034303B0D0A202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(638) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C202772657475726E73272C20746F74616C486569676874293B0D0A2020202072657475726E20';
wwv_flow_api.g_varchar2_table(639) := '746F74616C4865696768743B0D0A20207D2C0D0A20205F706F7075704765744D61784865696768745265706F72743A2066756E6374696F6E2820704469616C6F67546F74616C48656967687420297B0D0A20202020617065782E64656275672E6C6F6728';
wwv_flow_api.g_varchar2_table(640) := '746869732E6C6F675072656669782C20275F706F7075704765744D61784865696768745265706F7274272C2027704469616C6F67546F74616C486569676874272C20704469616C6F67546F74616C486569676874293B0D0A0D0A202020207661720D0A20';
wwv_flow_api.g_varchar2_table(641) := '20202020207265706F72744D6178486569676874203D20704469616C6F67546F74616C4865696768742C0D0A2020202020207461626C65576964746820203D20746869732E706F7075702E636F6E74656E745461626C6520213D20756E646566696E6564';
wwv_flow_api.g_varchar2_table(642) := '203F20746869732E706F7075702E636F6E74656E745461626C652E6F7574657257696474682829203A20303B0D0A0D0A202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E6469616C6F674865616465722E6F75746572';
wwv_flow_api.g_varchar2_table(643) := '48656967687428293B0D0A0D0A202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0D0A2020202020207265706F72744D6178486569676874202D3D2074';
wwv_flow_api.g_varchar2_table(644) := '6869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C652729202920';
wwv_flow_api.g_varchar2_table(645) := '7B0D0A2020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E6865616465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E666F6F7465722E6973';
wwv_flow_api.g_varchar2_table(646) := '28273A76697369626C6527292029207B0D0A2020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A2020202069662028207461626C65';
wwv_flow_api.g_varchar2_table(647) := '5769647468203E20746869732E706F7075702E626F64792E6F75746572576964746828292029207B0D0A2020202020202F2F7363726F6C6C6261720D0A2020202020207265706F72744D6178486569676874202B3D2031373B0D0A202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(648) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765744D61784865696768745265706F7274272C202772657475726E73272C207265706F72744D6178486569676874293B0D0A20202020726574';
wwv_flow_api.g_varchar2_table(649) := '75726E207265706F72744D61784865696768743B0D0A20207D2C0D0A20205F706F70757041646A757374426F6479486569676874416E696D6174653A2066756E6374696F6E2820704475726174696F6E20297B0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(650) := '6C6F6728746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874416E696D617465272C2027704475726174696F6E272C20704475726174696F6E293B0D0A0D0A20202020766172207461626C65486569676874';
wwv_flow_api.g_varchar2_table(651) := '203D20746869732E5F706F7075704765745461626C6548656967687428293B0D0A0D0A2020202069662028207461626C65486569676874203D3D20302029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(652) := '2020746869732E706F7075702E626F64792E73746F7028292E616E696D617465287B0D0A202020202020226D6178486569676874223A207461626C654865696768742C0D0A202020202020226D696E486569676874223A207461626C654865696768740D';
wwv_flow_api.g_varchar2_table(653) := '0A202020207D2C207B0D0A202020202020226475726174696F6E223A2021704475726174696F6E203F20704475726174696F6E203A203130302C0D0A2020202020202273746570223A20242E70726F78792866756E6374696F6E2820704E6F772C207046';
wwv_flow_api.g_varchar2_table(654) := '782029207B0D0A2020202020202020766172200D0A20202020202020202020726573756C74506F707570486569676874203D20303B0D0A0D0A20202020202020202F2F63757272656E74207461626C65206865696768740D0A2020202020202020726573';
wwv_flow_api.g_varchar2_table(655) := '756C74506F707570486569676874202B3D20704E6F773B0D0A0D0A20202020202020202F2F696E666F726D6174696F6E206865696768740D0A20202020202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65';
wwv_flow_api.g_varchar2_table(656) := '722E697328273A76697369626C6527292029207B0D0A20202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F7574657248656967687428293B0D';
wwv_flow_api.g_varchar2_table(657) := '0A20202020202020207D0D0A0D0A20202020202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0D0A20202020202020202020726573756C74506F707570486569676874202B3D2074686973';
wwv_flow_api.g_varchar2_table(658) := '2E706F7075702E6865616465722E6F7574657248656967687428293B0D0A20202020202020207D0D0A0D0A20202020202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(659) := '20202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A20202020202020207D0D0A20202020202020200D0A2020202020202020726573756C74506F70757048';
wwv_flow_api.g_varchar2_table(660) := '6569676874202B3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A2020202020202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F7074696F6E272C27686569';
wwv_flow_api.g_varchar2_table(661) := '676874272C20726573756C74506F707570486569676874293B0D0A2020202020207D2C2074686973292C0D0A20202020202022636F6D706C657465223A20242E70726F78792866756E6374696F6E28297B0D0A2020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(662) := '672E6C6F6728746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874416E696D617465272C2027616E696D6174696F6E20636F6D706C6574656427293B0D0A2020202020207D2C2074686973290D0A20202020';
wwv_flow_api.g_varchar2_table(663) := '7D293B0D0A20207D2C0D0A20205F706F7075704765745461626C654865696768743A2066756E6374696F6E28297B0D0A20202020766172200D0A2020202020207461626C65486569676874203D20303B0D0A0D0A202020206966202820746869732E706F';
wwv_flow_api.g_varchar2_table(664) := '7075702E636F6E74656E745461626C6520213D20756E646566696E65642029207B0D0A2020202020207461626C65486569676874203D20746869732E706F7075702E636F6E74656E745461626C652E6F7574657248656967687428293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(665) := '20617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765745461626C65486569676874272C20277461626C65486569676874272C207461626C65486569676874293B0D0A202020207D0D0A20202020656C73';
wwv_flow_api.g_varchar2_table(666) := '65207B0D0A2020202020207461626C65486569676874203D20746869732E706F7075702E626F64792E6368696C6472656E28292E666972737428292E6F7574657248656967687428293B0D0A202020202020617065782E64656275672E6C6F6728746869';
wwv_flow_api.g_varchar2_table(667) := '732E6C6F675072656669782C20275F706F7075704765745461626C65486569676874272C20277461626C65486569676874206F66206368696C6472656E272C207461626C65486569676874293B0D0A202020207D0D0A0D0A202020207461626C65486569';
wwv_flow_api.g_varchar2_table(668) := '676874203D20746869732E5F706F7075704765744D61784865696768745265706F72742820746869732E5F706F7075704765744D61784469616C6F6748656967687428207461626C65486569676874202920293B0D0A0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(669) := '75672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704765745461626C654865696768742072657475726E73272C207461626C65486569676874293B0D0A2020202072657475726E207461626C654865696768743B0D0A0D0A20207D';
wwv_flow_api.g_varchar2_table(670) := '2C0D0A20205F706F70757041646A757374426F64794865696768743A2066756E6374696F6E2820704475726174696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757041646A7573';
wwv_flow_api.g_varchar2_table(671) := '74426F647948656967687427293B0D0A0D0A20202020766172200D0A2020202020206865696768742C0D0A2020202020207461626C6557696474683B0D0A2020202020200D0A202020206966202820746869732E706C7567696E53657474696E67732E70';
wwv_flow_api.g_varchar2_table(672) := '6F7075702E61646A757374486569676874546F526573756C74732029207B0D0A202020202020746869732E5F706F70757041646A757374426F6479486569676874416E696D6174652820704475726174696F6E20293B0D0A202020207D0D0A2020202065';
wwv_flow_api.g_varchar2_table(673) := '6C7365207B0D0A0D0A202020202020686569676874203D20746869732E706F7075702E636F6E7461696E65722E6F7574657248656967687428293B0D0A202020202020686569676874202D3D20746869732E706F7075702E696E666F726D6174696F6E43';
wwv_flow_api.g_varchar2_table(674) := '6F6E7461696E65722E697328273A76697369626C652729203F20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F757465724865696768742829203A20303B0D0A202020202020686569676874202D3D20746869732E70';
wwv_flow_api.g_varchar2_table(675) := '6F7075702E6865616465722E697328273A76697369626C652729203F20746869732E706F7075702E6865616465722E6F757465724865696768742829203A20303B0D0A202020202020686569676874202D3D20746869732E706F7075702E666F6F746572';
wwv_flow_api.g_varchar2_table(676) := '2E697328273A76697369626C652729203F20746869732E706F7075702E666F6F7465722E6F757465724865696768742829203A20303B0D0A0D0A202020202020746869732E706F7075702E626F64792E63737328276D6178486569676874272C20686569';
wwv_flow_api.g_varchar2_table(677) := '676874293B0D0A202020202020746869732E706F7075702E626F64792E63737328276D696E486569676874272C20686569676874293B0D0A202020207D0D0A20207D2C0D0A20205F706F707570486967686C69676874526573756C74733A2066756E6374';
wwv_flow_api.g_varchar2_table(678) := '696F6E282070526573756C74734A717565727920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570486967686C69676874526573756C747327293B0D0A0D0A20202020766172200D0A20';
wwv_flow_api.g_varchar2_table(679) := '2020202020726573756C74546578742C0D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368537472696E67417272203D207365617263';
wwv_flow_api.g_varchar2_table(680) := '68537472696E6720213D206E756C6C203F20736561726368537472696E672E73706C69742827252729203A205B5D2C0D0A2020202020207464733B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(681) := '706F707570486967686C69676874526573756C7473272C20736561726368537472696E67417272293B0D0A0D0A202020202F2F6966207468657265206973206E6F2073656172636820737472696E6720646F6E2774206869676C69686A7420726573756C';
wwv_flow_api.g_varchar2_table(682) := '74733B0D0A202020206966202820736561726368537472696E67203D3D20756E646566696E6564207C7C20736561726368537472696E672E6C656E677468203D3D20302029207B0D0A20202020202072657475726E2070526573756C74734A7175657279';
wwv_flow_api.g_varchar2_table(683) := '3B0D0A202020207D0D0A0D0A202020202F2F6966207365617263682077617320706572666F726D6564206F6E20737065636966696320636F6C756D6E20706572666F726D20736561726368206F6E6C7920696E203120636F6C756D6E0D0A202020206966';
wwv_flow_api.g_varchar2_table(684) := '202820746869732E706F7075702E73746174652E736561726368436F6C756D6E49647820213D20756E646566696E65642029207B0D0A202020202020746473203D2070526573756C74734A71756572792E66696E64282774643A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(685) := '272B28746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782B31292B272927293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746473203D2070526573756C74734A71756572792E66696E6428277464';
wwv_flow_api.g_varchar2_table(686) := '3A6E6F74283A6E74682D6368696C642831292927293B0D0A202020207D0D0A0D0A202020202F2F666F7220656163682063656C6C20706572666F726D2073656172636820696E2063656C6C20737472696E670D0A202020207464732E6561636828242E70';
wwv_flow_api.g_varchar2_table(687) := '726F78792866756E6374696F6E2870496E6465782C2070456C656D297B0D0A2020202020202F2F7462643A20646F20726563757273697665207365617263682074686F75676820616C6C206368696C6472656E0D0A202020202020726573756C74546578';
wwv_flow_api.g_varchar2_table(688) := '74203D20242870456C656D292E7465787428293B0D0A2020202020200D0A202020202020666F72202820766172206920696E20736561726368537472696E674172722029207B0D0A2020202020202020726573756C7454657874203D20746869732E5F68';
wwv_flow_api.g_varchar2_table(689) := '6967686C69676874576F72642820726573756C74546578742C20736561726368537472696E674172725B695D20293B0D0A2020202020207D0D0A2020202020200D0A0D0A202020202020242870456C656D292E68746D6C2820726573756C745465787420';
wwv_flow_api.g_varchar2_table(690) := '293B0D0A0D0A202020207D2C207468697329293B0D0A0D0A2020202072657475726E2070526573756C74734A71756572793B0D0A20207D2C0D0A20205F706F70757053686F7753656C6563746564436865636B626F784368616E67653A2066756E637469';
wwv_flow_api.g_varchar2_table(691) := '6F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053686F7753656C6563746564436865636B626F784368616E676527293B0D0A0D0A202020202F2F7768656E2074686572652069';
wwv_flow_api.g_varchar2_table(692) := '73206E6F7468696E6720746F2073686F770D0A202020206966202820746869732E706F7075702E73746174652E73656C65637465642E6C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564';
wwv_flow_api.g_varchar2_table(693) := '436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C65637465644368';
wwv_flow_api.g_varchar2_table(694) := '65636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F70';
wwv_flow_api.g_varchar2_table(695) := '6F707570416A6178506572666F726D280D0A2020202020202020312C202020202F2F6C61737446657463686564506167652C0D0A2020202020202020312C202020202F2F736F72746564436F6C756D6E4964782C0D0A202020202020202027617363272C';
wwv_flow_api.g_varchar2_table(696) := '2F2F736F72746564436F6C756D6E446972656374696F6E2C0D0A20202020202020206E756C6C2C202F2F736561726368537472696E672C0D0A20202020202020206E756C6C20202F2F736561726368436F6C756D6E4964780D0A202020202020293B0D0A';
wwv_flow_api.g_varchar2_table(697) := '0D0A202020207D0D0A0D0A202020200D0A20207D2C0D0A2020706F707570496E666F726D6174696F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027706F7075';
wwv_flow_api.g_varchar2_table(698) := '70496E666F726D6174696F6E4869646527293B0D0A0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D20756E646566696E65643B0D0A20202020746869732E706F7075702E73746174652E69';
wwv_flow_api.g_varchar2_table(699) := '6E666F726D6174696F6E5465787420202020203D20756E646566696E65643B0D0A20202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E616464436C617373282768696464656E27293B0D0A0D0A20207D2C0D0A0D0A';
wwv_flow_api.g_varchar2_table(700) := '2020706F707570496E666F726D6174696F6E53686F773A2066756E6374696F6E28297B0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F6E53686F7727';
wwv_flow_api.g_varchar2_table(701) := '293B0D0A0D0A20202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E72656D6F7665436C617373282768696464656E27293B0D0A0D0A20207D2C0D0A20205F706F707570496E666F726D6174696F6E417070656E643A';
wwv_flow_api.g_varchar2_table(702) := '2066756E6374696F6E2820704D6573736167652C20704D65737361676554656D706C61746520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570496E666F726D6174696F6E417070656E';
wwv_flow_api.g_varchar2_table(703) := '6427293B0D0A0D0A20202020746869732E706F7075702E696E666F726D6174696F6E546578742E656D70747928292E617070656E642820704D65737361676520293B0D0A20202020746869732E706F707570496E666F726D6174696F6E53686F7728293B';
wwv_flow_api.g_varchar2_table(704) := '0D0A0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E5465787420202020203D20704D6573736167653B0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D';
wwv_flow_api.g_varchar2_table(705) := '20704D65737361676554656D706C6174653B0D0A20207D2C0D0A20205F706F7075705468436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(706) := '5072656669782C20275F706F7075705468436865636B626F784368616E6765272C20704576656E74293B0D0A0D0A20202020766172200D0A202020202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E';
wwv_flow_api.g_varchar2_table(707) := '66696E64282774722074643A66697273742D6368696C64203A636865636B626F7827292C0D0A20202020202073656C6563746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E202428746869';
wwv_flow_api.g_varchar2_table(708) := '73292E697328273A636865636B65642729207D292E746F417272617928292C0D0A2020202020206E6F7453656C6563746564203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E6973';
wwv_flow_api.g_varchar2_table(709) := '28273A6E6F74283A636865636B6564292729207D292E746F417272617928292C0D0A2020202020206D65737361676520202020203D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442E7265706C61636528272530272C20';
wwv_flow_api.g_varchar2_table(710) := '636865636B626F7865732E6C656E677468293B0D0A0D0A202020206966202820746869732E706F7075702E73656C656374416C6C436865636B626F782E697328273A636865636B656427292029207B0D0A0D0A202020202020666F72282076617220693D';
wwv_flow_api.g_varchar2_table(711) := '303B2069203C206E6F7453656C65637465642E6C656E6774683B20692B2B2029207B0D0A20202020202020202428206E6F7453656C65637465645B695D20292E747269676765722827636C69636B27293B0D0A2020202020207D0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(712) := '746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F504F5055505F544558545F524F57535F53454C454354454420293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(713) := '20200D0A2020202020206966202820746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D3D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442029207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(714) := '746869732E706F707570496E666F726D6174696F6E4869646528293B0D0A2020202020207D0D0A0D0A202020202020666F72282076617220693D303B2069203C2073656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020202024';
wwv_flow_api.g_varchar2_table(715) := '282073656C65637465645B695D20292E747269676765722827636C69636B27293B0D0A2020202020207D0D0A202020207D0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20205F706F7075';
wwv_flow_api.g_varchar2_table(716) := '70546F67676C65526F7753746174653A2066756E6374696F6E282070496E70757420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570546F67676C65526F77537461746527293B0D0A0D';
wwv_flow_api.g_varchar2_table(717) := '0A20202020696620282070496E70757420696E7374616E63656F66206A5175657279203D3D2066616C73652029207B0D0A20202020202070496E707574203D2024282070496E70757420293B0D0A202020207D0D0A0D0A20202020696620282070496E70';
wwv_flow_api.g_varchar2_table(718) := '75742E697328273A636865636B656427292029207B0D0A20202020202070496E7075742E636C6F736573742827747227292E616464436C617373282773656C656374656427293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207049';
wwv_flow_api.g_varchar2_table(719) := '6E7075742E636C6F736573742827747227292E72656D6F7665436C617373282773656C656374656427293B0D0A202020207D0D0A20207D2C0D0A20205F706F7075705464436865636B626F784368616E67653A2066756E6374696F6E2820704576656E74';
wwv_flow_api.g_varchar2_table(720) := '20297B0D0A20202020766172200D0A202020202020636865636B626F78203D202428704576656E742E63757272656E74546172676574292C0D0A202020202020636865636B626F78657320203D20756E646566696E65642C0D0A20202020202073656C65';
wwv_flow_api.g_varchar2_table(721) := '63746564202020203D20756E646566696E65643B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(722) := '20275F706F7075705464436865636B626F784368616E6765272C20636865636B626F782E676574283029293B0D0A0D0A20202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E64282774722074';
wwv_flow_api.g_varchar2_table(723) := '643A66697273742D6368696C64203A636865636B626F7827292C0D0A2020202073656C6563746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A63686563';
wwv_flow_api.g_varchar2_table(724) := '6B65642729207D293B0D0A0D0A202020206966202820636865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F70757053656C65637456616C75652820636865636B626F78293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(725) := '20202020656C7365207B0D0A202020202020746869732E5F706F707570556E73656C65637456616C75652820636865636B626F782E76616C282920293B0D0A0D0A2020202020206966202820746869732E706F7075702E73686F7753656C656374656443';
wwv_flow_api.g_varchar2_table(726) := '6865636B626F782E697328273A636865636B656427292029207B0D0A2020202020202020636865636B626F782E636C6F736573742827747227292E72656D6F766528293B0D0A2020202020207D0D0A202020207D0D0A0D0A0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(727) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B626F78657320636E74272C20636865636B626F7865732E6C656E677468293B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(728) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B656420636865636B626F78657320636E74272C2073656C65637465642E6C656E677468293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(729) := '20206966202820636865636B626F7865732E6C656E677468203D3D2073656C65637465642E6C656E6774682029207B0D0A2020202020200D0A202020202020696620282021746869732E706F7075702E73656C656374416C6C436865636B626F782E6973';
wwv_flow_api.g_varchar2_table(730) := '28273A636865636B656427292029207B0D0A2020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A2020202020207D0D0A0D0A202020207D200D0A2020';
wwv_flow_api.g_varchar2_table(731) := '2020656C7365207B0D0A202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A202020207D0D0A0D0A20202020746869732E5F706F707570546F67676C65';
wwv_flow_api.g_varchar2_table(732) := '526F7753746174652820636865636B626F7820293B0D0A0D0A20207D2C0D0A0D0A20205F706F7075705464526164696F4368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(733) := '2E6C6F675072656669782C20275F706F7075705464526164696F4368616E676527293B0D0A0D0A2020202076617220726164696F203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020746869732E706F7075702E636F';
wwv_flow_api.g_varchar2_table(734) := '6E7461696E65722E66696E6428272E73656C656374656427292E72656D6F7665436C617373282773656C656374656427293B0D0A0D0A202020206966202820726164696F2E697328273A636865636B656427292029207B0D0A202020202020746869732E';
wwv_flow_api.g_varchar2_table(735) := '5F706F707570526573657456616C75657328293B0D0A202020202020746869732E5F706F70757053656C65637456616C75652820726164696F20293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570556E';
wwv_flow_api.g_varchar2_table(736) := '73656C65637456616C75652820636865636B626F782E76616C282920293B0D0A0D0A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020';
wwv_flow_api.g_varchar2_table(737) := '2020202020726164696F2E636C6F736573742827747227292E72656D6F766528293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F707570546F67676C65526F7753746174652820726164696F20293B0D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(738) := '0A20205F706F707570497356616C756553656C65637465643A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570497356616C756553656C65';
wwv_flow_api.g_varchar2_table(739) := '63746564272C207056616C7565293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020696620282074686973';
wwv_flow_api.g_varchar2_table(740) := '2E706F7075702E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570497356616C756553';
wwv_flow_api.g_varchar2_table(741) := '656C6563746564272C207056616C75652C2074727565293B0D0A202020202020202072657475726E20747275653B0D0A2020202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(742) := '6669782C20275F706F707570497356616C756553656C6563746564272C207056616C75652C2066616C7365293B0D0A0D0A2020202072657475726E2066616C73653B0D0A20207D2C0D0A20205F706F70757056616C756553656C6563746564496E646578';
wwv_flow_api.g_varchar2_table(743) := '3A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C7565293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(744) := '2020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E706F7075702E73746174652E73656C6563746564';
wwv_flow_api.g_varchar2_table(745) := '5B695D2E76616C7565203D3D207056616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C75652C20';
wwv_flow_api.g_varchar2_table(746) := '69293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757056616C756553656C65637465';
wwv_flow_api.g_varchar2_table(747) := '64496E646578272C207056616C75652C202D31293B0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A0D0A20205F706F707570556E73656C65637456616C75653A2066756E6374696F6E28207056616C756520297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(748) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570556E73656C65637456616C756527293B0D0A0D0A20202020766172200D0A202020202020696E6465784F66203D20746869732E5F706F70757056616C756553656C';
wwv_flow_api.g_varchar2_table(749) := '6563746564496E64657828207056616C756520290D0A20202020202072656D6F766564203D206E756C6C3B0D0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A202020202020746869732E5F7468726F774572726F725465787428';
wwv_flow_api.g_varchar2_table(750) := '272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0D0A202020207D0D0A0D0A2020202072656D6F766564203D20746869732E706F7075702E73746174652E73656C65637465642E73706C696365282069';
wwv_flow_api.g_varchar2_table(751) := '6E6465784F662C203120293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570556E73656C65637456616C7565272C202772656D6F7665642076616C7565272C2072656D6F766564293B';
wwv_flow_api.g_varchar2_table(752) := '0D0A0D0A20202020746869732E5F706F70757053686F7753656C656374656455706461746528207472756520293B0D0A0D0A20207D2C0D0A20205F706F707570526573657456616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(753) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570526573657456616C75657327293B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0D0A20207D2C0D0A20205F706F7075';
wwv_flow_api.g_varchar2_table(754) := '7053656C65637456616C75653A2066756E6374696F6E282070496E70757420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053656C65637456616C756527293B0D0A0D0A2020202076';
wwv_flow_api.g_varchar2_table(755) := '6172200D0A2020202020206E657753656C656374696F6E4F626A203D207B0D0A202020202020202022646973706C6179223A2070496E7075742E617474722827617269612D646973706C61792D76616C756527292C0D0A20202020202020202276616C75';
wwv_flow_api.g_varchar2_table(756) := '65223A2070496E7075742E76616C28292C0D0A2020202020202020226973457874726156616C7565223A2070496E7075742E617474722827617269612D65787472612D76616C756527292C0D0A2020202020202020226973415045584E756C6C56616C75';
wwv_flow_api.g_varchar2_table(757) := '65223A2070496E7075742E617474722827617269612D6E756C6C2D76616C756527290D0A2020202020207D3B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C65637465642E7075736828206E657753656C656374696F6E4F626A20';
wwv_flow_api.g_varchar2_table(758) := '293B0D0A0D0A20202020746869732E5F706F70757053686F7753656C6563746564557064617465282066616C736520293B0D0A20207D2C20200D0A20205F706F70757053686F7753656C65637465645570646174653A2066756E6374696F6E2820705065';
wwv_flow_api.g_varchar2_table(759) := '72666F726D416A61784F6E3053656C656374656420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757053686F7753656C6563746564557064617465272C2022706572666F726D20616A61';
wwv_flow_api.g_varchar2_table(760) := '78206F6E20302073656C6563746564222C2070506572666F726D416A61784F6E3053656C6563746564293B0D0A202020200D0A202020207661722073656C65637465644C656E677468203D20746869732E706F7075702E73746174652E73656C65637465';
wwv_flow_api.g_varchar2_table(761) := '642E6C656E6774683B0D0A0D0A20202020746869732E706F7075702E73686F7753656C65637465644C6162656C2E746578742820746869732E435F504F5055505F53484F575F53454C45435445445F4C4142454C202B272028272B73656C65637465644C';
wwv_flow_api.g_varchar2_table(762) := '656E6774682B27292720293B0D0A0D0A20202020696620282073656C65637465644C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436F6E7461696E65722E616464436C617373282769';
wwv_flow_api.g_varchar2_table(763) := '6E61637469766527293B0D0A0D0A202020202020696620282070506572666F726D416A61784F6E3053656C656374656420262620746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292920';
wwv_flow_api.g_varchar2_table(764) := '7B0D0A2020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E476574446566';
wwv_flow_api.g_varchar2_table(765) := '61756C74536F7274436F6C756D6E446972656374696F6E2829293B0D0A2020202020207D0D0A0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E70726F702827636865636B6564272C2066616C736529';
wwv_flow_api.g_varchar2_table(766) := '3B0D0A2020202020200D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436F6E7461696E65722E72656D6F7665436C6173732827696E61637469766527293B0D0A202020207D';
wwv_flow_api.g_varchar2_table(767) := '0D0A20207D2C0D0A0D0A20205F706F707570436C69636B4F6E43656C6C3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436C69636B4F';
wwv_flow_api.g_varchar2_table(768) := '6E43656C6C272C20704576656E74293B0D0A0D0A20202020766172200D0A2020202020207472203D202428704576656E742E746172676574292E636C6F736573742827747227292C0D0A202020202020696E707574203D2074722E66696E64282774643A';
wwv_flow_api.g_varchar2_table(769) := '66697273742D6368696C64203A696E70757427293B0D0A0D0A202020206966202820696E7075742E697328273A636865636B626F7827292029207B0D0A202020202020696E7075742E747269676765722827636C69636B27293B0D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(770) := '202020656C7365207B0D0A202020202020696E7075742E70726F702827636865636B6564272C207472756529203B0D0A202020202020696E7075742E7472696767657228276368616E676527293B0D0A202020207D0D0A0D0A202020200D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(771) := '0A20205F706F70757046616B65526164696F436C69636B3A2066756E6374696F6E2820704576656E742029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757046616B65526164696F436C';
wwv_flow_api.g_varchar2_table(772) := '69636B27293B0D0A0D0A202020207661722074726967676572696E67456C656D656E74203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F';
wwv_flow_api.g_varchar2_table(773) := '6E28293B0D0A0D0A2020202074726967676572696E67456C656D656E742E706172656E7428292E66696E6428273A726164696F27292E747269676765722827636C69636B27293B0D0A0D0A20207D2C0D0A20205F706F70757046616B65436865636B626F';
wwv_flow_api.g_varchar2_table(774) := '78436C69636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757046616B65436865636B626F78436C69636B27293B0D0A0D0A2020202076';
wwv_flow_api.g_varchar2_table(775) := '61722074726967676572696E67456C656D656E74203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020747269';
wwv_flow_api.g_varchar2_table(776) := '67676572696E67456C656D656E742E706172656E7428292E66696E6428273A636865636B626F7827292E747269676765722827636C69636B27293B0D0A0D0A20207D2C0D0A0D0A20205F706F707570536F72745265706F72743A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(777) := '2070436F6C756D6E4E616D652C2070436F6C756D6E4964782C2070536F7274446972656374696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570536F72745265706F7274272C20';
wwv_flow_api.g_varchar2_table(778) := '2770436F6C756D6E496478272C2070436F6C756D6E4964782C202770536F7274446972656374696F6E272C2070536F7274446972656374696F6E293B0D0A0D0A20202020766172200D0A202020202020736561726368537472696E67203D20746869732E';
wwv_flow_api.g_varchar2_table(779) := '706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964783B0D0A0D0A202020206966202820746869';
wwv_flow_api.g_varchar2_table(780) := '732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E706F7075702E73746174652E616A617843757272656E7450616765446174612E736F727428207468';
wwv_flow_api.g_varchar2_table(781) := '69732E5F736F72744A736F6E282070436F6C756D6E4E616D652C2070536F7274446972656374696F6E202920293B0D0A0D0A2020202020202F2F6D757374206265207365742062656375617365206F662076697375616C697A6174696F6E20696E20636F';
wwv_flow_api.g_varchar2_table(782) := '6C756D6E206865616465720D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D2070536F7274446972656374696F6E3B0D0A202020202020746869732E706F7075702E73746174652E';
wwv_flow_api.g_varchar2_table(783) := '736F72746564436F6C756D6E496478202020202020203D2070436F6C756D6E4964783B0D0A0D0A202020202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A20746869732E706F7075702E73746174652E616A6178';
wwv_flow_api.g_varchar2_table(784) := '43757272656E7450616765446174617D20293B0D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570416A6178506572666F726D28312C2070436F6C756D6E4964782C2070536F7274446972656374696F6E';
wwv_flow_api.g_varchar2_table(785) := '2C20736561726368537472696E672C20736561726368436F6C756D6E496478293B20200D0A202020207D0D0A202020200D0A0D0A20207D2C0D0A0D0A20205F706F70757047657448656164696E67733A2066756E6374696F6E2820297B0D0A2020202061';
wwv_flow_api.g_varchar2_table(786) := '7065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757047657448656164696E677327293B0D0A0D0A20202020766172200D0A2020202020207468656164203D202428273C74686561643E3C74723E3C2F74723E3C2F';
wwv_flow_api.g_varchar2_table(787) := '74686561643E27292C0D0A202020202020746853656C656374416C6C203D202428273C746820636C6173733D22742D5265706F72742D636F6C48656164223E3C2F74683E27292C0D0A202020202020746853656C656374436865636B626F78203D202428';
wwv_flow_api.g_varchar2_table(788) := '273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D7371';
wwv_flow_api.g_varchar2_table(789) := '756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0D0A202020202020636F6C756D6E5F6E616D652C0D0A202020202020636F6C756D6E5F6964782C0D0A202020202020697355736564546F536F72742C0D0A20202020202069';
wwv_flow_api.g_varchar2_table(790) := '7346696C74657265642C0D0A202020202020736F7274696E67446972656374696F6E2C0D0A2020202020207468416C69676E2C0D0A202020202020636F6C756D6E416C69617365733B0D0A0D0A202020206966202820746869732E706C7567696E536574';
wwv_flow_api.g_varchar2_table(791) := '74696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020746853656C656374416C6C2E617070656E642820746853656C656374436865636B626F7820293B0D0A202020207D0D0A0D0A2020202074686561642E66696E';
wwv_flow_api.g_varchar2_table(792) := '642827747227292E617070656E642820746853656C656374416C6C20293B0D0A0D0A20202020666F722028207661722069203D303B2069203C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(793) := '2020636F6C756D6E5F6E616D6520203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0D0A202020202020636F6C756D6E5F6964782020203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E';
wwv_flow_api.g_varchar2_table(794) := '4944583B0D0A202020202020636F6C756D6E5F616C696173203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202768656164696E672720293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(795) := '202020202069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E660D0A202020202020202026262021746869732E5F706F707570436F6C756D6E497344';
wwv_flow_api.g_varchar2_table(796) := '6566696E65642820636F6C756D6E5F6E616D652029200D0A20202020202029207B0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A202020202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66';
wwv_flow_api.g_varchar2_table(797) := '696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202776697369626C652720292029207B0D0A20202020202020202F2F646F6E742072656E64657220636F6C756D6E206265636175736520697420686173206E6F20636F6E';
wwv_flow_api.g_varchar2_table(798) := '666975726174696F6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F727442';
wwv_flow_api.g_varchar2_table(799) := '61736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E697352657475726E436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D';
wwv_flow_api.g_varchar2_table(800) := '65203D3D20275227200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(801) := '0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E6773';
wwv_flow_api.g_varchar2_table(802) := '2E706F7075702E6973446973706C6179436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20274427200D0A20202020202029207B0D0A20202020202020202F2F646F6E74207265';
wwv_flow_api.g_varchar2_table(803) := '6E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C75';
wwv_flow_api.g_varchar2_table(804) := '6D6E496478203D3D20636F6C756D6E5F6964782029207B0D0A20202020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E203D3D2027617363272029207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(805) := '20697355736564546F536F7274203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F6E2069636F6E2D7270742D736F72742D617363223E3C2F7370616E3E273B20200D0A20202020202020202020736F72';
wwv_flow_api.g_varchar2_table(806) := '74696E67446972656374696F6E203D202764657363273B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A20202020202020202020697355736564546F536F7274203D20273C7370616E20636C6173733D22752D5265706F72742D';
wwv_flow_api.g_varchar2_table(807) := '736F727449636F6E20612D49636F6E2069636F6E2D7270742D736F72742D64657363223E3C2F7370616E3E273B0D0A20202020202020202020736F7274696E67446972656374696F6E203D2027617363273B0D0A20202020202020207D0D0A2020202020';
wwv_flow_api.g_varchar2_table(808) := '207D0D0A202020202020656C7365207B0D0A2020202020202020697355736564546F536F7274203D2027273B0D0A2020202020202020736F7274696E67446972656374696F6E203D2027617363273B0D0A2020202020207D0D0A0D0A2020202020206966';
wwv_flow_api.g_varchar2_table(809) := '202820746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D3D20636F6C756D6E5F6964782029207B0D0A2020202020202020697346696C7465726564203D20273C7370616E20636C6173733D22752D5265706F72742D73';
wwv_flow_api.g_varchar2_table(810) := '6F727449636F6E2066612066612D66696C746572223E3C2F7370616E3E273B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020697346696C7465726564203D2027273B0D0A2020202020207D0D0A0D0A20202020202074';
wwv_flow_api.g_varchar2_table(811) := '68416C69676E203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277468416C69676E2720293B0D0A0D0A2020202020207468203D2027272B0D0A202020';
wwv_flow_api.g_varchar2_table(812) := '2020202020273C746820636C6173733D22742D5265706F72742D636F6C486561642220616C69676E3D22272B7468416C69676E2B272220617269612D636F6C756D6E2D6E616D653D22272B636F6C756D6E5F6E616D652B27223E272B0D0A202020202020';
wwv_flow_api.g_varchar2_table(813) := '20202720203C64697620636C6173733D22752D5265706F72742D736F7274223E272B0D0A202020202020202027202020203C7370616E20636C6173733D22752D5265706F72742D736F727448656164696E67223E272B0D0A202020202020202027202020';
wwv_flow_api.g_varchar2_table(814) := '2020203C6120687265663D226A6176617363726970743A20766F6964283029223E272B636F6C756D6E5F616C6961732B273C2F613E272B0D0A202020202020202027202020203C2F7370616E3E272B0D0A20202020202020202720202020272B69735573';
wwv_flow_api.g_varchar2_table(815) := '6564546F536F72742B27272B0D0A20202020202020202720202020272B697346696C74657265642B27270D0A20202020202020202720203C2F6469763E272B0D0A2020202020202020273C2F74683E272B0D0A202020202020202027273B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(816) := '202020207468203D2024287468293B0D0A0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757047657448656164696E67732066696C746572696E67206F7220736F7274696E672061766169';
wwv_flow_api.g_varchar2_table(817) := '6C61626C652C2062696E6420636C69636B2063616C6C6261636B27293B0D0A0D0A20202020202074682E62696E642827636C69636B272C20242E70726F787928746869732E5F706F7075705265706F7274486561646572436C69636B43616C6C6261636B';
wwv_flow_api.g_varchar2_table(818) := '2C20746869732C20746869732E6F7074696F6E732E636F6C756D6E735B695D2C20736F7274696E67446972656374696F6E29293B0D0A0D0A20202020202074686561642E66696E642827747227292E617070656E642820746820293B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(819) := '0A0D0A2020202072657475726E2074686561643B0D0A0D0A20207D2C0D0A20205F706F7075705265706F7274486561646572436F6E7461696E65724372656174653A2066756E6374696F6E28207043757272656E7454682C2070436F6C756D6E4F626A65';
wwv_flow_api.g_varchar2_table(820) := '637420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436F6E7461696E6572437265617465272C20277043757272656E745468272C207043757272656E';
wwv_flow_api.g_varchar2_table(821) := '745468293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436F6E7461696E6572437265617465272C202770436F6C756D6E4F626A656374272C2070436F6C';
wwv_flow_api.g_varchar2_table(822) := '756D6E4F626A656374293B0D0A0D0A20202020766172200D0A20202020202074657874203D207043757272656E7454682E7465787428292E7472696D28292C0D0A202020202020636F6E7461696E657220203D202428273C64697620636C6173733D2263';
wwv_flow_api.g_varchar2_table(823) := '6F6C756D6E4F7065726174696F6E73223E3C64697620636C6173733D22736F7274696E67223E3C2F6469763E3C64697620636C6173733D2266696C746572696E67223E3C2F6469763E3C2F6469763E27292C0D0A202020202020736F7274417363202020';
wwv_flow_api.g_varchar2_table(824) := '203D202428273C6120687265663D226A6176617363726970743A20766F696428302922207469746C653D22272B746869732E435F504F5055505F4845414445525F534F52545F4153435F5449544C452B27223E3C7370616E20636C6173733D22612D4963';
wwv_flow_api.g_varchar2_table(825) := '6F6E2069636F6E2D6972722D736F72742D617363223E3C2F7370616E3E3C2F613E27292C0D0A202020202020736F727444657363202020203D202428273C6120687265663D226A6176617363726970743A20766F696428302922207469746C653D22272B';
wwv_flow_api.g_varchar2_table(826) := '746869732E435F504F5055505F4845414445525F534F52545F444553435F5449544C452B27223E3C7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D736F72742D64657363223E3C2F7370616E3E3C2F613E27292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(827) := '2073656172636849636F6E73203D202428273C6469763E3C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F';
wwv_flow_api.g_varchar2_table(828) := '7370616E3E3C2F6469763E27290D0A2020202020207365617263684974656D203D202428273C696E70757420747970653D22746578742220636C6173733D22656D707479223E27292C0D0A2020202020206462436F6C756D6E4E616D65203D2070437572';
wwv_flow_api.g_varchar2_table(829) := '72656E7454682E617474722827617269612D636F6C756D6E2D6E616D6527293B0D0A0D0A2020202073656172636849636F6E732E66696E6428272E636C65617227292E62696E642827636C69636B272C20242E70726F78792820746869732E5F68656164';
wwv_flow_api.g_varchar2_table(830) := '6572576964676574436C65617246696C746572696E672C207468697329293B0D0A0D0A202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65282070436F6C756D6E4F626A656374';
wwv_flow_api.g_varchar2_table(831) := '2E434F4C554D4E5F4E414D452C2027736F72742720292029207B0D0A202020202020736F7274417363202E62696E642827636C69636B272C20242E70726F787928746869732E5F706F707570536F72745265706F72742C20746869732C206462436F6C75';
wwv_flow_api.g_varchar2_table(832) := '6D6E4E616D652C2070436F6C756D6E4F626A6563742E4944582C20276173632729293B0D0A202020202020736F7274446573632E62696E642827636C69636B272C20242E70726F787928746869732E5F706F707570536F72745265706F72742C20746869';
wwv_flow_api.g_varchar2_table(833) := '732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E4944582C2027646573632729293B0D0A0D0A202020202020636F6E7461696E65722E66696E6428272E736F7274696E6727292E617070656E642820736F727441736320292E';
wwv_flow_api.g_varchar2_table(834) := '617070656E642820736F72744465736320293B2020202020200D0A202020207D0D0A0D0A202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65282070436F6C756D6E4F626A6563';
wwv_flow_api.g_varchar2_table(835) := '742E434F4C554D4E5F4E414D452C202766696C7465722720292029207B0D0A2020202020207365617263684974656D0D0A20202020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E636528242E70726F78792820746869732E5F';
wwv_flow_api.g_varchar2_table(836) := '706F7075705365617263684B657955702C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E494458292C20746869732E706C7567696E53657474696E67732E706F7075705365617263684465626F756E636554696D';
wwv_flow_api.g_varchar2_table(837) := '6529290D0A20202020202020202E6F6E28276B65797570272C20242E70726F78792820746869732E5F6865616465725769646765744B657955704D616E61676549636F6E732C20746869732920293B0D0A0D0A2020202020202F2F696620282074686973';
wwv_flow_api.g_varchar2_table(838) := '2E706F7075702E73746174652E736561726368537472696E6720213D20756E646566696E65642026262070436F6C756D6E496478203D3D20746869732E706F7075702E73746174652E736561726368436F6C756D6E49647829207B0D0A20202020202069';
wwv_flow_api.g_varchar2_table(839) := '66202820746869732E706F7075702E73746174652E736561726368537472696E6720213D20756E646566696E65642026262070436F6C756D6E4F626A6563742E494458203D3D20746869732E706F7075702E73746174652E736561726368436F6C756D6E';
wwv_flow_api.g_varchar2_table(840) := '49647829207B0D0A20202020202020207365617263684974656D2E76616C2820746869732E706F7075702E73746174652E736561726368537472696E6720293B0D0A20202020202020207365617263684974656D2E72656D6F7665436C6173732827656D';
wwv_flow_api.g_varchar2_table(841) := '70747927293B0D0A2020202020207D0D0A0D0A202020202020636F6E7461696E65722E66696E6428272E66696C746572696E6727292E617070656E6428207365617263684974656D20292E617070656E64282073656172636849636F6E7320293B0D0A20';
wwv_flow_api.g_varchar2_table(842) := '2020207D0D0A0D0A20202020636F6E7461696E65722E66696E6428272E68656164696E6727292E63737328276D61785769647468272C207043757272656E7454682E6F7574657257696474682829290D0A0D0A20202020636F6E7461696E65722E637373';
wwv_flow_api.g_varchar2_table(843) := '287B0D0A202020202020226D696E5769647468223A207043757272656E7454682E6F75746572576964746828292C0D0A202020202020226C656674223A207043757272656E7454682E706F736974696F6E28292E6C6566742C0D0A20202020202022746F';
wwv_flow_api.g_varchar2_table(844) := '70223A207043757272656E7454682E6F7574657248656967687428290D0A202020207D293B0D0A0D0A20202020636F6E7461696E65722E66696E6428272E68656164696E6727292E637373282770616464696E67272C207043757272656E7454682E6373';
wwv_flow_api.g_varchar2_table(845) := '73282770616464696E672729290D0A0D0A2020202072657475726E20636F6E7461696E65723B0D0A0D0A20207D2C0D0A20205F706F7075705265706F7274486561646572576964676574486964653A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(846) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F72744865616465725769646765744869646527293B0D0A0D0A20202020746869732E706F7075702E737469636B79486561646572732E66696E64282774';
wwv_flow_api.g_varchar2_table(847) := '6827292E72656D6F7665436C617373282769732D61637469766527293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E72656D6F766528293B0D0A20202020746869732E706F7075702E686561646572';
wwv_flow_api.g_varchar2_table(848) := '416374696F6E436F6E7461696E6572203D20756E646566696E65640D0A202020202428646F63756D656E74292E6F66662827636C69636B2E707265746975732D2D656E68616E6365644C6F764974656D27293B0D0A20207D2C0D0A0D0A20205F706F7075';
wwv_flow_api.g_varchar2_table(849) := '705265706F727448656164657257696467657453686F773A2066756E6374696F6E28207054682C2070576964676574297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727448';
wwv_flow_api.g_varchar2_table(850) := '656164657257696467657453686F7727293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E6564202029207B0D0A202020202020746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(851) := '5265706F72744865616465725769646765744869646528293B0D0A202020207D0D0A0D0A202020207054682E616464436C617373282769732D61637469766527293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461';
wwv_flow_api.g_varchar2_table(852) := '696E6572203D20705769646765743B0D0A20202020746869732E706F7075702E626F64792E617070656E6428207057696467657420293B0D0A0D0A20202020705769646765742E66696E6428273A696E70757427292E666F63757328293B0D0A20207D2C';
wwv_flow_api.g_varchar2_table(853) := '0D0A20205F706F7075705265706F7274486561646572436C69636B43616C6C6261636B3A2066756E6374696F6E282070436F6C756D6E4F626A6563742C2070536F7274446972656374696F6E2C20704576656E7420297B0D0A0D0A20202020704576656E';
wwv_flow_api.g_varchar2_table(854) := '742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B43616C6C6261636B';
wwv_flow_api.g_varchar2_table(855) := '272C20704576656E74293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B43616C6C6261636B20636F6C756D6E2064617461272C207B22636F6C';
wwv_flow_api.g_varchar2_table(856) := '756D6E206F626A656374223A2070436F6C756D6E4F626A6563742C2022736F72745F646972656374696F6E223A2070536F7274446972656374696F6E7D293B0D0A0D0A20202020766172200D0A2020202020207468203D202428704576656E742E637572';
wwv_flow_api.g_varchar2_table(857) := '72656E74546172676574292C0D0A202020202020636F6E7461696E6572203D20746869732E5F706F7075705265706F7274486561646572436F6E7461696E6572437265617465282074682C2070436F6C756D6E4F626A65637420293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(858) := '746869732E5F706F7075705265706F727448656164657257696467657453686F77282074682C20636F6E7461696E657220293B0D0A0D0A202020200D0A202020202428646F63756D656E74292E62696E642827636C69636B2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(859) := '68616E6365644C6F764974656D272C20242E70726F78792820746869732E5F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B2C20746869732029293B0D0A20207D2C0D0A20205F706F7075705265706F7274486561';
wwv_flow_api.g_varchar2_table(860) := '646572436C69636B4F757473696465436865636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69';
wwv_flow_api.g_varchar2_table(861) := '636B4F757473696465436865636B272C20704576656E74293B0D0A2020202076617220746172676574203D202428704576656E742E746172676574293B0D0A0D0A20202020696620282021242E636F6E7461696E732820746869732E706F7075702E6865';
wwv_flow_api.g_varchar2_table(862) := '61646572416374696F6E436F6E7461696E65722E6765742830292C207461726765742E67657428302920292029207B0D0A2020202020202F2F636C69636B206F75747369646520666F756E640D0A202020202020617065782E64656275672E6C6F672874';
wwv_flow_api.g_varchar2_table(863) := '6869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C2027636C69636B6564206F757473696465206865616465722077696467657427293B0D0A202020202020746869732E';
wwv_flow_api.g_varchar2_table(864) := '5F706F7075705265706F72744865616465725769646765744869646528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F';
wwv_flow_api.g_varchar2_table(865) := '7274486561646572436C69636B4F757473696465436865636B272C2027636C69636B656420696E73696465206865616465722077696467657427293B0D0A202020207D0D0A202020200D0A20207D2C0D0A20205F706F707570437265617465537469636B';
wwv_flow_api.g_varchar2_table(866) := '79486561646572733A2066756E6374696F6E2829207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570437265617465537469636B794865616465727327293B0D0A0D0A202020207661720D';
wwv_flow_api.g_varchar2_table(867) := '0A2020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27292C0D0A2020202020207468656164203D20746869732E706F7075702E626F64792E66696E6428272E7265706F727420746865616427292E636C6F6E652874727565';
wwv_flow_api.g_varchar2_table(868) := '2C2074727565292C0D0A202020202020746873203D20746869732E706F7075702E626F64792E66696E6428277461626C6520746827292C0D0A202020202020737469636B794865616465723B0D0A0D0A202020206966202820746869732E706F7075702E';
wwv_flow_api.g_varchar2_table(869) := '737469636B794865616465727320213D20756E646566696E65642029207B0D0A202020202020746869732E706F7075702E737469636B79486561646572732E72656D6F766528293B0D0A202020202020617065782E64656275672E6C6F6728746869732E';
wwv_flow_api.g_varchar2_table(870) := '6C6F675072656669782C20275F706F707570437265617465537469636B7948656164657273272C202772656D6F76696E67206578697374696E6720737469636B794865616465727327293B0D0A202020207D0D0A0D0A2020202074686561642E66696E64';
wwv_flow_api.g_varchar2_table(871) := '2827746827292E65616368282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A202020202020242870456C656D292E637373287B0D0A2020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75';
wwv_flow_api.g_varchar2_table(872) := '746572576964746828292C0D0A2020202020202020276D61785769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020277769647468273A207468732E65712870496E646578292E6F75746572';
wwv_flow_api.g_varchar2_table(873) := '576964746828292C0D0A2020202020207D293B0D0A0D0A2020202020207468732E65712870496E646578292E637373287B0D0A2020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D';
wwv_flow_api.g_varchar2_table(874) := '0A2020202020202020276D61785769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020277769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A0D0A';
wwv_flow_api.g_varchar2_table(875) := '2020202020207D290D0A202020207D293B0D0A0D0A0D0A202020207461626C650D0A2020202020202E616464436C6173732822742D5265706F72742D7265706F727420737469636B794865616465727322292E61747472282273756D6D617279222C2074';
wwv_flow_api.g_varchar2_table(876) := '6869732E706C7567696E53657474696E67732E706F7075702E7469746C65290D0A2020202020202E6373732827746F70272C2030290D0A2020202020202E617070656E642820746865616420293B0D0A0D0A20202020746869732E706F7075702E737469';
wwv_flow_api.g_varchar2_table(877) := '636B7948656164657273203D207461626C653B0D0A20202020746869732E706F7075702E73656C656374416C6C436865636B626F78203D20746869732E706F7075702E737469636B79486561646572732E66696E64282774683A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(878) := '64203A636865636B626F7827293B0D0A0D0A20202020746869732E706F7075702E626F64792E617070656E6428207461626C6520293B0D0A20207D2C0D0A20205F706F7075705265706F727452656E646572536561726368696E673A2066756E6374696F';
wwv_flow_api.g_varchar2_table(879) := '6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572536561726368696E6727293B0D0A0D0A20202020766172200D0A2020202020207365617263685465';
wwv_flow_api.g_varchar2_table(880) := '726D203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368696E6754657874203D20746869732E435F504F5055505F544558545F534541524348494E472E7265706C61636528272530272C';
wwv_flow_api.g_varchar2_table(881) := '207365617263685465726D292C0D0A202020202020636F6E7461696E6572203D20242827202020202020202020202020202020202020202020202020202020202020202020272B0D0A2020202020202020273C64697620636C6173733D22736561726368';
wwv_flow_api.g_varchar2_table(882) := '696E67466F72526573756C7473223E202020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020202020202020202020202020272B0D0A2020202020202020272020';
wwv_flow_api.g_varchar2_table(883) := '20203C7370616E20636C6173733D2266612066612D726566726573682066612D616E696D2D7370696E223E3C2F7370616E3E20272B0D0A20202020202020202720203C2F6469763E20202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(884) := '202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2274657874223E272B736561726368696E67546578742B273C2F6469763E272B0D0A2020202020202020273C2F6469763E20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(885) := '2020202020202020202020202020202020202020202020272B0D0A202020202020202027270D0A202020202020293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461696E6572293B0D0A0D';
wwv_flow_api.g_varchar2_table(886) := '0A20202020746869732E5F706F7075704865616465724869646528293B0D0A20202020746869732E5F706F707570466F6F7465724869646528293B0D0A20202020746869732E706F707570496E666F726D6174696F6E4869646528293B0D0A2020202074';
wwv_flow_api.g_varchar2_table(887) := '6869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A0D0A20205F706F7075705265706F727452656E6465724E6F64617461466F756E643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(888) := '6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E6465724E6F64617461466F756E6427293B0D0A0D0A20202020766172200D0A2020202020207365617263685465726D203D20746869732E706F7075702E737461';
wwv_flow_api.g_varchar2_table(889) := '74652E736561726368537472696E672C0D0A2020202020206E6F44617461466F756E64546578742C0D0A202020202020636F6E7461696E6572203D20242827202020202020202020202020202020202020202020202020202020202020202020272B0D0A';
wwv_flow_api.g_varchar2_table(890) := '2020202020202020273C64697620636C6173733D226E6F64617461666F756E64436F6E7461696E6572223E2020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020';
wwv_flow_api.g_varchar2_table(891) := '202020202020202020202020272B0D0A202020202020202027202020203C7370616E20636C6173733D2266612066612D7461626C652D736561726368223E3C2F7370616E3E20272B0D0A20202020202020202720203C2F6469763E202020202020202020';
wwv_flow_api.g_varchar2_table(892) := '20202020202020202020202020202020202020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2274657874223E2354455854233C2F6469763E272B0D0A2020202020202020273C2F6469763E2020202020202020';
wwv_flow_api.g_varchar2_table(893) := '20202020202020202020202020202020202020202020202020202020202020272B0D0A202020202020202027270D0A202020202020293B0D0A0D0A2020202069662028207365617263685465726D203D3D206E756C6C2029207B0D0A2020202020206E6F';
wwv_flow_api.g_varchar2_table(894) := '44617461466F756E6454657874203D20746869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F51554552593B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206E6F44617461466F756E6454657874203D2074';
wwv_flow_api.g_varchar2_table(895) := '6869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F5345415243482E7265706C61636528272530272C207365617263685465726D29202B20273C2F62723E272B746869732E435F504F5055505F544558545F434C4541525F4649';
wwv_flow_api.g_varchar2_table(896) := '4C544552494E473B0D0A202020207D0D0A0D0A20202020636F6E7461696E65722E66696E6428272E7465787427292E68746D6C286E6F44617461466F756E6454657874293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D7074792829';
wwv_flow_api.g_varchar2_table(897) := '2E617070656E6428636F6E7461696E6572293B0D0A20202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A20202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A20202020746869732E5F';
wwv_flow_api.g_varchar2_table(898) := '706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20205F706F7075705265706F7274426F64794765743A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C';
wwv_flow_api.g_varchar2_table(899) := '6F675072656669782C20275F706F7075705265706F7274426F6479476574272C207044617461293B0D0A0D0A202020207661720D0A20202020202074626F647954656D706C617465203D2027272B0D0A2020202020202020277B7B23646174617D7D272B';
wwv_flow_api.g_varchar2_table(900) := '0D0A2020202020202020273C7472272B0D0A202020202020202027207B7B2365787472617D7D636C6173733D22657874726156616C7565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D';
wwv_flow_api.g_varchar2_table(901) := '636C6173733D226E756C6C56616C7565227B7B2F6973415045584E756C6C56616C75657D7D3E272C0D0A202020202020636F6C756D6E5F6E616D652C0D0A202020202020696E70757453656C6563746F723B0D0A0D0A202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(902) := '706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020696E70757453656C6563746F72203D2027272B0D0A2020202020202020273C696E707574272B0D0A2020202020202020272074797065';
wwv_flow_api.g_varchar2_table(903) := '3D22636865636B626F7822272B0D0A2020202020202020272076616C75653D227B7B7B527D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D636865636B65643D2274727565227B7B2F73656C65637465647D7D272B0D0A2020';
wwv_flow_api.g_varchar2_table(904) := '20202020202027207B7B2365787472617D7D617269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C7565';
wwv_flow_api.g_varchar2_table(905) := '3D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0D0A202020202020202027206E616D653D226D756C7469706C6522272B';
wwv_flow_api.g_varchar2_table(906) := '0D0A2020202020202020273E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0D0A20202020202020202720203C7370';
wwv_flow_api.g_varchar2_table(907) := '616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0D0A202020202020202027273B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020696E70757453656C6563746F';
wwv_flow_api.g_varchar2_table(908) := '72203D2027272B0D0A2020202020202020273C696E707574272B0D0A20202020202020202720747970653D22726164696F22272B0D0A2020202020202020272076616C75653D227B7B7B527D7D7D22272B0D0A202020202020202027207B7B2373656C65';
wwv_flow_api.g_varchar2_table(909) := '637465647D7D636865636B65643D2274727565227B7B2F73656C65637465647D7D272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0D0A202020202020202027207B7B2365787472617D7D61';
wwv_flow_api.g_varchar2_table(910) := '7269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C';
wwv_flow_api.g_varchar2_table(911) := '6C56616C75657D7D272B0D0A202020202020202027206E616D653D2273696E676C6522272B0D0A2020202020202020273E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D646F742D636972636C652D6F2066616B65';
wwv_flow_api.g_varchar2_table(912) := '526164696F223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D636972636C652D6F2066616B65526164696F223E3C2F7370616E3E272B0D0A202020202020202027273B0D0A202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(913) := '0A2020202074626F647954656D706C617465202B3D2027272B0D0A202020202020273C746420636C6173733D22742D5265706F72742D63656C6C223E272B0D0A20202020202027272B696E70757453656C6563746F722B27272B0D0A202020202020273C';
wwv_flow_api.g_varchar2_table(914) := '2F74643E273B0D0A0D0A20202020666F722028207661722069203D303B2069203C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B0D0A202020202020636F6C756D6E5F6E616D65203D20746869732E6F7074';
wwv_flow_api.g_varchar2_table(915) := '696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0D0A0D0A20202020202069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E660D';
wwv_flow_api.g_varchar2_table(916) := '0A202020202020202026262021746869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E5F6E616D652029200D0A20202020202029207B0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(917) := '20202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202776697369626C652720292029207B0D0A20202020202020202F2F636F6C756D6E20';
wwv_flow_api.g_varchar2_table(918) := '7669736962696C697479206E6F7420646566696E65640D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028202F2F0D0A2020202020202020202020746869732E706C7567696E53657474696E67732E';
wwv_flow_api.g_varchar2_table(919) := '706F7075702E69735265706F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E697352657475726E436F6C756D6E56697369626C65203D3D2066616C73650D0A202020202020';
wwv_flow_api.g_varchar2_table(920) := '2020262620636F6C756D6E5F6E616D65203D3D20275227200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E';
wwv_flow_api.g_varchar2_table(921) := '75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A202020202020202026262074686973';
wwv_flow_api.g_varchar2_table(922) := '2E706C7567696E53657474696E67732E706F7075702E6973446973706C6179436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20274427200D0A20202020202029207B0D0A2020';
wwv_flow_api.g_varchar2_table(923) := '2020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A2020202020207464416C69676E203D20746869732E5F70';
wwv_flow_api.g_varchar2_table(924) := '6F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277464416C69676E2720293B0D0A20202020202074626F647954656D706C617465202B3D20273C746420636C6173733D22742D';
wwv_flow_api.g_varchar2_table(925) := '5265706F72742D63656C6C2220616C69676E3D22272B7464416C69676E2B272220686561646572733D22272B636F6C756D6E5F6E616D652B27223E7B7B7B272B636F6C756D6E5F6E616D652B277D7D7D3C2F74643E273B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(926) := '202074626F647954656D706C617465202B3D20273C2F74723E7B7B2F646174617D7D273B0D0A0D0A20202020747279207B0D0A20202020202072656E6465726564203D2024284D757374616368652E72656E646572282074626F647954656D706C617465';
wwv_flow_api.g_varchar2_table(927) := '2C20704461746129293B0D0A202020207D20636174636828206572726F722029207B0D0A202020202020746869732E5F7468726F774572726F72286572726F72293B0D0A202020207D0D0A0D0A202020202F2F686967686C6967687420726573756C7473';
wwv_flow_api.g_varchar2_table(928) := '0D0A202020206966202820746869732E706F7075702E73746174652E736561726368537472696E672029207B0D0A20202020202072656E6465726564203D20746869732E5F706F707570486967686C69676874526573756C74732872656E646572656429';
wwv_flow_api.g_varchar2_table(929) := '3B20200D0A202020207D0D0A0D0A2020202072656E6465726564203D20746869732E5F706F7075704D61726B4173457874726156616C7565282072656E646572656420293B0D0A2020202072656E6465726564203D20746869732E5F706F7075704D6172';
wwv_flow_api.g_varchar2_table(930) := '6B41734E756C6C56616C7565282072656E646572656420293B0D0A0D0A2020202072657475726E2072656E64657265643B0D0A20207D2C0D0A20205F706F7075704D61726B41734E756C6C56616C75653A2066756E6374696F6E28207052656E64657265';
wwv_flow_api.g_varchar2_table(931) := '6420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704D61726B41734E756C6C56616C7565272C207052656E6465726564293B0D0A0D0A202020207661720D0A2020202020207464436E';
wwv_flow_api.g_varchar2_table(932) := '74203D207052656E64657265642E66696E642827746427292E6C656E6774683B0D0A0D0A202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C2070496E6465782C2070456C656D20297B0D0A';
wwv_flow_api.g_varchar2_table(933) := '202020202020766172200D0A202020202020202073656C66203D20242870456C656D292C0D0A20202020202020206E756C6C56616C7565203D2073656C662E66696E6428273A696E70757427292E76616C28292C0D0A202020202020202074657874203D';
wwv_flow_api.g_varchar2_table(934) := '2073656C662E66696E6428273A696E70757427292E617474722827617269612D646973706C61792D76616C756527293B0D0A0D0A202020202020696620282073656C662E697328272E6E756C6C56616C756527292029207B0D0A20202020202020207365';
wwv_flow_api.g_varchar2_table(935) := '6C662E66696E642827746427292E6E6F7428273A66697273742D6368696C6427292E72656D6F766528293B0D0A202020202020202073656C662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D';
wwv_flow_api.g_varchar2_table(936) := '22272B28705464436E742D31292B27223E272B746578742B273C2F74643E27293B0D0A2020202020200D0A2020202020207D0D0A0D0A202020207D2C20746869732C207464436E742920293B0D0A0D0A2020202072657475726E207052656E6465726564';
wwv_flow_api.g_varchar2_table(937) := '3B0D0A0D0A20207D2C0D0A20205F706F7075704D61726B4173457874726156616C75653A2066756E6374696F6E28207052656E646572656420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(938) := '7075704D61726B4173457874726156616C7565272C207052656E6465726564293B0D0A0D0A20202020766172200D0A20202020202063656C6C54657874203D20746869732E435F504F5055505F544558545F45585452415F56414C55453B0D0A20202020';
wwv_flow_api.g_varchar2_table(939) := '20207464436E74203D207052656E64657265642E66696E642827746427292E6C656E6774683B0D0A0D0A202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C2070546578742C2070496E6465';
wwv_flow_api.g_varchar2_table(940) := '782C2070456C656D20297B0D0A202020202020766172200D0A202020202020202073656C66203D20242870456C656D292C0D0A2020202020202020657874726156616C7565203D2073656C662E66696E6428273A696E70757427292E76616C28292C0D0A';
wwv_flow_api.g_varchar2_table(941) := '202020202020202074657874203D2070546578742E7265706C61636528272530272C20657874726156616C7565293B0D0A0D0A202020202020696620282073656C662E697328272E657874726156616C756527292029207B0D0A20202020202020207365';
wwv_flow_api.g_varchar2_table(942) := '6C662E66696E642827746427292E6E6F7428273A66697273742D6368696C6427292E72656D6F766528293B0D0A202020202020202073656C662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D';
wwv_flow_api.g_varchar2_table(943) := '22272B28705464436E742D31292B27223E272B746578742B273C2F74643E27293B0D0A2020202020200D0A2020202020207D0D0A0D0A202020207D2C20746869732C207464436E742C2063656C6C546578742920293B0D0A0D0A2020202072657475726E';
wwv_flow_api.g_varchar2_table(944) := '207052656E64657265643B0D0A20207D2C0D0A20205F706F7075705265706F727452656E6465723A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(945) := '7075705265706F727452656E646572272C207044617461293B0D0A0D0A20202020766172200D0A2020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020207461626C65203D202428273C74';
wwv_flow_api.g_varchar2_table(946) := '61626C653E3C2F7461626C653E27292C0D0A20202020202074686561642C0D0A20202020202074626F6479203D202428273C74626F64793E3C2F74626F64793E27292C0D0A20202020202073656C6563746564436E74203D20303B0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(947) := '6620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572272C20276E6F20726F777320';
wwv_flow_api.g_varchar2_table(948) := '746F2072656E6465722C20646973706C6179206E6F206461746120666F756E6427293B0D0A202020202020746869732E706F7075702E626F64792E616464436C61737328276E6F64617461666F756E6427293B0D0A202020202020746869732E5F706F70';
wwv_flow_api.g_varchar2_table(949) := '75705265706F727452656E6465724E6F64617461466F756E6428293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020207468656164203D20746869732E5F706F70757047657448656164696E677328293B0D';
wwv_flow_api.g_varchar2_table(950) := '0A0D0A202020207461626C650D0A2020202020202E616464436C6173732822742D5265706F72742D7265706F7274207265706F727422290D0A2020202020202E61747472282273756D6D617279222C20746869732E706C7567696E53657474696E67732E';
wwv_flow_api.g_varchar2_table(951) := '706F7075702E7469746C65290D0A2020202020202E617070656E642820746865616420290D0A2020202020202E617070656E64282074626F64792E617070656E642820746869732E5F706F7075705265706F7274426F6479476574282070446174612029';
wwv_flow_api.g_varchar2_table(952) := '202920293B0D0A0D0A202020207461626C65436F6E7461696E65720D0A2020202020202E616464436C6173732827742D5265706F727420742D5265706F72742D2D616C74526F777344656661756C7420742D5265706F72742D2D726F77486967686C6967';
wwv_flow_api.g_varchar2_table(953) := '687420742D5265706F72742D2D7374726574636827290D0A2020202020202E617070656E6428207461626C6520293B0D0A202020200D0A20202020746869732E706F7075702E636F6E74656E745461626C65203D207461626C653B0D0A0D0A2020202074';
wwv_flow_api.g_varchar2_table(954) := '6869732E706F7075702E626F64790D0A2020202020202E72656D6F7665436C61737328276E6F64617461666F756E6427290D0A2020202020202E72656D6F7665436C6173732827736561726368696E6727290D0A2020202020202E656D70747928290D0A';
wwv_flow_api.g_varchar2_table(955) := '2020202020202E617070656E6428207461626C65436F6E7461696E657220290D0A2020202020202E7363726F6C6C546F702830293B0D0A0D0A202020202F2F7570646174652073656C656374696F6E2073746174650D0A20202020696620282074686973';
wwv_flow_api.g_varchar2_table(956) := '2E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A20202020202074626F64792E66696E64282774643A66697273742D6368696C64203A636865636B626F783A636865636B656427292E656163682824';
wwv_flow_api.g_varchar2_table(957) := '2E70726F7879282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A202020202020202073656C6563746564436E742B2B3B0D0A2020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D';
wwv_flow_api.g_varchar2_table(958) := '20293B0D0A2020202020207D2C20746869732029293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202074626F64792E66696E64282774643A66697273742D6368696C64203A726164696F3A636865636B656427292E6561636828242E';
wwv_flow_api.g_varchar2_table(959) := '70726F7879282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A2020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0D0A2020202020207D2C20746869732029293B0D0A20';
wwv_flow_api.g_varchar2_table(960) := '2020207D0D0A200D0A202020200D0A20202020746869732E5F706F707570506167696E6174696F6E55706461746528293B0D0A20202020746869732E5F706F70757048656164657253686F7728293B0D0A20202020746869732E5F706F707570466F6F74';
wwv_flow_api.g_varchar2_table(961) := '657253686F7728293B0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20202020746869732E5F706F707570437265617465537469636B794865616465727328293B0D0A0D0A20202020746869732E706F70';
wwv_flow_api.g_varchar2_table(962) := '75702E7365617263682E666F63757328293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020696620282070446174612E646174612E6C65';
wwv_flow_api.g_varchar2_table(963) := '6E677468203D3D2073656C6563746564436E742029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E677468';
wwv_flow_api.g_varchar2_table(964) := '206D617463682073656C656374656420726F777327293B0D0A2020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A2020202020207D0D0A2020202020';
wwv_flow_api.g_varchar2_table(965) := '20656C7365207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E67746820646F65736E5C2774206D6174636820';
wwv_flow_api.g_varchar2_table(966) := '73656C656374656420726F7773272C2027616A61782064617461206C656E677468203D2022272B70446174612E646174612E6C656E6774682B2722272C202773656C656374656420726F7773203D2022272B73656C6563746564436E742B272227293B0D';
wwv_flow_api.g_varchar2_table(967) := '0A2020202020207D0D0A0D0A202020207D0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F646174615F72656E6465726564272C20746869732E5F706F7075704765744576656E74446174612829293B';
wwv_flow_api.g_varchar2_table(968) := '0D0A20207D2C0D0A0D0A20205F706F707570476574526F7773506572506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570476574526F777350657250';
wwv_flow_api.g_varchar2_table(969) := '61676527293B0D0A0D0A202020207661722076616C7565203D20746869732E706F7075702E726F7773506572506167652E76616C28293B0D0A0D0A20202020696620282076616C7565203D3D202725272029207B0D0A20202020202072657475726E2074';
wwv_flow_api.g_varchar2_table(970) := '6869732E706C7567696E53657474696E67732E706F7075702E726F7773506572506167653B0D0A202020207D0D0A20202020656C736520696620282076616C7565203D3D20756E646566696E65642029207B0D0A20202020202072657475726E20746869';
wwv_flow_api.g_varchar2_table(971) := '732E706C7567696E53657474696E67732E706F7075702E726F7773506572506167653B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E2076616C75653B0D0A202020207D0D0A20207D2C0D0A20200D0A20205F706F70';
wwv_flow_api.g_varchar2_table(972) := '75704368616E6765526F7773506572506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704368616E6765526F77735065725061676527293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(973) := '202020207661720D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E737461';
wwv_flow_api.g_varchar2_table(974) := '74652E736561726368436F6C756D6E4964783B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(975) := '6174652E736F72746564436F6C756D6E446972656374696F6E2C20736561726368537472696E672C20746869732E706F7075702E73746174652E736561726368436F6C756D6E496478293B0D0A20207D2C0D0A0D0A20205F706F70757048656164657248';
wwv_flow_api.g_varchar2_table(976) := '6964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F70757048656164657248696465272C20746869732E706F7075702E686561646572293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(977) := '746869732E706F7075702E6865616465722E616464436C617373282768696464656E27293B0D0A20207D2C0D0A20205F706F70757048656164657253686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869';
wwv_flow_api.g_varchar2_table(978) := '732E6C6F675072656669782C20275F706F70757048656164657253686F7727293B0D0A0D0A20202020746869732E706F7075702E6865616465722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20205F706F707570466F6F';
wwv_flow_api.g_varchar2_table(979) := '746572486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570466F6F7465724869646527293B0D0A0D0A20202020746869732E706F7075702E666F6F74';
wwv_flow_api.g_varchar2_table(980) := '65722E616464436C617373282768696464656E27293B202020200D0A20207D2C0D0A20205F706F707570466F6F74657253686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(981) := '2C20275F706F707570466F6F74657253686F7727293B0D0A0D0A20202020746869732E706F7075702E666F6F7465722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20205F706F707570526F777350657250616765486964';
wwv_flow_api.g_varchar2_table(982) := '653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570526F7773506572506167654869646527293B0D0A0D0A20202020746869732E706F7075702E726F777350';
wwv_flow_api.g_varchar2_table(983) := '657250616765436F6E7461696E65722E6869646528293B0D0A20207D2C0D0A20205F706F707570526F77735065725061676553686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(984) := '69782C20275F706F707570526F77735065725061676553686F7727293B0D0A0D0A20202020746869732E706F7075702E726F777350657250616765436F6E7461696E65722E73686F7728293B0D0A20207D2C0D0A20205F706F707570506167696E617469';
wwv_flow_api.g_varchar2_table(985) := '6F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E4869646527293B0D0A0D0A20202020746869732E706F7075702E70';
wwv_flow_api.g_varchar2_table(986) := '6167696E6174696F6E436F6E7461696E65722E6869646528293B0D0A0D0A20207D2C0D0A20205F706F707570506167696E6174696F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(987) := '5072656669782C20275F706F707570506167696E6174696F6E53686F7727293B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E436F6E7461696E65722E73686F7728293B0D0A0D0A20207D2C0D0A20205F706F70757050616769';
wwv_flow_api.g_varchar2_table(988) := '6E6174696F6E50726576506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E507265765061676527293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(989) := '746869732E5F706F707570416A6178506572666F726D280D0A2020202020202D2D746869732E706F7075702E73746174652E6C61737446657463686564506167652C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C';
wwv_flow_api.g_varchar2_table(990) := '756D6E4964782C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0D0A202020202020746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020';
wwv_flow_api.g_varchar2_table(991) := '746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780D0A20202020293B0D0A0D0A20207D2C0D0A0D0A20205F706F707570506167696E6174696F6E4E657874506167653A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(992) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E4E6578745061676527293B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D280D0A2020202020202B2B746869';
wwv_flow_api.g_varchar2_table(993) := '732E706F7075702E73746174652E6C61737446657463686564506167652C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A202020202020746869732E706F7075702E73746174652E736F7274';
wwv_flow_api.g_varchar2_table(994) := '6564436F6C756D6E446972656374696F6E2C0D0A202020202020746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780D0A2020';
wwv_flow_api.g_varchar2_table(995) := '2020293B0D0A20207D2C0D0A20205F706F707570506167696E6174696F6E5570646174653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570506167696E6174';
wwv_flow_api.g_varchar2_table(996) := '696F6E55706461746527293B0D0A0D0A20202020766172200D0A2020202020207374617274203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D53746172742C0D0A202020202020656E642020203D20';
wwv_flow_api.g_varchar2_table(997) := '746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D456E642C0D0A202020202020746F74616C203D20746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E743B0D0A0D0A0D0A';
wwv_flow_api.g_varchar2_table(998) := '20202020656E64203D20656E64203E20746F74616C203F20746F74616C203A20656E643B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E43757272656E742E746578742873746172742B27202D20272B656E642B27206F662027';
wwv_flow_api.g_varchar2_table(999) := '2B746F74616C293B0D0A0D0A202020202F2F6D616E61676520707265762070616765206C696E6B207669736962696C6974790D0A202020206966202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D20312029';
wwv_flow_api.g_varchar2_table(1000) := '207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E50726576506167652E6869646528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E5072657650';
wwv_flow_api.g_varchar2_table(1001) := '6167652E73686F7728293B200D0A202020207D0D0A0D0A202020206966202820656E64203D3D20746F74616C2029207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E6869646528293B200D0A20202020';
wwv_flow_api.g_varchar2_table(1002) := '7D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E73686F7728293B20200D0A202020207D0D0A0D0A20207D2C0D0A20205F706F707570497346696C74657265643A2066756E';
wwv_flow_api.g_varchar2_table(1003) := '6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570497346696C746572656427293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E7365617263';
wwv_flow_api.g_varchar2_table(1004) := '68537472696E6720213D20756E646566696E656420262620746869732E706F7075702E73746174652E736561726368537472696E672E6C656E677468203E20302029207B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1005) := '20202072657475726E2066616C73653B0D0A20207D2C0D0A20205F706F7075705363726F6C6C43616C6C6261636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1006) := '69782C20275F706F7075705363726F6C6C43616C6C6261636B27293B0D0A0D0A20202020766172200D0A20202020202070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E7428202428704576656E742E63757272656E745461';
wwv_flow_api.g_varchar2_table(1007) := '72676574292C202428704576656E742E63757272656E74546172676574292E6F75746572486569676874282920292C0D0A202020202020736F72746564436F6C756D6E496478203D20746869732E706F7075702E73746174652E736F72746564436F6C75';
wwv_flow_api.g_varchar2_table(1008) := '6D6E4964782C0D0A202020202020736F72746564436F6C756D6E446972656374696F6E203D20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C200D0A202020202020736561726368537472696E67203D';
wwv_flow_api.g_varchar2_table(1009) := '20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0D0A2020202020207363';
wwv_flow_api.g_varchar2_table(1010) := '726F6C6C546F70203D202428704576656E742E63757272656E74546172676574292E7363726F6C6C546F7028293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E616A6178537461747573203D3D20746869732E435F414A41';
wwv_flow_api.g_varchar2_table(1011) := '585F5354415455535F4552524F522029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E737469636B79486561646572732E6373732827746F70272C207363726F6C6C546F';
wwv_flow_api.g_varchar2_table(1012) := '70293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E74';
wwv_flow_api.g_varchar2_table(1013) := '61696E65722E6373732827746F70272C207363726F6C6C546F70202B20746869732E706F7075702E626F64792E66696E642827746827292E666972737428292E6F757465724865696768742829293B20200D0A202020207D0D0A20207D2C0D0A20205F70';
wwv_flow_api.g_varchar2_table(1014) := '6F70757044726167506F736974696F6E46697843616C6C6261636B3A2066756E6374696F6E28704576656E742C20705569297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704472616750';
wwv_flow_api.g_varchar2_table(1015) := '6F736974696F6E46697843616C6C6261636B27293B0D0A20202020766172200D0A202020202020646F63756D656E745363726F6C6C546F70203D202428646F63756D656E74292E7363726F6C6C546F7028292C0D0A202020202020706F736974696F6E3B';
wwv_flow_api.g_varchar2_table(1016) := '0D0A0D0A202020206966202820646F63756D656E745363726F6C6C546F70203E20302029207B0D0A202020202020706F736974696F6E203D207055692E706F736974696F6E3B0D0A202020202020706F736974696F6E2E746F70203D20706F736974696F';
wwv_flow_api.g_varchar2_table(1017) := '6E2E746F70202D20646F63756D656E745363726F6C6C546F703B0D0A0D0A202020202020746869732E706F7075702E636F6E7461696E65722E706172656E7428292E636C6F7365737428222E75692D6469616C6F6722292E6373732822746F70222C2070';
wwv_flow_api.g_varchar2_table(1018) := '6F736974696F6E2E746F70202B2022707822293B202020200D0A202020207D2020202020200D0A0D0A20207D2C0D0A20205F706F7075704469616C6F6744726167537461727443616C6C6261636B3A2066756E6374696F6E2820704576656E742C207055';
wwv_flow_api.g_varchar2_table(1019) := '6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F6744726167537461727443616C6C6261636B27293B0D0A0D0A202020206966202820746869732E706F7075702E6865';
wwv_flow_api.g_varchar2_table(1020) := '61646572416374696F6E436F6E7461696E657220213D756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E6869646528293B20200D0A202020207D0D0A0D0A20207D2C';
wwv_flow_api.g_varchar2_table(1021) := '0D0A0D0A20205F706F7075704469616C6F674472616753746F7043616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(1022) := '6F7075704469616C6F674472616753746F7043616C6C6261636B27293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D756E646566696E65642029207B0D0A2020202020207468';
wwv_flow_api.g_varchar2_table(1023) := '69732E706F7075702E686561646572416374696F6E436F6E7461696E65722E73686F7728293B20200D0A202020207D0D0A0D0A20207D2C20200D0A20205F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B3A2066756E6374696F';
wwv_flow_api.g_varchar2_table(1024) := '6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B27293B0D0A0D0A20202020746869732E5F706F70757041646A757374';
wwv_flow_api.g_varchar2_table(1025) := '426F647948656967687428293B0D0A20207D2C0D0A20205F706F707570436F6C756D6E4973446566696E65643A2066756E6374696F6E282070436F6C756D6E4E616D6520297B0D0A202020207661722072657475726E56616C7565203D2066616C73653B';
wwv_flow_api.g_varchar2_table(1026) := '0D0A0D0A20202020696620280D0A202020202020746869732E706F7075702E68656164657273202020202020202020202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E70';
wwv_flow_api.g_varchar2_table(1027) := '6F7075702E686561646572732E636F6C756D6E7320202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C';
wwv_flow_api.g_varchar2_table(1028) := '756D6E4E616D65205D20202020202020202020213D20756E646566696E65640D0A2020202029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E65';
wwv_flow_api.g_varchar2_table(1029) := '64272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B272220697320646566696E65642E27293B0D0A20202020202072657475726E56616C7565203D20747275653B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206170';
wwv_flow_api.g_varchar2_table(1030) := '65782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B2722206973206E6F7420646566696E65642E27293B0D0A';
wwv_flow_api.g_varchar2_table(1031) := '20202020202072657475726E56616C7565203D2066616C73653B0D0A202020207D0D0A0D0A202020200D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20205F706F707570436F6C756D6E4973436F6E6669677572';
wwv_flow_api.g_varchar2_table(1032) := '6174696F6E417661696C61626C653A2066756E6374696F6E282070436F6C756D6E4E616D652C20704174747220297B0D0A202020207661722072657475726E56616C75653B0D0A0D0A20202020696620280D0A202020202020202020746869732E706C75';
wwv_flow_api.g_varchar2_table(1033) := '67696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E6620202020203D3D20747275650D0A202020202020262620746869732E706F7075702E68656164657273202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1034) := '202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E7320202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A';
wwv_flow_api.g_varchar2_table(1035) := '202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D20202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572';
wwv_flow_api.g_varchar2_table(1036) := '732E636F6C756D6E735B2070436F6C756D6E4E616D65205D5B207041747472205D20213D20756E646566696E65642020202020200D0A2020202029207B0D0A20202020202072657475726E56616C7565203D20746869732E706F7075702E686561646572';
wwv_flow_api.g_varchar2_table(1037) := '732E636F6C756D6E735B2070436F6C756D6E4E616D65205D5B207041747472205D3B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F';
wwv_flow_api.g_varchar2_table(1038) := '6E417661696C61626C65272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B27223A20617474722022272B70417474722B2722203D2022272B72657475726E56616C75652B272227293B0D0A20202020202072657475726E2072657475726E';
wwv_flow_api.g_varchar2_table(1039) := '56616C75653B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202069662028207041747472203D3D202768656164696E67272029207B0D0A202020202020202072657475726E56616C7565203D2070436F6C756D6E4E616D653B0D0A2020';
wwv_flow_api.g_varchar2_table(1040) := '202020207D0D0A202020202020656C7365207B0D0A202020202020202072657475726E56616C7565203D20746869732E706F7075702E64656661756C745265706F727453657474696E67735B207041747472205D3B0D0A2020202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1041) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B2722';
wwv_flow_api.g_varchar2_table(1042) := '3A2064656661756C7420617474722022272B70417474722B2722203D2022272B72657475726E56616C75652B272227293B0D0A20202020202072657475726E2072657475726E56616C75653B0D0A202020207D0D0A20207D2C0D0A0D0A20200D0A20205F';
wwv_flow_api.g_varchar2_table(1043) := '706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964783A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661';
wwv_flow_api.g_varchar2_table(1044) := '756C74536F7274436F6C756D6E49647827293B0D0A0D0A202020207661720D0A20202020202072657475726E56616C7565203D20312C0D0A202020202020636F6C756D6E3B2020202020200D0A0D0A2020202069662028200D0A20202020202020202074';
wwv_flow_api.g_varchar2_table(1045) := '6869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E66200D0A202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D';
wwv_flow_api.g_varchar2_table(1046) := '20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200D0A202020202020262620746869732E706F7075702E686561';
wwv_flow_api.g_varchar2_table(1047) := '646572732E64656661756C74536F72742E636F6C756D6E20202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E64656669';
wwv_flow_api.g_varchar2_table(1048) := '6E65640D0A2020202029207B0D0A202020202020636F6C756D6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E636F6C756D6E3B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(1049) := '656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420627920636F6C756D6E2022272B636F6C756D6E2B272227293B0D0A20202020202072657475726E56616C7565203D20';
wwv_flow_api.g_varchar2_table(1050) := '746869732E5F676574436F6C756D6E4964784279436F6C756D6E4E616D652820636F6C756D6E20293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(1051) := '5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F72742062792031737420636F6C756D6E2E27293B0D0A';
wwv_flow_api.g_varchar2_table(1052) := '20202020202072657475726E56616C7565203D20313B2020202020200D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F727443';
wwv_flow_api.g_varchar2_table(1053) := '6F6C756D6E4964782072657475726E2022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F706F7075704F70656E47657444656661756C74536F7274436F6C';
wwv_flow_api.g_varchar2_table(1054) := '756D6E446972656374696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E44697265637469';
wwv_flow_api.g_varchar2_table(1055) := '6F6E27293B0D0A0D0A202020207661720D0A20202020202072657475726E56616C7565203D2022617363222C0D0A202020202020646972656374696F6E3B0D0A0D0A2020202069662028200D0A202020202020202020746869732E706C7567696E536574';
wwv_flow_api.g_varchar2_table(1056) := '74696E67732E706F7075702E69735265706F7274416476616E636564436F6E66200D0A202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D20756E646566696E65640D0A20';
wwv_flow_api.g_varchar2_table(1057) := '2020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C7453';
wwv_flow_api.g_varchar2_table(1058) := '6F72742E636F6C756D6E20202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E646566696E65640D0A2020202029207B0D';
wwv_flow_api.g_varchar2_table(1059) := '0A202020202020646972656374696F6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E3B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(1060) := '5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420646972656374696F6E20646566696E65642061732022272B646972656374696F6E2B27222E27293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1061) := '72657475726E56616C7565203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(1062) := '2E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F727420';
wwv_flow_api.g_varchar2_table(1063) := '646972656374696F6E206173632E27293B0D0A20202020202072657475726E56616C7565203D2022617363223B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704F70';
wwv_flow_api.g_varchar2_table(1064) := '656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2072657475726E2022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20205F70';
wwv_flow_api.g_varchar2_table(1065) := '6F7075704469616C6F674F70656E43616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F674F70656E43616C6C6261636B27293B';
wwv_flow_api.g_varchar2_table(1066) := '0D0A0D0A20202020746869732E706F7075702E73746174652E697356697369626C65203D20747275653B0D0A20202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0D0A0D0A20202020242827626F647927292E616464';
wwv_flow_api.g_varchar2_table(1067) := '436C6173732827617065782D6E6F2D7363726F6C6C27293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A20202020202074';
wwv_flow_api.g_varchar2_table(1068) := '6869732E706F7075702E73746174652E73656C65637465642E7075736828207B0D0A202020202020202022646973706C6179223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C0D0A202020202020202022';
wwv_flow_api.g_varchar2_table(1069) := '76616C7565223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C0D0A2020202020202020226973415045584E756C6C56616C7565223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E69';
wwv_flow_api.g_varchar2_table(1070) := '73415045584E756C6C56616C75650D0A2020202020207D20293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E73746174652E73656C656374656448617368203D20746869732E5F706F70757047657453656C65637465644861736828';
wwv_flow_api.g_varchar2_table(1071) := '293B200D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F706F7075704469616C6F674F70656E43616C6C6261636B20686173682022272B746869732E706F7075702E73746174652E73656C656374656448';
wwv_flow_api.g_varchar2_table(1072) := '6173682B272227293B0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570416A61784765744F6E';
wwv_flow_api.g_varchar2_table(1073) := '6C7953656C656374656428293B0D0A202020207D0D0A20202020656C7365207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D206E756C6C2029207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1074) := '20746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F';
wwv_flow_api.g_varchar2_table(1075) := '6C756D6E446972656374696F6E2829293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F706F707570416A6178506572666F726D2820746869732E706F7075702E73746174652E6C6173744665746368';
wwv_flow_api.g_varchar2_table(1076) := '6564506167652C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E20293B0D0A2020202020207D202020200D0A2020';
wwv_flow_api.g_varchar2_table(1077) := '20207D0D0A0D0A20202020746869732E5F706F70757053686F7753656C6563746564557064617465282066616C736520293B0D0A0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F73686F776E272C20';
wwv_flow_api.g_varchar2_table(1078) := '746869732E5F706F7075704765744576656E74446174612829293B0D0A20207D2C0D0A20205F706F7075704469616C6F67436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(1079) := '2E6C6F675072656669782C20275F706F7075704469616C6F67436C6F736543616C6C6261636B27293B0D0A0D0A20202020746869732E706F7075702E73746174652E697356697369626C65203D2066616C73653B0D0A20202020746869732E706F707570';
wwv_flow_api.g_varchar2_table(1080) := '2E73686F7753656C6563746564436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A0D0A20202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B0D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(1081) := '0A20205F686561646572576964676574436C65617246696C746572696E673A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F68656164657257696467';
wwv_flow_api.g_varchar2_table(1082) := '6574436C65617246696C746572696E6727293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D20756E646566696E65643B0D0A0D0A202020206966202820746869732E706F7075702E73686F77';
wwv_flow_api.g_varchar2_table(1083) := '53656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A2020202020202F2F696620636865636B626F78202273686F772073656C65637465642220697320636865636B6564207468656E2073686F77207265706F7274';
wwv_flow_api.g_varchar2_table(1084) := '206F662073656C65637465642076616C7565730D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D0A202020207D0D0A20202020656C7365207B0D0A0D0A2020202020206966202820746869732E70';
wwv_flow_api.g_varchar2_table(1085) := '6F7075702E73746174652E736F72746564436F6C756D6E49647820213D20756E646566696E65642029207B0D0A20202020202020202F2F696620737065636966696320636F6C756D6E20776173207573656420746F20736F727420726573756C74732074';
wwv_flow_api.g_varchar2_table(1086) := '68656E20706572666F726D20616A617820696E636C7564696E6720736F7274696E670D0A2020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E49';
wwv_flow_api.g_varchar2_table(1087) := '64782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C206E756C6C2C206E756C6C293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020202020202F2F6F7468657277697365';
wwv_flow_api.g_varchar2_table(1088) := '20666574636820616E6420646973706C6179206669727374207061676520776974682064656661756C7420736F7274696E670D0A2020202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F7065';
wwv_flow_api.g_varchar2_table(1089) := '6E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0D0A2020202020207D0D0A202020207D0D0A0D0A20200D0A';
wwv_flow_api.g_varchar2_table(1090) := '20207D2C0D0A20205F6865616465725769646765744B657955704D616E61676549636F6E733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F686561';
wwv_flow_api.g_varchar2_table(1091) := '6465725769646765744B657955704D616E61676549636F6E73272C20704576656E74293B0D0A0D0A20202020766172206974656D203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A2020202069662028206974656D2E76616C';
wwv_flow_api.g_varchar2_table(1092) := '28292E6C656E677468203D3D20302029207B0D0A2020202020206974656D2E616464436C6173732827656D70747927293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206974656D2E72656D6F7665436C6173732827656D70747927';
wwv_flow_api.g_varchar2_table(1093) := '293B0D0A202020207D0D0A20207D2C20200D0A20202F2A0D0A2020202050524F4D50540D0A20202A2F0D0A20205F70726F6D70745265706F736974696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(1094) := '2E6C6F675072656669782C20275F70726F6D70745265706F736974696F6E27293B0D0A0D0A20202020766172200D0A2020202020206F6666736574203D20746869732E6D61736B2E636F6E7461696E65722E6F666673657428292C0D0A20202020202077';
wwv_flow_api.g_varchar2_table(1095) := '696E646F775769647468203D20242877696E646F77292E6F75746572576964746828292C0D0A202020202020746F70203D206F66667365742E746F70202B20746869732E6D61736B2E636F6E7461696E65722E6F757465724865696768742829202D312C';
wwv_flow_api.g_varchar2_table(1096) := '0D0A2020202020206C656674203D206F66667365742E6C6566742C0D0A20202020202070726F6D7074526573756C745769647468203D20303B0D0A0D0A20202020696620282021746869732E70726F6D70742E697356697369626C65202920207B0D0A20';
wwv_flow_api.g_varchar2_table(1097) := '2020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745265706F736974696F6E2070726F6D7074206E6F742076697369626C652C20646F206E74682E27293B0D0A20202020202072657475726E20';
wwv_flow_api.g_varchar2_table(1098) := '766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0D0A20202020202022746F70223A20746F702C0D0A202020202020226C656674223A206C6566740D0A202020207D293B0D0A';
wwv_flow_api.g_varchar2_table(1099) := '0D0A2020202070726F6D7074526573756C745769647468203D20746869732E70726F6D70742E636F6E7461696E65722E6F75746572576964746828293B0D0A0D0A20202020696620282070726F6D7074526573756C745769647468202B206C656674203E';
wwv_flow_api.g_varchar2_table(1100) := '2077696E646F7757696474682029207B0D0A202020202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0D0A2020202020202020226D696E5769647468223A2070726F6D7074526573756C7457696474682C0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1101) := '20226C656674223A2022222C0D0A2020202020202020227269676874223A2077696E646F775769647468202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828292D6C6566740D0A2020202020207D293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1102) := '202020746869732E70726F6D70742E666978426F726465722E637373287B0D0A2020202020202020227269676874223A20226175746F222C0D0A2020202020202020226C656674223A20300D0A2020202020207D290D0A202020207D0D0A0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1103) := '7D2C0D0A20205F70726F6D70744372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744372656174654E657727293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1104) := '766172200D0A2020202020206174747269627574657320203D20746869732E656C656D656E742E6765742830292E617474726962757465732C0D0A202020202020636C617373657320202020203D20617474726962757465732E636C61737320213D2075';
wwv_flow_api.g_varchar2_table(1105) := '6E646566696E6564203F20617474726962757465732E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0D0A202020202020666978426F726465722020203D202428273C64697620636C6173733D22666978426F72646572223E3C2F';
wwv_flow_api.g_varchar2_table(1106) := '6469763E27292C0D0A202020202020636F6E7461696E65722020203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206865616465722020202020203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206D656E75202020';
wwv_flow_api.g_varchar2_table(1107) := '20202020203D202428273C64697620636C6173733D226D656E75223E3C2F6469763E27292C0D0A2020202020206D656E75457870616E642020202020203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20';
wwv_flow_api.g_varchar2_table(1108) := '766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C207669657722207469746C653D22272B746869732E435F50524F4D50545F4D';
wwv_flow_api.g_varchar2_table(1109) := '454E555F455850414E445F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D636F6D707265737320636F6C6C6170736564223E3C2F7370616E3E';
wwv_flow_api.g_varchar2_table(1110) := '272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D657870616E6420657870616E646564223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A20';
wwv_flow_api.g_varchar2_table(1111) := '20202020206D656E75536F7274202020203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D4275';
wwv_flow_api.g_varchar2_table(1112) := '74746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C20736F727422207469746C653D22272B746869732E435F50524F4D50545F4D454E555F534F52545F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D';
wwv_flow_api.g_varchar2_table(1113) := '68696464656E3D22747275652220636C6173733D22612D49636F6E2069636F6E2D7270742D736F72742D61736320617363223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C';
wwv_flow_api.g_varchar2_table(1114) := '6173733D22612D49636F6E2069636F6E2D7270742D736F72742D646573632064657363223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A2020202020206D656E75436C656172202020203D20242827272B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1115) := '2020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C65';
wwv_flow_api.g_varchar2_table(1116) := '3D22272B746869732E435F50524F4D50545F4D454E555F434C4541525F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D74726173682D6F2063';
wwv_flow_api.g_varchar2_table(1117) := '6C656172223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A0D0A202020202020696E707574536561726368203D202428273C696E70757420747970653D22746578742220746162696E6465783D2230223E27292C0D0A202020';
wwv_flow_api.g_varchar2_table(1118) := '20202069636F6E20202020202020203D202428273C7370616E20636C6173733D2266612066612D736561726368223E3C2F7370616E3E27292C0D0A202020202020626F647920202020202020203D202428273C6469763E3C212D2D64656661756C742062';
wwv_flow_api.g_varchar2_table(1119) := '6F64792D2D3E3C2F6469763E27292C0D0A2020202020206F66667365742020202020203D20746869732E6D61736B2E636F6E7461696E65722E6F666673657428293B0D0A0D0A202020206966202820746869732E6D61736B2E636F6E7461696E65722E69';
wwv_flow_api.g_varchar2_table(1120) := '7328272E657870616E64656427292029207B0D0A2020202020206D656E75457870616E642E616464436C6173732827657870616E64656427290D0A202020207D0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E736F7274656420';
wwv_flow_api.g_varchar2_table(1121) := '3D3D20756E646566696E65642029207B0D0A2020202020206D656E75536F72742E616464436C617373282761736327293B0D0A202020207D0D0A20202020656C7365206966202820746869732E6D61736B2E73746174652E736F72746564203D3D202761';
wwv_flow_api.g_varchar2_table(1122) := '7363272029207B0D0A2020202020206D656E75536F72742E616464436C617373282761736327293B200D0A202020207D0D0A20202020656C7365207B0D0A2020202020206D656E75536F72742E616464436C61737328276465736327293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1123) := '7D0D0A0D0A202020206D656E750D0A2020202020202E617070656E64286D656E75457870616E64290D0A2020202020202E617070656E64286D656E75536F7274290D0A2020202020202E617070656E64286D656E75436C656172293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1124) := '636F6E7461696E65720D0A2020202020202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D2070726F6D707427290D0A2020202020202E637373287B0D0A2020202020202020226D696E5769647468222020203A20';
wwv_flow_api.g_varchar2_table(1125) := '746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828292C0D0A202020202020202022626F72646572436F6C6F72223A20746869732E696E7075744373732E626F72646572436F6C6F722C0D0A202020202020202022666F6E7453';
wwv_flow_api.g_varchar2_table(1126) := '697A65222020203A20746869732E696E7075744373732E666F6E7453697A652C0D0A2020202020202020226C696E6548656967687422203A20746869732E696E7075744373732E6C696E654865696768740D0A2020202020207D290D0A2020202020202E';
wwv_flow_api.g_varchar2_table(1127) := '617070656E6428666978426F726465722E6373732822626F72646572436F6C6F72222C20746869732E696E7075744373732E626F72646572436F6C6F7229290D0A202020203B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F';
wwv_flow_api.g_varchar2_table(1128) := '675072656669782C20275F70726F6D70744372656174654E6577272C20276F6666736574272C206F6666736574293B0D0A0D0A0D0A20202020626F64790D0A2020202020202E616464436C6173732827626F647927290D0A2020202020202E637373287B';
wwv_flow_api.g_varchar2_table(1129) := '0D0A2020202020202020276D6178486569676874273A20746869732E706C7567696E53657474696E67732E70726F6D70742E6D61784865696768740D0A2020202020207D293B0D0A0D0A0D0A202020206966202820617474726962757465732E6D61786C';
wwv_flow_api.g_varchar2_table(1130) := '656E67746820213D20756E646566696E65642029207B0D0A202020202020696E7075745365617263682E6174747228276D61786C656E677468272C20617474726962757465732E6D61786C656E6774682E76616C7565293B20200D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(1131) := '2020200D0A202020206966202820617474726962757465732E706C616365686F6C64657220213D20756E646566696E65642029207B0D0A202020202020696E7075745365617263682E617474722827706C616365686F6C646572272C2061747472696275';
wwv_flow_api.g_varchar2_table(1132) := '7465732E706C616365686F6C6465722E76616C7565293B20200D0A202020207D0D0A0D0A20202020666F722028766172206920696E20636C617373657329207B0D0A202020202020696E7075745365617263682E616464436C6173732820636C61737365';
wwv_flow_api.g_varchar2_table(1133) := '735B695D2B272D696E7075742720293B20200D0A202020207D0D0A0D0A20202020696E7075745365617263682E6174747228276175746F636F6D706C657465272C20276F666627293B0D0A202020200D0A0D0A202020206865616465720D0A2020202020';
wwv_flow_api.g_varchar2_table(1134) := '202E616464436C617373282768656164657227290D0A2020202020202E617070656E642820696E70757453656172636820290D0A2020202020202E617070656E64282069636F6E20293B0D0A0D0A0D0A202020206966202820746869732E706C7567696E';
wwv_flow_api.g_varchar2_table(1135) := '53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020636F6E7461696E65722E617070656E64286D656E75293B0D0A0D0A202020207D0D0A20202020636F6E7461696E65720D0A2020202020202E61707065';
wwv_flow_api.g_varchar2_table(1136) := '6E6428686561646572290D0A2020202020202E617070656E6428626F6479293B0D0A202020200D0A20202020242E657874656E6428746869732E70726F6D70742C207B0D0A20202020202022636F6E7461696E657222203A20636F6E7461696E65722C0D';
wwv_flow_api.g_varchar2_table(1137) := '0A2020202020202268656164657222202020203A206865616465722C0D0A20202020202022626F6479222020202020203A20626F64792C0D0A20202020202022696E7075742220202020203A20696E7075745365617263682C0D0A202020202020226963';
wwv_flow_api.g_varchar2_table(1138) := '6F6E222020202020203A2069636F6E2C0D0A20202020202022666978426F7264657222203A20666978426F726465722C0D0A202020202020226D656E75222020202020203A207B0D0A202020202020202022636F6E7461696E6572223A206D656E752C0D';
wwv_flow_api.g_varchar2_table(1139) := '0A202020202020202022657870616E64222020203A206D656E75457870616E642C0D0A202020202020202022736F72742220202020203A206D656E75536F72742C0D0A202020202020202022636C65617222202020203A206D656E75436C6561720D0A20';
wwv_flow_api.g_varchar2_table(1140) := '20202020207D0D0A202020207D293B0D0A20207D2C0D0A20205F70726F6D707453686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707453686F772729';
wwv_flow_api.g_varchar2_table(1141) := '3B0D0A0D0A202020202428646F63756D656E74292E6F6E2827636C69636B2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765742830292E69642C20242E70726F787928746869732E5F70726F6D7074436865636B436C69636B4F';
wwv_flow_api.g_varchar2_table(1142) := '7574736964652C207468697329293B0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E616464436C6173732827666F637573656427293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1143) := '202020746869732E70726F6D70742E697356697369626C65203D20747275653B0D0A0D0A20202020242827626F647927292E70726570656E642820746869732E70726F6D70742E636F6E7461696E657220293B0D0A0D0A202020200D0A20202020746869';
wwv_flow_api.g_varchar2_table(1144) := '732E5F6D61736B506F707570427574746F6E4869646528293B0D0A0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E6572726F722026262074686973';
wwv_flow_api.g_varchar2_table(1145) := '2E706C7567696E53746F70706564203D3D2066616C73652029207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A202020202020746869732E6D61736B2E73746174652E65';
wwv_flow_api.g_varchar2_table(1146) := '72726F72203D2066616C73653B0D0A202020207D0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F73686F776E272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20';
wwv_flow_api.g_varchar2_table(1147) := '207D2C0D0A20205F70726F6D7074486964653A2066756E6374696F6E282070466F6375734F6E456C656D656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707448696465272C20';
wwv_flow_api.g_varchar2_table(1148) := '2770466F6375734F6E456C656D656E74272C2070466F6375734F6E456C656D656E74293B0D0A0D0A20202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C6173732827666F637573656427293B0D0A20202020746869732E7072';
wwv_flow_api.g_varchar2_table(1149) := '6F6D70742E636F6E7461696E65722E72656D6F766528293B0D0A20202020746869732E70726F6D70742E636F6E7461696E6572203D20756E646566696E65643B0D0A20202020746869732E70726F6D70742E697356697369626C65203D2066616C73653B';
wwv_flow_api.g_varchar2_table(1150) := '0D0A0D0A20202020746869732E5F6D61736B506F707570427574746F6E53686F7728293B0D0A0D0A20202020696620282070466F6375734F6E456C656D656E7420213D20756E646566696E65642026262070466F6375734F6E456C656D656E742E697328';
wwv_flow_api.g_varchar2_table(1151) := '273A666F63757361626C6527292029207B0D0A20202020202070466F6375734F6E456C656D656E742E666F63757328293B20200D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F6765744E657874466F63757341626C65';
wwv_flow_api.g_varchar2_table(1152) := '28292E666F63757328293B0D0A202020207D0D0A202020200D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F68696464656E272C20746869732E5F70726F6D70744765744576656E74446174612829293B';
wwv_flow_api.g_varchar2_table(1153) := '0D0A0D0A202020202428646F63756D656E74292E6F66662827636C69636B2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765742830292E6964293B202020200D0A20207D2C0D0A20205F70726F6D7074416A6178506572666F72';
wwv_flow_api.g_varchar2_table(1154) := '6D3A2066756E6374696F6E2820705061676520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A6178506572666F726D27293B0D0A0D0A202020207661720D0A20202020202072';
wwv_flow_api.g_varchar2_table(1155) := '65717565737450616765203D207050616765203D3D20756E646566696E6564203F2031203A2070506167652C0D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A20274155544F434F4D504C455445272C20202020';
wwv_flow_api.g_varchar2_table(1156) := '202020202020202020202020202020202020202020202F2F747279620D0A202020202020202022783032223A20746869732E706C7567696E53657474696E67732E70726F6D70742E726F7773506572506167652C2020202F2F726F777320706572207061';
wwv_flow_api.g_varchar2_table(1157) := '67650D0A202020202020202022783033223A20746869732E5F6D61736B47657456616C756528292C20202020202020202020202020202020202020202F2F73656172636820737472696E670D0A202020202020202022783034223A207265717565737450';
wwv_flow_api.g_varchar2_table(1158) := '61676520202020202020202020202F2F706167650D0A2020202020207D2C0D0A0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(1159) := '416A61784265666F726553656E642C20746869732C207265717565737450616765292C0D0A2020202020202020227375636365737322202020203A20242E70726F787928746869732E5F70726F6D7074416A6178537563636573732C2074686973292C0D';
wwv_flow_api.g_varchar2_table(1160) := '0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F70726F6D7074416A61784572726F722C2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F';
wwv_flow_api.g_varchar2_table(1161) := '70726F6D7074416A6178436F6D706C6574652C2074686973290D0A2020202020207D3B0D0A202020200D0A202020206966202820746869732E6D61736B2E73746174652E616A617852756E6E696E672029207B0D0A202020202020746869732E6D61736B';
wwv_flow_api.g_varchar2_table(1162) := '2E73746174652E7868722E61626F727428293B0D0A202020202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A202020202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827';
wwv_flow_api.g_varchar2_table(1163) := '636C61737327292E616464436C617373282766612066612D73656172636827293B0D0A202020207D0D0A0D0A20202020746869732E6D61736B2E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F707469';
wwv_flow_api.g_varchar2_table(1164) := '6F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A202020200D0A20207D2C0D0A20205F70726F6D7074416A61784265666F726553656E643A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(1165) := '70526571756573746564506167652C20704A715848522C207053657474696E67732029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A61784265666F726553656E64272C2070';
wwv_flow_api.g_varchar2_table(1166) := '4A715848522C207053657474696E67732C207052657175657374656450616765293B0D0A0D0A20202020766172200D0A2020202020206D65737361676520203D20746869732E435F50524F4D50545F544558545F534541524348494E472C0D0A20202020';
wwv_flow_api.g_varchar2_table(1167) := '202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D22736561726368696E67223E272B0D0A20202020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F737061';
wwv_flow_api.g_varchar2_table(1168) := '6E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D20747275653B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C74734176';
wwv_flow_api.g_varchar2_table(1169) := '61696C61626C65203D2066616C73653B0D0A0D0A202020206966202820746869732E70726F6D70742E636F6E7461696E6572203D3D20756E646566696E65642029207B0D0A202020202020746869732E5F70726F6D70744372656174654E657728293B0D';
wwv_flow_api.g_varchar2_table(1170) := '0A202020202020746869732E5F70726F6D70744164644C697374656E65727328293B0D0A202020202020746869732E5F70726F6D707453686F7728293B0D0A202020207D0D0A0D0A2020202069662028207052657175657374656450616765203D3D2031';
wwv_flow_api.g_varchar2_table(1171) := '2029207B0D0A202020202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B20200D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E';
wwv_flow_api.g_varchar2_table(1172) := '616464436C617373282766612066612D616E696D2D7370696E2066612D7265667265736827293B0D0A20207D2C20200D0A20205F70726F6D7074416674657252656E646572696E67446174613A2066756E6374696F6E28297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(1173) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416674657252656E646572696E674461746127293B0D0A0D0A202020207661720D0A202020202020726573756C747352656E6465726564203D20746869732E70726F';
wwv_flow_api.g_varchar2_table(1174) := '6D70742E626F64792E66696E6428276C6927292E6C656E6774682C0D0A2020202020206C6F61644D6F7265203D202428273C64697620636C6173733D226C6F61644D6F7265223E3C6120687265663D226A6176617363726970743A20766F696428302922';
wwv_flow_api.g_varchar2_table(1175) := '3E272B746869732E435F50524F4D50545F544558545F4C4F41445F4D4F52452B273C2F613E3C2F6469763E27292C0D0A20202020202069734C6F61724D6F7265203D20746869732E70726F6D70742E626F64792E66696E6428272E6C6F61644D6F726527';
wwv_flow_api.g_varchar2_table(1176) := '292E6C656E677468203E20303B0D0A0D0A202020206C6F61644D6F72652E66696E6428276127292E6F6E2827636C69636B272C20242E70726F78792866756E6374696F6E28297B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F';
wwv_flow_api.g_varchar2_table(1177) := '726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520293B0D0A202020207D2C207468697329293B0D0A0D0A202020206C6F61644D6F72652E6373732827626F72646572436F6C6F72272C20746869732E696E70';
wwv_flow_api.g_varchar2_table(1178) := '75744373732E626F72646572436F6C6F72290D0A0D0A2020202069662028200D0A202020202020746869732E70726F6D70742E626F64792E6F757465724865696768742829203C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D';
wwv_flow_api.g_varchar2_table(1179) := '6178486569676874200D0A202020202020262620726573756C747352656E6465726564203C20746869732E6D61736B2E73746174652E746F74616C436F756E740D0A2020202029207B0D0A202020202020696620282069734C6F61724D6F7265203D3D20';
wwv_flow_api.g_varchar2_table(1180) := '66616C73652029207B0D0A2020202020202020746869732E70726F6D70742E626F64792E617070656E64286C6F61644D6F7265293B20200D0A2020202020207D0D0A2020202020200D0A202020207D0D0A20202020656C7365207B0D0A20202020202074';
wwv_flow_api.g_varchar2_table(1181) := '6869732E70726F6D70742E626F64792E66696E6428272E6C6F61644D6F726527292E72656D6F766528293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074416A6178537563636573733A2066756E6374696F6E2870446174612C207054';
wwv_flow_api.g_varchar2_table(1182) := '6578745374617475732C20704A71584852297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F616A617853756363657373272C20277044617461272C207044617461293B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(1183) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F616A617853756363657373272C20277054657874537461747573272C207054657874537461747573293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(1184) := '656669782C20275F616A617853756363657373272C2027704A71584852272C20704A71584852293B0D0A0D0A0D0A20202020746869732E6D61736B2E73746174652E746F74616C436F756E742020202020203D2070446174612E64617461566F6C756D65';
wwv_flow_api.g_varchar2_table(1185) := '5B305D2E434E543B0D0A20202020746869732E6D61736B2E73746174652E6C6173744665746368656450616765203D2070446174612E726571756573746564506167653B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473';
wwv_flow_api.g_varchar2_table(1186) := '417661696C61626C65203D20747275653B0D0A0D0A202020200D0A20202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D73656172636827293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1187) := '207044617461203D20746869732E5F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473282070446174612C20746869732E6D61736B2E73746174652E73656C656374656420293B0D0A0D0A202020206966202820';
wwv_flow_api.g_varchar2_table(1188) := '746869732E6D61736B2E73746174652E6C6173744665746368656450616765203E20312029207B0D0A202020202020746869732E5F70726F6D7074417070656E64446174612820704461746120293B0D0A202020207D0D0A20202020656C7365207B0D0A';
wwv_flow_api.g_varchar2_table(1189) := '0D0A20202020202069662028200D0A2020202020202020746869732E5F6D61736B47657456616C756528292E6C656E677468203D3D2030200D0A2020202020202020262620280D0A20202020202020202020746869732E6F7074696F6E732E6974656D2E';
wwv_flow_api.g_varchar2_table(1190) := '6C6F765F6E756C6C5F7465787420213D20756E646566696E65640D0A202020202020202020207C7C20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C756520213D20756E646566696E65640D0A2020202020202020290D0A20';
wwv_flow_api.g_varchar2_table(1191) := '202020202029207B0D0A202020202020202070446174612E646174612E756E7368696674287B0D0A202020202020202020202252223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652C0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1192) := '2244223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F746578742C0D0A20202020202020202020226973415045584E756C6C56616C7565223A20747275650D0A20202020202020207D293B0D0A2020202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1193) := '20202020746869732E5F70726F6D707452656E646572446174612820704461746120293B0D0A202020207D0D0A0D0A20202020746869732E5F70726F6D7074416674657252656E646572696E674461746128293B0D0A0D0A202020206966202820704461';
wwv_flow_api.g_varchar2_table(1194) := '74612E717565727920213D20756E646566696E65642029207B0D0A202020202020746869732E5F77726974655175657279546F436F6E736F6C65282070446174612E717565727920293B0D0A202020207D0D0A202020200D0A0D0A20207D2C0D0A20205F';
wwv_flow_api.g_varchar2_table(1195) := '70726F6D7074416A61784572726F723A2066756E6374696F6E28704A715848522C2070546578745374617475732C20704572726F725468726F776E297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1196) := '70726F6D7074416A61784572726F72272C2027704A71584852272C20704A715848522C20277054657874537461747573272C2070546578745374617475732C2027704572726F725468726F776E272C20704572726F725468726F776E293B0D0A0D0A0D0A';
wwv_flow_api.g_varchar2_table(1197) := '202020206966202820704A715848522E73746174757354657874203D3D202761626F7274272029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A61784572726F72272C20';
wwv_flow_api.g_varchar2_table(1198) := '27414A41582063616C6C2061626F727465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020207661722061727261793B0D0A0D0A20202020746869732E5F70726F6D707448696465282074686973';
wwv_flow_api.g_varchar2_table(1199) := '2E6D61736B2E6974656D436F6E7461696E657220293B0D0A0D0A20202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202022616464496E666F2220203A20704A715848522E726573706F6E73';
wwv_flow_api.g_varchar2_table(1200) := '654A534F4E2E616464496E666F2C0D0A202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0D0A2020202020202274656368496E666F22203A20704A715848522E726573706F6E73654A534F';
wwv_flow_api.g_varchar2_table(1201) := '4E2E74656368496E666F0D0A202020207D293B0D0A0D0A20202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A202020200D0A20202020746869732E5F747269676765724576656E7428277061656C695F';
wwv_flow_api.g_varchar2_table(1202) := '70726F6D70745F6572726F72272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20202020746869732E5F7468726F774572726F72546578742820704572726F725468726F776E20293B0D0A0D0A20207D2C0D0A20205F70';
wwv_flow_api.g_varchar2_table(1203) := '726F6D70744765744576656E74446174613A2066756E6374696F6E28297B0D0A2020202072657475726E207B0D0A2020202020202270726F6D7074223A207B0D0A202020202020202022636F6E7461696E6572223A20746869732E70726F6D70742E636F';
wwv_flow_api.g_varchar2_table(1204) := '6E7461696E65722C0D0A202020202020202022686561646572222020203A20746869732E70726F6D70742E6865616465722C0D0A202020202020202022626F64792220202020203A20746869732E70726F6D70742E626F64792C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1205) := '22696E70757422202020203A20746869732E70726F6D70742E696E7075740D0A0D0A2020202020207D2C0D0A202020202020226D61736B223A207B0D0A20202020202020202273656C65637465642220202020203A20746869732E6D61736B2E73746174';
wwv_flow_api.g_varchar2_table(1206) := '652E73656C65637465642C0D0A20202020202020202264617461417661696C61626C65223A20746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C650D0A2020202020207D0D0A0D0A202020207D3B0D0A20207D2C0D0A';
wwv_flow_api.g_varchar2_table(1207) := '20205F70726F6D7074416A6178436F6D706C6574653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074416A6178436F6D706C65746527293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1208) := '2020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A0D0A20202020746869732E5F70726F6D7074436865636B5769647468446966666572656E636528293B0D0A20207D2C0D0A20205F70726F6D70744368';
wwv_flow_api.g_varchar2_table(1209) := '65636B5769647468446966666572656E63653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E636527293B0D';
wwv_flow_api.g_varchar2_table(1210) := '0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E6365272C2027636F6E7461696E6572207769647468272C20746869732E6D61736B2E636F';
wwv_flow_api.g_varchar2_table(1211) := '6E7461696E65722E6F7574657257696474682829293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E6365272C202770726F6D707420';
wwv_flow_api.g_varchar2_table(1212) := '7769647468272C20746869732E70726F6D70742E636F6E7461696E65722E6F7574657257696474682829293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B57696474';
wwv_flow_api.g_varchar2_table(1213) := '68446966666572656E6365272C202770726F6D707420636F6E7461696E6572272C20746869732E70726F6D70742E636F6E7461696E65722E676574283029293B0D0A0D0A2020202076617220646966666572656E63653B0D0A0D0A202020206966202820';
wwv_flow_api.g_varchar2_table(1214) := '21746869732E70726F6D70742E697356697369626C652029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E63652070726F6D7074';
wwv_flow_api.g_varchar2_table(1215) := '206E6F742076697369626C652C20646F206E746827293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020646966666572656E6365203D20746869732E70726F6D70742E636F6E7461696E65722E6F757465';
wwv_flow_api.g_varchar2_table(1216) := '7257696474682829202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828293B202020200D0A0D0A202020206966202820646966666572656E6365203E20302029207B0D0A202020202020746869732E70726F6D70742E66';
wwv_flow_api.g_varchar2_table(1217) := '6978426F726465722E63737328277769647468272C20646966666572656E63652B31293B0D0A202020202020746869732E70726F6D70742E666978426F726465722E73686F7728293B0D0A202020207D202020200D0A20202020656C7365207B0D0A2020';
wwv_flow_api.g_varchar2_table(1218) := '20202020746869732E70726F6D70742E666978426F726465722E6869646528293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074416A617841626F72743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F';
wwv_flow_api.g_varchar2_table(1219) := '6728746869732E6C6F675072656669782C20275F70726F6D7074416A617841626F727427293B0D0A0D0A20202020746869732E6D61736B2E73746174652E7868722E61626F727428293B0D0A20202020746869732E6D61736B2E73746174652E616A6178';
wwv_flow_api.g_varchar2_table(1220) := '52756E6E696E67203D2066616C73653B0D0A20207D2C0D0A20205F70726F6D70744164644C697374656E6572733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F';
wwv_flow_api.g_varchar2_table(1221) := '6D70744164644C697374656E65727327293B0D0A0D0A20202020746869732E70726F6D70742E626F64790D0A2020202020202E6F6E2827636C69636B272C20276C69272C20242E70726F78792820746869732E5F70726F6D70744C69436C69636B48616E';
wwv_flow_api.g_varchar2_table(1222) := '6C6465722C20746869732029290D0A2020202020202E6F6E28277363726F6C6C272C20746869732E5F6465626F756E636528242E70726F787928746869732E5F70726F6D70745363726F6C6C43616C6C6261636B2C2074686973292C203130302920290D';
wwv_flow_api.g_varchar2_table(1223) := '0A2020202020202E6F6E28276D6F757365656E746572272C20276C69272C242E70726F787928746869732E5F70726F6D7074556E686967686C696768744F746865722C207468697329290D0A0D0A20202020746869732E70726F6D70742E696E7075740D';
wwv_flow_api.g_varchar2_table(1224) := '0A2020202020202E6F6E2827626C7572272C20242E70726F787928746869732E5F70726F6D7074496E707574426C75722C7468697329290D0A2020202020202E6F6E2827666F637573272C20242E70726F787928746869732E5F70726F6D7074496E7075';
wwv_flow_api.g_varchar2_table(1225) := '74466F6375732C7468697329290D0A2020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E63652820242E70726F78792820746869732E5F6D61736B4B657955702C2074686973292C20746869732E706C7567696E53657474696E';
wwv_flow_api.g_varchar2_table(1226) := '67732E70726F6D70742E6465626F756E636554696D65202920290D0A2020202020202E6F6E28276B6579646F776E272C20746869732E5F6465626F756E636528200D0A20202020202020202020242E70726F787928200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1227) := '746869732E5F70726F6D7074496E7075744B6579446F776E48616E646C65722C20746869730D0A20202020202020202020292C200D0A20202020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E6E617669676174696F';
wwv_flow_api.g_varchar2_table(1228) := '6E4465626F756E636554696D650D0A202020202020202029200D0A202020202020293B0D0A0D0A20202020746869732E70726F6D70742E6D656E752E657870616E642E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(1229) := '4D656E754368616E6765566965772C2074686973202920293B0D0A20202020746869732E70726F6D70742E6D656E752E736F727420202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E75536F727454616773';
wwv_flow_api.g_varchar2_table(1230) := '2C2074686973202920293B0D0A20202020746869732E70726F6D70742E6D656E752E636C656172202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E75436C65617256616C7565732C2074686973202920293B';
wwv_flow_api.g_varchar2_table(1231) := '0D0A0D0A20207D2C0D0A20205F70726F6D70744D656E75536F7274546167733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744D656E';
wwv_flow_api.g_varchar2_table(1232) := '75536F727454616773272C20704576656E74293B0D0A0D0A20202020766172200D0A202020202020746172676574203D202428704576656E742E746172676574292C0D0A202020202020646972656374696F6E203D20746869732E6D61736B2E73746174';
wwv_flow_api.g_varchar2_table(1233) := '652E736F72746564203D3D202761736327203F20276465736327203A2027617363273B202020200D0A0D0A20202020746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869732E5F736F72744A736F6E282022646973706C';
wwv_flow_api.g_varchar2_table(1234) := '6179222C20646972656374696F6E202920293B0D0A0D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A202020202F2F736574207374617465206F66206D61736B0D0A20202020746869732E6D61736B2E7374617465';
wwv_flow_api.g_varchar2_table(1235) := '2E736F72746564203D20646972656374696F6E3B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A2020202020202F2F736574207374617465206F662070726F6D70740D0A202020202020746869732E';
wwv_flow_api.g_varchar2_table(1236) := '70726F6D70742E6D656E752E736F72742E72656D6F7665436C6173732827617363206465736327292E616464436C6173732820646972656374696F6E20293B0D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F6375';
wwv_flow_api.g_varchar2_table(1237) := '7328293B0D0A20207D2C0D0A20205F70726F6D70744D656E75436C65617256616C7565733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744D656E75436C';
wwv_flow_api.g_varchar2_table(1238) := '65617256616C75657327293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202F2F746869732E5F70726F6D70744869676C6967';
wwv_flow_api.g_varchar2_table(1239) := '687452656D6F766543757272656E744C6928293B0D0A20202020746869732E5F70726F6D70744C6952656D6F766553656C656374696F6E28293B0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A20202020746869732E';
wwv_flow_api.g_varchar2_table(1240) := '5F70726F6D707453656C6563744669727374526F7728293B0D0A20202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A2020';
wwv_flow_api.g_varchar2_table(1241) := '7D2C0D0A20205F70726F6D707452656E646572546167733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656E6465725461677327293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1242) := '20207661722072656E6465726564203D20303B0D0A20202020766172206C696D697454616773203D20746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F3B0D0A0D0A202020202F2F656D707479206172726179206F6620';
wwv_flow_api.g_varchar2_table(1243) := '7461677320696E206D61736B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A0D0A202020202F2F7265637265617465206172726179206F6620746167732066726F6D2073656C65637465642076616C7565730D0A202020';
wwv_flow_api.g_varchar2_table(1244) := '20666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B20297B0D0A0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D7074';
wwv_flow_api.g_varchar2_table(1245) := '2E617265546167734C696D697465642026262069203E3D206C696D6974546167732029207B0D0A20202020202020202F2F72656E6465722073756D6D617279207461670D0A2020202020202020746869732E5F70726F6D70745461677353756D6D617279';
wwv_flow_api.g_varchar2_table(1246) := '2820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468202D2072656E646572656420293B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A0D0A2020202020206966202820746869732E706C7567696E5365';
wwv_flow_api.g_varchar2_table(1247) := '7474696E67732E646973706C6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E657728';
wwv_flow_api.g_varchar2_table(1248) := '20746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174652E73656C65637465645B695D';
wwv_flow_api.g_varchar2_table(1249) := '2E6973457874726156616C756520293B0D0A202020202020202072656E64657265642B2B3B0D0A2020202020207D0D0A202020202020656C736520696620282021746869732E706C7567696E53657474696E67732E646973706C61794578747261202626';
wwv_flow_api.g_varchar2_table(1250) := '20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656E646572';
wwv_flow_api.g_varchar2_table(1251) := '54616773272C202776616C75652022272B746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652B2722206973206E6F7420696E2076616C75652066726F6D2073716C2071756572792E27293B0D0A2020202020207D0D0A20';
wwv_flow_api.g_varchar2_table(1252) := '2020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E65772820746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E7365';
wwv_flow_api.g_varchar2_table(1253) := '6C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C756520293B0D0A202020202020202072656E64657265642B2B3B0D0A2020202020207D0D0A0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(1254) := '0A0D0A20202020696620282072656E6465726564203D3D20302026262021746869732E706C7567696E53657474696E67732E70726F6D70742E617265546167734C696D697465642029207B0D0A202020202020746869732E5F70726F6D7074506C616365';
wwv_flow_api.g_varchar2_table(1255) := '486F6C64657253686F7728293B0D0A202020207D2020200D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C6465724869646528293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D70744D';
wwv_flow_api.g_varchar2_table(1256) := '656E754368616E6765566965773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744D656E754368616E67655669657727293B0D0A0D0A2020202069662028';
wwv_flow_api.g_varchar2_table(1257) := '20746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E64656427292029207B0D0A202020202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C6173732827657870616E64656427293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1258) := '746869732E70726F6D70742E6D656E752E657870616E642E72656D6F7665436C6173732827657870616E64656427290D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E6D61736B2E636F6E7461696E65722E61646443';
wwv_flow_api.g_varchar2_table(1259) := '6C6173732827657870616E64656427293B0D0A202020202020746869732E70726F6D70742E6D656E752E657870616E642E616464436C6173732827657870616E64656427290D0A202020207D0D0A0D0A20202020746869732E5F70726F6D70745265706F';
wwv_flow_api.g_varchar2_table(1260) := '736974696F6E28293B0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A0D0A0D0A20207D2C0D0A20205F70726F6D7074556E686967686C696768744F746865723A2066756E6374696F6E2820704576656E742029';
wwv_flow_api.g_varchar2_table(1261) := '7B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074556E686967686C696768744F7468657227293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E66696E6428276C692729';
wwv_flow_api.g_varchar2_table(1262) := '2E6E6F742820704576656E742E74617267657420292E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A0D0A20207D2C0D0A20205F70726F6D70745363726F6C6C43616C6C6261636B3A2066756E6374696F6E28207045';
wwv_flow_api.g_varchar2_table(1263) := '76656E7429207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C2027704576656E74272C20704576656E742C20277363726F6C6C546F70272C20';
wwv_flow_api.g_varchar2_table(1264) := '746869732E70726F6D70742E626F64792E7363726F6C6C546F702829293B0D0A0D0A20202020766172200D0A20202020202070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E742820746869732E70726F6D70742E626F6479';
wwv_flow_api.g_varchar2_table(1265) := '2C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D617848656967687420293B0D0A2020202020200D0A0D0A20202020696620282070657263656E74203E20393020262620746869732E6D61736B2E73746174652E616A61785275';
wwv_flow_api.g_varchar2_table(1266) := '6E6E696E67203D3D2066616C73652029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C202752656163686564206F7665722039302520';
wwv_flow_api.g_varchar2_table(1267) := '6F6620636F6E7461696E6572207363726F6C6C2E20506572666F726D20414A415827293B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061';
wwv_flow_api.g_varchar2_table(1268) := '676520293B0D0A202020207D0D0A20202020656C736520696620282070657263656E74203E20393020262620746869732E6D61736B2E73746174652E616A617852756E6E696E67203D3D20747275652029207B0D0A202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(1269) := '672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C2027546865726520697320414A4158206177616974696E6720666F7220726573756C74732E20414A4158206E6F7420706572666F726D';
wwv_flow_api.g_varchar2_table(1270) := '656427293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C20274A757374207363726F6C6C';
wwv_flow_api.g_varchar2_table(1271) := '2E20646F206E6F7468696E6727293B200D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D7074496E707574426C75723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(1272) := '20275F70726F6D7074496E707574426C757227293B0D0A20207D2C0D0A20205F70726F6D7074496E707574466F6375733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1273) := '70726F6D7074496E707574466F63757327293B0D0A20207D2C0D0A20205F70726F6D7074446973706C61794572726F723A2066756E6374696F6E2820705465787420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1274) := '6669782C20275F70726F6D7074446973706C61794572726F72272C20227054657874222C2070546578742C20746869732E70726F6D7074293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C2820273C64697620636C6173733D';
wwv_flow_api.g_varchar2_table(1275) := '2270726F6D70744572726F72223E3C7370616E20636C6173733D2266612066612D6578636C616D6174696F6E2D747269616E676C65223E3C2F7370616E3E20272B70546578742B273C2F6469763E2720293B0D0A20207D2C0D0A20205F70726F6D70744C';
wwv_flow_api.g_varchar2_table(1276) := '6952656D6F766553656C656374696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744869676C6967687452656D6F7665416C6C27293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1277) := '2020746869732E70726F6D70742E626F64792E66696E6428275B617269612D73656C65637465643D747275655D27292E72656D6F7665417474722827617269612D73656C656374656427293B0D0A20207D2C0D0A20205F70726F6D70744869676C696768';
wwv_flow_api.g_varchar2_table(1278) := '7452656D6F766543757272656E744C693A2066756E6374696F6E28297B0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E72656D6F7665417474722827617269612D686967686C69676874656427293B0D';
wwv_flow_api.g_varchar2_table(1279) := '0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20756E646566696E65643B0D0A20207D2C0D0A20205F70726F6D7074486967686C696768744C693A2066756E6374696F6E2820704C69456C656D656E74';
wwv_flow_api.g_varchar2_table(1280) := '20297B0D0A202020202F2F72656D6F76652073656C656374696F6E20696E20616C6C20736574206F6620646174610D0A202020206966202820746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E20213D20756E646566696E';
wwv_flow_api.g_varchar2_table(1281) := '65642029207B0D0A202020202020746869732E5F70726F6D70744869676C6967687452656D6F766543757272656E744C6928293B20200D0A202020207D202020200D0A0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C65';
wwv_flow_api.g_varchar2_table(1282) := '6374696F6E203D20704C69456C656D656E743B0D0A0D0A20202020704C69456C656D656E742E617474722827617269612D686967686C696768746564272C2074727565293B0D0A20207D2C0D0A20205F70726F6D707453656C6563744669727374526F77';
wwv_flow_api.g_varchar2_table(1283) := '3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707453656C6563744669727374526F7727293B0D0A0D0A202020207661722066697273744C696E65203D2074';
wwv_flow_api.g_varchar2_table(1284) := '6869732E70726F6D70742E626F64792E66696E6428276C6927292E666972737428293B0D0A0D0A20202020746869732E5F70726F6D7074486967686C696768744C69282066697273744C696E6520293B0D0A20207D2C0D0A20205F64617461457874656E';
wwv_flow_api.g_varchar2_table(1285) := '6453656C656374656446726F6D41727261794F664F626A656374733A2066756E6374696F6E282070446174612C207053656C656374656420297B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F64';
wwv_flow_api.g_varchar2_table(1286) := '617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C20227044617461222C207044617461293B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6461746145';
wwv_flow_api.g_varchar2_table(1287) := '7874656E6453656C656374656446726F6D41727261794F664F626A65637473272C20227053656C6563746564222C207053656C6563746564293B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D0A202020';
wwv_flow_api.g_varchar2_table(1288) := '202020666F7220282076617220793D303B2079203C207053656C65637465642E6C656E6774683B20792B2B2029207B0D0A0D0A202020202020202069662028207053656C65637465645B795D2E76616C75652E746F537472696E672829203D3D20704461';
wwv_flow_api.g_varchar2_table(1289) := '74612E646174615B695D2E522E746F537472696E6728292029207B0D0A2020202020202020202070446174612E646174615B695D2E73656C6563746564203D20747275653B0D0A20202020202020202020636F6E74696E75653B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1290) := '7D0D0A0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C2022';
wwv_flow_api.g_varchar2_table(1291) := '72657475726E6564207044617461222C207044617461293B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20205F70726F6D707454656D706C61746544656661756C743A2066756E6374696F6E28297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(1292) := '2E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454656D706C61746544656661756C7427293B0D0A0D0A202020207661720D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020277B7B23';
wwv_flow_api.g_varchar2_table(1293) := '646174617D7D272B0D0A2020202020202020273C6C69272B0D0A20202020202020202720617269612D72657475726E2D76616C75653D227B7B7B527D7D7D22272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B';
wwv_flow_api.g_varchar2_table(1294) := '447D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D617269612D73656C65637465643D2274727565227B7B2F73656C65637465647D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D61';
wwv_flow_api.g_varchar2_table(1295) := '7269612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A202020202020202027207469746C653D227B7B7B447D7D7D22272B0D0A20202020202020202720636C6173733D2264656661756C742227';
wwv_flow_api.g_varchar2_table(1296) := '2B0D0A2020202020202020273E272B0D0A202020202020202027207B7B7B447D7D7D272B0D0A2020202020202020273C2F6C693E272B0D0A2020202020202020277B7B2F646174617D7D273B0D0A0D0A2020202072657475726E2074656D706C6174653B';
wwv_flow_api.g_varchar2_table(1297) := '0D0A20207D2C0D0A20205F70726F6D707452656E64657244617461496E437573746F6D54656D706C6174653A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(1298) := '275F70726F6D707452656E64657244617461496E437573746F6D54656D706C617465272C20227044617461222C207044617461293B0D0A0D0A20202020766172200D0A20202020202072656E6465726564203D2027272C0D0A2020202020206C692C0D0A';
wwv_flow_api.g_varchar2_table(1299) := '202020202020697353656C6563746564203D2066616C73652C0D0A202020202020726F7748746D6C3B0D0A0D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1300) := '2020697353656C6563746564203D2070446174612E646174615B695D2E73656C6563746564203F2074727565203A2066616C73653B0D0A202020202020726F7748746D6C203D20746869732E70726F6D70742E637573746F6D54656D706C61746546756E';
wwv_flow_api.g_varchar2_table(1301) := '6374696F6E2E63616C6C28746869732C2070446174612E646174615B695D20293B0D0A2020202020206C69203D2027272B0D0A2020202020202020273C6C6927202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1302) := '20202B0D0A202020202020202027207469746C653D22272B70446174612E646174615B695D2E442B272227202020202020202020202020202B0D0A20202020202020202720636C6173733D22637573746F6D222720202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1303) := '202020202020202020202B0D0A20202020202020202720617269612D72657475726E2D76616C75653D22272B70446174612E646174615B695D2E522B272227202B0D0A20202020202020202720617269612D646973706C61792D76616C75653D22272B70';
wwv_flow_api.g_varchar2_table(1304) := '446174612E646174615B695D2E442B2722272B0D0A20202020202020202720617269612D73656C65637465643D22272B697353656C65637465642B272227202020202020202020202B0D0A2020202020202020273E272B726F7748746D6C2B273C2F6C69';
wwv_flow_api.g_varchar2_table(1305) := '3E273B0D0A20202020202072656E6465726564202B3D206C693B0D0A202020207D0D0A0D0A2020202072657475726E2072656E64657265643B0D0A0D0A20207D2C0D0A20205F70726F6D7074417070656E64446174613A2066756E6374696F6E28207044';
wwv_flow_api.g_varchar2_table(1306) := '61746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C20227044617461222C207044617461293B0D0A0D0A20202020766172200D0A202020202020';
wwv_flow_api.g_varchar2_table(1307) := '72656E64657265642C0D0A20202020202074656D706C617465203D20746869732E5F70726F6D707454656D706C61746544656661756C7428293B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A20';
wwv_flow_api.g_varchar2_table(1308) := '202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C73652029207B0D0A2020';
wwv_flow_api.g_varchar2_table(1309) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C202272656E646572206461746120696E2064656661756C742074656D706C61746522293B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(1310) := '20747279207B0D0A202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282074656D706C6174652C20704461746129293B0D0A2020202020207D20636174636828206572726F722029207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1311) := '746869732E5F7468726F774572726F72286572726F72293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707441';
wwv_flow_api.g_varchar2_table(1312) := '7070656E6444617461272C202272656E646572206461746120696E20637573746F6D2074656D706C61746522293B0D0A0D0A20202020202072656E6465726564203D20746869732E5F70726F6D707452656E64657244617461496E437573746F6D54656D';
wwv_flow_api.g_varchar2_table(1313) := '706C6174652820704461746120293B0D0A202020207D0D0A20200D0A20202020746869732E70726F6D70742E626F64792E66696E642827756C27292E617070656E64282072656E646572656420293B0D0A20202020746869732E5F70726F6D7074526570';
wwv_flow_api.g_varchar2_table(1314) := '6F736974696F6E28293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F646174615F617070656E646564272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20207D';
wwv_flow_api.g_varchar2_table(1315) := '2C0D0A20205F70726F6D7074447261774D696E696D616C496E7075744C656E6774683A2066756E6374696F6E2820704D65737361676520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D';
wwv_flow_api.g_varchar2_table(1316) := '7074447261774D696E696D616C496E7075744C656E67746827293B0D0A0D0A20202020766172200D0A2020202020206D657373616765203D20704D6573736167652E7265706C61636528272530272C20746869732E706C7567696E53657474696E67732E';
wwv_flow_api.g_varchar2_table(1317) := '70726F6D70742E6D696E696D616C496E7075744C656E677468292C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D226E6F64617461666F756E64223E272B0D0A2020202020202020272020';
wwv_flow_api.g_varchar2_table(1318) := '3C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B';
wwv_flow_api.g_varchar2_table(1319) := '0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0D0A0D0A20207D2C0D0A20205F70726F6D7074447261774E6F64617461466F756E643A2066756E6374696F6E28297B0D0A20';
wwv_flow_api.g_varchar2_table(1320) := '202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074447261774E6F64617461466F756E6427293B0D0A202020202F2F0D0A20202020766172200D0A2020202020206D657373616765203D2074686973';
wwv_flow_api.g_varchar2_table(1321) := '2E435F50524F4D50545F544558545F4E4F5F444154415F464F554E442C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D226E6F64617461666F756E64223E272B0D0A202020202020202027';
wwv_flow_api.g_varchar2_table(1322) := '20203C7370616E20636C6173733D2266612066612D7461626C652D7365617263682069636F6E223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E27';
wwv_flow_api.g_varchar2_table(1323) := '2B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61';
wwv_flow_api.g_varchar2_table(1324) := '626C65203D2066616C73653B0D0A20207D2C0D0A20205F70726F6D707452656E646572446174613A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F7072';
wwv_flow_api.g_varchar2_table(1325) := '6F6D707452656E64657244617461272C20227044617461222C207044617461293B0D0A0D0A20202020766172200D0A20202020202072656E64657265642C0D0A20202020202064656661756C7454656D706C617465203D20746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(1326) := '54656D706C61746544656661756C7428293B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A202020202020746869732E5F70726F6D7074447261774E6F64617461466F756E6428293B0D0A202020';
wwv_flow_api.g_varchar2_table(1327) := '20202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020696620282021746869732E5F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E2820704461746120292026262021746869732E5F636865';
wwv_flow_api.g_varchar2_table(1328) := '636B496644617461436F6E7461696E7352657475726E436F6C756D6E2820704461746120292029207B0D0A202020202020746869732E5F70726F6D7074446973706C61794572726F722827496E76616C69642053514C20717565727927293B0D0A202020';
wwv_flow_api.g_varchar2_table(1329) := '202020746869732E5F7468726F774572726F7254657874282753514C207175657279206C61636B7320646973706C617920616E642072657475726E20636F6C756D6E732E20416C69617365732022642220616E6420227222206172652072657175697265';
wwv_flow_api.g_varchar2_table(1330) := '642127293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C73652029207B0D0A202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(1331) := '6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461272C202272656E646572206461746120696E2064656661756C742074656D706C61746522293B0D0A0D0A20202020202064656661756C7454656D706C6174';
wwv_flow_api.g_varchar2_table(1332) := '65203D20273C756C3E272B64656661756C7454656D706C6174652B273C2F756C3E273B20200D0A0D0A202020202020747279207B0D0A202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282064656661756C7454';
wwv_flow_api.g_varchar2_table(1333) := '656D706C6174652C20704461746129293B0D0A2020202020207D20636174636828206572726F722029207B0D0A2020202020202020746869732E5F7468726F774572726F72286572726F72293B0D0A2020202020207D0D0A0D0A202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(1334) := '20656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461272C202272656E646572206461746120696E20637573746F6D2074656D706C6174652229';
wwv_flow_api.g_varchar2_table(1335) := '3B0D0A0D0A20202020202072656E6465726564203D20746869732E5F70726F6D707452656E64657244617461496E437573746F6D54656D706C6174652820704461746120293B0D0A20202020202072656E6465726564203D20273C756C3E272B72656E64';
wwv_flow_api.g_varchar2_table(1336) := '657265642B273C2F756C3E273B0D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C282072656E646572656420293B0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A2020202074';
wwv_flow_api.g_varchar2_table(1337) := '6869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D20747275653B0D0A20202020746869732E5F70726F6D707453656C6563744669727374526F7728293B0D0A0D0A20202020746869732E5F747269676765724576';
wwv_flow_api.g_varchar2_table(1338) := '656E7428277061656C695F70726F6D70745F646174615F72656E6465726564272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20207D2C0D0A0D0A20205F70726F6D70744765744869676C6967687465643A2066756E63';
wwv_flow_api.g_varchar2_table(1339) := '74696F6E28297B0D0A2020202072657475726E20746869732E70726F6D70742E626F64792E66696E6428275B617269612D686967686C6967687465643D2274727565225D27293B0D0A20207D2C0D0A20205F6D61736B506F707570427574746F6E4B6579';
wwv_flow_api.g_varchar2_table(1340) := '446F776E3A2066756E6374696F6E2820704576656E742029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E4B6579446F776E272C20704576656E74293B0D0A';
wwv_flow_api.g_varchar2_table(1341) := '0D0A202020207661720D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64653B0D0A0D0A202020206966202820746869732E5F69734E617669676174696F6E4B657928206B6579436F64652029203D3D2027444F574E27202920';
wwv_flow_api.g_varchar2_table(1342) := '7B0D0A202020202020746869732E5F70726F6D7074536561726368496E707574466F63757348616E646C657228293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F6D61736B537461746553656C656374656452656D6F76653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1343) := '282070496E6465782C2070547269676765724368616E67654576656E742029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C202770';
wwv_flow_api.g_varchar2_table(1344) := '496E646578272C2070496E646578293B0D0A0D0A202020207661722072656D6F7665643B0D0A0D0A2020202072656D6F766564203D20746869732E6D61736B2E73746174652E73656C65637465642E73706C696365282070496E6465782C203120293B0D';
wwv_flow_api.g_varchar2_table(1345) := '0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C202772656D6F766564206F626A656374272C2072656D6F766564293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1346) := '20696620282070547269676765724368616E67654576656E742029207B0D0A202020202020746869732E5F70726F6D70744170706C7956616C756573282070547269676765724368616E67654576656E7420293B0D0A202020207D0D0A0D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(1347) := '0A20205F6D61736B537461746553656C65637465644164643A2066756E6374696F6E2820704F626A6563742C2070547269676765724368616E67654576656E742C20704973457874726156616C75652C207049734E756C6C56616C756520297B0D0A2020';
wwv_flow_api.g_varchar2_table(1348) := '2020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564416464272C2027704F626A656374272C20704F626A6563742C202770547269676765724368616E67654576656E74272C';
wwv_flow_api.g_varchar2_table(1349) := '2070547269676765724368616E67654576656E742C20704973457874726156616C7565293B0D0A0D0A202020206966202820704973457874726156616C75652029207B0D0A202020202020704F626A6563742E6973457874726156616C7565203D207472';
wwv_flow_api.g_varchar2_table(1350) := '75653B2020202020200D0A202020207D0D0A0D0A2020202069662028207049734E756C6C56616C75652029207B0D0A202020202020704F626A6563742E6973415045584E756C6C56616C7565203D20747275653B200D0A202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1351) := '746869732E6D61736B2E73746174652E73656C65637465642E707573682820704F626A65637420293B0D0A0D0A20202020696620282070547269676765724368616E67654576656E742029207B0D0A202020202020746869732E5F70726F6D7074417070';
wwv_flow_api.g_varchar2_table(1352) := '6C7956616C756573282070547269676765724368616E67654576656E7420293B0D0A202020207D0D0A202020200D0A20207D2C0D0A0D0A20205F6D61736B537461746553656C6563746564476574496E6465783A2066756E6374696F6E28207056616C75';
wwv_flow_api.g_varchar2_table(1353) := '6520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564476574496E646578272C207056616C7565293B0D0A0D0A20202020666F7220282076617220693D30';
wwv_flow_api.g_varchar2_table(1354) := '3B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C';
wwv_flow_api.g_varchar2_table(1355) := '75652029207B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20205F70726F6D7074497356616C756553656C65637465643A2066756E6374696F';
wwv_flow_api.g_varchar2_table(1356) := '6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074497356616C756553656C6563746564272C207056616C7565293B0D0A0D0A2020202072657475726E207468';
wwv_flow_api.g_varchar2_table(1357) := '69732E6D61736B2E73746174652E73656C65637465642E696E6465784F6628207056616C75652029203E202D313B0D0A20207D2C0D0A20205F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C693A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(1358) := '297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C692720293B0D0A0D0A20202020746869732E70726F6D70742E626F64';
wwv_flow_api.g_varchar2_table(1359) := '792E66696E642820276C695B617269612D686967686C6967687465645D2720292E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A20207D2C0D0A20205F70726F6D707452656D6F7665486967686C6967687465644672';
wwv_flow_api.g_varchar2_table(1360) := '6F6D4C693A2066756E6374696F6E2820704C6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707452656D6F7665486967686C69676874656446726F6D4C69272C2027704C69272C20';
wwv_flow_api.g_varchar2_table(1361) := '704C69293B0D0A0D0A20202020704C692E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A20207D2C0D0A20205F70726F6D7074556E73656C65637456616C75653A2066756E6374696F6E28207056616C75652C20704C';
wwv_flow_api.g_varchar2_table(1362) := '6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074556E73656C65637456616C7565272C20277056616C7565272C207056616C7565293B0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(1363) := '6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074556E73656C65637456616C7565272C2027704C69272C20704C69293B0D0A0D0A20202020766172200D0A20202020202076616C7565203D207056616C75652C0D0A20202020202069';
wwv_flow_api.g_varchar2_table(1364) := '6E6465784F66203D20746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C756520292C0D0A20202020202072656D6F766564203D206E756C6C3B0D0A0D0A202020206966202820696E6465784F66203C2030202920';
wwv_flow_api.g_varchar2_table(1365) := '7B0D0A202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0D0A202020207D0D0A0D0A20202020746869732E5F6D61736B5374617465';
wwv_flow_api.g_varchar2_table(1366) := '53656C656374656452656D6F76652820696E6465784F662C207472756520293B202020200D0A0D0A202020206966202820704C6920213D20756E646566696E65642029207B0D0A202020202020704C692E72656D6F7665417474722827617269612D7365';
wwv_flow_api.g_varchar2_table(1367) := '6C656374656427290D0A202020207D0D0A0D0A20202020746869732E5F6D61736B54616752656D6F7665282076616C756520293B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A2020202020207468';
wwv_flow_api.g_varchar2_table(1368) := '69732E5F70726F6D70745265706F736974696F6E28293B20200D0A202020207D0D0A20207D2C0D0A20205F70726F6D70744765744C6953656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(1369) := '2E6C6F675072656669782C20275F70726F6D70744765744C6953656C656374656427293B0D0A0D0A2020202072657475726E20746869732E70726F6D70742E626F64792E66696E6428276C6927292E66696C746572282066756E6374696F6E282070496E';
wwv_flow_api.g_varchar2_table(1370) := '6465782C2070456C656D20297B0D0A20202020202072657475726E20242870456C656D292E697328275B617269612D73656C65637465643D747275655D27293B0D0A202020207D20293B0D0A20207D2C0D0A20205F70726F6D707453656C65637456616C';
wwv_flow_api.g_varchar2_table(1371) := '75653A2066756E6374696F6E2820704C6920297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C7565272C20704C692E676574283029293B0D0A0D0A2020202076';
wwv_flow_api.g_varchar2_table(1372) := '61720D0A20202020202076616C756552657475726E20203D20704C692E617474722827617269612D72657475726E2D76616C756527292C0D0A20202020202076616C7565446973706C6179203D20704C692E617474722827617269612D646973706C6179';
wwv_flow_api.g_varchar2_table(1373) := '2D76616C756527292C0D0A2020202020206973415045584E756C6C56616C7565203D20704C692E617474722827617269612D6E756C6C2D76616C756527292C0D0A20202020202063757272656E74203D20746869732E5F70726F6D70744765744C695365';
wwv_flow_api.g_varchar2_table(1374) := '6C656374656428292E666972737428293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C736529207B0D0A202020202020617065782E64656275672E6C6F6728';
wwv_flow_api.g_varchar2_table(1375) := '746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C646572206E6F20726573756C747320746F2062652073656C65637465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(1376) := '0D0A2020202069662028200D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A202020202020262620746869732E6D61736B2E73746174652E73656C656374';
wwv_flow_api.g_varchar2_table(1377) := '65642E6C656E677468203D3D20310D0A2020202029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C64657220646573656C65637420616E64207365';
wwv_flow_api.g_varchar2_table(1378) := '6C656374206E657727293B0D0A0D0A202020202020747279207B0D0A2020202020202020746869732E5F70726F6D7074556E73656C65637456616C7565282063757272656E742E617474722827617269612D72657475726E2D76616C756527292C206375';
wwv_flow_api.g_varchar2_table(1379) := '7272656E7420293B0D0A2020202020207D20636174636828206572726F722029207B0D0A2020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A2020202020202020746869732E5F70726F6D7074456D7074794D61736B28';
wwv_flow_api.g_varchar2_table(1380) := '293B0D0A2020202020207D0D0A2020202020200D0A202020207D0D0A20202020656C736520696620280D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A20';
wwv_flow_api.g_varchar2_table(1381) := '2020202020262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20310D0A2020202029207B0D0A202020202020746869732E5F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C692829';
wwv_flow_api.g_varchar2_table(1382) := '3B0D0A202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202020746869732E5F70726F6D7074456D7074794D61736B28293B0D0A0D0A202020207D0D0A0D0A20202020746869732E5F6D61736B537461746553656C';
wwv_flow_api.g_varchar2_table(1383) := '6563746564416464280D0A2020202020207B0D0A202020202020202022646973706C6179223A2076616C7565446973706C61792C0D0A20202020202020202276616C75652220203A2076616C756552657475726E0D0A2020202020207D2C200D0A202020';
wwv_flow_api.g_varchar2_table(1384) := '202020747275652C20202F2F74726967676572206368616E6765206576656E740D0A20202020202066616C73652C202F2F6973206E6F742065787472612076616C75652C0D0A202020202020286973415045584E756C6C56616C7565203D3D2022747275';
wwv_flow_api.g_varchar2_table(1385) := '6522290D0A20202020293B0D0A0D0A20202020704C692E617474722827617269612D73656C6563746564272C2074727565293B0D0A0D0A20202020746869732E5F70726F6D7074486967686C696768744C6928704C69293B0D0A0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(1386) := '2E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20704C693B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A202020202020746869732E5F70726F6D70745265706F736974';
wwv_flow_api.g_varchar2_table(1387) := '696F6E28293B0D0A202020202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A202020207D0D0A0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F';
wwv_flow_api.g_varchar2_table(1388) := '6E2029207B0D0A2020202020202F2F6D756C7469706C652073656C656374696F6E0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973526170696453656C656374696F6E2029207B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1389) := '20202020206966202820746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203E20302029207B0D0A202020202020202020202F2F656D707479206D61736B20696E7075740D0A202020202020202020202F2F7472696767657220';
wwv_flow_api.g_varchar2_table(1390) := '6B657920757020746F20706F70756C617465206E6577206175746F636F6D706C6574650D0A20202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C292E7472696767657228276B6579757027293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1391) := '20207D0D0A20202020202020200D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020202020202F2F6C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D70';
wwv_flow_api.g_varchar2_table(1392) := '6C65746520726573756C740D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020202F2F73696E676C652073656C656374696F6E0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E7072';
wwv_flow_api.g_varchar2_table(1393) := '6F6D70742E6973526170696453656C656374696F6E2029207B0D0A0D0A20202020202020206966202820746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203E20302029207B0D0A202020202020202020202F2F726170696420';
wwv_flow_api.g_varchar2_table(1394) := '73656C656374696F6E206973206F6E0D0A20202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C292E7472696767657228276B6579757027293B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D';
wwv_flow_api.g_varchar2_table(1395) := '0A202020202020202020202F2F6C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D706C65746520726573756C740D0A20202020202020207D0D0A2020202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(1396) := '20202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B20200D0A2020202020207D0D0A202020207D0D0A20207D2C0D0A20205F70726F6D707441';
wwv_flow_api.g_varchar2_table(1397) := '70706C7956616C7565733A2066756E6374696F6E282070547269676765724368616E676520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744170706C7956616C756573272C202770';
wwv_flow_api.g_varchar2_table(1398) := '547269676765724368616E6765272C2070547269676765724368616E6765293B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744170706C7956616C756573272C202776616C756573272C';
wwv_flow_api.g_varchar2_table(1399) := '20746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468293B0D0A0D0A202020207661722061727261794F6656616C756573203D205B5D3B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E73656C656374';
wwv_flow_api.g_varchar2_table(1400) := '65642E6C656E677468203E20302029207B0D0A0D0A202020202020666F7220282076617220693D303B20693C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A20202020202020206172726179';
wwv_flow_api.g_varchar2_table(1401) := '4F6656616C7565732E707573682820746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C756520293B0D0A2020202020207D0D0A0D0A202020202020746869732E656C656D656E742E76616C282061727261794F6656616C7565';
wwv_flow_api.g_varchar2_table(1402) := '732E6A6F696E28746869732E435F56414C55455F534550415241544F522920293B0D0A0D0A202020202020746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869732E5F736F72744A736F6E282022646973706C6179222C';
wwv_flow_api.g_varchar2_table(1403) := '20746869732E6D61736B2E73746174652E736F72746564202920293B0D0A0D0A202020202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E656C65';
wwv_flow_api.g_varchar2_table(1404) := '6D656E742E76616C286E756C6C293B0D0A202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0D0A202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1405) := '696620282070547269676765724368616E67652029207B0D0A202020202020617065782E6576656E742E747269676765722820746869732E656C656D656E742E6765742830292C20276368616E6765272C207468697320293B20200D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(1406) := '202020200D0A20207D2C0D0A20205F70726F6D7074546167734765744F626A6563743A2066756E6374696F6E28207052657475726E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70';
wwv_flow_api.g_varchar2_table(1407) := '74546167734765744F626A656374272C207052657475726E293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0D0A202020202020696620';
wwv_flow_api.g_varchar2_table(1408) := '2820746869732E6D61736B2E73746174652E746167735B695D2E76616C7565203D3D207052657475726E2029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745461677347';
wwv_flow_api.g_varchar2_table(1409) := '65744F626A656374272C20277052657475726E2068617320696E64657820272B69293B0D0A202020202020202072657475726E20746869732E6D61736B2E73746174652E746167735B695D3B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1410) := '617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0D0A0D0A2020202072657475726E';
wwv_flow_api.g_varchar2_table(1411) := '20756E646566696E65643B0D0A0D0A20207D2C0D0A20205F70726F6D707454616773476574496E6465783A2066756E6374696F6E28207052657475726E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(1412) := '20275F70726F6D707454616773476574496E646578272C207052657475726E2C2027696E272C20746869732E6D61736B2E73746174652E74616773293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E7374';
wwv_flow_api.g_varchar2_table(1413) := '6174652E746167732E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E73746174652E746167735B695D2E76616C7565203D3D207052657475726E2029207B0D0A2020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(1414) := '672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C20277052657475726E2068617320696E64657820272B69293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A20';
wwv_flow_api.g_varchar2_table(1415) := '2020207D0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0D0A0D';
wwv_flow_api.g_varchar2_table(1416) := '0A2020202072657475726E202D313B0D0A20207D2C0D0A20205F70726F6D70744765744C69427952657475726E56616C75653A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(1417) := '5072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C207056616C7565293B0D0A0D0A20202020766172206C69203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E66696C74657228206675';
wwv_flow_api.g_varchar2_table(1418) := '6E6374696F6E282070496E6465782C2070456C656D20297B0D0A20202020202072657475726E20242870456C656D292E617474722827617269612D72657475726E2D76616C756527292E746F537472696E672829203D3D207056616C75652E746F537472';
wwv_flow_api.g_varchar2_table(1419) := '696E6728293B0D0A202020207D20293B0D0A0D0A2020202069662028206C692E6C656E677468203E20302029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744765744C694279';
wwv_flow_api.g_varchar2_table(1420) := '52657475726E56616C7565272C2027666F756E64206C6920656C656D656E74272C206C69293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F7072';
wwv_flow_api.g_varchar2_table(1421) := '6F6D70744765744C69427952657475726E56616C7565272C20277468657265206973206E6F206C6920656C656D656E7420776974682072657475726E2076616C7565272C207056616C7565293B200D0A202020207D0D0A2020202072657475726E206C69';
wwv_flow_api.g_varchar2_table(1422) := '3B0D0A20207D2C0D0A20205F6D61736B52656D6F766554616746726F6D444F4D3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B52656D6F';
wwv_flow_api.g_varchar2_table(1423) := '766554616746726F6D444F4D272C20704576656E74293B0D0A0D0A20202020766172200D0A20202020202076616C7565203D202428704576656E742E746172676574292E636C6F73657374282764697627292E617474722827617269612D72657475726E';
wwv_flow_api.g_varchar2_table(1424) := '2D76616C756527293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B52656D6F76';
wwv_flow_api.g_varchar2_table(1425) := '6554616746726F6D444F4D272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A202020202020704576656E742E70726576656E7444656661756C7428293B0D0A202020202020704576656E742E73';
wwv_flow_api.g_varchar2_table(1426) := '746F70496D6D65646961746550726F7061676174696F6E28293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A2020';
wwv_flow_api.g_varchar2_table(1427) := '20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A202020202020746869732E5F70726F6D70744765744C69427952657475726E56616C7565282076616C756520292E72656D6F7665417474722827617269612D73656C656374';
wwv_flow_api.g_varchar2_table(1428) := '656427290D0A202020207D0D0A0D0A20202020746869732E5F6D61736B537461746553656C656374656452656D6F76652820746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C7565202920293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1429) := '20704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0D0A20207D2C0D0A20205F6D61736B54616752656D6F76653A';
wwv_flow_api.g_varchar2_table(1430) := '2066756E6374696F6E28207052657475726E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B54616752656D6F7665272C207052657475726E293B0D0A0D0A20202020766172200D0A20';
wwv_flow_api.g_varchar2_table(1431) := '2020202020696E6465784F66203D20746869732E5F70726F6D707454616773476574496E64657828207052657475726E20292C0D0A202020202020746167203D20756E646566696E65643B0D0A0D0A202020206966202820696E6465784F66203C203020';
wwv_flow_api.g_varchar2_table(1432) := '29207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B54616752656D6F7665272C2027546167206E6F7420666F756E6427293B2020202020200D0A20202020202072657475726E20766F';
wwv_flow_api.g_varchar2_table(1433) := '69642830293B0D0A202020207D0D0A0D0A20202020746167203D20746869732E6D61736B2E73746174652E746167735B696E6465784F665D3B0D0A0D0A202020202F2F72656D6F7665207461672066726F6D20646F6D0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(1434) := '75672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B54616752656D6F7665272C202774616720746F2062652072656D6F7665642066726F6D20444F4D272C20746167293B0D0A202020207461672E636F6E7461696E65722E72656D6F';
wwv_flow_api.g_varchar2_table(1435) := '766528293B0D0A0D0A202020202F2F72656D6F7665207461672066726F6D206C697374206F6620746167730D0A20202020746869732E6D61736B2E73746174652E746167732E73706C6963652820696E6465784F662C203120293B0D0A0D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(1436) := '0A20205F70726F6D7074546167734164644E65773A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C756520297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1437) := '69782C20275F70726F6D7074546167734164644E6577272C2070446973706C61792C207052657475726E2C20704973457874726156616C7565293B0D0A0D0A20202020766172200D0A202020202020657874726156616C7565436C617373203D20704973';
wwv_flow_api.g_varchar2_table(1438) := '457874726156616C7565203F202720657874726127203A2027272C0D0A2020202020206E6577546167203D20242827272B0D0A2020202020202020273C64697620636C6173733D22746167272B657874726156616C7565436C6173732B27222061726961';
wwv_flow_api.g_varchar2_table(1439) := '2D72657475726E2D76616C75653D22272B7052657475726E2B2722207469746C653D22272B70446973706C61792B27223E272B0D0A20202020202020202720203C7370616E20636C6173733D2276616C7565223E272B70446973706C61792B273C2F7370';
wwv_flow_api.g_varchar2_table(1440) := '616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D74696D65732072656D6F7665223E3C2F7370616E3E272B0D0A2020202020202020273C2F6469763E272B0D0A20202020202020202727292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(1441) := '206E65775461674F626A656374203D207B0D0A20202020202020202276616C7565223A207052657475726E2C0D0A202020202020202022646973706C6179223A2070446973706C61792C0D0A202020202020202022636F6E7461696E6572223A206E6577';
wwv_flow_api.g_varchar2_table(1442) := '5461672C0D0A2020202020202020226973457874726156616C7565223A20704973457874726156616C7565203F2074727565203A2066616C73650D0A2020202020207D3B0D0A0D0A20202020746869732E6D61736B2E73746174652E746167732E707573';
wwv_flow_api.g_varchar2_table(1443) := '6828206E65775461674F626A65637420293B0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E617070656E6428206E657754616720293B0D0A20207D2C0D0A20205F70726F6D70745461677353756D6D6172794F70656E53656C';
wwv_flow_api.g_varchar2_table(1444) := '65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D6172794F70656E53656C656374656427293B0D0A0D0A20202020696620';
wwv_flow_api.g_varchar2_table(1445) := '2820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745461677353';
wwv_flow_api.g_varchar2_table(1446) := '756D6D6172794F70656E53656C65637465642C20706F707570206E6F7420617661696C61626C652C20646F206E746827293B0D0A0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E70726F7028276368';
wwv_flow_api.g_varchar2_table(1447) := '65636B6564272C2074727565293B0D0A202020202020746869732E5F706F7075704F70656E28293B0D0A202020200D0A202020207D0D0A0D0A20207D2C0D0A20205F70726F6D70745461677353756D6D6172793A2066756E6374696F6E2820704E6F7452';
wwv_flow_api.g_varchar2_table(1448) := '656E6465726564436E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D617279272C20704E6F7452656E6465726564436E74293B0D0A0D0A20202020766172';
wwv_flow_api.g_varchar2_table(1449) := '200D0A202020202020746578743B0D0A20202020202073756D6D617279546167203D20242827272B0D0A2020202020202020273C64697620636C6173733D227461672073756D6D617279223E64656661756C742073756D6D6172793C2F6469763E270D0A';
wwv_flow_api.g_varchar2_table(1450) := '202020202020293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E617265546167734C696D6974656420262620746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F20';
wwv_flow_api.g_varchar2_table(1451) := '3E20302029207B0D0A20202020202074657874203D20746869732E435F544147535F4C494D495445445F4F54484552532E7265706C6163652820272530272C20704E6F7452656E6465726564436E7420293B0D0A202020207D0D0A20202020656C736520';
wwv_flow_api.g_varchar2_table(1452) := '7B0D0A20202020202074657874203D20746869732E435F544147535F4C494D495445445F302E7265706C6163652820272530272C20704E6F7452656E6465726564436E74293B0D0A202020207D0D0A0D0A2020202073756D6D6172795461672E74657874';
wwv_flow_api.g_varchar2_table(1453) := '28207465787420293B0D0A0D0A2020202073756D6D6172795461672E6F6E2827636C69636B272C2066756E6374696F6E28704576656E74297B20704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B207D293B0D0A2020';
wwv_flow_api.g_varchar2_table(1454) := '202073756D6D6172795461672E6F6E282764626C636C69636B272C20242E70726F787928746869732E5F70726F6D70745461677353756D6D6172794F70656E53656C65637465642C207468697329293B0D0A0D0A20202020746869732E6D61736B2E7461';
wwv_flow_api.g_varchar2_table(1455) := '6773436F6E7461696E65722E617070656E64282073756D6D61727954616720293B0D0A20207D2C0D0A20205F70726F6D7074436865636B436C69636B4F7574736964653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(1456) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074436865636B436C69636B4F757473696465272C20704576656E742E63757272656E745461726765742C20704576656E742E746172676574293B0D0A0D0A202020206966';
wwv_flow_api.g_varchar2_table(1457) := '2028200D0A202020202020242E636F6E7461696E732820746869732E70726F6D70742E636F6E7461696E65722E6765742830292C20704576656E742E7461726765742029200D0A2020202020207C7C20242E636F6E7461696E732820746869732E6D6173';
wwv_flow_api.g_varchar2_table(1458) := '6B2E636F6E7461696E65722E6765742830292C20704576656E742E74617267657420290D0A2020202020207C7C202428704576656E742E746172676574292E697328272E72656D6F766527290D0A2020202020207C7C2077696E646F772E67657453656C';
wwv_flow_api.g_varchar2_table(1459) := '656374696F6E28292E746F537472696E6728292E6C656E677468203E20300D0A2020202029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020202F2F646F6E277420666F63';
wwv_flow_api.g_varchar2_table(1460) := '757320616E7920656C656D656E742C20656E642D7573657220636C69636B6564206F75747369646520706C7567696E20646F6D206E6F6465730D0A202020202020746869732E5F70726F6D7074486964652820756E646566696E656420293B0D0A202020';
wwv_flow_api.g_varchar2_table(1461) := '207D0D0A0D0A20207D2C20200D0A20202F2A0D0A202020204155544F434F4D504C45544520746F2062652072656D6170706564206173205F70726F6D70742A0D0A20202A2F0D0A20205F6765744E657874466F63757341626C653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1462) := '28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6765744E657874466F63757341626C6527293B0D0A0D0A20202020766172207461626261626C654172722C20696E6465784F662C206E6578743B';
wwv_flow_api.g_varchar2_table(1463) := '0D0A0D0A20202020746869732E656C656D656E742E73686F7728293B0D0A202020200D0A202020207461626261626C65417272203D202428273A7461626261626C6527292E746F417272617928293B0D0A20202020696E6465784F66203D207461626261';
wwv_flow_api.g_varchar2_table(1464) := '626C654172722E696E6465784F662820746869732E656C656D656E742E67657428302920293B0D0A202020206E657874203D207461626261626C654172725B20696E6465784F662B31205D3B0D0A0D0A20202020746869732E656C656D656E742E686964';
wwv_flow_api.g_varchar2_table(1465) := '6528293B0D0A0D0A2020202072657475726E2024286E657874293B0D0A0D0A20207D2C0D0A0D0A20205F70726F6D70744E617669676174654172726F77733A2066756E6374696F6E282070446972656374696F6E20297B0D0A202020202F2F617065782E';
wwv_flow_api.g_varchar2_table(1466) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744E617669676174654172726F7773272C2070446972656374696F6E293B0D0A0D0A20202020766172200D0A202020202020726573756C747352656E6465726564203D';
wwv_flow_api.g_varchar2_table(1467) := '20746869732E70726F6D70742E626F64792E66696E6428276C6927292E6C656E6774682C0D0A202020202020616C6C50726576203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E70726576416C6C28292E6C656E';
wwv_flow_api.g_varchar2_table(1468) := '6774682C0D0A202020202020616C6C4E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E657874416C6C28292E6C656E6774682C0D0A2020202020207363726F6C6C746F70203D20746869732E70726F';
wwv_flow_api.g_varchar2_table(1469) := '6D70742E626F64792E7363726F6C6C546F7028292C0D0A202020202020686569676874546F546F70426F726465722C0D0A2020202020206E6578742C0D0A202020202020706F736974696F6E2C0D0A2020202020207363726F6C6C56616C75653B0D0A0D';
wwv_flow_api.g_varchar2_table(1470) := '0A20202020696620282070446972656374696F6E203D3D2027444F574E272029207B0D0A2020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E65787428293B0D0A202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(1471) := '2020656C736520696620282070446972656374696F6E203D3D202755502720297B0D0A2020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E7072657628293B0D0A202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(1472) := '20656C7365207B0D0A20202020202072657475726E20766F69642830293B0D0A2020202020202F2F0D0A202020207D0D0A0D0A20202020706F736974696F6E203D206E6578742E706F736974696F6E28293B0D0A0D0A2020202069662028206E6578742E';
wwv_flow_api.g_varchar2_table(1473) := '6C656E677468203E20302029207B0D0A202020202020746869732E5F70726F6D7074486967686C696768744C6928206E65787420293B20200D0A0D0A202020202020686569676874546F546F70426F72646572203D20706F736974696F6E2E746F702D73';
wwv_flow_api.g_varchar2_table(1474) := '63726F6C6C746F703B0D0A0D0A2020202020206966202820686569676874546F546F70426F72646572203E3D203020262620686569676874546F546F70426F72646572203C3D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D61';
wwv_flow_api.g_varchar2_table(1475) := '784865696768742D6E6578742E6F7574657248656967687428292029207B0D0A20202020202020202F2F646F206E6F7468696E672C206C6920656C656D656E742069732066756C6C792076697369626C650D0A2020202020207D0D0A202020202020656C';
wwv_flow_api.g_varchar2_table(1476) := '7365207B0D0A2020202020202020696620282070446972656374696F6E203D3D2027444F574E272029207B0D0A202020202020202020207363726F6C6C56616C7565203D2028207363726F6C6C746F70202B2028686569676874546F546F70426F726465';
wwv_flow_api.g_varchar2_table(1477) := '722B6E6578742E6F757465724865696768742829202D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D617848656967687429202920200D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1478) := '2020207363726F6C6C56616C7565203D207363726F6C6C746F70202B20686569676874546F546F70426F726465723B0D0A20202020202020207D0D0A0D0A2020202020202020746869732E70726F6D70742E626F64792E7363726F6C6C546F7028207363';
wwv_flow_api.g_varchar2_table(1479) := '726F6C6C56616C756520293B20200D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206966202820726573756C747352656E6465726564203C20746869732E6D61736B2E73746174652E746F74616C436F756E7420';
wwv_flow_api.g_varchar2_table(1480) := '29207B0D0A2020202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520293B0D0A2020202020207D0D0A0D0A202020207D0D0A202020200D0A';
wwv_flow_api.g_varchar2_table(1481) := '20207D2C0D0A20205F70726F6D70744C69436C69636B48616E6C6465723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744C69436C69';
wwv_flow_api.g_varchar2_table(1482) := '636B48616E6C646572272C20704576656E74293B0D0A0D0A20202020766172200D0A202020202020746172676574203D202428704576656E742E746172676574292E697328276C692729203F202428704576656E742E74617267657429203A2024287045';
wwv_flow_api.g_varchar2_table(1483) := '76656E742E746172676574292E636C6F7365737428276C6927293B0D0A2020202020200D0A0D0A2020202069662028207461726765742E697328275B617269612D73656C65637465643D2274727565225D27292029207B0D0A202020202020746869732E';
wwv_flow_api.g_varchar2_table(1484) := '5F70726F6D7074556E73656C65637456616C756528207461726765742E617474722827617269612D72657475726E2D76616C756527292C2074617267657420293B20200D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(1485) := '656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C6465722063757272656E746C792073656C6563746564206974656D733A20272C20746869732E6D61736B2E73746174652E73656C65637465';
wwv_flow_api.g_varchar2_table(1486) := '642E6C656E6774682C20746869732E6D61736B2E73746174652E73656C6563746564293B0D0A0D0A202020202020746869732E5F70726F6D707453656C65637456616C7565282074617267657420293B0D0A202020207D0D0A202020200D0A0D0A20207D';
wwv_flow_api.g_varchar2_table(1487) := '2C0D0A0D0A20205F6D61736B48616E646C65466F6375733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B48616E646C65466F637573272C';
wwv_flow_api.g_varchar2_table(1488) := '20704576656E74293B0D0A2F2F20202020746869732E6D61736B2E6974656D436F6E7461696E6572426F64792E617474722827636F6E74656E746564697461626C65272C2074727565290D0A20207D2C0D0A20205F6D61736B48616E646C65426C75723A';
wwv_flow_api.g_varchar2_table(1489) := '2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B48616E646C65426C7572272C20704576656E74293B0D0A2F2F20202020746869732E6D6173';
wwv_flow_api.g_varchar2_table(1490) := '6B2E6974656D436F6E7461696E6572426F64792E617474722827636F6E74656E746564697461626C65272C2066616C7365290D0A20207D2C0D0A0D0A20205F6D61736B48616E646C654B6579446F776E3A2066756E6374696F6E2820704576656E742029';
wwv_flow_api.g_varchar2_table(1491) := '7B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B48616E646C654B6579446F776E272C20704576656E74293B0D0A202020207661720D0A2020202020206B6579436F6465203D20704576656E';
wwv_flow_api.g_varchar2_table(1492) := '742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579436F646520293B0D0A0D0A20202020696620282069734E617669676174696F6E';
wwv_flow_api.g_varchar2_table(1493) := '446972656374696F6E203D3D2027444F574E272029207B0D0A2020202020202F2A0D0A0D0A202020202020746869732E5F70726F6D70744372656174654E657728293B0D0A202020202020746869732E5F70726F6D70744164644C697374656E65727328';
wwv_flow_api.g_varchar2_table(1494) := '293B0D0A0D0A202020202020746869732E5F70726F6D707453686F7728293B0D0A0D0A202020202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A2020202020202A2F0D0A202020202020746869732E5F70726F6D7074536561';
wwv_flow_api.g_varchar2_table(1495) := '726368496E707574466F63757348616E646C657228293B0D0A202020207D0D0A0D0A20207D2C0D0A20205F6D61736B48616E646C654B657950726573733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(1496) := '6F6728746869732E6C6F675072656669782C20275F6D61736B48616E646C654B65795072657373272C20704576656E74293B0D0A0D0A20202020746869732E5F70726F6D70744372656174654E657728293B0D0A20202020746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(1497) := '4164644C697374656E65727328293B0D0A0D0A202020206966202820704576656E742E6B6579436F646520213D2031332029207B0D0A202020202020746869732E70726F6D70742E696E7075742E76616C2820704576656E742E6B657920290D0A202020';
wwv_flow_api.g_varchar2_table(1498) := '207D0D0A0D0A20202020746869732E70726F6D70742E696E7075742E7472696767657228276B6579757027293B0D0A0D0A20202020746869732E5F70726F6D707453686F7728293B0D0A0D0A2020202073657454696D656F75742820242E70726F787928';
wwv_flow_api.g_varchar2_table(1499) := '2066756E6374696F6E28297B0D0A202020202020746869732E70726F6D70742E696E7075742E666F63757328293B20202020202020202020202020200D0A202020207D2C207468697320292C2031303020290D0A0D0A0D0A0D0A20207D2C0D0A20205F70';
wwv_flow_api.g_varchar2_table(1500) := '726F6D707446616B65437572736F7248616E646C65723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D707446616B65437572736F724861';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '6E646C6572272C20704576656E74293B0D0A0D0A20202020766172200D0A20202020202066616B65496E7075743D202428273C696E70757420747970653D22746578742220636C6173733D2266616B65437572736F7248616E646C6572223E27293B0D0A';
wwv_flow_api.g_varchar2_table(1502) := '0D0A202020202020746869732E6D61736B2E6974656D436F6E7461696E6572426F64792E617070656E64282066616B65496E70757420293B0D0A2020202020200D0A20202020202073657454696D656F75742820242E70726F78792866756E6374696F6E';
wwv_flow_api.g_varchar2_table(1503) := '282070496E70757420297B0D0A202020202020202070496E7075740D0A202020202020202020202E6F6E2827626C7572272C2066756E6374696F6E2820704576656E7420297B0D0A2020202020202020202020202428704576656E742E74617267657429';
wwv_flow_api.g_varchar2_table(1504) := '2E72656D6F766528293B0D0A202020202020202020207D290D0A202020202020202020202E6F6E28276B65797072657373272C20242E70726F7879282066756E6374696F6E2820704576656E7420297B0D0A202020202020202020202020766172200D0A';
wwv_flow_api.g_varchar2_table(1505) := '202020202020202020202020202073656C66203D202428704576656E742E746172676574292C0D0A202020202020202020202020202076616C7565203D2073656C662E76616C28293B0D0A0D0A202020202020202020202020704576656E742E73746F70';
wwv_flow_api.g_varchar2_table(1506) := '496D6D65646961746550726F7061676174696F6E28293B0D0A202020202020202020202020704576656E742E70726576656E7444656661756C7428293B0D0A0D0A202020202020202020202020746869732E5F70726F6D70744372656174654E65772829';
wwv_flow_api.g_varchar2_table(1507) := '3B0D0A202020202020202020202020746869732E5F70726F6D70744164644C697374656E65727328293B0D0A0D0A2020202020202020202020200D0A2020202020202020202020200D0A0D0A2020202020202020202020200D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1508) := '2020746869732E70726F6D70742E696E7075742E76616C282076616C756520292E7472696767657228276B6579757027293B0D0A0D0A20202020202020202020202073657454696D656F75742820242E70726F7879282066756E6374696F6E28297B0D0A';
wwv_flow_api.g_varchar2_table(1509) := '2020202020202020202020202020746869732E70726F6D70742E696E7075742E666F63757328293B20202020202020202020202020200D0A2020202020202020202020207D2C207468697320292C2031303020290D0A0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1510) := '746869732E70726F6D70742E696E7075742E666F63757328293B0D0A0D0A20202020202020202020202073656C662E72656D6F766528293B0D0A202020202020202020202020746869732E5F70726F6D707453686F7728293B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1511) := '2020207D2C20746869732029293B0D0A0D0A202020202020202066616B65496E7075742E666F63757328290D0A0D0A2020202020207D2C20746869732C2066616B65496E707574292C2031303020293B0D0A2020202020202F2F0D0A0D0A20200D0A2020';
wwv_flow_api.g_varchar2_table(1512) := '202020200D0A2020202072657475726E2066616C73653B0D0A20207D2C0D0A20205F70726F6D7074536561726368496E707574466F63757348616E646C65723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E6465627567';
wwv_flow_api.g_varchar2_table(1513) := '2E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C657227293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A2020';
wwv_flow_api.g_varchar2_table(1514) := '20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468';
wwv_flow_api.g_varchar2_table(1515) := '696E672E27293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020696620282021746869732E706C7567696E53657474696E67732E69734175746F636F6D706C657465417661696C61626C652029207B0D0A';
wwv_flow_api.g_varchar2_table(1516) := '202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C20274175746F636F6D706C657465206973206E6F7420617661696C61626C';
wwv_flow_api.g_varchar2_table(1517) := '6527293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E70726F6D70742E636F6E7461696E6572203D3D20756E646566696E65642029207B0D0A0D0A202020202020746869732E';
wwv_flow_api.g_varchar2_table(1518) := '5F70726F6D70744372656174654E657728293B0D0A202020202020746869732E5F70726F6D70744164644C697374656E65727328293B0D0A0D0A202020202020746869732E5F70726F6D707453686F7728293B0D0A0D0A202020202020696620280D0A20';
wwv_flow_api.g_varchar2_table(1519) := '20202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774680D0A2020202020202020262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D61';
wwv_flow_api.g_varchar2_table(1520) := '6C496E7075744C656E677468203D3D20300D0A202020202020297B0D0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F';
wwv_flow_api.g_varchar2_table(1521) := '494E5055545F4C454E4754485F3020293B0D0A2020202020207D0D0A202020202020656C73652069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774';
wwv_flow_api.g_varchar2_table(1522) := '68200D0A2020202020202020262620746869732E5F70726F6D707449734D696E696D616C496E7075744C656E6774684D61746368656428290D0A20202020202029207B0D0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C';
wwv_flow_api.g_varchar2_table(1523) := '496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F5820293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1524) := '7074416A6178506572666F726D28293B0D0A2020202020207D0D0A0D0A202020202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A202020207D202020200D0A20207D2C0D0A0D0A0D0A20202F2A0D0A202020204F544845520D';
wwv_flow_api.g_varchar2_table(1525) := '0A20202A2F0D0A20205F70726F6D707449734D696E696D616C496E7075744C656E6774684D6174636865643A2066756E6374696F6E28297B0D0A202020207661722072657475726E56616C7565203D20746869732E706C7567696E53657474696E67732E';
wwv_flow_api.g_varchar2_table(1526) := '70726F6D70742E6D696E696D616C496E7075744C656E677468203E20746869732E70726F6D70742E696E7075742E76616C28292E6C656E6774683B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1527) := '70726F6D707449734D696E696D616C496E7075744C656E6774684D6174636865642072657475726E73272C2072657475726E56616C7565293B0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F736F72744A736F';
wwv_flow_api.g_varchar2_table(1528) := '6E3A2066756E6374696F6E28207050726F70657274792C2070446972656374696F6E20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F736F72744A736F6E272C207050726F70657274792C207044';
wwv_flow_api.g_varchar2_table(1529) := '6972656374696F6E293B0D0A0D0A2020202076617220736F72744F726465723B0D0A0D0A20202020696620282070446972656374696F6E203D3D2027617363272029207B0D0A202020202020736F72744F72646572203D20313B0D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(1530) := '202020656C7365207B0D0A202020202020736F72744F72646572203D202D313B0D0A202020207D0D0A0D0A2020202072657475726E2066756E6374696F6E2028612C6229207B0D0A202020202020202076617220726573756C74203D2028615B7050726F';
wwv_flow_api.g_varchar2_table(1531) := '70657274795D203C20625B7050726F70657274795D29203F202D31203A2028615B7050726F70657274795D203E20625B7050726F70657274795D29203F2031203A20303B0D0A202020202020202072657475726E20726573756C74202A20736F72744F72';
wwv_flow_api.g_varchar2_table(1532) := '6465723B0D0A202020207D0D0A0D0A20207D2C0D0A20205F686967686C69676874576F72643A2066756E6374696F6E282070546578742C2070536561726368537472696E6720297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F';
wwv_flow_api.g_varchar2_table(1533) := '675072656669782C20275F686967686C69676874576F7264272C2070546578742C2070536561726368537472696E67293B0D0A0D0A20202020766172200D0A20202020202074657874203D2070546578742C0D0A20202020202073656172636853747269';
wwv_flow_api.g_varchar2_table(1534) := '6E67203D2070536561726368537472696E672C0D0A202020202020726573756C74546578742C0D0A202020202020706F736974696F6E203D20746578742E746F55707065724361736528292E696E6465784F662820736561726368537472696E672E746F';
wwv_flow_api.g_varchar2_table(1535) := '557070657243617365282920292C0D0A20202020202073746172742C0D0A2020202020206D6964646C652C0D0A202020202020656E643B0D0A0D0A0D0A202020206966202820706F736974696F6E203E202D312029207B0D0A2020202020207374617274';
wwv_flow_api.g_varchar2_table(1536) := '2020203D20746578742E73756273747228302C20706F736974696F6E20293B0D0A2020202020206D6964646C6520203D20746578742E7375627374722873746172742E6C656E6774682C20736561726368537472696E672E6C656E677468293B0D0A2020';
wwv_flow_api.g_varchar2_table(1537) := '20202020656E6420202020203D20746578742E73756273747228706F736974696F6E2B6D6964646C652E6C656E6774682C20746578742E6C656E677468293B0D0A20202020202072657475726E2073746172742B273C7370616E20636C6173733D226869';
wwv_flow_api.g_varchar2_table(1538) := '67686C69676874223E272B6D6964646C652B273C2F7370616E3E272B656E643B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E2070546578743B0D0A202020207D0D0A20207D2C0D0A20205F6765744974656D436F6E';
wwv_flow_api.g_varchar2_table(1539) := '7461696E65723A2066756E6374696F6E28297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E6974656D436F6E7461696E657227293B0D0A20207D2C0D0A20205F6765744974656D436F6E7461696E';
wwv_flow_api.g_varchar2_table(1540) := '6572426F64793A2066756E6374696F6E28297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E6974656D436F6E7461696E6572426F647927293B0D0A20207D2C0D0A20205F67657454616773436F6E';
wwv_flow_api.g_varchar2_table(1541) := '7461696E65723A2066756E6374696F6E28297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E7461677327293B0D0A20207D2C0D0A20205F6765744D61736B496E7075743A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(1542) := '297B0D0A2020202072657475726E20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E66616B65496E70757427293B0D0A20207D2C0D0A20205F69734E617669676174696F6E4B65793A2066756E6374696F6E2820704B6579436F6465';
wwv_flow_api.g_varchar2_table(1543) := '2029207B0D0A202020202F2F617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F69734E617669676174696F6E4B6579272C20704B6579436F6465293B0D0A0D0A202020207661722072657475726E56616C7565203D2066';
wwv_flow_api.g_varchar2_table(1544) := '616C73653B0D0A0D0A202020206966202820704B6579436F6465203D3D2034302029207B0D0A20202020202072657475726E56616C7565203D2027444F574E273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D20';
wwv_flow_api.g_varchar2_table(1545) := '33382029207B0D0A20202020202072657475726E56616C7565203D20275550273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033372029207B0D0A20202020202072657475726E56616C7565203D20274C4546';
wwv_flow_api.g_varchar2_table(1546) := '54273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033392029207B0D0A20202020202072657475726E56616C7565203D20275249474854273B0D0A202020207D0D0A0D0A20202020656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(1547) := '20202072657475726E56616C7565203D2066616C73653B0D0A202020207D0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F6D61736B47657456616C75653A2066756E6374696F6E28297B0D0A2020202061';
wwv_flow_api.g_varchar2_table(1548) := '7065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B47657456616C756527293B0D0A0D0A2020202072657475726E20746869732E70726F6D70742E696E7075742E76616C28293B0D0A20207D2C0D0A20205F6D6173';
wwv_flow_api.g_varchar2_table(1549) := '6B4B657955704D616E61676549636F6E733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B657955704D616E61676549636F6E7327293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1550) := '6966202820746869732E706F7075702E7365617263682E76616C28292E6C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E7365617263682E616464436C6173732827656D70747927293B0D0A202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(1551) := '20656C7365207B0D0A202020202020746869732E706F7075702E7365617263682E72656D6F7665436C6173732827656D70747927293B0D0A202020207D0D0A20207D2C0D0A20205F70726F6D7074496E7075744B6579446F776E48616E646C65723A2066';
wwv_flow_api.g_varchar2_table(1552) := '756E6374696F6E2820704576656E7420297B0D0A20202020766172200D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69';
wwv_flow_api.g_varchar2_table(1553) := '734E617669676174696F6E4B657928206B6579436F646520293B0D0A0D0A0D0A202020206966202820704576656E742E73686966744B65792029207B0D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A0D0A2020202069662028';
wwv_flow_api.g_varchar2_table(1554) := '206B6579436F6465203D3D20392029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C2027544142206B6579207072657373';
wwv_flow_api.g_varchar2_table(1555) := '65642E27293B0D0A202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E706F707570427574746F6E20293B0D0A202020207D2020202020200D0A20202020656C73652069662028206B6579436F6465203D3D2032372920';
wwv_flow_api.g_varchar2_table(1556) := '7B0D0A2020202020202F2F7768656E20657363617065206F722074616220707265737365640D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E64';
wwv_flow_api.g_varchar2_table(1557) := '6C6572272C2027455343415045206B657920707265737365642E27293B0D0A202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B0D0A2020202020200D0A202020202020726574';
wwv_flow_api.g_varchar2_table(1558) := '75726E2066616C73653B0D0A202020207D0D0A20202020656C736520696620282069734E617669676174696F6E446972656374696F6E2029207B0D0A0D0A2020202020206966202820746869732E6D61736B2E73746174652E617265526573756C747341';
wwv_flow_api.g_varchar2_table(1559) := '7661696C61626C652029207B0D0A2020202020202020704576656E742E70726576656E7444656661756C7428293B0D0A2020202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(1560) := '2020746869732E5F70726F6D70744E617669676174654172726F7773282069734E617669676174696F6E446972656374696F6E20293B20200D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(1561) := '6C6F6728746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C20276E6F20726573756C747320617661696C61626C6527293B20202020202020200D0A2020202020207D0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(1562) := '20207D2C20200D0A20205F6D61736B4B657955703A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C20704576656E74293B';
wwv_flow_api.g_varchar2_table(1563) := '0D0A0D0A20202020766172200D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B65792820';
wwv_flow_api.g_varchar2_table(1564) := '6B6579436F646520292C0D0A202020202020686967686C696768746564203D20746869732E5F70726F6D70744765744869676C69676874656428293B0D0A0D0A2020202069662028206B6579436F6465203D3D20392029207B0D0A202020202020617065';
wwv_flow_api.g_varchar2_table(1565) := '782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027544142206B65792072656C65617365642E20446F206E6F7420706572666F726D206175746F636F6D706C657465206265636175736520697420';
wwv_flow_api.g_varchar2_table(1566) := '77617320616C726561647927293B0D0A20202020202072657475726E2066616C73653B200D0A202020207D0D0A0D0A2020202069662028206B6579436F6465203D3D2031362029207B0D0A202020202020617065782E64656275672E6C6F672874686973';
wwv_flow_api.g_varchar2_table(1567) := '2E6C6F675072656669782C20275F6D61736B4B65795570272C20275348494654206B65792072656C65617365642E20446F206E6F7420706572666F726D206175746F636F6D706C65746527293B0D0A20202020202072657475726E2066616C73653B200D';
wwv_flow_api.g_varchar2_table(1568) := '0A202020207D0D0A0D0A20202020696620282069734E617669676174696F6E446972656374696F6E2029207B0D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A20202020656C73652069662028206B6579436F6465203D3D2031';
wwv_flow_api.g_varchar2_table(1569) := '332029207B0D0A202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027656E746572207072657373656427293B0D0A0D0A2020202020206966202820746869732E6D61736B2E';
wwv_flow_api.g_varchar2_table(1570) := '73746174652E617265526573756C7473417661696C61626C65203D3D2066616C73652029207B0D0A2020202020202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027726573756C74';
wwv_flow_api.g_varchar2_table(1571) := '7320617265206E6F742079657420617661696C61626C6527293B20202020202020200D0A202020202020202072657475726E2066616C73653B0D0A2020202020207D0D0A0D0A2020202020206966202820686967686C6967687465642E697328275B6172';
wwv_flow_api.g_varchar2_table(1572) := '69612D73656C65637465643D2274727565225D27292029207B0D0A2020202020202020746869732E5F70726F6D7074556E73656C65637456616C75652820686967686C6967687465642E617474722827617269612D72657475726E2D76616C756527292C';
wwv_flow_api.g_varchar2_table(1573) := '20686967686C69676874656420293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D707453656C65637456616C75652820686967686C69676874656420293B0D0A2020202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(1574) := '202020200D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A0D0A20202020696620280D0A202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774680D';
wwv_flow_api.g_varchar2_table(1575) := '0A202020202020262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203D3D20300D0A202020202020262620746869732E70726F6D70742E696E7075742E76616C28292E6C656E6774';
wwv_flow_api.g_varchar2_table(1576) := '68203D3D20300D0A20202020297B0D0A202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020';
wwv_flow_api.g_varchar2_table(1577) := '293B0D0A202020207D0D0A20202020656C73652069662028200D0A202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E677468200D0A202020202020262620746869732E5F7072';
wwv_flow_api.g_varchar2_table(1578) := '6F6D707449734D696E696D616C496E7075744C656E6774684D61746368656428290D0A2020202029207B0D0A202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F';
wwv_flow_api.g_varchar2_table(1579) := '544558545F4D494E494D414C5F494E5055545F4C454E4754485F5820293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F726D28293B20200D0A202020207D0D0A202020200D0A';
wwv_flow_api.g_varchar2_table(1580) := '202020200D0A20207D2C0D0A20205F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E3A2066756E6374696F6E282070446174612029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1581) := '6669782C20275F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E272C20227044617461222C207044617461293B0D0A0D0A2020202076617220657869737473203D2066616C73653B0D0A0D0A20202020666F7220282076';
wwv_flow_api.g_varchar2_table(1582) := '6172206920696E2070446174612E646174612029207B0D0A2020202020206966202870446174612E646174615B695D2E4420213D20756E646566696E656429207B0D0A2020202020202020657869737473203D20747275653B0D0A202020202020202062';
wwv_flow_api.g_varchar2_table(1583) := '7265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E206578697374733B0D0A20207D2C0D0A20205F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E3A2066756E6374696F6E2820704461';
wwv_flow_api.g_varchar2_table(1584) := '74612029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E272C20227044617461222C207044617461293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1585) := '20202076617220657869737473203D2066616C73653B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D0A2020202020206966202870446174612E646174615B695D2E5220213D20756E646566696E656429';
wwv_flow_api.g_varchar2_table(1586) := '207B0D0A2020202020202020657869737473203D20747275653B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E206578697374733B0D0A20207D2C0D0A20205F6765745363726F6C6C';
wwv_flow_api.g_varchar2_table(1587) := '50657263656E743A2066756E6374696F6E282070456C656D656E742C20704D617848656967687420297B0D0A20202020766172200D0A2020202020207363726F6C6C6564203D2070456C656D656E742E7363726F6C6C546F7028292C0D0A202020202020';
wwv_flow_api.g_varchar2_table(1588) := '7265616C486569676874203D2070456C656D656E742E6368696C6472656E28292E6F757465724865696768742829202D20704D61784865696768742C0D0A20202020202070657263656E74203B0D0A0D0A2020202070657263656E74203D207363726F6C';
wwv_flow_api.g_varchar2_table(1589) := '6C6564202A20313030202F207265616C4865696768743B0D0A2020202070657263656E74203D2070657263656E74203E20313030203F20313030203A2070657263656E743B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67';
wwv_flow_api.g_varchar2_table(1590) := '5072656669782C20275F6765745363726F6C6C50657263656E74272C2027726573756C74272C2070657263656E74293B0D0A0D0A2020202072657475726E2070657263656E743B0D0A20207D2C0D0A0D0A20205F6372656174654974656D506F70757042';
wwv_flow_api.g_varchar2_table(1591) := '7574746F6E3A2066756E6374696F6E282020297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6372656174654974656D506F707570427574746F6E27293B0D0A0D0A202020202F2F0D0A2020202076';
wwv_flow_api.g_varchar2_table(1592) := '617220627574746F6E203D202428273C627574746F6E3E3C2F627574746F6E3E27293B0D0A202020207661722069636F6E203D202428273C7370616E3E3C2F7370616E3E27293B0D0A0D0A2020202069636F6E2E616464436C617373282027666120272B';
wwv_flow_api.g_varchar2_table(1593) := '746869732E6F7074696F6E732E6974656D2E69636F6E20293B0D0A0D0A20202020627574746F6E2E616464436C6173732827612D427574746F6E20612D427574746F6E2D2D706F7075704C4F5627293B0D0A20202020627574746F6E2E61747472282769';
wwv_flow_api.g_varchar2_table(1594) := '64272C20746869732E6F7074696F6E732E6974656D2E6E616D652B275F425554544F4E2720293B0D0A20202020627574746F6E2E6174747228276F6E636C69636B272C20276A6176617363726970743A2072657475726E2066616C73653B27290D0A2020';
wwv_flow_api.g_varchar2_table(1595) := '2020627574746F6E2E617070656E64282069636F6E20293B0D0A0D0A2020202072657475726E20627574746F6E3B0D0A20207D2C0D0A20205F6372656174654974656D416A6178427574746F6E3A2066756E6374696F6E282020297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1596) := '65782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6372656174654974656D416A6178427574746F6E27293B0D0A202020200D0A20202020766172200D0A202020202020627574746F6E203D202428273C627574746F6E3E3C2F';
wwv_flow_api.g_varchar2_table(1597) := '627574746F6E3E27292C0D0A20202020202069636F6E203D202428273C7370616E3E3C2F7370616E3E27293B0D0A0D0A2020202069636F6E2E616464436C61737328202766612066612D7365617263682069636F6E2720293B0D0A0D0A20202020627574';
wwv_flow_api.g_varchar2_table(1598) := '746F6E2E616464436C6173732827612D427574746F6E20612D427574746F6E2D2D616A6178496E64696361746F7220612D427574746F6E2D2D706F7075704C4F5627293B0D0A20202020627574746F6E2E6174747228276964272C20746869732E6F7074';
wwv_flow_api.g_varchar2_table(1599) := '696F6E732E6974656D2E6E616D652B275F425554544F4E5F414A41582720293B0D0A20202020627574746F6E2E6174747228276F6E636C69636B272C20276A6176617363726970743A2072657475726E2066616C73653B27290D0A20202020627574746F';
wwv_flow_api.g_varchar2_table(1600) := '6E2E617070656E64282069636F6E20293B0D0A0D0A2020202072657475726E20627574746F6E3B0D0A20207D2C20200D0A20205F6D61736B4372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6C6F672874';
wwv_flow_api.g_varchar2_table(1601) := '6869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C2027656C656D656E74272C20746869732E656C656D656E742E676574283029293B0D0A202020200D0A20202020766172200D0A202020202020636C617373657320202020';
wwv_flow_api.g_varchar2_table(1602) := '203D20746869732E656C656D656E742E6765742830292E617474726962757465732E636C61737320213D20756E646566696E6564203F20746869732E656C656D656E742E6765742830292E617474726962757465732E636C6173732E76616C75652E7370';
wwv_flow_api.g_varchar2_table(1603) := '6C69742827202729203A205B5D2C0D0A2020202020206D61736B4C617965722020203D202428273C64697620636C6173733D226D61736B696E67223E3C2F6469763E27292C0D0A202020202020706F707570427574746F6E203D20746869732E5F637265';
wwv_flow_api.g_varchar2_table(1604) := '6174654974656D506F707570427574746F6E28292C0D0A202020202020616A61785374617465427574746F6E203D20746869732E5F6372656174654974656D416A6178427574746F6E28292C0D0A202020202020706C616365686F6C646572203D202428';
wwv_flow_api.g_varchar2_table(1605) := '273C64697620636C6173733D22706C616365686F6C646572223E272B746869732E656C656D656E742E617474722827706C616365686F6C64657227292B273C2F6469763E27292C0D0A202020202020636F6E7461696E6572203D202428273C6469763E3C';
wwv_flow_api.g_varchar2_table(1606) := '2F6469763E27292C0D0A2020202020206974656D436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206974656D436F6E7461696E6572426F6479203D202428273C6469763E3C2F6469763E27292C0D0A20202020';
wwv_flow_api.g_varchar2_table(1607) := '202074616773436F6E7465696E6572203D202428273C6469763E3C2F6469763E27293B0D0A0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C2027636C6173736573';
wwv_flow_api.g_varchar2_table(1608) := '272C20636C6173736573293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D206D61736B27293B0D0A0D0A20202020666F72202876617220692069';
wwv_flow_api.g_varchar2_table(1609) := '6E20636C617373657329207B0D0A202020202020636F6E7461696E65722E616464436C6173732820636C61737365735B695D2B272D6D61736B2720293B20200D0A202020207D0D0A2020202020200D0A202020206974656D436F6E7461696E65720D0A20';
wwv_flow_api.g_varchar2_table(1610) := '20202020202E616464436C61737328276974656D436F6E7461696E657227290D0A2020202020202E6373732827626F72646572436F6C6F72272C20746869732E696E7075744373732E626F72646572436F6C6F72293B0D0A0D0A202020202F2F69662028';
wwv_flow_api.g_varchar2_table(1611) := '20746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C65203D3D2066616C73652029207B0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734175746F636F6D706C6574';
wwv_flow_api.g_varchar2_table(1612) := '65417661696C61626C65203D3D20747275652029207B0D0A2020202020202F2F696E2063617365206F6620706F707570207265706F7274206973206E6F7420617661696C61626C652C206D616B65206D61736B20666F63757361626C650D0A2020202020';
wwv_flow_api.g_varchar2_table(1613) := '202F2F736F2074686520656E642D757365722063616E206E6176696761746520746F206669656C64207573696E6720746162206B65790D0A2020202020206974656D436F6E7461696E65722E617474722827746162696E646578272C2030293B0D0A2020';
wwv_flow_api.g_varchar2_table(1614) := '20207D0D0A0D0A0D0A202020206974656D436F6E7461696E6572426F64790D0A2020202020202E616464436C61737328276974656D436F6E7461696E6572426F647927290D0A2020202020202E617070656E64282074616773436F6E7465696E65722E61';
wwv_flow_api.g_varchar2_table(1615) := '6464436C617373282774616773272920290D0A2020202020202E617070656E6428206D61736B4C6179657220290D0A2020202020202E617070656E64546F28206974656D436F6E7461696E657220293B0D0A0D0A202020206974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(1616) := '722E617070656E642820706C616365686F6C64657220293B0D0A0D0A202020206974656D436F6E7461696E65722E617070656E64546F2820636F6E7461696E657220293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E6773';
wwv_flow_api.g_varchar2_table(1617) := '2E6973506F7075705265706F7274417661696C61626C652029207B0D0A202020202020706F707570427574746F6E2E6F6E2827636C69636B272C20242E70726F787928746869732E5F706F7075704F70656E4279427574746F6E2C207468697329293B0D';
wwv_flow_api.g_varchar2_table(1618) := '0A2020202020206974656D436F6E7461696E65722E61667465722820706F707570427574746F6E20293B0D0A202020207D0D0A20200D0A202020206974656D436F6E7461696E65722E61667465722820616A61785374617465427574746F6E2E68696465';
wwv_flow_api.g_varchar2_table(1619) := '282920293B0D0A0D0A202020202F2F7472616E7366657220726573756C74207769647468206F662041504558206974656D2061667465722072656E646572696E672074686520656C656D656E740D0A202020206966202820746869732E656C656D656E74';
wwv_flow_api.g_varchar2_table(1620) := '2E636C6F7365737428272E636F6C27292E6F7574657257696474682829203E3D20746869732E656C656D656E742E6F75746572576964746828292029207B0D0A202020202020636F6E7461696E65722E63737328276D696E5769647468272C2074686973';
wwv_flow_api.g_varchar2_table(1621) := '2E656C656D656E742E6F7574657257696474682829293B0D0A202020207D0D0A202020200D0A20202020636F6E7461696E65722E63737328276D696E486569676874272C20746869732E656C656D656E742E6F75746572486569676874282920293B0D0A';
wwv_flow_api.g_varchar2_table(1622) := '0D0A2020202072657475726E207B0D0A20202020202022636F6E7461696E6572222020202020202020203A20636F6E7461696E65722C0D0A202020202020226974656D436F6E7461696E65722220202020203A206974656D436F6E7461696E65722C0D0A';
wwv_flow_api.g_varchar2_table(1623) := '202020202020226974656D436F6E7461696E6572426F647922203A206974656D436F6E7461696E6572426F64792C0D0A2020202020202274616773436F6E7461696E65722220202020203A2074616773436F6E7465696E65722C0D0A2020202020202270';
wwv_flow_api.g_varchar2_table(1624) := '6C616365686F6C64657222202020202020203A20706C616365686F6C6465722C0D0A20202020202022706F707570427574746F6E22202020202020203A20706F707570427574746F6E2C0D0A20202020202022616A61785374617465427574746F6E2220';
wwv_flow_api.g_varchar2_table(1625) := '20203A207B0D0A202020202020202022627574746F6E223A20616A61785374617465427574746F6E2C0D0A2020202020202020226572726F724D657373616765223A20756E646566696E65642C0D0A20202020202020202269734572726F72223A206661';
wwv_flow_api.g_varchar2_table(1626) := '6C73650D0A2020202020207D0D0A202020207D0D0A0D0A20207D2C0D0A2F2F0D0A20205F77726974655175657279546F436F6E736F6C653A2066756E6374696F6E28207051756572792029207B0D0A20202020617065782E64656275672E6C6F67287468';
wwv_flow_api.g_varchar2_table(1627) := '69732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027737461727427293B200D0A0D0A20202020766172206172726179203D207051756572792E73706C697428225C6E22293B0D0A0D0A20202020666F722028';
wwv_flow_api.g_varchar2_table(1628) := '2076617220693D303B2069203C2061727261792E6C656E6774683B20692B2B2029207B0D0A202020202020617065782E64656275672E6C6F67282723272C2061727261795B695D293B202020202020200D0A202020207D0D0A0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(1629) := '64656275672E6C6F6728746869732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027656E6427293B200D0A20207D2C0D0A20205F7468726F774572726F72546578743A2066756E6374696F6E28207054657874';
wwv_flow_api.g_varchar2_table(1630) := '20297B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F675072656669782C20275F7468726F774572726F7254657874272C20277054657874272C207054657874293B200D0A202020207468726F772070546578743B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1631) := '7D2C0D0A0D0A20205F6465626F756E63653A2066756E6374696F6E2866756E632C20776169742C20696D6D65646961746529207B0D0A202020202F2F617065782E64656275672E6C6F6728276465626F756E6365272C202766756E63272C2066756E632C';
wwv_flow_api.g_varchar2_table(1632) := '202777616974272C20776169742C2027696D6D656469617465272C20696D6D656469617465293B0D0A0D0A202020207661722074696D656F75743B0D0A2020202072657475726E2066756E6374696F6E2829207B0D0A20202020202076617220636F6E74';
wwv_flow_api.g_varchar2_table(1633) := '657874203D20746869732C2061726773203D20617267756D656E74733B0D0A202020202020766172206C61746572203D2066756E6374696F6E2829207B0D0A202020202020202074696D656F7574203D206E756C6C3B0D0A202020202020202069662028';
wwv_flow_api.g_varchar2_table(1634) := '21696D6D656469617465292066756E632E6170706C7928636F6E746578742C2061726773293B0D0A2020202020207D3B0D0A2020202020207661722063616C6C4E6F77203D20696D6D656469617465202626202174696D656F75743B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1635) := '636C65617254696D656F75742874696D656F7574293B0D0A20202020202074696D656F7574203D2073657454696D656F7574286C617465722C2077616974293B0D0A2020202020206966202863616C6C4E6F77292066756E632E6170706C7928636F6E74';
wwv_flow_api.g_varchar2_table(1636) := '6578742C2061726773293B0D0A202020207D3B0D0A20207D2C0D0A20205F7468726F774572726F723A2066756E6374696F6E2820704572726F725468726F776E2029207B0D0A20202020617065782E64656275672E6C6F6728746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(1637) := '6669782C20275F7468726F774572726F72272C2027704572726F725468726F776E272C20704572726F725468726F776E293B200D0A202020207468726F7720704572726F725468726F776E3B0D0A20207D0D0A0D0A7D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(141379880636885667)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_file_name=>'enhancedLovItem.js'
,p_mime_type=>'application/javascript'
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
wwv_flow_api.g_varchar2_table(18) := '2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F647920696E7075745B747970653D746578745D2E66616B65437572736F7248616E646C6572207B0D0A202077696474683A20313030253B0D0A20206D617267696E2D74';
wwv_flow_api.g_varchar2_table(19) := '6F703A20302E3272656D3B0D0A2020626F726465723A206E6F6E653B0D0A20206261636B67726F756E643A206E6F6E653B0D0A20206865696768743A20312E3872656D3B0D0A7D0D0A0D0A2F2A0D0A2E6974656D436F6E7461696E6572203E202E697465';
wwv_flow_api.g_varchar2_table(20) := '6D436F6E7461696E6572426F647920696E7075745B747970653D746578745D207B0D0A2020626F726465723A206E6F6E653B0D0A20206261636B67726F756E643A206E6F6E653B0D0A2020666C65782D67726F773A20313B0D0A2020666C65782D736872';
wwv_flow_api.g_varchar2_table(21) := '696E6B3A20313B0D0A20206D617267696E3A203070783B0D0A202070616464696E673A203070783B0D0A20206865696768743A20312E3872656D3B0D0A7D0D0A2A2F0D0A0D0A2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(22) := '72426F6479206469762E66616B65496E707574207B0D0A2020666C65782D67726F773A20313B0D0A20206261636B67726F756E643A2073696C7665723B0D0A20206D696E2D77696474683A20323070783B0D0A7D0D0A0D0A2F2A206974656D2064697361';
wwv_flow_api.g_varchar2_table(23) := '626C6564202D3E2074616773202A2F0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564206469762E74616773203E206469762E7461673A686F766572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(24) := '723A2072676261283231342C3231342C323134293B0D0A20206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E';
wwv_flow_api.g_varchar2_table(25) := '64697361626C6564206469762E74616773203E206469762E746167203E202E72656D6F7665207B0D0A2020637572736F723A2064656661756C743B0D0A7D0D0A0D0A2F2A206974656D202D3E2074616773202D3E207374617465202D3E20657870616E64';
wwv_flow_api.g_varchar2_table(26) := '6564202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E657870616E646564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0D0A202066';
wwv_flow_api.g_varchar2_table(27) := '6C65782D777261703A20777261703B200D0A20206F766572666C6F773A2076697369626C653B0D0A7D0D0A0D0A2F2A206974656D202D3E2074616773202D3E202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E';
wwv_flow_api.g_varchar2_table(28) := '6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0D0A2020646973706C61793A20666C65783B0D0A2020666C65782D777261703A206E6F777261703B0D0A20206F766572666C6F773A';
wwv_flow_api.g_varchar2_table(29) := '2068696464656E3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E74';
wwv_flow_api.g_varchar2_table(30) := '6167203E202E76616C75657B0D0A2020666C65782D736872696E6B3A20313B0D0A2020666C65782D67726F773A20313B0D0A2020746578742D6F766572666C6F773A20656C6C69707369733B0D0A20206F766572666C6F773A2068696464656E3B0D0A7D';
wwv_flow_api.g_varchar2_table(31) := '0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E202E72656D6F76';
wwv_flow_api.g_varchar2_table(32) := '65207B0D0A2020666C65782D736872696E6B3A20303B0D0A2020666C65782D67726F773A20303B20200D0A2020666F6E742D73697A653A203172656D3B0D0A20206C696E652D6865696768743A203272656D3B0D0A202070616464696E672D6C6566743A';
wwv_flow_api.g_varchar2_table(33) := '20302E3272656D3B0D0A2020637572736F723A20706F696E7465723B0D0A2020636F6C6F723A207267626128302C302C302C31293B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(34) := '644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461672E6578747261207B0D0A20206261636B67726F756E643A20236666646664';
wwv_flow_api.g_varchar2_table(35) := '663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A';
wwv_flow_api.g_varchar2_table(36) := '20202F2A646973706C61793A20696E6C696E652D626C6F636B3B2A2F0D0A2020646973706C61793A20666C65783B0D0A20206D61782D77696474683A20313030253B0D0A2020626F726465723A2031707820736F6C69642072676261283231342C323134';
wwv_flow_api.g_varchar2_table(37) := '2C323134293B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020626F726465722D7261646975733A203670783B0D0A20206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B0D0A2020666C65782D';
wwv_flow_api.g_varchar2_table(38) := '736872696E6B3A20303B0D0A2020636F6C6F723A207267626128302C302C302C302E35293B0D0A20202D7765626B69742D746F7563682D63616C6C6F75743A206E6F6E653B202F2A20694F5320536166617269202A2F0D0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(39) := '757365722D73656C6563743A206E6F6E653B202F2A20536166617269202A2F0D0A20202020202D6B68746D6C2D757365722D73656C6563743A206E6F6E653B202F2A204B6F6E717565726F722048544D4C202A2F0D0A202020202020202D6D6F7A2D7573';
wwv_flow_api.g_varchar2_table(40) := '65722D73656C6563743A206E6F6E653B202F2A2046697265666F78202A2F0D0A20202020202020202D6D732D757365722D73656C6563743A206E6F6E653B202F2A20496E7465726E6574204578706C6F7265722F45646765202A2F0D0A20202020202020';
wwv_flow_api.g_varchar2_table(41) := '2020202020757365722D73656C6563743A206E6F6E653B202F2A204E6F6E2D70726566697865642076657273696F6E2C2063757272656E746C790D0A20202020202020202020202020202020202020202020202020202020202020202020737570706F72';
wwv_flow_api.g_varchar2_table(42) := '746564206279204368726F6D6520616E64204F70657261202A2F20200D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E657242';
wwv_flow_api.g_varchar2_table(43) := '6F6479203E206469762E74616773203E206469762E7461673A686F766572207B0D0A2020626F726465722D636F6C6F723A20236231623162313B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E697465';
wwv_flow_api.g_varchar2_table(44) := '6D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0D0A20206D617267696E2D72696768743A20302E3272656D3B0D0A7D0D';
wwv_flow_api.g_varchar2_table(45) := '0A0D0A0D0A0D0A2E6974656D436F6E7461696E6572203E20696E7075745B747970653D746578745D3A666F6375732C0D0A2E6974656D436F6E7461696E6572203E20696E7075745B747970653D746578745D3A686F766572207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(46) := '6F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0D0A2020626F726465722D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(47) := '2C302C302C302E313235293B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A20206261636B67726F756E643A20236666663B0D0A20207A2D696E6465783A203430303B0D0A7D0D0A2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(48) := '74656D2E70726F6D70742E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75202E6661207B0D0A2020666F6E74';
wwv_flow_api.g_varchar2_table(49) := '2D73697A653A20313270783B0D0A20206C696E652D6865696768743A20313270783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(50) := '6E6365644C6F764974656D2E70726F6D7074203E202E6D656E752C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A2020626F726465722D636F6C6F723A20696E68657269743B0D0A20';
wwv_flow_api.g_varchar2_table(51) := '20626F726465722D77696474683A203170783B0D0A2020626F726465722D7374796C653A20736F6C69643B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D0A2E70726574';
wwv_flow_api.g_varchar2_table(52) := '6975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75207B0D0A202070616464696E673A20302E3472656D3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E';
wwv_flow_api.g_varchar2_table(53) := '6D656E752C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(54) := '726465722D746F703A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C';
wwv_flow_api.g_varchar2_table(55) := '61793A20666C65783B0D0A0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572203E202E6661207B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A2020666F6E742D';
wwv_flow_api.g_varchar2_table(56) := '73697A653A20312E3372656D3B0D0A2020666C65782D736872696E6B3A20303B0D0A2020666C65782D67726F773A20303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572203E';
wwv_flow_api.g_varchar2_table(57) := '20696E707574207B0D0A2020626F726465723A206E6F6E653B0D0A20206F75746C696E653A206E6F6E653B0D0A20206D617267696E2D72696768743A20302E3472656D3B0D0A2020666C65782D67726F773A20313B0D0A2020666C65782D736872696E6B';
wwv_flow_api.g_varchar2_table(58) := '3A20303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(59) := '4974656D2E70726F6D7074202E666978426F72646572207B0D0A2020646973706C61793A206E6F6E653B0D0A2020626F726465722D746F702D77696474683A203170783B0D0A2020626F726465722D746F702D7374796C653A20736F6C69643B0D0A2020';
wwv_flow_api.g_varchar2_table(60) := '626F726465722D636F6C6F723A207267626128302C302C302C2E313235293B0D0A20206865696768743A203070783B0D0A202077696474683A20353070783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A203070783B0D';
wwv_flow_api.g_varchar2_table(61) := '0A202072696768743A203070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E672C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420';
wwv_flow_api.g_varchar2_table(62) := '2E6E6F64617461666F756E64207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A202070616464696E673A203670783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E7365617263';
wwv_flow_api.g_varchar2_table(63) := '68696E67202E69636F6E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E746578742C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E';
wwv_flow_api.g_varchar2_table(64) := '6F64617461666F756E64202E69636F6E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E74657874207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E70';
wwv_flow_api.g_varchar2_table(65) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C207B0D0A20206C6973742D7374796C653A206E6F6E653B0D0A20206D617267696E3A20303B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(66) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D207B0D0A202070616464696E673A203072656D3B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E70726574697573';
wwv_flow_api.g_varchar2_table(67) := '2D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C74207B0D0A202070616464696E673A20302E3372656D3B0D0A20206F766572666C6F773A2068696464656E3B0D0A2020746578742D6F766572666C6F773A20';
wwv_flow_api.g_varchar2_table(68) := '656C6C69707369733B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D3A686F7665722C0D0A2E70726574697573';
wwv_flow_api.g_varchar2_table(69) := '2D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(70) := '20756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70';
wwv_flow_api.g_varchar2_table(71) := '7420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C20';
wwv_flow_api.g_varchar2_table(72) := '6C692E637573746F6D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C743A686F7665722C0D0A2E70726574697573';
wwv_flow_api.g_varchar2_table(73) := '2D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70';
wwv_flow_api.g_varchar2_table(74) := '7420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F';
wwv_flow_api.g_varchar2_table(75) := '6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420';
wwv_flow_api.g_varchar2_table(76) := '756C206C692E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0D0A20206261636B67726F756E643A20236535653565353B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F';
wwv_flow_api.g_varchar2_table(77) := '6D707420756C206C693A6C6173742D6368696C642E637573746F6D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D7365';
wwv_flow_api.g_varchar2_table(78) := '6C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D227472756522';
wwv_flow_api.g_varchar2_table(79) := '5D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C';
wwv_flow_api.g_varchar2_table(80) := '65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B6172';
wwv_flow_api.g_varchar2_table(81) := '69612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C743A686F7665722C0D0A2E707265746975732D';
wwv_flow_api.g_varchar2_table(82) := '2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(83) := '4974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E70726574697573';
wwv_flow_api.g_varchar2_table(84) := '2D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E';
wwv_flow_api.g_varchar2_table(85) := '707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0D0A20202D7765626B69742D626F782D73';
wwv_flow_api.g_varchar2_table(86) := '6861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0D0A20202D6D6F7A2D626F782D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267';
wwv_flow_api.g_varchar2_table(87) := '626128302C302C302C302E31293B0D0A2020626F782D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F';
wwv_flow_api.g_varchar2_table(88) := '764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269';
wwv_flow_api.g_varchar2_table(89) := '612D73656C65637465643D2274727565225D207B0D0A20202F2A746578742D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B2A2F0D0A20202F2A626F726465722D72696768743A2031707820736F6C696420';
wwv_flow_api.g_varchar2_table(90) := '236563663366663B2A2F0D0A20206261636B67726F756E643A20236632663266323B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75207B0D0A0D0A7D0D0A0D0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(91) := '656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E636F6C6C6170736564207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7072';
wwv_flow_api.g_varchar2_table(92) := '6F6D7074202E6D656E75202E76696577202E657870616E646564207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577';
wwv_flow_api.g_varchar2_table(93) := '2E657870616E646564202E636F6C6C6170736564207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E657870616E6465';
wwv_flow_api.g_varchar2_table(94) := '64202E657870616E646564207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2F2A2064656661756C7420736F7274207374617465202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D65';
wwv_flow_api.g_varchar2_table(95) := '6E75202E736F7274202E64657363207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E617363207B0D0A2020646973';
wwv_flow_api.g_varchar2_table(96) := '706C61793A206E6F6E653B0D0A7D0D0A0D0A2F2A20736F72746564207374617465202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E646573632C0D0A2E707265';
wwv_flow_api.g_varchar2_table(97) := '746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E617363207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(98) := '6D2E70726F6D7074202E6D656E75202E736F72742E64657363202E6173632C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E64657363207B0D0A2020646973706C6179';
wwv_flow_api.g_varchar2_table(99) := '3A20626C6F636B3B0D0A7D0D0A0D0A0D0A2F2A706F7075702A2F0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A2020706F73697469';
wwv_flow_api.g_varchar2_table(100) := '6F6E3A2072656C61746976653B0D0A0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C0D0A2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(101) := '7265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E736561726368696E67466F72526573756C7473207B0D0A202070616464696E673A203230707820303B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(102) := '6E68616E6365644C6F764974656D202E626F64792E736561726368696E672C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F64792E6E6F64617461666F756E64207B0D0A2020646973706C61793A';
wwv_flow_api.g_varchar2_table(103) := '20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A202070616464696E673A203070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F647920';
wwv_flow_api.g_varchar2_table(104) := '2E736561726368696E67466F72526573756C74732C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572207B0D0A2020616C69676E2D7365';
wwv_flow_api.g_varchar2_table(105) := '6C663A2063656E7465723B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E736561726368696E67466F7252657375';
wwv_flow_api.g_varchar2_table(106) := '6C747320202E69636F6E203E202E6661202C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E69636F6E203E202E6661207B0D0A20';
wwv_flow_api.g_varchar2_table(107) := '20666F6E742D73697A653A2031323070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E736561726368696E67466F72526573756C7473202E746578742C0D0A2E75692D';
wwv_flow_api.g_varchar2_table(108) := '6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E74657874207B0D0A202070616464696E672D746F703A20313070783B0D0A2020666F6E742D7369';
wwv_flow_api.g_varchar2_table(109) := '7A653A20313470783B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E73656C656374566961526F7773207464207B0D0A202063757273';
wwv_flow_api.g_varchar2_table(110) := '6F723A20706F696E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572207B0D0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C30';
wwv_flow_api.g_varchar2_table(111) := '2C302E3035293B0D0A2020646973706C61793A20666C65783B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572206C6162656C207B0D0A20206D617267696E2D6C65';
wwv_flow_api.g_varchar2_table(112) := '66743A20313070783B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572206C6162656C207B0D0A20206C696E652D68656967';
wwv_flow_api.g_varchar2_table(113) := '68743A20333270783B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E66616B65436865636B626F78207B0D0A20206C';
wwv_flow_api.g_varchar2_table(114) := '696E652D6865696768743A20333270783B0D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D627574746F6E73207B0D0A2020746578742D616C6967';
wwv_flow_api.g_varchar2_table(115) := '6E3A2072696768743B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E6865616465722E706167696E6174696F6E4F6E6C79202E706167696E6174696F6E436F6E7461696E6572207B0D0A20';
wwv_flow_api.g_varchar2_table(116) := '20746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E66612C0D0A2E75';
wwv_flow_api.g_varchar2_table(117) := '692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F6E7461696E6572207B0D0A2020746578742D616C69676E3A2072696768743B0D0A2020666F6E742D73697A653A';
wwv_flow_api.g_varchar2_table(118) := '20313270783B0D0A20206C696E652D6865696768743A20333070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(119) := '2E70726576207B0D0A20206D617267696E2D72696768743A203570783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572202E706167696E6174696F6E436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(120) := '202E6E657874207B0D0A20206D617267696E2D6C6566743A203570783B200D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D73686F7753656C6563';
wwv_flow_api.g_varchar2_table(121) := '7465642E696E616374697665207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D73686F7753656C656374';
wwv_flow_api.g_varchar2_table(122) := '65642C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572202E666F6F7465722D627574746F6E73207B0D0A2020666C65782D736872696E6B3A20313B0D0A2020666C65782D67726F773A20';
wwv_flow_api.g_varchar2_table(123) := '313B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B';
wwv_flow_api.g_varchar2_table(124) := '0D0A2020646973706C61793A20666C65783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E686561646572203E20646976207B0D0A2020666C65782D736872696E6B3A20313B0D0A202066';
wwv_flow_api.g_varchar2_table(125) := '6C65782D67726F773A20313B0D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736561726368436F6E7461696E6572207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A';
wwv_flow_api.g_varchar2_table(126) := '2020746578742D616C69676E3A206C6566743B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736561726368436F6E7461696E657220696E707574207B0D0A202070616464696E673A2035';
wwv_flow_api.g_varchar2_table(127) := '70783B0D0A20206C696E652D6865696768743A20313670783B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E726F777350657250616765436F6E74';
wwv_flow_api.g_varchar2_table(128) := '61696E65722073656C656374207B0D0A202070616464696E673A203570783B0D0A20206C696E652D6865696768743A20313670783B0D0A7D0D0A0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20';
wwv_flow_api.g_varchar2_table(129) := '2E736561726368436F6E7461696E65722E6D756C7469706C6520696E707574207B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E73656172636843';
wwv_flow_api.g_varchar2_table(130) := '6F6E7461696E6572202E6661207B0D0A2020746F703A203070783B0D0A20206C696E652D6865696768743A20333470783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202072696768743A20313570783B0D0A20206F7061636974793A';
wwv_flow_api.g_varchar2_table(131) := '20302E353B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E202E7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(132) := '6D20696E7075742E656D707479207E202E636C656172207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075742E656D707479207E202E';
wwv_flow_api.g_varchar2_table(133) := '7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E202E636C656172207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E75692D6469616C6F672E7072';
wwv_flow_api.g_varchar2_table(134) := '65746975732D2D656E68616E6365644C6F764974656D20696E707574207E20646976207B0D0A2020746F703A203070783B0D0A20206C696E652D6865696768743A20333470783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A20207269';
wwv_flow_api.g_varchar2_table(135) := '6768743A203070783B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E20646976203E202E7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D';
wwv_flow_api.g_varchar2_table(136) := '656E68616E6365644C6F764974656D20696E7075742E656D707479207E20646976203E202E636C656172207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76';
wwv_flow_api.g_varchar2_table(137) := '4974656D20696E7075742E656D707479207E20646976203E202E7365617263682C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E707574207E20646976203E202E636C656172207B0D0A20206F7061';
wwv_flow_api.g_varchar2_table(138) := '636974793A20302E353B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636C656172207B0D0A2020637572736F723A20706F696E7465723B';
wwv_flow_api.g_varchar2_table(139) := '0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636C6561723A686F766572207B0D0A20206F7061636974793A20313B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(140) := '6E68616E6365644C6F764974656D202E6865616465722C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F746572207B0D0A202070616464696E673A203130707820313570783B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(141) := '2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E6865616465722E68696464656E2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F7465722E686964';
wwv_flow_api.g_varchar2_table(142) := '64656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E626F6479207461626C65207B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(143) := '2E707265746975732D2D656E68616E6365644C6F764974656D202E752D5265706F72742D736F7274207B0D0A202077686974652D73706163653A206E6F777261703B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(144) := '644C6F764974656D2074683A66697273742D6368696C642C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074683A66697273742D6368696C642C0D0A2E';
wwv_flow_api.g_varchar2_table(145) := '75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074642E742D5265706F72742D63656C6C3A66697273742D6368696C64207B0D0A20200D0A202077696474683A20343270783B0D0A20206D696E2D77696474683A20';
wwv_flow_api.g_varchar2_table(146) := '343270783B0D0A20206D61782D77696474683A20343270783B0D0A20200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207468207B0D0A2020626F726465722D746F703A6E6F6E653B0D0A7D0D';
wwv_flow_api.g_varchar2_table(147) := '0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B794865616465727320207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A203070783B0D0A20';
wwv_flow_api.g_varchar2_table(148) := '2077696474683A20313030253B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B7948656164657273207468207B0D0A20206261636B67726F756E643A2023666666';
wwv_flow_api.g_varchar2_table(149) := '3B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E68696464656E447565546F46696C746572207B0D0A2020646973706C6179';
wwv_flow_api.g_varchar2_table(150) := '3A206E6F6E653B0D0A7D0D0A0D0A2E686967686C69676874207B0D0A20206261636B67726F756E643A2079656C6C6F773B0D0A7D0D0A0D0A0D0A2F2A20696E666F726D6174696F6E20726567696F6E202A2F0D0A2E75692D6469616C6F672E7072657469';
wwv_flow_api.g_varchar2_table(151) := '75732D2D656E68616E6365644C6F764974656D202E696E666F726D6174696F6E2E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(152) := '6D202E696E666F726D6174696F6E207B0D0A20206261636B67726F756E643A20236633663366333B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A20206D696E2D6865696768743A20333070783B0D0A2020746578742D616C69676E3A20';
wwv_flow_api.g_varchar2_table(153) := '63656E7465723B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E696E66';
wwv_flow_api.g_varchar2_table(154) := '6F726D6174696F6E202E74657874207B0D0A202070616464696E672D746F703A203570783B0D0A202070616464696E672D626F74746F6D3A203570783B0D0A20206C696E652D6865696768743A20323070783B0D0A2020666F6E742D73697A653A203132';
wwv_flow_api.g_varchar2_table(155) := '70783B0D0A7D0D0A0D0A2F2A20636F6C756D6E2066696C746572696E6720616E6420736F7274696E67202A2F0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B7948656164';
wwv_flow_api.g_varchar2_table(156) := '6572732074682E69732D616374697665202E612D49636F6E2C200D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074682E69732D616374697665202E6661';
wwv_flow_api.g_varchar2_table(157) := '207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074682E69732D6163746976652C0D0A2E75692D';
wwv_flow_api.g_varchar2_table(158) := '6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636F6C756D6E4F7065726174696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20233465346534653B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(159) := '3465346534653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D207461626C652E737469636B79486561646572732074682E69732D6163746976652061207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(160) := '663B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636F6C756D6E4F7065726174696F6E73207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A203070783B';
wwv_flow_api.g_varchar2_table(161) := '0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E636F6C756D6E4F7065726174696F6E73202E612D49636F6E207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E75692D646961';
wwv_flow_api.g_varchar2_table(162) := '6C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736F7274696E672C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E67207B0D0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(163) := '3A2072656C61746976653B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E67202E6661207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020726967';
wwv_flow_api.g_varchar2_table(164) := '68743A203770783B0D0A2020746F703A203770783B0D0A2020636F6C6F723A20236666663B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E736F';
wwv_flow_api.g_varchar2_table(165) := '7274696E672061207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202077696474683A206175746F3B0D0A202070616464696E673A2035707820313070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D';
wwv_flow_api.g_varchar2_table(166) := '656E68616E6365644C6F764974656D202E736F7274696E67207B0D0A2020626F726465722D6C6566743A2031707820736F6C69643B0D0A2020626F726465722D72696768743A2031707820736F6C69643B0D0A2020626F726465722D746F703A20317078';
wwv_flow_api.g_varchar2_table(167) := '20736F6C69643B0D0A0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E67207B0D0A2020626F726465723A2031707820736F6C69643B20200D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(168) := '6E643A20233631363136313B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66696C746572696E6720696E707574207B0D0A2020626F726465723A206E6F6E653B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(169) := '6F756E643A207472616E73706172656E743B0D0A202070616464696E673A203570783B0D0A202077696474683A20313030253B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(170) := '65644C6F764974656D202E66616B65526164696F2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E66616B65436865636B626F78207B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(171) := '0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D636972636C652D6F2C0D0A2E75692D6469616C6F672E707265';
wwv_flow_api.g_varchar2_table(172) := '746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D646F742D636972636C652D6F207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(173) := '0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B74';
wwv_flow_api.g_varchar2_table(174) := '7970653D726164696F5D3A636865636B6564207E202E66612D636972636C652D6F2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D726164696F5D3A6E6F74283A636865636B';
wwv_flow_api.g_varchar2_table(175) := '656429207E202E66612D646F742D636972636C652D6F207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D6368';
wwv_flow_api.g_varchar2_table(176) := '65636B626F785D3A6E6F74283A636865636B656429207E202E66612D7371756172652D6F2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D636865636B626F785D3A63686563';
wwv_flow_api.g_varchar2_table(177) := '6B6564207E202E66612D636865636B2D7371756172652D6F207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A7D0D0A0D0A2F2A206861636B20746F206D616B65206C6162656C20616E6420636865636B626F7820776F726B2C20';
wwv_flow_api.g_varchar2_table(178) := '627574206E6F7420746F2073686F7720636865636B626F7820697473656C662A2F0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D202E666F6F74657220696E7075745B747970653D636865636B626F785D20';
wwv_flow_api.g_varchar2_table(179) := '7B0D0A2020706F736974696F6E3A2066697865643B0D0A20206F7061636974793A20303B0D0A2020746F703A202D313070783B0D0A20206C6566743A202D313070783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(180) := '65644C6F764974656D20746820696E7075745B747970653D636865636B626F785D2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20746420696E7075745B747970653D636865636B626F785D2C0D0A0D0A';
wwv_flow_api.g_varchar2_table(181) := '2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D20696E7075745B747970653D636865636B626F785D3A636865636B6564207E202E66612D7371756172652D6F2C0D0A2E75692D6469616C6F672E70726574697573';
wwv_flow_api.g_varchar2_table(182) := '2D2D656E68616E6365644C6F764974656D20696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B656429207E202E66612D636865636B2D7371756172652D6F207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(183) := '2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074723A6E74682D6368696C64286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E70726574';
wwv_flow_api.g_varchar2_table(184) := '6975732D2D656E68616E6365644C6F764974656D2074723A6E74682D6368696C64286576656E292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E707265746975732D2D65';
wwv_flow_api.g_varchar2_table(185) := '6E68616E6365644C6F764974656D2074723A6E74682D6368696C64286F6464292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074';
wwv_flow_api.g_varchar2_table(186) := '723A6E74682D6368696C64286F6464292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A20236666646664663B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265';
wwv_flow_api.g_varchar2_table(187) := '746975732D2D656E68616E6365644C6F764974656D2074722074642E742D5265706F72742D63656C6C207B0D0A202077686974652D73706163653A206E6F777261703B20200D0A7D0D0A0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(188) := '68616E6365644C6F764974656D2074723A6E74682D6368696C64286F6464292E73656C65637465642074642E742D5265706F72742D63656C6C2C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73';
wwv_flow_api.g_varchar2_table(189) := '656C65637465642074642E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E3035293B0D0A2020746578742D736861646F773A2030203020302E3030317078207267626128';
wwv_flow_api.g_varchar2_table(190) := '302C302C302C20302E35293B0D0A0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73656C65637465643A686F766572202E742D5265706F72742D63656C6C2C200D0A2E75692D646961';
wwv_flow_api.g_varchar2_table(191) := '6C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73656C65637465643A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(192) := '35352C203234392C20302C20302E31292021696D706F7274616E743B200D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2074722E73656C65637465642074642E742D5265706F72742D63656C6C';
wwv_flow_api.g_varchar2_table(193) := '202E66616B65436865636B626F78207B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2F2A2073697A6573202A2F0D0A0D0A2F2A2064656661756C74202A2F0D0A2E6974656D436F6E7461696E6572426F6479207B0D0A202068';
wwv_flow_api.g_varchar2_table(194) := '65696768743A20313030253B0D0A7D0D0A0D0A2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3572656D2030';
wwv_flow_api.g_varchar2_table(195) := '20302E3572656D3B0D0A20206D617267696E2D746F703A20302E3272656D3B0D0A20206865696768743A203272656D3B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A653A20312E3172656D3B0D0A7D0D0A0D0A0D';
wwv_flow_api.g_varchar2_table(196) := '0A2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461672E73756D6D617279207B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E6974656D43';
wwv_flow_api.g_varchar2_table(197) := '6F6E7461696E6572207B0D0A202070616464696E673A203020302E3272656D20302E3272656D20302E3272656D3B0D0A20206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A2E6974656D436F6E7461696E6572202E706C616365686F6C6465';
wwv_flow_api.g_varchar2_table(198) := '72207B0D0A20206C696E652D6865696768743A20322E3272656D3B0D0A2020666F6E742D73697A653A20312E3272656D3B0D0A20206F7061636974793A20302E353B0D0A202077686974652D73706163653A206E6F777261703B0D0A2020746578742D6F';
wwv_flow_api.g_varchar2_table(199) := '766572666C6F773A20656C6C69707369733B0D0A20206F766572666C6F773A2068696464656E3B20200D0A7D0D0A0D0A2F2A206C61726765202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E74';
wwv_flow_api.g_varchar2_table(200) := '61696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3672656D203020302E3672656D3B0D0A20206D617267696E2D746F703A20302E3372';
wwv_flow_api.g_varchar2_table(201) := '656D3B0D0A20206865696768743A20322E3472656D3B0D0A20206C696E652D6865696768743A20322E3472656D3B0D0A2020666F6E742D73697A653A20312E3372656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C';
wwv_flow_api.g_varchar2_table(202) := '61726765202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E202E72656D6F7665207B0D0A20206C696E652D6865696768743A20322E3872656D3B0D0A20';
wwv_flow_api.g_varchar2_table(203) := '20666F6E742D73697A653A203172656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E6572207B0D0A202070616464696E673A203020302E3372656D20302E3372656D2030';
wwv_flow_api.g_varchar2_table(204) := '2E3372656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E6974656D436F6E7461696E6572202E706C616365686F6C646572207B0D0A202070616464696E673A20302E3272656D20302E3572656D2030';
wwv_flow_api.g_varchar2_table(205) := '20302E3572656D3B0D0A20206C696E652D6865696768743A20322E3472656D3B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A7D0D0A0D0A0D0A2F2A20782D6C61726765202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(206) := '2D2D786C61726765202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3772656D203020302E3772656D3B0D0A';
wwv_flow_api.g_varchar2_table(207) := '20206D617267696E2D746F703A20302E3472656D3B0D0A20206865696768743A203372656D3B0D0A20206C696E652D6865696768743A203372656D3B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A7D0D0A0D0A2E742D466F726D2D666965';
wwv_flow_api.g_varchar2_table(208) := '6C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E202E72656D6F7665207B0D0A2020666F6E742D73697A';
wwv_flow_api.g_varchar2_table(209) := '653A20312E3272656D3B0D0A20206C696E652D6865696768743A20322E3872656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572207B0D0A202070616464696E673A';
wwv_flow_api.g_varchar2_table(210) := '203020302E3472656D20302E3472656D20302E3472656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E6974656D436F6E7461696E6572202E706C616365686F6C646572207B0D0A20207061646469';
wwv_flow_api.g_varchar2_table(211) := '6E673A20302E3272656D20302E3772656D203020302E3772656D3B0D0A20206C696E652D6865696768743A20332E3272656D3B0D0A2020666F6E742D73697A653A20312E3672656D3B0D0A7D0D0A0D0A2F2A0D0A20206572726F7220706F7075700D0A2A';
wwv_flow_api.g_varchar2_table(212) := '2F0D0A0D0A2E66612E6572726F72207B0D0A2020636F6C6F723A207265643B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F722C0D0A2E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(213) := '616E6365644C6F764974656D2E6572726F72202E636F6E7461696E6572207B0D0A202070616464696E673A20313570783B0D0A20206F766572666C6F773A206175746F3B0D0A7D0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(214) := '692D6469616C6F67202E616A61784572726F72202E6572726F72207B0D0A202077686974652D73706163653A207072653B20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A617845';
wwv_flow_api.g_varchar2_table(215) := '72726F72207072652C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6572726F72207072657B0D0A202070616464696E673A20313570783B0D0A2020626F726465723A2031707820736F6C6964207267626128302C302C302C302E';
wwv_flow_api.g_varchar2_table(216) := '33293B0D0A20206261636B67726F756E643A207267626128302C302C302C302E3038293B3B0D0A2020626F726465722D7261646975733A203570783B0D0A20206F766572666C6F772D783A206175746F3B0D0A7D0D0A0D0A0D0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(217) := '656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F7265207B0D0A202070616464696E673A203270783B0D0A2020746578742D7472616E73666F726D3A207570706572636173653B0D0A2020746578742D616C69676E3A2063656E';
wwv_flow_api.g_varchar2_table(218) := '7465723B0D0A2020666F6E742D73697A653A203730253B0D0A20206C65747465722D73706163696E673A203170783B0D0A2020626F726465722D746F702D77696474683A203170783B0D0A2020626F726465722D746F702D7374796C653A20736F6C6964';
wwv_flow_api.g_varchar2_table(219) := '3B0D0A2020626F726465722D746F702D636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E643A207267626128302C302C302C302E3034293B20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70';
wwv_flow_api.g_varchar2_table(220) := '726F6D7074202E6C6F61644D6F72652061207B0D0A2020636F6C6F723A207267626128302C302C302C302E37293B0D0A2020746578742D736861646F773A202D317078202D3170782030707820726762283235352C203235352C203235352C20302E3529';
wwv_flow_api.g_varchar2_table(221) := '3B0D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(141380139258885669)
,p_plugin_id=>wwv_flow_api.id(133975348538976887)
,p_file_name=>'enhancedLovItem.css'
,p_mime_type=>'text/css'
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
