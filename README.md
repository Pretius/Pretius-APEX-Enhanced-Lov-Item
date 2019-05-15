# Oracle APEX Item Plugin - APEX Enhanced LOV item

APEX Enhanced LOV item is powerful combobox to select singular / multiple values in two modes: autocomplete and popup report. The plugin provides high customization possibilities through its attributes.

## Preview

![Preview gif](preview.gif)

## Features at Glance
* The plugin is available under MIT License
* First supported version is Oracle APEX is 5.1+
* The plugin has two modes: Autocomplete and popup report
* Autocomplete custom filtering rules can be defined as SQL where clause
* Autocomplete can render data in custom HTML template returned from JavaScript annonymouse function
* Popup report columns can be configurable: sorting, filtering, aligment and heading text
* The plugin texts are translatable

## Roadmap
* RTL support
* Floating label template
* Mobile devices support
* Show only selected in autocomplete mode
* Support for pasting values (for example from Excell file)
* Different types of pagination in popup report
* Creating new values in autocomplete mode
* Oracle APEX Theme roller integration
* Keyboard shortcuts
* Highlighting search term in autocomplete
* Columns order configurable in JSON
* Interactive GRID support


## Install

### Installation package
* `APEX_ENHANCED_LOV_ITEM.sql` - the plugin package body
* `APEX_ENHANCED_LOV_ITEM.plb` - the plugin package specification
* `item_type_plugin_pl_ostrowskibartosz_apex_enhancedlovitem.sql` - the plugin installation file for Oracle APEX 5.1 or higher
* `example_app.sql` - the plugin example app exported from apex.oracle.com (Oracle APEX 19.1). Application uses `emp` table which is available at apex.oracle.com.

### Install procedure
To successfully install the plugin follow those steps:
1. Install package `APEX_ENHANCED_LOV_ITEM` in Oracle APEX Schema
1. Install the plugin file `item_type_plugin_pl_ostrowskibartosz_apex_enhancedlovitem.sql`
1. Create APEX page item type Enhanced LOV item
1. Provide SQL query and mark display column with alias `d` and return column with alias `r` `*`
1. Explore the plugin capabilities by reading Help Texts within APEX Application Builder
1. Configure the plugin according to your requirements

`*` the plugin uses aliases `d` and `r` to recognize which column should be returned and which is general display column. **Don't use aliases enclosed with quote character!** See example below:

```sql
select
  emp.empno r,
  emp.ename d,
  emp.*
from
  emp 
```

## Plugin Settings

### Component settings

Detailed information about how to use every attribute of the plugin is presented in built-in help texts in APEX Application Builder.

* **General Settings**
  * **Autocomplete** - autocomplete mode is available to end-user
  * **Popup report** - popup report mode is available to end-user
  * **Multiple Selection** - when checked the plugin allows to select multiple values in selected modes

* **Autocomplete Settings**
  * **Use Custom Search Logic**
    * (when not checked) **Default Autocomplete Search** - Select list with 12 options
    * (when checked) **Custom Search Logic** - SQL where clause to be defined by developer
  * **Use Custom Template**
    * (when checked) **Custom Autocomplete Template** - annonymouse JavaScript returning HTML template for each row
  * **Limit Displayed Tags**
    * (when checked) **Number Of Tags** - number of tags (values) to be presented before wrapping others tags in summary tag
  * **Minimal Input Length**
    * (when checked) **Minimal Input Length** - minimal number of characters to be provided by end-user before performing autocomplete search
  * **Rapid Selection** - when checked then user is able to select value from list and write next phrase to search for. When unchecked in singular selection mode it automatically close autocomplete.

* **Popup Settings**
  * **Report Columns Configuration**
    * (when checked) **Report Columns Configuration** - JSON object describing visibility, heading text, sorting, fitlering for each column of popup report
  * **Clicking On Row Selects It** - when checked, end user is able to select values by clicking on row in popup report
  * **Custom Title**
    * (When checked) **Custom Title** - text to be used as title for popup report dialog
  * **Resizable** - when checked, the popup report dialog is resizable by end-user
  * **Draggable** - when checked, the popup report dialog is draggable by end-user
  * **Close On Escape** - when checked, the popup report can be closed by pressing `Escape` key
  * **Rows Per Page** - when checked, end user can force report to show particular number of rows
  * **Search In All Columns** - when checked, end-user is able to filter popup report through all columns
  * **Adjust Height To Report Rows**
    * (when not checked) **Dialog Height** - popup report dialog has static height given by developer
    * (when checked) popup report adjusts dialog height to result rows

* **Report Basic Configuration**
  * **Display "Display" Column** - when checked, column with alias `d` is rendered in popup report
  * **Display "Return" Column** - when checked, column with alias `r` is rendered in popup report

* **Dialog Width** - popup report dialog has static with given by developer

### Plugin Events
#### Atucomplete

* **Autocomplete closed** - Triggered each time autocomplete is closed.
* **Autocomplete data appended** - Triggered each time new data is being loaded after scrolling autocomplete results/
* **Autocomplete data rendered** - Triggered each time first set of data is being rendered
* **Autocomplete error** - Triggered each time autocomplete has error
* **Autocomplete open** - Triggered each time autocomplete is beind opened

Each autocomplete event has access through this.data to following information:

```javascript
{
  "prompt": {
    "container": jQuery object, //autocomplete container
    "header"   : jQuery object, //autocomplete header with action menu
    "body"     : jQuery object, //autocomplete body containing rendered data
    "input"    : jQuery object  //autocomplete search input
  },
  "mask": {
    "selected"     : Array,  //array of already selected data
    "dataAvailable": Boolean //boolean value indicates whether there is data to render
  }
};
```

#### Popup report
* **Popup report closed** - Triggered each time popup report is closed
* **Popup report data rendered** - Triggered each time the popup report renders set of data
* **Popup report error** - Triggered each time the popup report has error
* **Popup report open** - Triggered each time the popup report is opened

Each popup report event has access through this.data to following information:
```javascript
{
  "header"       : jQuery Object, //reference to container for global search, rows per page and pagination
  "container"    : jQuery Object, //reference to parent container of popup report
  "body"         : jQuery Object, //reference to body container of popup report
  "footer"       : jQuery Object, //reference to container for Show only selecte and button Select
  "pagination"   : jQuery Object, //reference to container for pagination
  "search"       : jQuery Object, //reference to input performing search in all columns
  "rowsPerPage"  : jQuery Object, //reference to select list
  "contentTable" : jQuery Object, //reference to result table of data currently rendered
  "state"        : {
    "selected"              : Array,  //Array of currently selected values in popup
    "searchString"          : String, //Currently provided search string
    "searchColumnIdx"       : Number, //Index (starting from 1) of column in SQL Query
    "sortedColumnIdx"       : Number, //Index (starting from 1) of column in SQL Query
    "sortedColumnDirection" : String, //String "asc" / "desc"
    "ajaxRunning"           : Boolean //If true then AJAX is currently running
  }
};
```

## Demo Application
[https://apex.oracle.com/pls/apex/f?p=111865:1](https://apex.oracle.com/pls/apex/f?p=111865:1)

## Changelog

### 1.0.4
* `PL/SQL` all strings inputed via search field is being escaped using ```APEX_ESCAPE.HTML``` - fix for potential XSS
* `PL/SQL` value from session on page load is being escaped using ```APEX_ESCAPE.HTML``` - fix for potential XSS
* `PL/SQL` Rows in which `r` columns is null is not available in `autocomplete` and `popup` mode - value in column `r` must be unique and can't be null
* `JS` Typo in `PAELI_POPUP_TEXT_ROWS_SELECTED` has been fixed
* `Example application` supporting objects has been updated (install script fixed, deinstall script created)


### 1.0.3
* `Plugin` `Rapid Selection` attribute is now dependent on the plugin selection mode (multiple / singular). In singular selection unchecked `Rapid Selection` attribute results in closing autocomplete after selecting value,
* `Plugin` `Custom Autocomplete Template` attribute help text has been updated with reference to `this.data.selected` which indicates that particular row is already selected by end-user,
* `Plugin` new component attribute `Autocomplete Rows To Fetch` is available to define,
* `Plugin` new component attribute `Autocomplete Results Max Height` is available to define,
* `Plugin` in case of new component attributes new translatable text `PAELI_PROMPT_TEXT_LOAD_MORE` is now available.
* `PL/SQL` autocomplete pagination (lazy loading) has been fixed to return given number of rows (previously it was duplicating last row from requested set of data)
* `JavaScript` the plugin mask (apex item visualization) is focusable and support `keypress` and `keydown` events when focused. 
  * pressing `Down Arrow Key` results in opening autocomplete
  * pressing any letter key results in opening autocomplete and peforming search

### 1.0.1, 1.0.2
minor fixes for first release

### 1.0.0 
Initial Release

## License
MIT
