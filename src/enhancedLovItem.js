$.widget('pretius.enhancedLovItem', {
//
//
  C_VALUE_SEPARATOR                    : ':',
  C_AJAX_STATUS_SUCCESS                : 'SUCCESS',
  C_AJAX_STATUS_ERROR                  : 'ERROR',
  C_POPUP_SEARCH_PLACEHOLDER           : 'Enter a search term',
  C_POPUP_BTN_SELECT_TEXT              : 'Select',
  C_POPUP_SHOW_SELECTED_LABEL          : "Show only selected",
  C_POPUP_TEXT_ROWS_SELECTED           : "All results (%0) on this page has been selected.",
  C_POPUP_TEXT_NO_DATA_FOUND_SEARCH    : 'No data found for search term "%0".',
  C_POPUP_TEXT_NO_DATA_FOUND_QUERY     : 'Dictionary has no data to render.',
  C_POPUP_TEXT_CLEAR_FILTERING         : 'Click <a href="javascript: void(0)" class="clearFiltering">here</a> to clear filtering.',
  C_POPUP_TEXT_UNSAVED_CHANGES         : 'You have selected %0 values. Closing without saving will not save selected values.',
  C_POPUP_TEXT_SEACH_IN_SELECTED       : 'You have filtered %0 row(s) from %1 selected row(s). </br>Click <a href="javascript: void(0)" class="showSelected">here</a> to get back to all selected rows.',
  C_POPUP_TEXT_FILTERED_INFO           : '%0 results found for search term "%1". ',
  C_POPUP_TEXT_EXTRA_VALUE             : 'Value "%0" is not within dictionary.',
  C_PROMPT_MENU_EXPAND_TITLE           : 'Show or hide all tags',
  C_PROMPT_MENU_SORT_TITLE             : 'Sort tags',
  C_PROMPT_MENU_CLEAR_TITLE            : 'Clear all selected values',
  C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_X : 'Please enter %0 or more characters.',
  C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_0 : 'Start typing to get results.',
  C_PROMPT_TEXT_NO_DATA_FOUND          : 'No data found.',
  C_PROMPT_TEXT_SEARCHING              : 'Searching...',
  C_PROMPT_TEXT_RAPID_SELECTION        : 'Start typing to select more...',
  C_PROMPT_TEXT_LOAD_MORE              : 'Load more...',
  C_ERROR_DEBUG_OFF                    : 'Please contact application administrator for more information.'+"\n"+'Detailed information available in debug mode.',
  C_TAGS_LIMITED_OTHERS                : 'and %0 more...',
  C_TAGS_LIMITED_0                     : '%0 selected',
  C_POPUP_PAGINATION_PREV              : 'Previous',
  C_POPUP_PAGINATION_NEXT              : 'Next',
  C_POPUP_HEADER_SORT_ASC_TITLE        : 'Sort ascending',
  C_POPUP_HEADER_SORT_DESC_TITLE       : 'Sort descending',
  C_POPUP_TEXT_SEARCHING               : 'Waiting for results...',

  _create: function(){
    var 
      popupColumnSettingsJson = undefined,
      isBasicConfiguration = false;

    this.logPrefix = '# ('+this.element.get(0).id+') '+this.options.plugin.name+':';
    apex.debug.log(this.logPrefix, '_create', 'options', this.options, this);

    this._super( this.options );
    this._applyTranslations();

    this.pluginStopped = false;

    if (
      //popup settings is empty
      this.options.attributes.popupSettings == null
      || (
        //popup settings is not empty but checkbox is not checked
        this.options.attributes.popupSettings != null
        && this.options.attributes.popupSettings.indexOf('RCC') == -1
      )
    ) {
      isBasicConfiguration = true;
    }

    if ( 
      this.options.attributes.popupSettings != null 
      && this.options.attributes.popupSettings.indexOf('CT') > -1
    ) {
      popupTitleText = this.options.attributes.popupTitleText
    }
    else {
      popupTitleText = this.options.item.plain_label;
    }


    this.pluginSettings = {
      "isDebugOn"                : this.options.debug,
      "displayExtra"             : this.options.item.lov_display_extra,
      "popupSearchDebounceTime"  : 300,
      "isAutocompleteAvailable"  : this.options.attributes.settings != null && this.options.attributes.settings.indexOf('AUTOCOMPLETE') > -1,
      "isPopupReportAvailable"   : this.options.attributes.settings != null && this.options.attributes.settings.indexOf('POPOUP_REPORT') > -1,
      "isMultipleSelection"      : this.options.attributes.settings != null && this.options.attributes.settings.indexOf('MS') > -1,
      "popup": {
        "width"                  : this.options.attributes.popupWidth,
        "height"                 : this.options.attributes.popupHeight,
        "title"                  : popupTitleText,
        "rowsPerPage"            : 10,
        "isReportBasicConf"      : isBasicConfiguration,
        "isReportAdvancedConf"   : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('RCC') > -1,
        "isDisplayColumnVisible" : this.options.attributes.popupReportBasicConf != null && this.options.attributes.popupReportBasicConf.indexOf('DDC') > -1,
        "isReturnColumnVisible"  : this.options.attributes.popupReportBasicConf != null && this.options.attributes.popupReportBasicConf.indexOf('DRC') > -1,
        "clickOnRowSelectsIt"    : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('CORSI') > -1,
        "draggable"              : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('DRAGGABLE') > -1,
        "resizable"              : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('RESIZABLE') > -1,
        "closeOnEscape"          : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('COE') > -1,
        "showRowsPerPage"        : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('RPP') > -1,
        "searchInAllColumns"     : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('SIAC') > -1,
        "adjustHeightToResults"  : this.options.attributes.popupSettings != null && this.options.attributes.popupSettings.indexOf('AHTRR') > -1
      },
      //
      "prompt": {
        "maxHeight"              : parseInt(this.options.attributes.autoCompleteMaxHeight),
        "navigationDebounceTime" : 10,
        "debounceTime"           : 200, //TBD atrybut pluginu
        "rowsPerPage"            : parseInt(this.options.attributes.autoCompleteRows2Show), 
        "areTagsLimited"         : this.options.attributes.autoCompleteSettings != null && this.options.attributes.autoCompleteSettings.indexOf('LDT') > -1,
        "isCustomTemplate"       : this.options.attributes.autoCompleteSettings != null && this.options.attributes.autoCompleteSettings.indexOf('UCT') > -1,
        "tagsNo"                 : this.options.attributes.autoCompleteTagsNo,
        "template"               : this.options.attributes.autoCompleteSettingsTemplate,
        "isMinimalInputLength"   : this.options.attributes.autoCompleteSettings != null && this.options.attributes.autoCompleteSettings.indexOf('MIL') > -1,
        "minimalInputLength"     : this.options.attributes.autoCompleteMinInputLength,
        "isRapidSelection"       : this.options.attributes.autoCompleteSettings != null && this.options.attributes.autoCompleteSettings.indexOf('RS') > -1
        
      }
    };

    this.inputCss = {
      "borderColor" : this.element.css('borderColor'),
      "fontSize"    : this.element.css('fontSize'),
      "lineHeight"  : this.element.css('lineHeight')
    };
    if ( this.options.item.lov_cascade_parent_items != undefined ) {
      $('#'+this.options.item.lov_cascade_parent_items).on('change', $.proxy(this._cascadingLovItem, this));
    }
    
    
    //create mask handling events and displaying tags
    this.mask = this._maskCreateNew();

    this.mask = $.extend( this.mask, {
      "state": {
        "xhr"                 : undefined,
        "isVisible"           : false,
        "currentSearchText"   : '',
        "lastFetchedPage"     : null,
        "totalCount"          : 0,
        "ajaxRunning"         : false,
        "currentSelection"    : undefined,
        "areResultsAvailable" : false,
        "selected"            : [],
        "tags"                : [],
        "sorted"              : undefined,
        "disabled"            : false,
        "extraValues"         : [],
        "error"               : false
      }
    } );    

    this.prompt = {
      "customTemplateFunction": this._promptPrepateCustomTemplateFunction(),
      "container"             : undefined,
      "fixBorder"             : undefined,
      "header"                : undefined,
      "body"                  : undefined,
      "input"                 : undefined,
      "isVisible"             : false
    };


    //to be changed to private method
    if ( this.pluginSettings.isPopupReportAvailable ) {
      if ( this.pluginSettings.popup.isReportAdvancedConf ) {
        try{
          popupColumnSettingsJson = JSON.parse(this.options.attributes.popupColumnSettings);
        } catch(error) {
          this._maskAjaxStateButtonSetError({
            "addInfo"  : error.name+': '+error.message,
            "error"    : 'Invalid plugin "'+this.options.plugin.name+'" configuration.',
            "techInfo" : [
              {
                "name": 'Reason',
                "value": 'Parsing JSON object for popup report failed: inavlid JSON object.'
              },
              {
                "name": 'JSON object to parse',
                "value": this.options.attributes.popupColumnSettings
              }
              
            ]
          }, true);

          this._maskAjaxStateButtonError( );
        }
      }

      this.popup = {
        "defaultReportSettings": {
          //"heading": "",
          "thAlign": "left",
          "tdAlign": "left",
          "visible": true,
          "sort"   : true,
          "filter" : true
        },
        "headers"  : popupColumnSettingsJson,
        "container": this._popupCreateNew(),
        "headerActionContainer": undefined,
        "state": {
          "informationText"           : undefined,
          "informationTemplate"       : undefined,
          "selecting"                 : false, //to recognize manual select and close
          "xhr"                       : undefined,
          "isVisible"                 : false,
          "lastFetchedPage"           : null,
          "searchString"              : undefined,
          "searchStringOnFocus"       : undefined,
          "sortedColumnIdx"           : null,
          "sortedColumnDirection"     : 'asc',
          "ajaxRunning"               : false,
          "searchColumnIdx"           : undefined,
          "ajaxDataFetchedCount"      : 0,
          "ajaxDataTotalCount"        : undefined,
          "ajaxStatus"                : undefined,
          "ajaxCurrentPageData"       : [],
          "ajaxSelectedData"          : [],
          "ajaxCurrentPageRownumStart": undefined,
          "ajaxCurrentPageRownumEnd"  : undefined,
          "cache"                     : [], /* do dopisania kiedyś */
          "selected"                  : [],
          "selectedHash"              : 0
        }
      };

      this.popup = $.extend( this.popup, {
        "dialogHeader"          : this.popup.container.parent().find('.ui-dialog-titlebar'),
        "header"                : this.popup.container.find('.header'),
        "informationContainer"  : this.popup.container.find('.information'),
        "informationText"       : this.popup.container.find('.information .text'),
        "body"                  : this.popup.container.find('.body'),
        "footer"                : this.popup.container.find('.footer'),
        "showSelectedContainer" : this.popup.container.find('.footer-showSelected'),
        "stickyHeaders"         : undefined,
        "search"                : this.popup.container.find('.searchContainer :input'),
        "selectAllCheckbox"     : undefined,
        "showSelectedCheckbox"  : this.popup.container.find('.footer :checkbox'),
        "showSelectedLabel"     : this.popup.container.find('.footer label'),
        "clear"                 : this.popup.container.find('.searchContainer .clear'),
        "select"                : this.popup.container.find('.select'),
        "paginationContainer"   : this.popup.container.find('.paginationContainer'),
        "paginationPrevPage"    : this.popup.container.find('.prev'),
        "paginationNextPage"    : this.popup.container.find('.next'),
        "paginationCurrent"     : this.popup.container.find('.current'),
        "rowsPerPage"           : this.popup.container.find('select'),
        "contentTable"          : undefined,
        "rowsPerPageContainer"  : this.popup.container.find('.rowsPerPageContainer')
      } );

      this.popup.body.on('scroll', $.proxy( this._popupScrollCallback, this ) );   
      this.popup.clear.on('click', $.proxy( this._popupSearchClear, this, true ) );
      
      this.popup.paginationPrevPage.on('click', $.proxy( this._popupPaginationPrevPage, this ));
      this.popup.paginationNextPage.on('click', $.proxy( this._popupPaginationNextPage, this ));
      this.popup.rowsPerPage.on('change', $.proxy( this._popupChangeRowsPerPage, this ) )

      this.popup.showSelectedCheckbox.on('change', $.proxy( this._popupShowSelectedCheckboxChange, this ) );

      if ( this.pluginSettings.popup.clickOnRowSelectsIt ) {
        this.popup.container.on('click', 'td', $.proxy( this._popupClickOnCell, this) );
      }
      
      this.popup.container
        .on('click',  '.fakeCheckbox',            $.proxy( this._popupFakeCheckboxClick,          this) )
        .on('click',  'button.select',            $.proxy( this._popupSelectAndClose,             this) )
        .on('click',  'a.showSelected',           $.proxy( this._popupShowSelectedCheckboxChange, this) )
        .on('click',  'a.clearFiltering',         $.proxy( this._popupClearFiltering,             this) )
        .on('click',  '.fakeRadio',               $.proxy( this._popupFakeRadioClick,             this) )
        .on('change', 'th:first-child :checkbox', $.proxy( this._popupThCheckboxChange,           this) )
        .on('change', 'td:first-child :checkbox', $.proxy( this._popupTdCheckboxChange,           this) )
        .on('change', 'td:first-child :radio',    $.proxy( this._popupTdRadioChange,              this) );

      this.popup.search
        .on('keyup', this._debounce($.proxy( this._popupSearchKeyUp, this, null, null), this.pluginSettings.popupSearchDebounceTime))
        .on('keyup', $.proxy( this._maskKeyUpManageIcons, this) )
        .on('focus', $.proxy( this._popupSearchFocus, this ) );


    }

    this.mask.itemContainer
      .on('click',    $.proxy( this._promptSearchInputFocusHandler, this ) )
      .on('focus',    $.proxy( this._maskHandleFocus, this ) )
      .on('blur',     $.proxy( this._maskHandleBlur, this ) )
      .on('keypress', $.proxy( this._maskHandleKeyPress, this ) )
      .on('keydown',  $.proxy( this._maskHandleKeyDown, this ) );

    //listen to event click on "x" icon in tag
    this.mask.tagsContainer.on('click', '.remove', $.proxy( this._maskRemoveTagFromDOM, this ) );

    this.mask.popupButton.on('keydown', $.proxy( this._maskPopupButtonKeyDown, this ) )

    this.widgetUniqueId  = $('<div></div>').uniqueId().attr('id');

    apex.debug.log(this.logPrefix, '_create', 'Plugin instance created. Unique id = '+this.widgetUniqueId, this.options);

    if ( this.pluginSettings.isDebugOn ) {
      this._createMaskDebugButton();  
    }

    if ( this.element.val().length > 0 && !this.pluginStopped ) {
      this._getOnLoadLov( this.element.val() );
    }

    this._integrateWithApexApi();

    $( window ).resize($.proxy( function(){
      apex.debug.log(this.logPrefix, 'window resized, reposition prompt');

      if ( this.prompt.isVisible ) {
        
        this._promptReposition();
      }
    }, this));

    this.element.after( this.mask.container );
    this.element.hide();
    this.element.on('apexrefresh', $.proxy(this._manualRefreshCallback, this));

    apex.debug.log(this.logPrefix, 'pluginSettings', this.pluginSettings);    

  },
// jQuery widget native methods
//
  _destroy: function(){
  },
//
  _setOption: function( pKey, pValue ) {
    if ( pKey === "value" ) {
      pValue = this._constrain( pValue );
    }

    this._super( pKey, pValue );
  },  
  options: function( pOptions ){
    this._super( pOptions );
  },
//
  _setOptions: function( pOptions ) {
    this._super( pOptions );
  },
  _cascadingLovItem: function(){
    apex.debug.log(this.logPrefix, '_cascadingLovItem');

    var
      ajaxData = {
        "x01": "CASCADINGLOV",
        "pageItems": '#'+this.options.item.lov_cascade_parent_items
      },
      ajaxOptions = {
        "beforeSend": $.proxy(function(){
          this._maskAjaxStateButtonRunning();
        }, this),
        "complete": $.proxy(function(){
          this._maskAjaxStateButtonHide();          
        },this)
      };

    apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
  },
  _triggerEvent: function( pEventName, pData ) {
    apex.debug.log(this.logPrefix, '_triggerEvent');

    apex.event.trigger( this.element.get(0), pEventName, pData );
  },
  _manualRefreshCallback: function(){
    apex.debug.log(this.logPrefix, '_manualRefreshCallback');

    this._getOnLoadLov();
  },
  _getColumnIdxByColumnName: function( pColumnName ){
    apex.debug.log(this.logPrefix, '_getColumnIdxByColumnName', 'pColumnName', pColumnName, 'columns', this.options.columns);

    var 
      returnValue = undefined;

    for (var i in this.options.columns) {
      if ( this.options.columns[i].COLUMN_NAME == pColumnName) {
        apex.debug.log(this.logPrefix, '_getColumnIdxByColumnName column "'+pColumnName+'" found, return its IDX.');
        returnValue = this.options.columns[i].IDX;
        break;
      }
    }

    if ( returnValue == undefined ) {
      apex.debug.log(this.logPrefix, '_getColumnIdxByColumnName column "'+pColumnName+'" not found, return 1st column.', this.options.columns[0].IDX);
      returnValue = this.options.columns[0].IDX;
    }

    apex.debug.log(this.logPrefix, '_getColumnIdxByColumnName returns "'+returnValue+'"');

    return returnValue;

  },
  printFunctionToConsole: function( pFunctionBody ){
    apex.debug.log(this.logPrefix, 'printFunctionToConsole');

    var array = pFunctionBody.split("\n");

    for ( var i = 0; i < array.length; i++ ) {
      apex.debug.info(this.logPrefix, '#', array[i]);  
    }
  },
  _promptPrepateCustomTemplateFunction: function(){
    apex.debug.log(this.logPrefix, '_promptPrepateCustomTemplateFunction');

    var func;

    try {
      func = new Function(
        "pRow",
        "this.data = pRow;\n"+
        '//apex.debug.log("'+this.logPrefix+'", "promptCustomTemplate", pRow);'+"\n"+
        this.pluginSettings.prompt.template
      );

      this.printFunctionToConsole( func.toString() );

      apex.debug.log(this.logPrefix, '_promptPrepateCustomTemplateFunction', "function created");
    
    } catch(error) {
      apex.debug.log(this.logPrefix, '_promptPrepateCustomTemplateFunction', "function can't be created: "+error.message);
      this.printFunctionToConsole( this.pluginSettings.prompt.template );

      this._maskAjaxStateButtonSetError({
        "addInfo"  : 'Function returning prompt template has errors.',
        "error"    : 'Invalid plugin "'+this.options.plugin.name+'" configuration.',
        "techInfo" : [
          {
            "name": error.name,
            "value": error.message
          },
          {
            "name": 'Function',
            "value": this.pluginSettings.prompt.template
          }

          
        ]
      }, true);

      this._maskAjaxStateButtonError( );
    }
    
    
    return func;

  },
  _applyTranslations: function(){
    var translations = this.options.attributes.translations;

    if ( translations.length > 0 ) {
      for ( var i in translations ) {
        apex.debug.log(this.logPrefix, '_applyTranslations', translations[i].TRANSLATABLE_MESSAGE, translations[i].MESSAGE_TEXT);
        this[translations[i].TRANSLATABLE_MESSAGE.replace('PAELI_', 'C_')] = translations[i].MESSAGE_TEXT;
      }
    }
  },
  _integrateWithApexApi: function(  ) {
    apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0));

    var 
      pOptions = {
        "setValue": $.proxy(function( pValue, pDisplayValue ) {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', 'setValue', 'pValue="'+pValue+'"', 'pDisplayValue="'+pDisplayValue+'"');

          //if Suppress Change event of dynamic Set value action is set to NO
          if ( !arguments[2] ) {
            apex.debug.log(this.logPrefix, '_integrateWithApexApi', 'setValue', 'Suppress Change Event is set to "No". Change event will be doubled.');
          }

          if ( pValue.length == 0 ) {
            this._promptEmptyTags();
            this._promptEmptyMask();
            this.element.val(null);
          }
          else {
            //true -> trigger change event
            this._getOnLoadLov( pValue );
          }
          

        }, this),        
        //Specify a value that to be used to determine if the item is null. 
        //This is used when the item supports definition of a List of Values, 
        //where a developer can define a Null Return Value for the item and 
        //where the default item handling needs to know this in order to assert if the item is null or empty.
        nullValue:  "",
        "enable": $.proxy(function() {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'enable');

          this._enable();
        }, this),
        "disable": $.proxy(function() {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'disable');

          this._disable();
        }, this),
        "afterModify": $.proxy(function(){
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'afterModify', this.element.val());
          // code to always fire after the item has been modified (value set, enabled, etc.)
        }, this),
        "loadingIndicator": $.proxy(function( pLoadingIndicator$ ){
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'loadingIndicator');
          // code to add the loading indicator in the best place for the item
          return pLoadingIndicator$;
        }, this),       
        

        "setFocusTo": $.proxy(function(){
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'setFocusTo');
          //tbd, w zaleznosci od trybu

          return this.mask.popupButton;
        }, this),
        "setStyleTo": this.mask.container,    
        "getValue": $.proxy(function() {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'getValue');
          
          return this.element.val();

        }, this),
        "show": $.proxy(function() {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'show');
          // code that shows the item type
        }, this),
        "hide": $.proxy(function() {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'hide');
          // code that hides the item type
        }, this),
        "addValue": $.proxy(function( pValue ) {
          apex.debug.log(this.logPrefix, '_integrateWithApexApi', this.element.get(0).id, 'addValue', pValue);
          // code that adds pValue to the values already in the item type
        }, this),
      };

    apex.widget.initPageItem( this.element.attr('id'), pOptions);    
  },
//  
// Public plugin methods
//

//  
// Private plugin methods
//
  _disable: function(){
    apex.debug.log(this.logPrefix, '_disable');

    this.element.prop( "disabled", true );
    this.mask.state.disabled = true;
    this.mask.container.addClass('disabled');
    this.mask.popupButton.prop('disabled', true);
  },
  _enable: function(){
    apex.debug.log(this.logPrefix, '_enable');

    this.element.prop( "disabled", false );
    this.mask.state.disabled = false;
    this.mask.container.removeClass('disabled');
    this.mask.popupButton.prop('disabled', false);
  },
  _createMaskDebugButton: function(){
    apex.debug.log(this.logPrefix, '_createMaskDebugButton');


    var button = $('<button class="debugAutocomplete a-Button a-Button--popupLOV"><span class="fa fa-info"></span></button>').click($.proxy( function(pEvent){
      pEvent.preventDefault();

      apex.debug.log(this.logPrefix, 'debug prompt', this.mask);

    }, this ));

    button.attr('title', 'Writes to console autocomplete state');

    //this.element.after( button );
    this.mask.popupButton.after( button );

  },
  _getExtraValues: function( pValuesSent, pDataReturned ){
    apex.debug.log(this.logPrefix, '_getExtraValues( '+this.element.get(0).id+' )');
    apex.debug.log(this.logPrefix, '_getExtraValues', 'pValuesSent', pValuesSent);
    apex.debug.log(this.logPrefix, '_getExtraValues', 'pDataReturned', pDataReturned.length, pDataReturned);

    var extraValues = $.extend([], pValuesSent).filter(function (element) {
      return element != null && element.length > 0;
    });

    for ( var i=0; i < pDataReturned.length; i++ ) {

      indexOf = extraValues.indexOf( pDataReturned[i].R.toString() );

      if ( indexOf > -1 ) {
        extraValues.splice( indexOf, 1 );
        apex.debug.log(this.logPrefix, '_getExtraValues', 'removing '+pDataReturned[i].R.toString()+' from ', extraValues);
      }
      else {
        apex.debug.log(this.logPrefix, '_getExtraValues', 'looking for '+pDataReturned[i].R.toString()+' in ', extraValues);
      }
    }

    apex.debug.log(this.logPrefix, '_getExtraValues', 'extraValues', extraValues);    

    return extraValues;
  },
  //fa-exclamation-triangle
  _maskPopupButtonHide: function(){
    apex.debug.log(this.logPrefix, '_maskPopupButtonHide');
    
    this.mask.popupButton.hide();
  },
  _maskPopupButtonShow: function(){
    apex.debug.log(this.logPrefix, '_maskPopupButtonShow');
    
    this.mask.popupButton.show();
  },
  _maskAjaxStateButtonHide: function(){
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonHide');

    
    this._maskPopupButtonShow();
    this.mask.ajaxStateButton.button.hide();
  },
  _maskAjaxStateButtonSetError: function( pObject, pStopPlugin ){ 
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonSetError');
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonSetError', 'pObject', pObject);
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonSetError', 'pStopPlugin', pStopPlugin);
    
    $.extend(this.mask.ajaxStateButton, {"errorObject":pObject});

    //error occured but don't have to stop plugin usage
    this.mask.state.error = true;

    if ( pStopPlugin )  {
      apex.debug.log(this.logPrefix, '_maskAjaxStateButtonSetError stop plugin!');  
      this.pluginStopped = true;  
      this.mask.state.disabled = true;
    }
  },
  _maskAjaxStateButtonDisplayError: function( ){
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonDisplayError');

    var 
      container   = $('<div class="container"></div>'),
      divError    = $('<div class="error"></div>'),
      divMessage  = $('<div class="message"></div>'),
      divTechInfo = $('<div></div>'),
      pre = $('<pre></pre>'),
      options  = {
        "dialogClass"   : "pretius--enhancedLovItem error",
        "autoOpen"      : true,
        "appendTo"      : 'body',
        "modal"         : true,
        "position"      : {
          "my": "center", 
          "at": "center", 
          "of": window
        },
        "title"         : this.pluginSettings.popup.title,
        "width"         : 800,
        "minWidth"      : 500,
        "height"        : 541,
        "minHeight"     : 255,
        "resizable"     : false,
        "draggable"      : false,
        "closeOnEscape ": true,
        "open"          : $.proxy( function(){
          $('body').addClass('apex-no-scroll');                  
        }, this ),
        "beforeClose"   : $.proxy( function(){
          $('body').removeClass('apex-no-scroll');                  
        }, this )
      };      

    if ( this.pluginStopped == false ) {
      
      this._maskPopupButtonShow();
      this.mask.ajaxStateButton.button.hide();
    }

    if ( this.pluginSettings.isDebugOn ) {
      if ( 
        this.mask.ajaxStateButton.errorObject.techInfo != undefined 
        && this.mask.ajaxStateButton.errorObject.techInfo instanceof Array
      ) {
        for (var i=0; i < this.mask.ajaxStateButton.errorObject.techInfo.length; i++) {
          pre.append( this.mask.ajaxStateButton.errorObject.techInfo[i].name+': '+this.mask.ajaxStateButton.errorObject.techInfo[i].value );
          pre.append("\n");
        }
      }
      else if ( this.mask.ajaxStateButton.errorObject.techInfo != undefined ){
        pre.append( this.mask.ajaxStateButton.errorObject.techInfo );
      }
    }
    else {
      pre.append(this.C_ERROR_DEBUG_OFF);
    }

    divMessage.append( this.mask.ajaxStateButton.errorObject.error );
    divError.append( this.mask.ajaxStateButton.errorObject.addInfo );

    divTechInfo.append(pre);
    

    container
      .append(divMessage)
      .append(divError)
      .append(divTechInfo)
      .dialog( options );

  },
  _maskAjaxStateButtonError: function( ){
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonError', this.pluginStopped);

    this._maskPopupButtonHide();
    

    this.mask.ajaxStateButton.button.find('.icon')
      .removeClass()
      .addClass('icon fa fa-exclamation-triangle fa-anim-flash error');

    this.mask.ajaxStateButton.button.show();

    if ( this.pluginStopped ) {
      this.mask.ajaxStateButton.button.on( 'click', $.proxy( this._maskAjaxStateButtonDisplayError, this ) );
    }
    else {
      this.mask.ajaxStateButton.button.one( 'click', $.proxy( this._maskAjaxStateButtonDisplayError, this ) );  
    }
    
  },
  _maskAjaxStateButtonRunning: function(){
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonRunning');

    this._maskPopupButtonHide();
    

    this.mask.ajaxStateButton.button.find('.icon')
      .removeAttr('class')
      .addClass('icon fa fa-refresh fa-anim-spin');

    this.mask.ajaxStateButton.button.show();
  },
  _maskAjaxStateButtonShow: function(){
    apex.debug.log(this.logPrefix, '_maskAjaxStateButtonShow');

    this.mask.ajaxStateButton.button.show();
  },
  _getOnLoadLov: function( pValue ){
    apex.debug.log(this.logPrefix, '_getOnLoadLov');

    var
      mode     = pValue == null || pValue == undefined ? 'GETSESSIONSTATE' : 'GETONLYSELECTED',
      values   = pValue == null || pValue == undefined ? [] : pValue.split(this.C_VALUE_SEPARATOR),
      ajaxData = {
        "x01": mode,  //tryb
        "f01": values //selected values
      },
      ajaxOptions = {
        
        "beforeSend" : $.proxy(function( pJqXHR, pSettings ){
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'before send');

          this._maskAjaxStateButtonRunning();

        }, this),
        "success"    : $.proxy(function( pMode, pValuesSent, pData, pTextStatus, pJqXHR){
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'success', 'pMode', pMode);
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'success', 'pValuesSent', pValuesSent);
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'success', 'pData', pData);
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'success', 'pTextStatus', pTextStatus);
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'success', 'pJqXHR', pJqXHR);

          var 
            objectTemp,
            valuesExtra;

          pData.data.sort( this._sortJson( "D", "asc" ) );
          this.mask.state.sorted = "asc";

          this._promptEmptyTags();
          this._promptEmptyMask();

          for ( var i=0; i < pData.data.length; i++ ) {
            
            objectTemp = {
              "value"  : pData.data[i].R.toString(),
              "display": pData.data[i].D
            };

            this._maskStateSelectedAdd( objectTemp, false, false );
          }

          //if ( pMode == 'GETONLYSELECTED' ) {
          if ( pMode == 'GETSESSIONSTATE' ) {
            pValuesSent = pData.session;
          }

          if ( 
            this.pluginSettings.displayExtra 
            && pValuesSent != undefined
            && pValuesSent.length > 0 
          ) {

            valuesExtra = this._getExtraValues( pValuesSent.split(this.C_VALUE_SEPARATOR), pData.data );

            for ( var i=0; i < valuesExtra.length; i++ ) {
              objectTemp = {
                "value"  : valuesExtra[i],
                "display": valuesExtra[i]
              };

              this._maskStateSelectedAdd( objectTemp, false, true );
            }
          }
          //}
    
          this._promptRenderTags();

          this._promptApplyValues( false );
          this._maskAjaxStateButtonHide();

          //when APEX item contains multiple values but
          //it is configured to work with singular selection
          if ( 
            this.pluginSettings.isMultipleSelection == false
            && this.mask.state.selected.length > 1
          ) {
            this._maskAjaxStateButtonSetError({
              "error"    : 'Invalid input value according to its configuration.',
              "addInfo"  : 'The item is defined to support singular selection but session contains multiple values.',
              "techInfo" : 'Check session value for APEX item "'+this.element.attr('id')+'" and inspect processes handling session value of item.'
            }, false);

            this._maskAjaxStateButtonError();

            this._throwErrorText( 
              'Invalid input value according to its configuration.'+
              'The item is defined to support singular selection but session contains multiple values.'+
              'Check session value for APEX item "'+this.element.attr('id')+'" and inspect processes handling session value of item.'
            );
          }

        }, this, mode, pValue ),
        "error"      : $.proxy(function(pJqXHR, pTextStatus, pErrorThrown){
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'error');
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'pJqXHR', pJqXHR);
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'pTextStatus', pTextStatus);
          apex.debug.log(this.logPrefix, '_getOnLoadLov', 'pErrorThrown', pErrorThrown);

          //errorMessage
          if ( this.element.val().length > 0 ) {
            this._maskDrawTagsFromInvalidValues();
          }

          this._maskAjaxStateButtonSetError({
            "addInfo"  : pJqXHR.responseJSON.addInfo,
            "error"    : pJqXHR.responseJSON.error,
            "techInfo" : pJqXHR.responseJSON.techInfo
          });

          this._maskAjaxStateButtonError();

          this._throwErrorText( pErrorThrown );
          
        }, this),
        "complete"   : $.proxy(function(){

        }, this)
      };    

    apex.debug.log(this.logPrefix, '_getOnLoadLov', 'values to get tags',values);
    
    apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
  },
  /*
    POPUP
  */
  _maskDrawTagsFromInvalidValues: function(){
    apex.debug.log(this.logPrefix, '_maskDrawTagsFromInvalidValues');

    var values = this.element.val().split(this.C_VALUE_SEPARATOR);

    if ( values.length > 0 ) {
      for (var i in values) {
        //_promptTagsAddNew: function( pDisplay, pReturn, pIsExtraValue ){
        this._promptTagsAddNew( values[i], values[i], true );
      }

      this._promptPlaceHolderHide();
    
    }
      
  },
  _popupSelectedGetValueArr: function(){
    apex.debug.log(this.logPrefix, '_popupSelectedGetValueArr');
    var arr = [];

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      if ( !this.popup.state.selected[i].isAPEXNullValue ) {
        arr.push( this.popup.state.selected[i].value );  
      }
      
    }

    apex.debug.log(this.logPrefix, '_popupSelectedGetValueArr', arr);
    return arr;
  },
  _popupAjaxGetOnlySelected: function(){
    apex.debug.log(this.logPrefix, '_popupAjaxGetOnlySelected');

    var
      ajaxData = {
        "x01": 'GETONLYSELECTED',               //tryb
        "f01": this._popupSelectedGetValueArr() //selected values
      },
      ajaxOptions = {
        "beforeSend" : $.proxy(this._popupAjaxBeforeSend, this),
        "success"    : $.proxy(this._popupAjaxSuccess,    this),
        "error"      : $.proxy(this._popupAjaxError,      this),
        "complete"   : $.proxy(this._popupAjaxComplete,   this)
      };

    //tbd
    this.popup.state.xhr = apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );

  },
  _popupAjaxPerform: function( pPage, pSortByColumnIdx, pDirection, pSearchString, pSearchColumn ){
    apex.debug.log(this.logPrefix, '_popupAjaxPerform');

    var
      searchString = pSearchString,
      ajaxData = {
        "x01": 'POPUP',                         //tryb
        "x02": this._popupGetRowsPerPage(),     //rows per page
        "x03": pSearchString,                   //search string
        "x04": pPage == undefined ? 1 : pPage,  //page
        "x05": pSortByColumnIdx,
        "x06": pDirection,
        "x07": pSearchColumn
      },

      ajaxOptions = {
        "beforeSend" : $.proxy(this._popupAjaxBeforeSend, this),
        "success"    : $.proxy(this._popupAjaxSuccess, this),
        "error"      : $.proxy(this._popupAjaxError, this),
        "complete"   : $.proxy(this._popupAjaxComplete, this)
      };

    if ( this.popup.state.ajaxRunning ) {
      this._popupAjaxAbort();
      setTimeout( $.proxy( this._popupAjaxPerform, this, pPage, pSortByColumnIdx, pDirection, pSearchString, pSearchColumn ), 300 );
      return void(0);
    }


    //it will be set again after ajax will succeed
    this.popup.state.searchString          = pSearchString;
    this.popup.state.lastFetchedPage       = pPage == undefined ? 1 : pPage;
    this.popup.state.sortedColumnIdx       = pSortByColumnIdx;
    this.popup.state.sortedColumnDirection = pDirection;
    this.popup.state.searchColumnIdx       = pSearchColumn;


    this.popup.state.xhr = apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );

  },
  _popupAjaxBeforeSend: function(  pJqXHR, pSettings ) {
    apex.debug.log(this.logPrefix, '_popupAjaxBeforeSend');

    this.popup.state.ajaxRunning = true;
    this.popup.contentTable = undefined;
    this.popup.body.addClass('searching');

    if ( this.popup.state.isVisible && this.popup.headerActionContainer != undefined) {
      this._popupReportHeaderWidgetHide();  
    }

    this._popupReportRenderSearching(0);
    
  },
  _popupAjaxDataFindIndexByReturnValue: function( pData, pReturnValue ) {
    apex.debug.log(this.logPrefix, '_popupAjaxDataFindIndexByReturnValue', 'pReturnValue', pReturnValue);

    for ( var i=0; i < pData.data.length; i++ ) {
      if ( pData.data[i].R == pReturnValue ) {
        apex.debug.log(this.logPrefix, '_popupAjaxDataFindIndexByReturnValue', 'pReturnValue found at index '+i);
        return i;
      }
    }
    
    apex.debug.log(this.logPrefix, '_popupAjaxDataFindIndexByReturnValue', 'pReturnValue not found');
    return -1;
  },
  _popupExtendDataWithNullValues: function( pData ){
    apex.debug.log(this.logPrefix, '_popupExtendDataWithNullValues', 'pData', pData);

    var
      isSelected = false;

    for (var i=0; i < this.popup.state.selected.length; i++){
      if ( this.popup.state.selected[i].isAPEXNullValue ) {
        isSelected = true;
        break;
      }
    }

    pData.data.unshift({
      "R": this.options.item.lov_null_value,
      "D": this.options.item.lov_null_text,
      "isAPEXNullValue": true,
      "selected": isSelected
    });

    return pData;

  },
  _popupExtendDataWithExtraValues: function( pData ) {
    apex.debug.log(this.logPrefix, '_popupExtendDataWithExtraValues', 'pData', pData);

    var 
      idx,
      newArray = $.extend( [], pData.data ),
      newRowObject;

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      idx = this._popupAjaxDataFindIndexByReturnValue( pData, this.popup.state.selected[i].value );

      if ( idx == -1 ) {

        newRowObject = {
          "R": this.popup.state.selected[i].value,
          "D": this.popup.state.selected[i].display,
          "selected": true,
          "extra": true
        };

        if ( newRowObject.R == this.options.item.lov_null_value ) {
          //null value
          newRowObject.extra = false;
          newRowObject.isAPEXNullValue = true;
        }

        newArray.unshift(newRowObject)
      }
    }

    pData.data = newArray;

    return pData;
  },
  _popupAjaxSuccess: function( pData, pTextStatus, pJqXHR){
    apex.debug.log(this.logPrefix, '_popupAjaxSuccess', 'pData', pData);

    var message = this.C_POPUP_TEXT_FILTERED_INFO
          .replace('%0', pData.totalCount)
          .replace('%1', pData.searchString) + this.C_POPUP_TEXT_CLEAR_FILTERING;

    this.popupInformationHide();

    this.popup.state.ajaxStatus                 = this.C_AJAX_STATUS_SUCCESS;

    this.popup.state.sortedColumnDirection      = pData.sortByColumnDirection;
    this.popup.state.sortedColumnIdx            = pData.sortByColumnIdx;
    this.popup.state.lastFetchedPage            = pData.requestedPage;
    this.popup.state.searchString               = pData.searchString;
    this.popup.state.searchColumnIdx            = pData.searchColumnIdx;
    this.popup.state.ajaxDataTotalCount         = pData.totalCount;

    this.popup.state.ajaxCurrentPageData        = this._dataExtendSelectedFromArrayOfObjects(pData, this.popup.state.selected).data;
    this.popup.state.ajaxCurrentPageRownumStart = pData.rownumStart;
    this.popup.state.ajaxCurrentPageRownumEnd   = pData.rownumEnd;

    
    

    if ( pData.request == 'GETONLYSELECTED' ) {
      pData = this._popupExtendDataWithExtraValues( pData );      
      this.popup.state.ajaxSelectedData = this.popup.state.ajaxCurrentPageData;
      this._popupRowsPerPageHide();
      this._popupPaginationHide();

    }
    else if ( pData.request == 'POPUP' ) {
      this._popupRowsPerPageShow();
      this._popupPaginationShow();

      if ( pData.searchString != null &&  pData.data.length > 0 ) {
        this._popupInformationAppend( message, this.C_POPUP_TEXT_FILTERED_INFO);  
      }

      //handle APEX LOV null value
      if ( 
        this.popup.state.lastFetchedPage == 1 
        && pData.searchString == null
        && (
          this.options.item.lov_null_text != undefined
          || this.options.item.lov_null_value != undefined
        )
      ) {
        pData = this._popupExtendDataWithNullValues( pData );
      }
    }

    this._popupReportRender( pData );

    //if there is no search string clear global search item
    if ( !this.popup.state.searchString && !this.popup.state.searchColumnIdx ) {
      this.popup.search.val(null);
    }

    if ( pData.query != undefined ) {
      this._writeQueryToConsole( pData.query );
    }

    apex.debug.log(this.logPrefix, '_popupAjaxSuccess', 'state', this.popup.state);
  },
  //this._popupAjaxDrawError( pJqXHR.responseJSON.error, pJqXHR.responseJSON.techInfo );
  _popupAjaxDrawError: function( pAjaxResponse ){
    apex.debug.log(this.logPrefix, '_popupAjaxDrawError', pAjaxResponse);

    var 
      container   = $('<div class="ajaxError"></div>'),
      divError    = $('<div class="error"></div>'),
      divMessage  = $('<div class="message"></div>'),
      divTechInfo = $('<div></div>'),
      pre = $('<pre></pre>');

    if ( this.pluginSettings.isDebugOn ) {
      for (var i=0; i < pAjaxResponse.techInfo.length; i++) {
        pre.append( pAjaxResponse.techInfo[i].name+': '+pAjaxResponse.techInfo[i].value );
        pre.append("\n");
      }
    }
    else {
      pre.append(this.C_ERROR_DEBUG_OFF);
    }

    divMessage.append( pAjaxResponse.error );
    divError.append( pAjaxResponse.addInfo );

    divTechInfo.append(pre);

    container
      .append(divMessage)
      .append(divError)
      .append(divTechInfo);

    this.popup.body.empty().append(container);
    this._popupPaginationHide();
    this._popupRowsPerPageHide();
  },  
  _popupAjaxError: function(pJqXHR, pTextStatus, pErrorThrown){
    apex.debug.log(this.logPrefix, '_popupAjaxError', 'pJqXHR', pJqXHR);
    apex.debug.log(this.logPrefix, '_popupAjaxError', 'pTextStatus', pTextStatus);
    apex.debug.log(this.logPrefix, '_popupAjaxError', 'pErrorThrown', pErrorThrown);

    var array;

    if ( pJqXHR.statusText == 'abort' ) {
      apex.debug.log(this.logPrefix, '_popupAjaxError', 'AJAX call aborted!');
      return void(0);
    }

    this.popup.state.ajaxStatus           = this.C_AJAX_STATUS_ERROR;
    this.popup.state.ajaxDataFetchedCount = undefined;
    this.popup.state.ajaxDataTotalCount   = undefined;

    this._popupHeaderHide();
    this._popupFooterHide();

    /*
    if ( pTextStatus == 'parsererror' ) {
      apex.debug.log(this.logPrefix, 'AJAX respnse ended in parse error');
      this._popupAjaxDrawError();
    }
    else 
    */
    if ( pJqXHR.responseJSON.techInfo != undefined ) {
      
      this._popupAjaxDrawError( pJqXHR.responseJSON );

      for (var i=0; i < pJqXHR.responseJSON.techInfo.length; i++ ) {
        apex.debug.log(this.logPrefix, 'PL/SQL', pJqXHR.responseJSON.techInfo[i].name, pJqXHR.responseJSON.techInfo[i].value);

        if ( pJqXHR.responseJSON.techInfo[i].value.indexOf('\n') > -1 ) {
          array = pJqXHR.responseJSON.techInfo[i].value.split('\n');

          for ( var y = 0; y < array.length; y++ ) {
            apex.debug.log(this.logPrefix, 'PL/SQL', pJqXHR.responseJSON.techInfo[i].name, array[y]);            
          }
        }
      }      
    }

    this._popupAjaxComplete();
    this._triggerEvent('paeli_popup_error', this._popupGetEventData());
    this._throwError( pErrorThrown );
  },
  _popupAjaxComplete: function(){
    apex.debug.log(this.logPrefix, '_popupAjaxComplete');

    this.popup.state.ajaxRunning = false;

    

    apex.debug.log(this.logPrefix, '_popupAjaxComplete', 'popup state', this.popup.state);

  },

  _popupAjaxAbort: function(){
    apex.debug.log(this.logPrefix, '_popupAjaxAbort');

    this.popup.state.xhr.abort();
    this.popup.state.ajaxRunning = false;
    

  },

  _popupGetSelectedHash: function(){
    apex.debug.log(this.logPrefix, '_popupGetSelectedHash');

    var 
      newArray = this.popup.state.selected.map(function(pCurrentValue, pIndex, pArray){
        return pCurrentValue.value;
      }),
      hashCode = this._getHashCode( newArray.join(':') );

    apex.debug.log(this.logPrefix, '_popupGetSelectedHash returns ', hashCode);

    return hashCode;
  },
  _getHashCode: function( pString ) {
    apex.debug.log(this.logPrefix, '_getHashCode', pString);
    //implementation of https://stackoverflow.com/questions/7616461/generate-a-hash-from-string-in-javascript
    var 
      hash = 0, 
      i, 
      chr;

    if (pString.length === 0) {
      return hash;
    }

    for (i = 0; i < pString.length; i++) {
      chr   = pString.charCodeAt(i);
      hash  = ((hash << 5) - hash) + chr;
      hash |= 0; // Convert to 32bit integer
    }

    apex.debug.log(this.logPrefix, '_getHashCode returns', hash);
    return hash;
  },
  _popupDialogBeforeCloseCallback: function( pEvent, pUi ){
    apex.debug.log(this.logPrefix, '_popupDialogBeforeCloseCallback', pEvent, pUi);

    if ( this.popup.state.selecting ) {
      this.popup.state.selecting = false;
      return true;
    }

    if ( this.popup.state.selectedHash != this._popupGetSelectedHash() ) {
    //if ( this.popup.state.selected.length > 0 ) {
      return confirm( this.C_POPUP_TEXT_UNSAVED_CHANGES.replace('%0', this.popup.state.selected.length) );
    }
    else {
      return true;
    }

  },
  _promptPlaceHolderShow: function(){
    apex.debug.log(this.logPrefix, '_promptPlaceHolderShow');

    this.mask.placeholder.show();
  },
  _promptPlaceHolderHide: function(){
    apex.debug.log(this.logPrefix, '_promptPlaceHolderHide');

    this.mask.placeholder.hide();
  },
  _promptEmptyTags: function(){
    apex.debug.log(this.logPrefix, '_promptEmptyTags');

    this.mask.state.tags = [];
    this.mask.tagsContainer.empty();
    
  },
  _promptEmptyMask: function(){
    apex.debug.log(this.logPrefix, '_promptEmptyMask');

    this.mask.state.selected = [];
  },

  _popupSelectAndClose: function(){
    apex.debug.log(this.logPrefix, '_popupSelectAndClose');

    this._promptEmptyMask();
    this._promptEmptyTags();

    this.element.val(null);

    for (var i=0; i < this.popup.state.selected.length; i++) {
      this._maskStateSelectedAdd( 
        {
          "display"         : this.popup.state.selected[i].display,
          "value"           : this.popup.state.selected[i].value,
          "isAPEXNullValue" : this.popup.state.selected[i].isAPEXNullValue,
        }, //pObject
        false, //pTriggerChangeEvent
        this.popup.state.selected[i].isExtraValue, //pIsExtraValue
        this.popup.state.selected[i].isAPEXNullValue //pIsNullValue
        );
    }

    this._promptApplyValues( true );

    this.popup.state.selecting = true;

    this._popupClose();
    //
  },
  _popupClearFiltering: function(){
    apex.debug.log(this.logPrefix, '_popupClearFiltering');

    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      this._popupShowSelectedCheckboxChange();
    }
    else {
      this._popupSearchClear( true );
    }
  },
  _popupSearchClear: function( pPerformAjax ){
    apex.debug.log(this.logPrefix, '_popupSearchClear', 'force key up', pPerformAjax);

    this.popup.state.searchString = null;
    this.popup.search.val(null);

    if ( pPerformAjax ) {
      this.popup.search.trigger('keyup');

      this._popupAjaxPerform(1, this._popupOpenGetDefaultSortColumnIdx(), this._popupOpenGetDefaultSortColumnDirection());
    }

    //
    
  },
  _popupNewOption: function( pValue, pText){
    return $('<option value="'+pValue+'">'+pText+'</option>');
  },
  _popupDebugStateObject: function(){
    apex.debug.log(this.logPrefix, '_popupDebugStateObject', this.popup.state);

    for ( var i in this.popup.state ) {

      if ( this.popup.state[i] instanceof Array ) {
        apex.debug.log( this.logPrefix, 'this.popup.state.'+i+' ARRAY START' );  

        for ( var x in this.popup.state[i] ) {
          apex.debug.log( this.logPrefix, 'this.popup.state.'+i+'['+x+']', this.popup.state[i][x] );  
        }

        apex.debug.log( this.logPrefix, 'this.popup.state.'+i+' ARRAY END' );  
        
      }
      else {
        apex.debug.log( this.logPrefix, 'this.popup.state.'+i+' = "'+this.popup.state[i]+'"' );  
      }

      
    }

  },
  _popupClose: function(){
    apex.debug.log(this.logPrefix, '_popupClose');

    this.popup.container.dialog('close');

    this._triggerEvent('paeli_popup_hidden', this._popupGetEventData());
  },
  _popupGetEventData: function(){
    return {
      "header"       : this.popup.header,
      "container"    : this.popup.container,
      "body"         : this.popup.body,
      "footer"       : this.popup.footer,
      "pagination"   : this.popup.pagination,
      "search"       : this.popup.search,
      "rowsPerPage"  : this.popup.rowsPerPage,
      "contentTable" : this.popup.contentTable,
      "state"        : {
        "selected"              : this.popup.state.selected,
        "searchString"          : this.popup.state.searchString,
        "searchColumnIdx"       : this.popup.state.searchColumnIdx,
        "sortedColumnIdx"       : this.popup.state.sortedColumnIdx,
        "sortedColumnDirection" : this.popup.state.sortedColumnDirection,
        "ajaxRunning"           : this.popup.state.ajaxRunning
      }
    };
  },
  _popupOpen: function(){
    apex.debug.log(this.logPrefix, '_popupOpen');

    this.popup.body.empty();
    this.popup.container.dialog('open');

  },
  _popupOpenByButton: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupOpenByButton');

    pEvent.preventDefault();

    if ( this.mask.state.disabled ) {
      apex.debug.log(this.logPrefix, '_popupOpenByButton', 'APEX item is disabled, do nothing.');
      return void(0);
    }

    this._popupOpen();
  },
  _popupCreatePaginationContainer: function(){
    apex.debug.log(this.logPrefix, '_popupCreatePaginationContainer');
    var
      //
      paginationContainer   = $('<div class="paginationContainer"></div>'),
      paginationPrevious    = $('<a href="javascript: void(0)" class="prev"><span class="fa fa-caret-left"></span> '+this.C_POPUP_PAGINATION_PREV+'</a>'),
      paginationCurrent     = $('<span class="current">?</span>'),
      paginationNext        = $('<a href="javascript: void(0)" class="next">'+this.C_POPUP_PAGINATION_NEXT+' <span class="fa fa-caret-right"></span></a>');

    //paginate
    paginationContainer
      .append( paginationPrevious )
      .append( paginationCurrent )
      .append( paginationNext );

    return paginationContainer;

  },
  _popupCreateNew: function(){
    apex.debug.log(this.logPrefix, '_popupCreateNew');
    var 
      header                = $('<div class="header"></div>'),
      information           = $('<div class="information hidden"> <div class="text"></div> </div>'),
      searchContainer       = $('<div class="searchContainer"></div>'),
      rowsPerPageContainer  = $('<div class="rowsPerPageContainer"></div>'),
      rowsPerPageSelect     = $('<select></select'),

      searchInput           = $('<input type="text" placeholder="'+this.C_POPUP_SEARCH_PLACEHOLDER+'" class="empty">'),
      searchIcon            = $('<span class="fa fa-search search"></span>'),
      searchClearIcon       = $('<span class="fa fa-trash-o clear"></span>'),
      //
      body                  = $('<div class="body"></div>'),
      //
      footer                = $('<div class="footer"></div>'),
      footerShowSelected    = $('<div class="footer-showSelected"></div>'),
      footerButtons         = $('<div class="footer-buttons"></div>'),

      buttonSelect          = $('<button class="t-Button t-Button--hot select">'+this.C_POPUP_BTN_SELECT_TEXT+'</button>'),
      buttonDebug           = $('<button class="t-Button debug"><span class="fa fa-info"></span></button>'),

      showSelectedInput     = $('<input type="checkbox"><span class="fa fa-check-square-o fakeCheckbox"></span><span class="fa fa-square-o fakeCheckbox"></span>'),
      showSelectedLabel     = $('<label>'+this.C_POPUP_SHOW_SELECTED_LABEL+'</label>'),
      container             = $('<div class="container" data-apex-item="'+this.element.get(0).id+'"></div>'),
      extraClass            = this.pluginSettings.popup.clickOnRowSelectsIt ? 'selectViaRows' : '',
      options               = {
        "dialogClass"   : "pretius--enhancedLovItem "+extraClass,
        "autoOpen"      : false,
        "appendTo"      : 'body',
        "modal"         : true,
        "title"         : this.pluginSettings.popup.title,
        "width"         : this.pluginSettings.popup.width,
        "minWidth"      : 500,
        "height"        : this.pluginSettings.popup.adjustHeightToResults ? 500 : this.pluginSettings.popup.height,
        "minHeight"     : 255,
        "resizable"     : this.pluginSettings.popup.resizable,
        "draggable"     : this.pluginSettings.popup.draggable,
        "closeOnEscape" : this.pluginSettings.popup.closeOnEscape,
        "resizeStop"    : $.proxy( this._popupDialogResizeStopCallback, this ),
        "drag"          : $.proxy( this._popupDragPositionFixCallback, this ),
        "dragStart"     : $.proxy( this._popupDialogDragStartCallback, this ),
        "dragStop"      : $.proxy( this._popupDialogDragStopCallback, this ),
        "open"          : $.proxy( this._popupDialogOpenCallback, this ),
        "close"         : $.proxy( this._popupDialogCloseCallback, this ),
        "beforeClose"   : $.proxy( this._popupDialogBeforeCloseCallback, this )
      };

    container.dialog( options );

    //search in all columns
    if ( this.pluginSettings.popup.searchInAllColumns ) {
      searchContainer
        .append( searchInput )
        .append( searchIcon )
        .append( searchClearIcon );

      header.append( searchContainer )
    }

    //rows per page
    if ( this.pluginSettings.popup.showRowsPerPage ) {
      for (var i=1; i<=10; i++) {
        rowsPerPageSelect.append( this._popupNewOption(i*10,i*10) );
      }

      rowsPerPageContainer.append( rowsPerPageSelect );
      header.append( rowsPerPageContainer )
    }

    if ( 
      !this.pluginSettings.popup.searchInAllColumns
      && !this.pluginSettings.popup.showRowsPerPage
    ) {
      header.addClass('paginationOnly');
    }

    //pagination
    header.append( this._popupCreatePaginationContainer() );
    
    showSelectedInput.uniqueId();
    showSelectedLabel.attr('for', showSelectedInput.attr('id'));

    footerShowSelected
      .append( showSelectedInput )
      .append( showSelectedLabel );

    if ( this.pluginSettings.isDebugOn ) {
      buttonDebug.click( $.proxy( this._popupDebugStateObject, this ) );
      footerButtons.append( buttonDebug );
    }

    footerButtons.append( buttonSelect );

    footer
      .append(footerShowSelected)      
      .append(footerButtons);

    container
      .append( header )
      .append( information )
      .append( body )
      .append( footer );

    return container;
  },
  _popupDialoginBtnClick: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupDialoginBtnClick');
  },
  _popupSearchInSelectedData: function( pSearchColumnName, pSearchColumnIdx, pSearchString, pIsSearchGlobal ){
    apex.debug.log(this.logPrefix, '_popupSearchInSelectedData', this.popup.state.ajaxCurrentPageData);
    apex.debug.log(this.logPrefix, '_popupSearchInSelectedData', pSearchColumnName, pSearchString, pIsSearchGlobal);

    var 
      newData,
      message;

    if ( pIsSearchGlobal ) {
      newData = this.popup.state.ajaxSelectedData.filter( function( pRow ){

        for ( var i in pRow ) {
          if ( pRow[i].toString().toUpperCase().indexOf( pSearchString.toUpperCase() ) > -1 ) {
            return true;
          }
        }
        return false;
      } );

    } 
    else {
      newData = this.popup.state.ajaxSelectedData.filter( function( pRow ){
        return pRow[ pSearchColumnName ].toUpperCase().indexOf( pSearchString.toUpperCase() ) > -1
      } );
    }   
  
    apex.debug.log(this.logPrefix, '_popupSearchInSelectedData', 'filtered', newData);

    this.popup.state.searchString    = pSearchString;
    this.popup.state.searchColumnIdx = pSearchColumnIdx;

    this.popup.state.ajaxCurrentPageData = newData;
    this._popupReportRender( {"data": newData} );
    
    message = this.C_POPUP_TEXT_SEACH_IN_SELECTED
        .replace('%0', newData.length)
        .replace('%1', this.popup.state.ajaxSelectedData.length);

    this._popupInformationAppend( message, this.C_POPUP_TEXT_SEACH_IN_SELECTED);


  },
  _popupSearchBlur: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupSearchBlur', 'pEvent', pEvent);
    apex.debug.log(this.logPrefix, '_popupSearchBlur', 'current value "'+this.popup.search.val()+'"');
    apex.debug.log(this.logPrefix, '_popupSearchBlur', 'focus value "'+this.popup.state.searchStringOnFocus+'"'  );

    var newEvent = apex.jQuery.Event( 'keyup', { which: $.ui.keyCode.ENTER, keyCode: 13 } );

    if ( this.popup.search.val() != this.popup.state.searchStringOnFocus) { 
      this.popup.search.trigger(newEvent);
    }

  },
  _popupSearchFocus: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupSearchFocus', pEvent);

    this.popup.state.searchStringOnFocus = this.popup.search.val();

    apex.debug.log(this.logPrefix, '_popupSearchFocus', 'current search string is "'+this.popup.state.searchStringOnFocus+'"');
  },
  _popupSearchKeyUp: function( pSearchColumnName, pSearchColumnIdx, pEvent ){
    apex.debug.log(this.logPrefix, '_popupSearchKeyUp', pEvent.keyCode);

    var 
      searchItem     = $(pEvent.currentTarget),
      searchString   = searchItem.val(),
      isSearchGlobal = pEvent.currentTarget == this.popup.search.get(0);

    //when other key then "enter" triggered keyup event
    if ( pEvent.keyCode != 13 ) {
      return void(0);
    }

    //when only selected values are currently presented
    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      this._popupSearchInSelectedData( pSearchColumnName, pSearchColumnIdx, searchString, isSearchGlobal );
      return void(0);
    }

    //what type of search is being performed
    if ( isSearchGlobal ) {
      //search through all columns      
      this._popupAjaxPerform( 1, null, null, searchString );  
    }
    else {
      //search only in selected column
      this._popupAjaxPerform(1, this.popup.state.sortedColumnIdx, this.popup.state.sortedColumnDirection, searchString, pSearchColumnIdx);
      this._popupSearchClear(false);
      this._maskKeyUpManageIcons();
    }
  },
  _popupGetMaxDialogHeight: function( pReportHeight ){
    apex.debug.log(this.logPrefix, '_popupGetMaxDialogHeight', 'pReportHeight', pReportHeight);
    var
      popupHeader = this.popup.dialogHeader.outerHeight(),
      totalHeight = 0;

    totalHeight += this.popup.dialogHeader.outerHeight();

    if ( this.popup.informationContainer.is(':visible') ) {
      totalHeight += this.popup.informationContainer.outerHeight();
    }

    if ( this.popup.header.is(':visible') ) {
      totalHeight += this.popup.header.outerHeight();
    }

    if ( this.popup.footer.is(':visible') ) {
      totalHeight += this.popup.footer.outerHeight();
    }

    totalHeight += pReportHeight;

    if ( totalHeight > $(window).outerHeight() ) {
      //reduce by padding for top and bottom
      totalHeight = $(window).outerHeight() - 40;
    }

    apex.debug.log(this.logPrefix, '_popupGetMaxDialogHeight', 'returns', totalHeight);
    return totalHeight;
  },
  _popupGetMaxHeightReport: function( pDialogTotalHeight ){
    apex.debug.log(this.logPrefix, '_popupGetMaxHeightReport', 'pDialogTotalHeight', pDialogTotalHeight);

    var
      reportMaxHeight = pDialogTotalHeight,
      tableWidth  = this.popup.contentTable != undefined ? this.popup.contentTable.outerWidth() : 0;

    reportMaxHeight -= this.popup.dialogHeader.outerHeight();

    if ( this.popup.informationContainer.is(':visible') ) {
      reportMaxHeight -= this.popup.informationContainer.outerHeight();
    }

    if ( this.popup.header.is(':visible') ) {
      reportMaxHeight -= this.popup.header.outerHeight();
    }

    if ( this.popup.footer.is(':visible') ) {
      reportMaxHeight -= this.popup.footer.outerHeight();
    }

    if ( tableWidth > this.popup.body.outerWidth() ) {
      //scrollbar
      reportMaxHeight += 17;
    }

    apex.debug.log(this.logPrefix, '_popupGetMaxHeightReport', 'returns', reportMaxHeight);
    return reportMaxHeight;
  },
  _popupAdjustBodyHeightAnimate: function( pDuration ){
    apex.debug.log(this.logPrefix, '_popupAdjustBodyHeightAnimate', 'pDuration', pDuration);

    var tableHeight = this._popupGetTableHeight();

    if ( tableHeight == 0 ) {
      return void(0);
    }

    this.popup.body.stop().animate({
      "maxHeight": tableHeight,
      "minHeight": tableHeight
    }, {
      "duration": !pDuration ? pDuration : 100,
      "step": $.proxy(function( pNow, pFx ) {
        var 
          resultPopupHeight = 0;

        //current table height
        resultPopupHeight += pNow;

        //information height
        if ( this.popup.informationContainer.is(':visible') ) {
          resultPopupHeight += this.popup.informationContainer.outerHeight();
        }

        if ( this.popup.header.is(':visible') ) {
          resultPopupHeight += this.popup.header.outerHeight();
        }

        if ( this.popup.footer.is(':visible') ) {
          resultPopupHeight += this.popup.footer.outerHeight();
        }
        
        resultPopupHeight += this.popup.dialogHeader.outerHeight();

        this.popup.container.dialog('option','height', resultPopupHeight);
      }, this),
      "complete": $.proxy(function(){
        apex.debug.log(this.logPrefix, '_popupAdjustBodyHeightAnimate', 'animation completed');
      }, this)
    });
  },
  _popupGetTableHeight: function(){
    var 
      tableHeight = 0;

    if ( this.popup.contentTable != undefined ) {
      tableHeight = this.popup.contentTable.outerHeight();
      apex.debug.log(this.logPrefix, '_popupGetTableHeight', 'tableHeight', tableHeight);
    }
    else {
      tableHeight = this.popup.body.children().first().outerHeight();
      apex.debug.log(this.logPrefix, '_popupGetTableHeight', 'tableHeight of children', tableHeight);
    }

    tableHeight = this._popupGetMaxHeightReport( this._popupGetMaxDialogHeight( tableHeight ) );

    apex.debug.log(this.logPrefix, '_popupGetTableHeight returns', tableHeight);
    return tableHeight;

  },
  _popupAdjustBodyHeight: function( pDuration ){
    apex.debug.log(this.logPrefix, '_popupAdjustBodyHeight');

    var 
      height,
      tableWidth;
      
    if ( this.pluginSettings.popup.adjustHeightToResults ) {
      this._popupAdjustBodyHeightAnimate( pDuration );
    }
    else {

      height = this.popup.container.outerHeight();
      height -= this.popup.informationContainer.is(':visible') ? this.popup.informationContainer.outerHeight() : 0;
      height -= this.popup.header.is(':visible') ? this.popup.header.outerHeight() : 0;
      height -= this.popup.footer.is(':visible') ? this.popup.footer.outerHeight() : 0;

      this.popup.body.css('maxHeight', height);
      this.popup.body.css('minHeight', height);
    }
  },
  _popupHighlightResults: function( pResultsJquery ){
    apex.debug.log(this.logPrefix, '_popupHighlightResults');

    var 
      resultText,
      searchString = this.popup.state.searchString,
      searchStringArr = searchString != null ? searchString.split('%') : [],
      tds;

    apex.debug.log(this.logPrefix, '_popupHighlightResults', searchStringArr);

    //if there is no search string don't higlihjt results;
    if ( searchString == undefined || searchString.length == 0 ) {
      return pResultsJquery;
    }

    //if search was performed on specific column perform search only in 1 column
    if ( this.popup.state.searchColumnIdx != undefined ) {
      tds = pResultsJquery.find('td:nth-child('+(this.popup.state.searchColumnIdx+1)+')');
    }
    else {
      tds = pResultsJquery.find('td:not(:nth-child(1))');
    }

    //for each cell perform search in cell string
    tds.each($.proxy(function(pIndex, pElem){
      //tbd: do recursive search though all children
      resultText = $(pElem).text();
      
      for ( var i in searchStringArr ) {
        resultText = this._highlightWord( resultText, searchStringArr[i] );
      }
      

      $(pElem).html( resultText );

    }, this));

    return pResultsJquery;
  },
  _popupShowSelectedCheckboxChange: function(){
    apex.debug.log(this.logPrefix, '_popupShowSelectedCheckboxChange');

    //when there is nothing to show
    if ( this.popup.state.selected.length == 0 ) {
      this.popup.showSelectedCheckbox.prop('checked', false);
      return void(0);
    }

    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      this._popupAjaxGetOnlySelected();
    }
    else {
      this._popupAjaxPerform(
        1,    //lastFetchedPage,
        1,    //sortedColumnIdx,
        'asc',//sortedColumnDirection,
        null, //searchString,
        null  //searchColumnIdx
      );

    }

    
  },
  popupInformationHide: function(){
    apex.debug.log(this.logPrefix, 'popupInformationHide');

    this.popup.state.informationTemplate = undefined;
    this.popup.state.informationText     = undefined;
    this.popup.informationContainer.addClass('hidden');

  },

  popupInformationShow: function(){
    
    apex.debug.log(this.logPrefix, 'popupInformationShow');

    this.popup.informationContainer.removeClass('hidden');

  },
  _popupInformationAppend: function( pMessage, pMessageTemplate ){
    apex.debug.log(this.logPrefix, '_popupInformationAppend');

    this.popup.informationText.empty().append( pMessage );
    this.popupInformationShow();

    this.popup.state.informationText     = pMessage;
    this.popup.state.informationTemplate = pMessageTemplate;
  },
  _popupThCheckboxChange: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupThCheckboxChange', pEvent);

    var 
      checkboxes  = this.popup.contentTable.find('tr td:first-child :checkbox'),
      selected    = checkboxes.filter(function(){ return $(this).is(':checked') }).toArray(),
      notSelected = checkboxes.filter(function(){ return $(this).is(':not(:checked)') }).toArray(),
      message     = this.C_POPUP_TEXT_ROWS_SELECTED.replace('%0', checkboxes.length);

    if ( this.popup.selectAllCheckbox.is(':checked') ) {

      for( var i=0; i < notSelected.length; i++ ) {
        $( notSelected[i] ).trigger('click');
      }

      this._popupInformationAppend( message, this.C_POPUP_TEXT_ROWS_SELECTED );
    }
    else {
        
      if ( this.popup.state.informationTemplate == this.C_POPUP_TEXT_ROWS_SELECTED ) {
        this.popupInformationHide();
      }

      for( var i=0; i < selected.length; i++ ) {
        $( selected[i] ).trigger('click');
      }
    }
    this._popupAdjustBodyHeight();
  },
  _popupToggleRowState: function( pInput ){
    apex.debug.log(this.logPrefix, '_popupToggleRowState');

    if ( pInput instanceof jQuery == false ) {
      pInput = $( pInput );
    }

    if ( pInput.is(':checked') ) {
      pInput.closest('tr').addClass('selected');
    }
    else {
      pInput.closest('tr').removeClass('selected');
    }
  },
  _popupTdCheckboxChange: function( pEvent ){
    var 
      checkbox = $(pEvent.currentTarget),
      checkboxes  = undefined,
      selected    = undefined;

    pEvent.stopImmediatePropagation();

    apex.debug.log(this.logPrefix, '_popupTdCheckboxChange', checkbox.get(0));

    checkboxes  = this.popup.contentTable.find('tr td:first-child :checkbox'),
    selected    = checkboxes.filter(function(){ return $(this).is(':checked') });

    if ( checkbox.is(':checked') ) {
      this._popupSelectValue( checkbox);
    }
    else {
      this._popupUnselectValue( checkbox.val() );

      if ( this.popup.showSelectedCheckbox.is(':checked') ) {
        checkbox.closest('tr').remove();
      }
    }


    apex.debug.log(this.logPrefix, '_popupTdCheckboxChange', 'checkboxes cnt', checkboxes.length);
    apex.debug.log(this.logPrefix, '_popupTdCheckboxChange', 'checked checkboxes cnt', selected.length);

    if ( checkboxes.length == selected.length ) {
      
      if ( !this.popup.selectAllCheckbox.is(':checked') ) {
        this.popup.selectAllCheckbox.prop('checked', true);
      }

    } 
    else {
      this.popup.selectAllCheckbox.prop('checked', false);
    }

    this._popupToggleRowState( checkbox );

  },

  _popupTdRadioChange: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupTdRadioChange');

    var radio = $(pEvent.currentTarget);

    this.popup.container.find('.selected').removeClass('selected');

    if ( radio.is(':checked') ) {
      this._popupResetValues();
      this._popupSelectValue( radio );
    }
    else {
      this._popupUnselectValue( checkbox.val() );

      if ( this.popup.showSelectedCheckbox.is(':checked') ) {
        radio.closest('tr').remove();
      }
    }

    this._popupToggleRowState( radio );
  },
  _popupIsValueSelected: function( pValue ){
    apex.debug.log(this.logPrefix, '_popupIsValueSelected', pValue);

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      if ( this.popup.state.selected[i].value == pValue ) {
        apex.debug.log(this.logPrefix, '_popupIsValueSelected', pValue, true);
        return true;
      }
    }
    
    apex.debug.log(this.logPrefix, '_popupIsValueSelected', pValue, false);

    return false;
  },
  _popupValueSelectedIndex: function( pValue ){
    apex.debug.log(this.logPrefix, '_popupValueSelectedIndex', pValue);

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      if ( this.popup.state.selected[i].value == pValue ) {
        apex.debug.log(this.logPrefix, '_popupValueSelectedIndex', pValue, i);
        return i;
      }
    }
    
    apex.debug.log(this.logPrefix, '_popupValueSelectedIndex', pValue, -1);

    return -1;
  },

  _popupUnselectValue: function( pValue ){
    apex.debug.log(this.logPrefix, '_popupUnselectValue');

    var 
      indexOf = this._popupValueSelectedIndex( pValue )
      removed = null;

    if ( indexOf < 0 ) {
      this._throwErrorText(' Value "'+pValue+'" is not selected!');
    }

    removed = this.popup.state.selected.splice( indexOf, 1 );

    apex.debug.log(this.logPrefix, '_popupUnselectValue', 'removed value', removed);

    this._popupShowSelectedUpdate( true );

  },
  _popupResetValues: function(){
    apex.debug.log(this.logPrefix, '_popupResetValues');

    this.popup.state.selected = [];
  },
  _popupSelectValue: function( pInput ){
    apex.debug.log(this.logPrefix, '_popupSelectValue');

    var 
      newSelectionObj = {
        "display": pInput.attr('aria-display-value'),
        "value": pInput.val(),
        "isExtraValue": pInput.attr('aria-extra-value'),
        "isAPEXNullValue": pInput.attr('aria-null-value')
      };

    this.popup.state.selected.push( newSelectionObj );

    this._popupShowSelectedUpdate( false );
  },  
  _popupShowSelectedUpdate: function( pPerformAjaxOn0Selected ){
    apex.debug.log(this.logPrefix, '_popupShowSelectedUpdate', "perform ajax on 0 selected", pPerformAjaxOn0Selected);
    
    var selectedLength = this.popup.state.selected.length;

    this.popup.showSelectedLabel.text( this.C_POPUP_SHOW_SELECTED_LABEL +' ('+selectedLength+')' );

    if ( selectedLength == 0 ) {
      this.popup.showSelectedContainer.addClass('inactive');

      if ( pPerformAjaxOn0Selected && this.popup.showSelectedCheckbox.is(':checked')) {
        this._popupAjaxPerform(1, this._popupOpenGetDefaultSortColumnIdx(), this._popupOpenGetDefaultSortColumnDirection());
      }

      this.popup.showSelectedCheckbox.prop('checked', false);
      
    }
    else {
      this.popup.showSelectedContainer.removeClass('inactive');
    }
  },

  _popupClickOnCell: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupClickOnCell', pEvent);

    var 
      tr = $(pEvent.target).closest('tr'),
      input = tr.find('td:first-child :input');

    if ( input.is(':checkbox') ) {
      input.trigger('click');
    }
    else {
      input.prop('checked', true) ;
      input.trigger('change');
    }

    
  },
  _popupFakeRadioClick: function( pEvent ) {
    apex.debug.log(this.logPrefix, '_popupFakeRadioClick');

    var triggeringElement = $(pEvent.currentTarget);

    pEvent.stopImmediatePropagation();

    triggeringElement.parent().find(':radio').trigger('click');

  },
  _popupFakeCheckboxClick: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupFakeCheckboxClick');

    var triggeringElement = $(pEvent.currentTarget);

    pEvent.stopImmediatePropagation();

    triggeringElement.parent().find(':checkbox').trigger('click');

  },

  _popupSortReport: function( pColumnName, pColumnIdx, pSortDirection ){
    apex.debug.log(this.logPrefix, '_popupSortReport', 'pColumnIdx', pColumnIdx, 'pSortDirection', pSortDirection);

    var 
      searchString = this.popup.state.searchString,
      searchColumnIdx = this.popup.state.searchColumnIdx;

    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      this.popup.state.ajaxCurrentPageData.sort( this._sortJson( pColumnName, pSortDirection ) );

      //must be set becuase of visualization in column header
      this.popup.state.sortedColumnDirection = pSortDirection;
      this.popup.state.sortedColumnIdx       = pColumnIdx;

      this._popupReportRender( {"data": this.popup.state.ajaxCurrentPageData} );

    }
    else {
      this._popupAjaxPerform(1, pColumnIdx, pSortDirection, searchString, searchColumnIdx);  
    }
    

  },

  _popupGetHeadings: function( ){
    apex.debug.log(this.logPrefix, '_popupGetHeadings');

    var 
      thead = $('<thead><tr></tr></thead>'),
      thSelectAll = $('<th class="t-Report-colHead"></th>'),
      thSelectCheckbox = $('<input type="checkbox"><span class="fa fa-check-square-o fakeCheckbox"></span><span class="fa fa-square-o fakeCheckbox"></span>'),
      column_name,
      column_idx,
      isUsedToSort,
      isFiltered,
      sortingDirection,
      thAlign,
      columnAliases;

    if ( this.pluginSettings.isMultipleSelection ) {
      thSelectAll.append( thSelectCheckbox );
    }

    thead.find('tr').append( thSelectAll );

    for ( var i =0; i < this.options.columns.length; i++ ) {
      column_name  = this.options.columns[i].COLUMN_NAME;
      column_idx   = this.options.columns[i].IDX;
      column_alias = this._popupColumnIsConfigurationAvailable( column_name, 'heading' );

      if ( 
        this.pluginSettings.popup.isReportAdvancedConf
        && !this._popupColumnIsDefined( column_name ) 
      ) {
        continue;
      }

      if ( !this._popupColumnIsConfigurationAvailable( column_name, 'visible' ) ) {
        //dont render column because it has no confiuration
        continue;
      }

      if ( 
           this.pluginSettings.popup.isReportBasicConf
        && this.pluginSettings.popup.isReturnColumnVisible == false
        && column_name == 'R' 
      ) {
        //dont render return and display column
        continue;
      }

      if ( 
           this.pluginSettings.popup.isReportBasicConf
        && this.pluginSettings.popup.isDisplayColumnVisible == false
        && column_name == 'D' 
      ) {
        //dont render return and display column
        continue;
      }

      if ( this.popup.state.sortedColumnIdx == column_idx ) {
        if ( this.popup.state.sortedColumnDirection == 'asc' ) {
          isUsedToSort = '<span class="u-Report-sortIcon a-Icon icon-rpt-sort-asc"></span>';  
          sortingDirection = 'desc';
        }
        else {
          isUsedToSort = '<span class="u-Report-sortIcon a-Icon icon-rpt-sort-desc"></span>';
          sortingDirection = 'asc';
        }
      }
      else {
        isUsedToSort = '';
        sortingDirection = 'asc';
      }

      if ( this.popup.state.searchColumnIdx == column_idx ) {
        isFiltered = '<span class="u-Report-sortIcon fa fa-filter"></span>';
      }
      else {
        isFiltered = '';
      }

      thAlign = this._popupColumnIsConfigurationAvailable( column_name, 'thAlign' );

      th = ''+
        '<th class="t-Report-colHead" align="'+thAlign+'" aria-column-name="'+column_name+'">'+
        '  <div class="u-Report-sort">'+
        '    <span class="u-Report-sortHeading">'+
        '      <a href="javascript: void(0)">'+column_alias+'</a>'+
        '    </span>'+
        '    '+isUsedToSort+''+
        '    '+isFiltered+''
        '  </div>'+
        '</th>'+
        '';

      th = $(th);

      apex.debug.log(this.logPrefix, '_popupGetHeadings filtering or sorting available, bind click callback');

      th.bind('click', $.proxy(this._popupReportHeaderClickCallback, this, this.options.columns[i], sortingDirection));

      thead.find('tr').append( th );
    }

    return thead;

  },
  _popupReportHeaderContainerCreate: function( pCurrentTh, pColumnObject ){
    apex.debug.log(this.logPrefix, '_popupReportHeaderContainerCreate', 'pCurrentTh', pCurrentTh);
    apex.debug.log(this.logPrefix, '_popupReportHeaderContainerCreate', 'pColumnObject', pColumnObject);

    var 
      text = pCurrentTh.text().trim(),
      container  = $('<div class="columnOperations"><div class="sorting"></div><div class="filtering"></div></div>'),
      sortAsc    = $('<a href="javascript: void(0)" title="'+this.C_POPUP_HEADER_SORT_ASC_TITLE+'"><span class="a-Icon icon-irr-sort-asc"></span></a>'),
      sortDesc    = $('<a href="javascript: void(0)" title="'+this.C_POPUP_HEADER_SORT_DESC_TITLE+'"><span class="a-Icon icon-irr-sort-desc"></span></a>'),
      searchIcons = $('<div><span class="fa fa-search search"></span><span class="fa fa-trash-o clear"></span></div>')
      searchItem = $('<input type="text" class="empty">'),
      dbColumnName = pCurrentTh.attr('aria-column-name');

    searchIcons.find('.clear').bind('click', $.proxy( this._headerWidgetClearFiltering, this));

    if ( this._popupColumnIsConfigurationAvailable( pColumnObject.COLUMN_NAME, 'sort' ) ) {
      sortAsc .bind('click', $.proxy(this._popupSortReport, this, dbColumnName, pColumnObject.IDX, 'asc'));
      sortDesc.bind('click', $.proxy(this._popupSortReport, this, dbColumnName, pColumnObject.IDX, 'desc'));

      container.find('.sorting').append( sortAsc ).append( sortDesc );      
    }

    if ( this._popupColumnIsConfigurationAvailable( pColumnObject.COLUMN_NAME, 'filter' ) ) {
      searchItem
        .on('keyup', this._debounce($.proxy( this._popupSearchKeyUp, this, dbColumnName, pColumnObject.IDX), this.pluginSettings.popupSearchDebounceTime))
        .on('keyup', $.proxy( this._headerWidgetKeyUpManageIcons, this) );

      //if ( this.popup.state.searchString != undefined && pColumnIdx == this.popup.state.searchColumnIdx) {
      if ( this.popup.state.searchString != undefined && pColumnObject.IDX == this.popup.state.searchColumnIdx) {
        searchItem.val( this.popup.state.searchString );
        searchItem.removeClass('empty');
      }

      container.find('.filtering').append( searchItem ).append( searchIcons );
    }

    container.find('.heading').css('maxWidth', pCurrentTh.outerWidth())

    container.css({
      "minWidth": pCurrentTh.outerWidth(),
      "left": pCurrentTh.position().left,
      "top": pCurrentTh.outerHeight()
    });

    container.find('.heading').css('padding', pCurrentTh.css('padding'))

    return container;

  },
  _popupReportHeaderWidgetHide: function(){
    apex.debug.log(this.logPrefix, '_popupReportHeaderWidgetHide');

    this.popup.stickyHeaders.find('th').removeClass('is-active');
    this.popup.headerActionContainer.remove();
    this.popup.headerActionContainer = undefined
    $(document).off('click.pretius--enhancedLovItem');
  },

  _popupReportHeaderWidgetShow: function( pTh, pWidget){
    apex.debug.log(this.logPrefix, '_popupReportHeaderWidgetShow');

    if ( this.popup.headerActionContainer != undefined  ) {
      this._popupReportHeaderWidgetHide();
    }

    pTh.addClass('is-active');
    this.popup.headerActionContainer = pWidget;
    this.popup.body.append( pWidget );

    pWidget.find(':input').focus();
  },
  _popupReportHeaderClickCallback: function( pColumnObject, pSortDirection, pEvent ){

    pEvent.stopImmediatePropagation();

    apex.debug.log(this.logPrefix, '_popupReportHeaderClickCallback', pEvent);
    apex.debug.log(this.logPrefix, '_popupReportHeaderClickCallback column data', {"column object": pColumnObject, "sort_direction": pSortDirection});

    var 
      th = $(pEvent.currentTarget),
      container = this._popupReportHeaderContainerCreate( th, pColumnObject );

    this._popupReportHeaderWidgetShow( th, container );

    
    $(document).bind('click.pretius--enhancedLovItem', $.proxy( this._popupReportHeaderClickOutsideCheck, this ));
  },
  _popupReportHeaderClickOutsideCheck: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupReportHeaderClickOutsideCheck', pEvent);
    var target = $(pEvent.target);

    if ( !$.contains( this.popup.headerActionContainer.get(0), target.get(0) ) ) {
      //click outside found
      apex.debug.log(this.logPrefix, '_popupReportHeaderClickOutsideCheck', 'clicked outside header widget');
      this._popupReportHeaderWidgetHide();
    }
    else {
      apex.debug.log(this.logPrefix, '_popupReportHeaderClickOutsideCheck', 'clicked inside header widget');
    }
    
  },
  _popupCreateStickyHeaders: function() {
    apex.debug.log(this.logPrefix, '_popupCreateStickyHeaders');

    var
      table = $('<table></table>'),
      thead = this.popup.body.find('.report thead').clone(true, true),
      ths = this.popup.body.find('table th'),
      stickyHeader;

    if ( this.popup.stickyHeaders != undefined ) {
      this.popup.stickyHeaders.remove();
      apex.debug.log(this.logPrefix, '_popupCreateStickyHeaders', 'removing existing stickyHeaders');
    }

    thead.find('th').each( function( pIndex, pElem ){
      $(pElem).css({
        'minWidth': ths.eq(pIndex).outerWidth(),
        'maxWidth': ths.eq(pIndex).outerWidth(),
        'width': ths.eq(pIndex).outerWidth(),
      });

      ths.eq(pIndex).css({
        'minWidth': ths.eq(pIndex).outerWidth(),
        'maxWidth': ths.eq(pIndex).outerWidth(),
        'width': ths.eq(pIndex).outerWidth(),

      })
    });


    table
      .addClass("t-Report-report stickyHeaders").attr("summary", this.pluginSettings.popup.title)
      .css('top', 0)
      .append( thead );

    this.popup.stickyHeaders = table;
    this.popup.selectAllCheckbox = this.popup.stickyHeaders.find('th:first-child :checkbox');

    this.popup.body.append( table );
  },
  _popupReportRenderSearching: function(){
    apex.debug.log(this.logPrefix, '_popupReportRenderSearching');

    var 
      searchTerm = this.popup.state.searchString,
      searchingText = this.C_POPUP_TEXT_SEARCHING.replace('%0', searchTerm),
      container = $('                                 '+
        '<div class="searchingForResults">            '+
        '  <div class="icon">                         '+
        '    <span class="fa fa-refresh fa-anim-spin"></span> '+
        '  </div>                                     '+
        '  <div class="text">'+searchingText+'</div>'+
        '</div>                                       '+
        ''
      );

    this.popup.body.empty().append(container);

    this._popupHeaderHide();
    this._popupFooterHide();
    this.popupInformationHide();
    this._popupAdjustBodyHeight();
  },

  _popupReportRenderNodataFound: function(){
    apex.debug.log(this.logPrefix, '_popupReportRenderNodataFound');

    var 
      searchTerm = this.popup.state.searchString,
      noDataFoundText,
      container = $('                                 '+
        '<div class="nodatafoundContainer">           '+
        '  <div class="icon">                         '+
        '    <span class="fa fa-table-search"></span> '+
        '  </div>                                     '+
        '  <div class="text">#TEXT#</div>'+
        '</div>                                       '+
        ''
      );

    if ( searchTerm == null ) {
      noDataFoundText = this.C_POPUP_TEXT_NO_DATA_FOUND_QUERY;
    }
    else {
      noDataFoundText = this.C_POPUP_TEXT_NO_DATA_FOUND_SEARCH.replace('%0', searchTerm) + '</br>'+this.C_POPUP_TEXT_CLEAR_FILTERING;
    }

    container.find('.text').html(noDataFoundText);

    this.popup.body.empty().append(container);
    this._popupPaginationHide();
    this._popupRowsPerPageHide();
    this._popupAdjustBodyHeight();
  },
  _popupReportBodyGet: function( pData ){
    apex.debug.log(this.logPrefix, '_popupReportBodyGet', pData);

    var
      tbodyTemplate = ''+
        '{{#data}}'+
        '<tr'+
        ' {{#extra}}class="extraValue"{{/extra}}'+
        ' {{#isAPEXNullValue}}class="nullValue"{{/isAPEXNullValue}}>',
      column_name,
      inputSelector;

    if ( this.pluginSettings.isMultipleSelection ) {
      inputSelector = ''+
        '<input'+
        ' type="checkbox"'+
        ' value="{{{R}}}"'+
        ' {{#selected}}checked="true"{{/selected}}'+
        ' {{#extra}}aria-extra-value="true"{{/extra}}'+
        ' {{#isAPEXNullValue}}aria-null-value="true"{{/isAPEXNullValue}}'+
        ' aria-display-value="{{{D}}}"'+
        ' name="multiple"'+
        '>'+
        '  <span class="fa fa-check-square-o fakeCheckbox"></span>'+
        '  <span class="fa fa-square-o fakeCheckbox"></span>'+
        '';
    }
    else {
      inputSelector = ''+
        '<input'+
        ' type="radio"'+
        ' value="{{{R}}}"'+
        ' {{#selected}}checked="true"{{/selected}}'+
        ' aria-display-value="{{{D}}}"'+
        ' {{#extra}}aria-extra-value="true"{{/extra}}'+
        ' {{#isAPEXNullValue}}aria-null-value="true"{{/isAPEXNullValue}}'+
        ' name="single"'+
        '>'+
        '  <span class="fa fa-dot-circle-o fakeRadio"></span>'+
        '  <span class="fa fa-circle-o fakeRadio"></span>'+
        '';
    }

    tbodyTemplate += ''+
      '<td class="t-Report-cell">'+
      ''+inputSelector+''+
      '</td>';

    for ( var i =0; i < this.options.columns.length; i++ ) {
      column_name = this.options.columns[i].COLUMN_NAME;

      if ( 
        this.pluginSettings.popup.isReportAdvancedConf
        && !this._popupColumnIsDefined( column_name ) 
      ) {
        continue;
      }

      if ( !this._popupColumnIsConfigurationAvailable( column_name, 'visible' ) ) {
        //column visibility not defined
        continue;
      }

      if ( //
           this.pluginSettings.popup.isReportBasicConf
        && this.pluginSettings.popup.isReturnColumnVisible == false
        && column_name == 'R' 
      ) {
        //dont render return and display column
        continue;
      }

      if ( 
           this.pluginSettings.popup.isReportBasicConf
        && this.pluginSettings.popup.isDisplayColumnVisible == false
        && column_name == 'D' 
      ) {
        //dont render return and display column
        continue;
      }

      tdAlign = this._popupColumnIsConfigurationAvailable( column_name, 'tdAlign' );
      tbodyTemplate += '<td class="t-Report-cell" align="'+tdAlign+'" headers="'+column_name+'">{{{'+column_name+'}}}</td>';
    }

    tbodyTemplate += '</tr>{{/data}}';

    try {
      rendered = $(Mustache.render( tbodyTemplate, pData));
    } catch( error ) {
      this._throwError(error);
    }

    //highlight results
    if ( this.popup.state.searchString ) {
      rendered = this._popupHighlightResults(rendered);  
    }

    rendered = this._popupMarkAsExtraValue( rendered );
    rendered = this._popupMarkAsNullValue( rendered );

    return rendered;
  },
  _popupMarkAsNullValue: function( pRendered ){
    apex.debug.log(this.logPrefix, '_popupMarkAsNullValue', pRendered);

    var
      tdCnt = pRendered.find('td').length;

    pRendered.each( $.proxy(function( pTdCnt, pIndex, pElem ){
      var 
        self = $(pElem),
        nullValue = self.find(':input').val(),
        text = self.find(':input').attr('aria-display-value');

      if ( self.is('.nullValue') ) {
        self.find('td').not(':first-child').remove();
        self.append('<td class="t-Report-cell" colspan="'+(pTdCnt-1)+'">'+text+'</td>');
      
      }

    }, this, tdCnt) );

    return pRendered;

  },
  _popupMarkAsExtraValue: function( pRendered ){
    apex.debug.log(this.logPrefix, '_popupMarkAsExtraValue', pRendered);

    var 
      cellText = this.C_POPUP_TEXT_EXTRA_VALUE;
      tdCnt = pRendered.find('td').length;

    pRendered.each( $.proxy(function( pTdCnt, pText, pIndex, pElem ){
      var 
        self = $(pElem),
        extraValue = self.find(':input').val(),
        text = pText.replace('%0', extraValue);

      if ( self.is('.extraValue') ) {
        self.find('td').not(':first-child').remove();
        self.append('<td class="t-Report-cell" colspan="'+(pTdCnt-1)+'">'+text+'</td>');
      
      }

    }, this, tdCnt, cellText) );

    return pRendered;
  },
  _popupReportRender: function( pData ){
    apex.debug.log(this.logPrefix, '_popupReportRender', pData);

    var 
      tableContainer = $('<div></div>'),
      table = $('<table></table>'),
      thead,
      tbody = $('<tbody></tbody>'),
      selectedCnt = 0;

    if ( pData.data.length == 0 ) {
      apex.debug.log(this.logPrefix, '_popupReportRender', 'no rows to render, display no data found');
      this.popup.body.addClass('nodatafound');
      this._popupReportRenderNodataFound();
      return void(0);
    }

    thead = this._popupGetHeadings();

    table
      .addClass("t-Report-report report")
      .attr("summary", this.pluginSettings.popup.title)
      .append( thead )
      .append( tbody.append( this._popupReportBodyGet( pData ) ) );

    tableContainer
      .addClass('t-Report t-Report--altRowsDefault t-Report--rowHighlight t-Report--stretch')
      .append( table );
    
    this.popup.contentTable = table;

    this.popup.body
      .removeClass('nodatafound')
      .removeClass('searching')
      .empty()
      .append( tableContainer )
      .scrollTop(0);

    //update selection state
    if ( this.pluginSettings.isMultipleSelection ) {
      tbody.find('td:first-child :checkbox:checked').each($.proxy( function( pIndex, pElem ){
        selectedCnt++;
        this._popupToggleRowState( pElem );
      }, this ));
    }
    else {
      tbody.find('td:first-child :radio:checked').each($.proxy( function( pIndex, pElem ){
        this._popupToggleRowState( pElem );
      }, this ));
    }
 
    
    this._popupPaginationUpdate();
    this._popupHeaderShow();
    this._popupFooterShow();
    this._popupAdjustBodyHeight();
    this._popupCreateStickyHeaders();

    this.popup.search.focus();

    if ( this.pluginSettings.isMultipleSelection ) {
      if ( pData.data.length == selectedCnt ) {
        apex.debug.log(this.logPrefix, '_popupReportRender ajax data length match selected rows');
        this.popup.selectAllCheckbox.prop('checked', true);
      }
      else {
        apex.debug.log(this.logPrefix, '_popupReportRender ajax data length doesn\'t match selected rows', 'ajax data length = "'+pData.data.length+'"', 'selected rows = "'+selectedCnt+'"');
      }

    }

    this._triggerEvent('paeli_popup_data_rendered', this._popupGetEventData());
  },

  _popupGetRowsPerPage: function(){
    apex.debug.log(this.logPrefix, '_popupGetRowsPerPage');

    var value = this.popup.rowsPerPage.val();

    if ( value == '%' ) {
      return this.pluginSettings.popup.rowsPerPage;
    }
    else if ( value == undefined ) {
      return this.pluginSettings.popup.rowsPerPage;
    }
    else {
      return value;
    }
  },
  
  _popupChangeRowsPerPage: function(){
    apex.debug.log(this.logPrefix, '_popupChangeRowsPerPage');

    var
      searchString = this.popup.state.searchString,
      searchColumnIdx = this.popup.state.searchColumnIdx;

    this._popupAjaxPerform(1, this.popup.state.sortedColumnIdx, this.popup.state.sortedColumnDirection, searchString, this.popup.state.searchColumnIdx);
  },

  _popupHeaderHide: function(){
    apex.debug.log(this.logPrefix, '_popupHeaderHide', this.popup.header);

    this.popup.header.addClass('hidden');
  },
  _popupHeaderShow: function(){
    apex.debug.log(this.logPrefix, '_popupHeaderShow');

    this.popup.header.removeClass('hidden');
  },
  _popupFooterHide: function(){
    apex.debug.log(this.logPrefix, '_popupFooterHide');

    this.popup.footer.addClass('hidden');    
  },
  _popupFooterShow: function(){
    apex.debug.log(this.logPrefix, '_popupFooterShow');

    this.popup.footer.removeClass('hidden');
  },
  _popupRowsPerPageHide: function(){
    apex.debug.log(this.logPrefix, '_popupRowsPerPageHide');

    this.popup.rowsPerPageContainer.hide();
  },
  _popupRowsPerPageShow: function(){
    apex.debug.log(this.logPrefix, '_popupRowsPerPageShow');

    this.popup.rowsPerPageContainer.show();
  },
  _popupPaginationHide: function(){
    apex.debug.log(this.logPrefix, '_popupPaginationHide');

    this.popup.paginationContainer.hide();

  },
  _popupPaginationShow: function(){
    apex.debug.log(this.logPrefix, '_popupPaginationShow');

    this.popup.paginationContainer.show();

  },
  _popupPaginationPrevPage: function(){
    apex.debug.log(this.logPrefix, '_popupPaginationPrevPage');

    this._popupAjaxPerform(
      --this.popup.state.lastFetchedPage,
      this.popup.state.sortedColumnIdx,
      this.popup.state.sortedColumnDirection,
      this.popup.state.searchString,
      this.popup.state.searchColumnIdx
    );

  },

  _popupPaginationNextPage: function(){
    apex.debug.log(this.logPrefix, '_popupPaginationNextPage');

    this._popupAjaxPerform(
      ++this.popup.state.lastFetchedPage,
      this.popup.state.sortedColumnIdx,
      this.popup.state.sortedColumnDirection,
      this.popup.state.searchString,
      this.popup.state.searchColumnIdx
    );
  },
  _popupPaginationUpdate: function(){
    apex.debug.log(this.logPrefix, '_popupPaginationUpdate');

    var 
      start = this.popup.state.ajaxCurrentPageRownumStart,
      end   = this.popup.state.ajaxCurrentPageRownumEnd,
      total = this.popup.state.ajaxDataTotalCount;


    end = end > total ? total : end;

    this.popup.paginationCurrent.text(start+' - '+end+' of '+total);

    //manage prev page link visibility
    if ( this.popup.state.lastFetchedPage == 1 ) {
      this.popup.paginationPrevPage.hide();
    }
    else {
      this.popup.paginationPrevPage.show(); 
    }

    if ( end == total ) {
      this.popup.paginationNextPage.hide(); 
    }
    else {
      this.popup.paginationNextPage.show();  
    }

  },
  _popupIsFiltered: function(){
    apex.debug.log(this.logPrefix, '_popupIsFiltered');

    if ( this.popup.state.searchString != undefined && this.popup.state.searchString.length > 0 ) {
      return true;
    }

    return false;
  },
  _popupScrollCallback: function( pEvent ){
    apex.debug.log(this.logPrefix, '_popupScrollCallback');

    var 
      percent = this._getScrollPercent( $(pEvent.currentTarget), $(pEvent.currentTarget).outerHeight() ),
      sortedColumnIdx = this.popup.state.sortedColumnIdx,
      sortedColumnDirection = this.popup.state.sortedColumnDirection, 
      searchString = this.popup.state.searchString,
      searchColumnIdx = this.popup.state.searchColumnIdx,
      scrollTop = $(pEvent.currentTarget).scrollTop();

    if ( this.popup.state.ajaxStatus == this.C_AJAX_STATUS_ERROR ) {
      return void(0);
    }

    this.popup.stickyHeaders.css('top', scrollTop);

    if ( this.popup.headerActionContainer != undefined ) {
      this.popup.headerActionContainer.css('top', scrollTop + this.popup.body.find('th').first().outerHeight());  
    }
  },
  _popupDragPositionFixCallback: function(pEvent, pUi){
    apex.debug.log(this.logPrefix, '_popupDragPositionFixCallback');
    var 
      documentScrollTop = $(document).scrollTop(),
      position;

    if ( documentScrollTop > 0 ) {
      position = pUi.position;
      position.top = position.top - documentScrollTop;

      this.popup.container.parent().closest(".ui-dialog").css("top", position.top + "px");    
    }      

  },
  _popupDialogDragStartCallback: function( pEvent, pUi ){
    apex.debug.log(this.logPrefix, '_popupDialogDragStartCallback');

    if ( this.popup.headerActionContainer !=undefined ) {
      this.popup.headerActionContainer.hide();  
    }

  },

  _popupDialogDragStopCallback: function( pEvent, pUi ){
    apex.debug.log(this.logPrefix, '_popupDialogDragStopCallback');

    if ( this.popup.headerActionContainer !=undefined ) {
      this.popup.headerActionContainer.show();  
    }

  },  
  _popupDialogResizeStopCallback: function(){
    apex.debug.log(this.logPrefix, '_popupDialogResizeStopCallback');

    this._popupAdjustBodyHeight();
  },
  _popupColumnIsDefined: function( pColumnName ){
    var returnValue = false;

    if (
      this.popup.headers                                 != undefined
      && this.popup.headers.columns                         != undefined
      && this.popup.headers.columns[ pColumnName ]          != undefined
    ) {
      apex.debug.log(this.logPrefix, '_popupColumnIsDefined', 'Column "'+pColumnName+'" is defined.');
      returnValue = true;
    }
    else {
      apex.debug.log(this.logPrefix, '_popupColumnIsDefined', 'Column "'+pColumnName+'" is not defined.');
      returnValue = false;
    }

    
    return returnValue;

  },
  _popupColumnIsConfigurationAvailable: function( pColumnName, pAttr ){
    var returnValue;

    if (
         this.pluginSettings.popup.isReportAdvancedConf     == true
      && this.popup.headers                                 != undefined
      && this.popup.headers.columns                         != undefined
      && this.popup.headers.columns[ pColumnName ]          != undefined
      && this.popup.headers.columns[ pColumnName ][ pAttr ] != undefined      
    ) {
      returnValue = this.popup.headers.columns[ pColumnName ][ pAttr ];
      apex.debug.log(this.logPrefix, '_popupColumnIsConfigurationAvailable', 'Column "'+pColumnName+'": attr "'+pAttr+'" = "'+returnValue+'"');
      return returnValue;
    }
    else {
      if ( pAttr == 'heading' ) {
        returnValue = pColumnName;
      }
      else {
        returnValue = this.popup.defaultReportSettings[ pAttr ];
      }

      apex.debug.log(this.logPrefix, '_popupColumnIsConfigurationAvailable', 'Column "'+pColumnName+'": default attr "'+pAttr+'" = "'+returnValue+'"');
      return returnValue;
    }
  },

  
  _popupOpenGetDefaultSortColumnIdx: function(){
    apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnIdx');

    var
      returnValue = 1,
      column;      

    if ( 
         this.pluginSettings.popup.isReportAdvancedConf 
      && this.popup.headers                       != undefined
      && this.popup.headers.defaultSort           != undefined 
      && this.popup.headers.defaultSort.column    != undefined
      && this.popup.headers.defaultSort.direction != undefined
    ) {
      column = this.popup.headers.defaultSort.column;
      apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnIdx defaultSort by column "'+column+'"');
      returnValue = this._getColumnIdxByColumnName( column );
    }
    else {
      apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnIdx defaultSort configuration is not defined, sort by 1st column.');
      returnValue = 1;      
    }

    apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnIdx return "'+returnValue+'"');

    return returnValue;
  },
  _popupOpenGetDefaultSortColumnDirection: function(){
    apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnDirection');

    var
      returnValue = "asc",
      direction;

    if ( 
         this.pluginSettings.popup.isReportAdvancedConf 
      && this.popup.headers                       != undefined
      && this.popup.headers.defaultSort           != undefined 
      && this.popup.headers.defaultSort.column    != undefined
      && this.popup.headers.defaultSort.direction != undefined
    ) {
      direction = this.popup.headers.defaultSort.direction;
      apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnDirection defaultSort direction defined as "'+direction+'".');
      returnValue = this.popup.headers.defaultSort.direction
    }
    else {
      apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnDirection defaultSort configuration is not defined, sort direction asc.');
      returnValue = "asc";
    }

    apex.debug.log(this.logPrefix, '_popupOpenGetDefaultSortColumnDirection return "'+returnValue+'"');

    return returnValue;

  },
  _popupDialogOpenCallback: function(){
    apex.debug.log(this.logPrefix, '_popupDialogOpenCallback');

    this.popup.state.isVisible = true;
    this.popup.state.selected = [];

    $('body').addClass('apex-no-scroll');

    for ( var i=0; i < this.mask.state.selected.length; i++ ) {
      this.popup.state.selected.push( {
        "display": this.mask.state.selected[i].display,
        "value": this.mask.state.selected[i].value,
        "isAPEXNullValue": this.mask.state.selected[i].isAPEXNullValue
      } );
    }

    this.popup.state.selectedHash = this._popupGetSelectedHash(); 
    apex.debug.log(this.logPrefix, '_popupDialogOpenCallback hash "'+this.popup.state.selectedHash+'"');

    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      this._popupAjaxGetOnlySelected();
    }
    else {

      if ( this.popup.state.lastFetchedPage == null ) {
        this._popupAjaxPerform(1, this._popupOpenGetDefaultSortColumnIdx(), this._popupOpenGetDefaultSortColumnDirection());
      }
      else {
        this._popupAjaxPerform( this.popup.state.lastFetchedPage, this.popup.state.sortedColumnIdx, this.popup.state.sortedColumnDirection );
      }    
    }

    this._popupShowSelectedUpdate( false );


    this._triggerEvent('paeli_popup_shown', this._popupGetEventData());
  },
  _popupDialogCloseCallback: function(){
    apex.debug.log(this.logPrefix, '_popupDialogCloseCallback');

    this.popup.state.isVisible = false;
    this.popup.showSelectedCheckbox.prop('checked', false);

    $('body').removeClass('apex-no-scroll');
  },
  _headerWidgetClearFiltering: function( pEvent ){
    apex.debug.log(this.logPrefix, '_headerWidgetClearFiltering');

    this.popup.state.searchColumnIdx = undefined;

    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      //if checkbox "show selected" is checked then show report of selected values
      this._popupAjaxGetOnlySelected();
    }
    else {

      if ( this.popup.state.sortedColumnIdx != undefined ) {
        //if specific column was used to sort results then perform ajax including sorting
        this._popupAjaxPerform(1, this.popup.state.sortedColumnIdx, this.popup.state.sortedColumnDirection, null, null);
      }
      else {
        //otherwise fetch and display first page with default sorting
        this._popupAjaxPerform(1, this._popupOpenGetDefaultSortColumnIdx(), this._popupOpenGetDefaultSortColumnDirection());
      }
    }

  
  },
  _headerWidgetKeyUpManageIcons: function( pEvent ){
    apex.debug.log(this.logPrefix, '_headerWidgetKeyUpManageIcons', pEvent);

    var item = $(pEvent.currentTarget);

    if ( item.val().length == 0 ) {
      item.addClass('empty');
    }
    else {
      item.removeClass('empty');
    }
  },  
  /*
    PROMPT
  */
  _promptReposition: function(){
    apex.debug.log(this.logPrefix, '_promptReposition');

    var 
      offset = this.mask.container.offset(),
      windowWidth = $(window).outerWidth(),
      top = offset.top + this.mask.container.outerHeight() -1,
      left = offset.left,
      promptResultWidth = 0;

    if ( !this.prompt.isVisible )  {
      apex.debug.log(this.logPrefix, '_promptReposition prompt not visible, do nth.');
      return void(0);
    }

    this.prompt.container.css({
      "top": top,
      "left": left
    });

    promptResultWidth = this.prompt.container.outerWidth();

    if ( promptResultWidth + left > windowWidth ) {
      this.prompt.container.css({
        "minWidth": promptResultWidth,
        "left": "",
        "right": windowWidth - this.mask.container.outerWidth()-left
      });

      this.prompt.fixBorder.css({
        "right": "auto",
        "left": 0
      })
    }


  },
  _promptCreateNew: function(){
    apex.debug.log(this.logPrefix, '_promptCreateNew');

    var 
      attributes  = this.element.get(0).attributes,
      classes     = attributes.class != undefined ? attributes.class.value.split(' ') : [],
      fixBorder   = $('<div class="fixBorder"></div>'),
      container   = $('<div></div>'),
      header      = $('<div></div>'),
      menu        = $('<div class="menu"></div>'),
      menuExpand      = $(''+
        '<a href="javascript: void(0)" class="t-Button t-Button--tiny t-Button--link t-Button--pill view" title="'+this.C_PROMPT_MENU_EXPAND_TITLE+'">'+
        '  <span aria-hidden="true" class="fa fa-compress collapsed"></span>'+
        '  <span aria-hidden="true" class="fa fa-expand expanded"></span>'+
        '</a>'),
      menuSort    = $(''+
        '<a href="javascript: void(0)" class="t-Button t-Button--tiny t-Button--link t-Button--pill sort" title="'+this.C_PROMPT_MENU_SORT_TITLE+'">'+
        '  <span aria-hidden="true" class="a-Icon icon-rpt-sort-asc asc"></span>'+
        '  <span aria-hidden="true" class="a-Icon icon-rpt-sort-desc desc"></span>'+
        '</a>'),
      menuClear    = $(''+
        '<a href="javascript: void(0)" class="t-Button t-Button--tiny t-Button--link t-Button--pill" title="'+this.C_PROMPT_MENU_CLEAR_TITLE+'">'+
        '  <span aria-hidden="true" class="fa fa-trash-o clear"></span>'+
        '</a>'),

      inputSearch = $('<input type="text" tabindex="0">'),
      icon        = $('<span class="fa fa-search"></span>'),
      body        = $('<div><!--default body--></div>'),
      offset      = this.mask.container.offset();

    if ( this.mask.container.is('.expanded') ) {
      menuExpand.addClass('expanded')
    }

    if ( this.mask.state.sorted == undefined ) {
      menuSort.addClass('asc');
    }
    else if ( this.mask.state.sorted == 'asc' ) {
      menuSort.addClass('asc'); 
    }
    else {
      menuSort.addClass('desc');
    }

    menu
      .append(menuExpand)
      .append(menuSort)
      .append(menuClear);

    container
      .addClass('pretius--enhancedLovItem prompt')
      .css({
        "minWidth"   : this.mask.container.outerWidth(),
        "borderColor": this.inputCss.borderColor,
        "fontSize"   : this.inputCss.fontSize,
        "lineHeight" : this.inputCss.lineHeight
      })
      .append(fixBorder.css("borderColor", this.inputCss.borderColor))
    ;

    apex.debug.log(this.logPrefix, '_promptCreateNew', 'offset', offset);


    body
      .addClass('body')
      .css({
        'maxHeight': this.pluginSettings.prompt.maxHeight
      });


    if ( attributes.maxlength != undefined ) {
      inputSearch.attr('maxlength', attributes.maxlength.value);  
    }
    
    if ( attributes.placeholder != undefined ) {
      inputSearch.attr('placeholder', attributes.placeholder.value);  
    }

    for (var i in classes) {
      inputSearch.addClass( classes[i]+'-input' );  
    }

    inputSearch.attr('autocomplete', 'off');
    

    header
      .addClass('header')
      .append( inputSearch )
      .append( icon );


    if ( this.pluginSettings.isMultipleSelection ) {
      container.append(menu);

    }
    container
      .append(header)
      .append(body);
    
    $.extend(this.prompt, {
      "container" : container,
      "header"    : header,
      "body"      : body,
      "input"     : inputSearch,
      "icon"      : icon,
      "fixBorder" : fixBorder,
      "menu"      : {
        "container": menu,
        "expand"   : menuExpand,
        "sort"     : menuSort,
        "clear"    : menuClear
      }
    });
  },
  _promptShow: function(){
    apex.debug.log(this.logPrefix, '_promptShow');

    $(document).on('click.promptcheck-'+this.element.get(0).id, $.proxy(this._promptCheckClickOutside, this));

    this.prompt.input.focus();
    this.mask.container.addClass('focused');

    this.prompt.isVisible = true;

    $('body').prepend( this.prompt.container );

    
    this._maskPopupButtonHide();

    this._promptReposition();

    if ( this.mask.state.error && this.pluginStopped == false ) {
      this.mask.ajaxStateButton.button.hide();
      this.mask.state.error = false;
    }

    this._triggerEvent('paeli_prompt_shown', this._promptGetEventData());
  },
  _promptHide: function( pFocusOnElement ){
    apex.debug.log(this.logPrefix, '_promptHide', 'pFocusOnElement', pFocusOnElement);

    this.mask.container.removeClass('focused');
    this.prompt.container.remove();
    this.prompt.container = undefined;
    this.prompt.isVisible = false;

    this._maskPopupButtonShow();

    if ( pFocusOnElement != undefined && pFocusOnElement.is(':focusable') ) {
      pFocusOnElement.focus();  
    }
    else {
      this._getNextFocusAble().focus();
    }
    
    this._triggerEvent('paeli_prompt_hidden', this._promptGetEventData());

    $(document).off('click.promptcheck-'+this.element.get(0).id);    
  },
  _promptAjaxPerform: function( pPage ){
    apex.debug.log(this.logPrefix, '_promptAjaxPerform');

    var
      requestPage = pPage == undefined ? 1 : pPage,
      ajaxData = {
        "x01": 'AUTOCOMPLETE',                          //tryb
        "x02": this.pluginSettings.prompt.rowsPerPage,   //rows per page
        "x03": this._maskGetValue(),                    //search string
        "x04": requestPage           //page
      },

      ajaxOptions = {
        "beforeSend" : $.proxy(this._promptAjaxBeforeSend, this, requestPage),
        "success"    : $.proxy(this._promptAjaxSuccess, this),
        "error"      : $.proxy(this._promptAjaxError, this),
        "complete"   : $.proxy(this._promptAjaxComplete, this)
      };
    
    if ( this.mask.state.ajaxRunning ) {
      this.mask.state.xhr.abort();
      this.mask.state.ajaxRunning = false;
      this.prompt.icon.removeAttr('class').addClass('fa fa-search');
    }

    this.mask.state.xhr = apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
    
  },
  _promptAjaxBeforeSend: function( pRequestedPage, pJqXHR, pSettings ) {
    apex.debug.log(this.logPrefix, '_promptAjaxBeforeSend', pJqXHR, pSettings, pRequestedPage);

    var 
      message  = this.C_PROMPT_TEXT_SEARCHING,
      template = ''+
        '<div class="searching">'+
        '  <span class="text">'+message+'</span>'+
        '</div>';

    this.mask.state.ajaxRunning = true;
    this.mask.state.areResultsAvailable = false;

    if ( this.prompt.container == undefined ) {
      this._promptCreateNew();
      this._promptAddListeners();
      this._promptShow();
    }

    if ( pRequestedPage == 1 ) {
      this.prompt.body.html( template );  
    }

    this.prompt.icon.removeAttr('class').addClass('fa fa-anim-spin fa-refresh');
  },  
  _promptAfterRenderingData: function(){
    apex.debug.log(this.logPrefix, '_promptAfterRenderingData');

    var
      resultsRendered = this.prompt.body.find('li').length,
      loadMore = $('<div class="loadMore"><a href="javascript: void(0)">'+this.C_PROMPT_TEXT_LOAD_MORE+'</a></div>'),
      isLoarMore = this.prompt.body.find('.loadMore').length > 0;

    loadMore.find('a').on('click', $.proxy(function(){
      this._promptAjaxPerform( ++this.mask.state.lastFetchedPage );
    }, this));

    loadMore.css('borderColor', this.inputCss.borderColor)

    if ( 
      this.prompt.body.outerHeight() < this.pluginSettings.prompt.maxHeight 
      && resultsRendered < this.mask.state.totalCount
    ) {
      if ( isLoarMore == false ) {
        this.prompt.body.append(loadMore);  
      }
      
    }
    else {
      this.prompt.body.find('.loadMore').remove();
    }

  },
  _promptAjaxSuccess: function(pData, pTextStatus, pJqXHR){
    apex.debug.log(this.logPrefix, '_ajaxSuccess', 'pData', pData);
    apex.debug.log(this.logPrefix, '_ajaxSuccess', 'pTextStatus', pTextStatus);
    apex.debug.log(this.logPrefix, '_ajaxSuccess', 'pJqXHR', pJqXHR);


    this.mask.state.totalCount      = pData.dataVolume[0].CNT;
    this.mask.state.lastFetchedPage = pData.requestedPage;
    this.mask.state.areResultsAvailable = true;

    
    this.prompt.icon.removeAttr('class').addClass('fa fa-search');

    pData = this._dataExtendSelectedFromArrayOfObjects( pData, this.mask.state.selected );

    if ( this.mask.state.lastFetchedPage > 1 ) {
      this._promptAppendData( pData );
    }
    else {

      if ( 
        this._maskGetValue().length == 0 
        && (
          this.options.item.lov_null_text != undefined
          || this.options.item.lov_null_value != undefined
        )
      ) {
        pData.data.unshift({
          "R": this.options.item.lov_null_value,
          "D": this.options.item.lov_null_text,
          "isAPEXNullValue": true
        });
      }

      this._promptRenderData( pData );
    }

    this._promptAfterRenderingData();

    if ( pData.query != undefined ) {
      this._writeQueryToConsole( pData.query );
    }
    

  },
  _promptAjaxError: function(pJqXHR, pTextStatus, pErrorThrown){
    apex.debug.log(this.logPrefix, '_promptAjaxError', 'pJqXHR', pJqXHR, 'pTextStatus', pTextStatus, 'pErrorThrown', pErrorThrown);


    if ( pJqXHR.statusText == 'abort' ) {
      apex.debug.log(this.logPrefix, '_promptAjaxError', 'AJAX call aborted!');
      return void(0);
    }

    var array;

    this._promptHide( this.mask.itemContainer );

    this._maskAjaxStateButtonSetError({
      "addInfo"  : pJqXHR.responseJSON.addInfo,
      "error"    : pJqXHR.responseJSON.error,
      "techInfo" : pJqXHR.responseJSON.techInfo
    });

    this._maskAjaxStateButtonError();

    
    this._triggerEvent('paeli_prompt_error', this._promptGetEventData());
    this._throwErrorText( pErrorThrown );

  },
  _promptGetEventData: function(){
    return {
      "prompt": {
        "container": this.prompt.container,
        "header"   : this.prompt.header,
        "body"     : this.prompt.body,
        "input"    : this.prompt.input

      },
      "mask": {
        "selected"     : this.mask.state.selected,
        "dataAvailable": this.mask.state.areResultsAvailable
      }

    };
  },
  _promptAjaxComplete: function(){
    apex.debug.log(this.logPrefix, '_promptAjaxComplete');

    this.mask.state.ajaxRunning = false;

    this._promptCheckWidthDifference();
  },
  _promptCheckWidthDifference: function(){
    apex.debug.log(this.logPrefix, '_promptCheckWidthDifference');
    //apex.debug.log(this.logPrefix, '_promptCheckWidthDifference', 'container width', this.mask.container.outerWidth());
    //apex.debug.log(this.logPrefix, '_promptCheckWidthDifference', 'prompt width', this.prompt.container.outerWidth());
    //apex.debug.log(this.logPrefix, '_promptCheckWidthDifference', 'prompt container', this.prompt.container.get(0));

    var difference;

    if ( !this.prompt.isVisible ) {
      apex.debug.log(this.logPrefix, '_promptCheckWidthDifference prompt not visible, do nth');
      return void(0);
    }

    difference = this.prompt.container.outerWidth() - this.mask.container.outerWidth();    

    if ( difference > 0 ) {
      this.prompt.fixBorder.css('width', difference+1);
      this.prompt.fixBorder.show();
    }    
    else {
      this.prompt.fixBorder.hide();
    }

  },
  _promptAjaxAbort: function(){
    apex.debug.log(this.logPrefix, '_promptAjaxAbort');

    this.mask.state.xhr.abort();
    this.mask.state.ajaxRunning = false;
  },
  _promptAddListeners: function(){
    apex.debug.log(this.logPrefix, '_promptAddListeners');

    this.prompt.body
      .on('click', 'li', $.proxy( this._promptLiClickHanlder, this ))
      .on('scroll', this._debounce($.proxy(this._promptScrollCallback, this), 100) )
      .on('mouseenter', 'li',$.proxy(this._promptUnhighlightOther, this))

    this.prompt.input
      .on('blur', $.proxy(this._promptInputBlur,this))
      .on('focus', $.proxy(this._promptInputFocus,this))
      .on('keyup', this._debounce( $.proxy( this._maskKeyUp, this), this.pluginSettings.prompt.debounceTime ) )
      .on('keydown', this._debounce( 
          $.proxy( 
            this._promptInputKeyDownHandler, this
          ), 
          this.pluginSettings.prompt.navigationDebounceTime
        ) 
      );

    this.prompt.menu.expand.on('click', $.proxy( this._promptMenuChangeView, this ) );
    this.prompt.menu.sort  .on('click', $.proxy( this._promptMenuSortTags, this ) );
    this.prompt.menu.clear .on('click', $.proxy( this._promptMenuClearValues, this ) );

  },
  _promptMenuSortTags: function( pEvent ){
    apex.debug.log(this.logPrefix, '_promptMenuSortTags', pEvent);

    var 
      target = $(pEvent.target),
      direction = this.mask.state.sorted == 'asc' ? 'desc' : 'asc';    

    this.mask.state.selected.sort( this._sortJson( "display", direction ) );

    this._promptRenderTags();

    //set state of mask
    this.mask.state.sorted = direction;

    if ( this.prompt.isVisible ) {
      //set state of prompt
      this.prompt.menu.sort.removeClass('asc desc').addClass( direction );
    }

    this.prompt.input.focus();
  },
  _promptMenuClearValues: function(){
    apex.debug.log(this.logPrefix, '_promptMenuClearValues');

    this._promptEmptyMask();
    this._promptEmptyTags();
    //this._promptHiglightRemoveCurrentLi();
    this._promptLiRemoveSelection();
    this._promptReposition();
    this._promptSelectFirstRow();
    this._promptApplyValues( true );

    this.prompt.input.focus();
  },
  _promptRenderTags: function(){
    apex.debug.log(this.logPrefix, '_promptRenderTags');

    var rendered = 0;
    var limitTags = this.pluginSettings.prompt.tagsNo;

    //empty array of tags in mask
    this._promptEmptyTags();

    //recreate array of tags from selected values
    for ( var i=0; i < this.mask.state.selected.length; i++ ){

      if ( this.pluginSettings.prompt.areTagsLimited && i >= limitTags ) {
        //render summary tag
        this._promptTagsSummary( this.mask.state.selected.length - rendered );
        break;
      }

      if ( this.pluginSettings.displayExtra && this.mask.state.selected[i].isExtraValue ) {
        this._promptTagsAddNew( this.mask.state.selected[i].display, this.mask.state.selected[i].value, this.mask.state.selected[i].isExtraValue );
        rendered++;
      }
      else if ( !this.pluginSettings.displayExtra && this.mask.state.selected[i].isExtraValue ) {
        apex.debug.log(this.logPrefix, '_promptRenderTags', 'value "'+this.mask.state.selected[i].value+'" is not in value from sql query.');
      }
      else {
        this._promptTagsAddNew( this.mask.state.selected[i].display, this.mask.state.selected[i].value, this.mask.state.selected[i].isExtraValue );
        rendered++;
      }

    }

    if ( rendered == 0 && !this.pluginSettings.prompt.areTagsLimited ) {
      this._promptPlaceHolderShow();
    }   
    else {
      this._promptPlaceHolderHide();
    }

  },
  _promptMenuChangeView: function(){
    apex.debug.log(this.logPrefix, '_promptMenuChangeView');

    if ( this.mask.container.is('.expanded') ) {
      this.mask.container.removeClass('expanded');
      this.prompt.menu.expand.removeClass('expanded')

    }
    else {
      this.mask.container.addClass('expanded');
      this.prompt.menu.expand.addClass('expanded')
    }

    this._promptReposition();

    this.prompt.input.focus();


  },
  _promptUnhighlightOther: function( pEvent ){
    apex.debug.log(this.logPrefix, '_promptUnhighlightOther');

    this.prompt.body.find('li').not( pEvent.target ).removeAttr('aria-highlighted');

  },
  _promptScrollCallback: function( pEvent) {
    apex.debug.log(this.logPrefix, '_promptScrollCallback', 'pEvent', pEvent, 'scrollTop', this.prompt.body.scrollTop());

    var 
      percent = this._getScrollPercent( this.prompt.body, this.pluginSettings.prompt.maxHeight );
      

    if ( percent > 90 && this.mask.state.ajaxRunning == false ) {
      apex.debug.log(this.logPrefix, '_promptScrollCallback', 'Reached over 90% of container scroll. Perform AJAX');
      this._promptAjaxPerform( ++this.mask.state.lastFetchedPage );
    }
    else if ( percent > 90 && this.mask.state.ajaxRunning == true ) {
      apex.debug.log(this.logPrefix, '_promptScrollCallback', 'There is AJAX awaiting for results. AJAX not performed');
    }
    else {
      apex.debug.log(this.logPrefix, '_promptScrollCallback', 'Just scroll. do nothing'); 
    }

  },
  _promptInputBlur: function(){
    apex.debug.log(this.logPrefix, '_promptInputBlur');
  },
  _promptInputFocus: function(){
    apex.debug.log(this.logPrefix, '_promptInputFocus');
  },
  _promptDisplayError: function( pText ){
    apex.debug.log(this.logPrefix, '_promptDisplayError', "pText", pText, this.prompt);

    this.prompt.body.html( '<div class="promptError"><span class="fa fa-exclamation-triangle"></span> '+pText+'</div>' );
  },
  _promptLiRemoveSelection: function(){
    apex.debug.log(this.logPrefix, '_promptHiglightRemoveAll');

    this.prompt.body.find('[aria-selected=true]').removeAttr('aria-selected');
  },
  _promptHiglightRemoveCurrentLi: function(){
    this.mask.state.currentSelection.removeAttr('aria-highlighted');
    this.mask.state.currentSelection = undefined;
  },
  _promptHighlightLi: function( pLiElement ){
    //remove selection in all set of data
    if ( this.mask.state.currentSelection != undefined ) {
      this._promptHiglightRemoveCurrentLi();  
    }    

    this.mask.state.currentSelection = pLiElement;

    pLiElement.attr('aria-highlighted', true);
  },
  _promptSelectFirstRow: function(){
    apex.debug.log(this.logPrefix, '_promptSelectFirstRow');

    var firstLine = this.prompt.body.find('li').first();

    this._promptHighlightLi( firstLine );
  },
  _dataExtendSelectedFromArrayOfObjects: function( pData, pSelected ){
    //apex.debug.log(this.logPrefix, '_dataExtendSelectedFromArrayOfObjects', "pData", pData);
    //apex.debug.log(this.logPrefix, '_dataExtendSelectedFromArrayOfObjects', "pSelected", pSelected);

    for ( var i in pData.data ) {
      for ( var y=0; y < pSelected.length; y++ ) {

/*
        console.log( 'pSelected[y]' );
        console.log( pSelected[y] );
        console.log( 'pData.data[i]' );
        console.log( pData.data[i] );
*/
        if ( pSelected[y].value.toString() == pData.data[i].R.toString() ) {
          pData.data[i].selected = true;
          continue;
        }

      }
    }

    apex.debug.log(this.logPrefix, '_dataExtendSelectedFromArrayOfObjects', "returned pData", pData);

    return pData;
  },
  _promptTemplateDefault: function(){
    apex.debug.log(this.logPrefix, '_promptTemplateDefault');

    var
      template = ''+
        '{{#data}}'+
        '<li'+
        ' aria-return-value="{{{R}}}"'+
        ' aria-display-value="{{{D}}}"'+
        ' {{#selected}}aria-selected="true"{{/selected}}'+
        ' {{#isAPEXNullValue}}aria-null-value="true"{{/isAPEXNullValue}}'+
        ' title="{{{D}}}"'+
        ' class="default"'+
        '>'+
        ' {{{D}}}'+
        '</li>'+
        '{{/data}}';

    return template;
  },
  _promptRenderDataInCustomTemplate: function( pData ){
    apex.debug.log(this.logPrefix, '_promptRenderDataInCustomTemplate', "pData", pData);

    var 
      rendered = '',
      li,
      isSelected = false,
      rowHtml;

    for ( var i=0; i < pData.data.length; i++ ) {
      isSelected = pData.data[i].selected ? true : false;
      rowHtml = this.prompt.customTemplateFunction.call(this, pData.data[i] );
      li = ''+
        '<li'                                      +
        ' title="'+pData.data[i].D+'"'             +
        ' class="custom"'                          +
        ' aria-return-value="'+pData.data[i].R+'"' +
        ' aria-display-value="'+pData.data[i].D+'"'+
        ' aria-selected="'+isSelected+'"'          +
        '>'+rowHtml+'</li>';
      rendered += li;
    }

    return rendered;

  },
  _promptAppendData: function( pData ){
    apex.debug.log(this.logPrefix, '_promptAppendData', "pData", pData);

    var 
      rendered,
      template = this._promptTemplateDefault();

    if ( pData.data.length == 0 ) {
      return void(0);
    }

    if ( this.pluginSettings.prompt.isCustomTemplate == false ) {
      apex.debug.log(this.logPrefix, '_promptAppendData', "render data in default template");

      try {
        rendered = $(Mustache.render( template, pData));
      } catch( error ) {
        this._throwError(error);
      }
    }
    else {
      apex.debug.log(this.logPrefix, '_promptAppendData', "render data in custom template");

      rendered = this._promptRenderDataInCustomTemplate( pData );
    }
  
    this.prompt.body.find('ul').append( rendered );
    this._promptReposition();

    this._triggerEvent('paeli_prompt_data_appended', this._promptGetEventData());
  },
  _promptDrawMinimalInputLength: function( pMessage ){
    apex.debug.log(this.logPrefix, '_promptDrawMinimalInputLength');

    var 
      message = pMessage.replace('%0', this.pluginSettings.prompt.minimalInputLength),
      template = ''+
        '<div class="nodatafound">'+
        '  <span class="text">'+message+'</span>'+
        '</div>';

    this.prompt.body.html( template );
    this.mask.state.areResultsAvailable = false;

  },
  _promptDrawNodataFound: function(){
    apex.debug.log(this.logPrefix, '_promptDrawNodataFound');
    //
    var 
      message = this.C_PROMPT_TEXT_NO_DATA_FOUND,
      template = ''+
        '<div class="nodatafound">'+
        '  <span class="fa fa-table-search icon"></span>'+
        '  <span class="text">'+message+'</span>'+
        '</div>';

    this.prompt.body.html( template );
    this.mask.state.areResultsAvailable = false;
  },
  _promptRenderData: function( pData ){
    apex.debug.log(this.logPrefix, '_promptRenderData', "pData", pData);

    var 
      rendered,
      defaultTemplate = this._promptTemplateDefault();

    if ( pData.data.length == 0 ) {
      this._promptDrawNodataFound();
      return void(0);
    }

    if ( !this._checkIfDataContainsDisplayColumn( pData ) && !this._checkIfDataContainsReturnColumn( pData ) ) {
      this._promptDisplayError('Invalid SQL query');
      this._throwErrorText('SQL query lacks display and return columns. Aliases "d" and "r" are required!');
    }

    if ( this.pluginSettings.prompt.isCustomTemplate == false ) {
      apex.debug.log(this.logPrefix, '_promptRenderData', "render data in default template");

      defaultTemplate = '<ul>'+defaultTemplate+'</ul>';  

      try {
        rendered = $(Mustache.render( defaultTemplate, pData));
      } catch( error ) {
        this._throwError(error);
      }

    }
    else {
      apex.debug.log(this.logPrefix, '_promptRenderData', "render data in custom template");

      rendered = this._promptRenderDataInCustomTemplate( pData );
      rendered = '<ul>'+rendered+'</ul>';
    }

    this.prompt.body.html( rendered );
    this._promptReposition();
    this.mask.state.areResultsAvailable = true;
    this._promptSelectFirstRow();

    this._triggerEvent('paeli_prompt_data_rendered', this._promptGetEventData());
  },

  _promptGetHiglighted: function(){
    return this.prompt.body.find('[aria-highlighted="true"]');
  },
  _maskPopupButtonKeyDown: function( pEvent ) {
    apex.debug.log(this.logPrefix, '_maskPopupButtonKeyDown', pEvent);

    var
      keyCode = pEvent.keyCode;

    if ( this._isNavigationKey( keyCode ) == 'DOWN' ) {
      this._promptSearchInputFocusHandler();
    }

  },
  _maskStateSelectedRemove: function( pIndex, pTriggerChangeEvent ) {
    apex.debug.log(this.logPrefix, '_maskStateSelectedRemove', 'pIndex', pIndex);

    var removed;

    removed = this.mask.state.selected.splice( pIndex, 1 );

    apex.debug.log(this.logPrefix, '_maskStateSelectedRemove', 'removed object', removed);

    if ( pTriggerChangeEvent ) {
      this._promptApplyValues( pTriggerChangeEvent );
    }

  },
  _maskStateSelectedAdd: function( pObject, pTriggerChangeEvent, pIsExtraValue, pIsNullValue ){
    apex.debug.log(this.logPrefix, '_maskStateSelectedAdd', 'pObject', pObject, 'pTriggerChangeEvent', pTriggerChangeEvent, pIsExtraValue);

    if ( pIsExtraValue ) {
      pObject.isExtraValue = true;      
    }

    if ( pIsNullValue ) {
      pObject.isAPEXNullValue = true; 
    }

    this.mask.state.selected.push( pObject );

    if ( pTriggerChangeEvent ) {
      this._promptApplyValues( pTriggerChangeEvent );
    }
    
  },

  _maskStateSelectedGetIndex: function( pValue ){
    apex.debug.log(this.logPrefix, '_maskStateSelectedGetIndex', pValue);

    for ( var i=0; i < this.mask.state.selected.length; i++ ) {
      if ( this.mask.state.selected[i].value == pValue ) {
        return i;
      }
    }

    return -1;
  },
  _promptIsValueSelected: function( pValue ){
    apex.debug.log(this.logPrefix, '_promptIsValueSelected', pValue);

    return this.mask.state.selected.indexOf( pValue ) > -1;
  },
  _promptRemoveHighlightedfromAllLi: function(){
    apex.debug.log(this.logPrefix, '_promptRemoveHighlightedfromAllLi' );

    this.prompt.body.find( 'li[aria-highlighted]' ).removeAttr('aria-highlighted');
  },
  _promptRemoveHighlightedFromLi: function( pLi ){
    apex.debug.log(this.logPrefix, '_promptRemoveHighlightedFromLi', 'pLi', pLi);

    pLi.removeAttr('aria-highlighted');
  },
  _promptUnselectValue: function( pValue, pLi ){
    apex.debug.log(this.logPrefix, '_promptUnselectValue', 'pValue', pValue);
    apex.debug.log(this.logPrefix, '_promptUnselectValue', 'pLi', pLi);

    var 
      value = pValue,
      indexOf = this._maskStateSelectedGetIndex( value ),
      removed = null;

    if ( indexOf < 0 ) {
      this._throwErrorText(' Value "'+pValue+'" is not selected!');
    }

    this._maskStateSelectedRemove( indexOf, true );    

    if ( pLi != undefined ) {
      pLi.removeAttr('aria-selected')
    }

    this._maskTagRemove( value );

    if ( this.prompt.isVisible ) {
      this._promptReposition();  
    }
  },
  _promptGetLiSelected: function(){
    apex.debug.log(this.logPrefix, '_promptGetLiSelected');

    return this.prompt.body.find('li').filter( function( pIndex, pElem ){
      return $(pElem).is('[aria-selected=true]');
    } );
  },
  _promptSelectValue: function( pLi ){
    apex.debug.log(this.logPrefix, '_promptSelectValue', pLi.get(0));

    var
      valueReturn  = pLi.attr('aria-return-value'),
      valueDisplay = pLi.attr('aria-display-value'),
      isAPEXNullValue = pLi.attr('aria-null-value'),
      current = this._promptGetLiSelected().first();

    if ( this.mask.state.areResultsAvailable == false) {
      apex.debug.log(this.logPrefix, '_promptLiClickHanlder no results to be selected!');
      return void(0);
    }

    if ( 
      this.pluginSettings.isMultipleSelection == false
      && this.mask.state.selected.length == 1
    ) {
      apex.debug.log(this.logPrefix, '_promptLiClickHanlder deselect and select new');

      try {
        this._promptUnselectValue( current.attr('aria-return-value'), current );
      } catch( error ) {
        this._promptEmptyTags();
        this._promptEmptyMask();
      }
      
    }
    else if (
      this.pluginSettings.isMultipleSelection == false
      && this.mask.state.selected.length > 1
    ) {
      this._promptRemoveHighlightedfromAllLi();
      this._promptEmptyTags();
      this._promptEmptyMask();

    }

    this._maskStateSelectedAdd(
      {
        "display": valueDisplay,
        "value"  : valueReturn
      }, 
      true,  //trigger change event
      false, //is not extra value,
      (isAPEXNullValue == "true")
    );

    pLi.attr('aria-selected', true);

    this._promptHighlightLi(pLi);

    this.mask.state.currentSelection = pLi;

    if ( this.prompt.isVisible ) {
      this._promptReposition();
      this.prompt.input.focus();
    }


    if ( this.pluginSettings.isMultipleSelection ) {
      //multiple selection
      if ( this.pluginSettings.prompt.isRapidSelection ) {

        if ( this.prompt.input.val().length > 0 ) {
          //empty mask input
          //trigger key up to populate new autocomplete
          this.prompt.input.val(null).trigger('keyup');
        }
        
      }
      else {
        //length of mask input is 0, do not force new autocomplete result
      }
    }
    else {
      //single selection
      if ( this.pluginSettings.prompt.isRapidSelection ) {

        if ( this.prompt.input.val().length > 0 ) {
          //rapid selection is on
          this.prompt.input.val(null).trigger('keyup');
        }
        else {
          //length of mask input is 0, do not force new autocomplete result
        }
      }
      else {
        this._promptHide( this.mask.itemContainer );  
      }
    }
  },
  _promptApplyValues: function( pTriggerChange ){
    apex.debug.log(this.logPrefix, '_promptApplyValues', 'pTriggerChange', pTriggerChange);
    apex.debug.log(this.logPrefix, '_promptApplyValues', 'values', this.mask.state.selected.length);

    var arrayOfValues = [];

    if ( this.mask.state.selected.length > 0 ) {

      for ( var i=0; i< this.mask.state.selected.length; i++ ) {
        arrayOfValues.push( this.mask.state.selected[i].value );
      }

      this.element.val( arrayOfValues.join(this.C_VALUE_SEPARATOR) );

      this.mask.state.selected.sort( this._sortJson( "display", this.mask.state.sorted ) );

      this._promptRenderTags();

    }
    else {
      this.element.val(null);
      this._promptEmptyTags();
      this._promptPlaceHolderShow();
    }

    if ( pTriggerChange ) {
      apex.event.trigger( this.element.get(0), 'change', this );  
    }
    
  },
  _promptTagsGetObject: function( pReturn ){
    apex.debug.log(this.logPrefix, '_promptTagsGetObject', pReturn);

    for ( var i=0; i < this.mask.state.tags.length; i++ ) {
      if ( this.mask.state.tags[i].value == pReturn ) {
        apex.debug.log(this.logPrefix, '_promptTagsGetObject', 'pReturn has index '+i);
        return this.mask.state.tags[i];
      }
    }

    apex.debug.log(this.logPrefix, '_promptTagsGetObject', 'pReturn is not in tags list');

    return undefined;

  },
  _promptTagsGetIndex: function( pReturn ){
    apex.debug.log(this.logPrefix, '_promptTagsGetIndex', pReturn, 'in', this.mask.state.tags);

    for ( var i=0; i < this.mask.state.tags.length; i++ ) {
      if ( this.mask.state.tags[i].value == pReturn ) {
        apex.debug.log(this.logPrefix, '_promptTagsGetIndex', 'pReturn has index '+i);
        return i;
      }
    }

    apex.debug.log(this.logPrefix, '_promptTagsGetIndex', 'pReturn is not in tags list');

    return -1;
  },
  _promptGetLiByReturnValue: function( pValue ){
    apex.debug.log(this.logPrefix, '_promptGetLiByReturnValue', pValue);

    var li = this.prompt.body.find('li').filter( function( pIndex, pElem ){
      return $(pElem).attr('aria-return-value').toString() == pValue.toString();
    } );

    if ( li.length > 0 ) {
      apex.debug.log(this.logPrefix, '_promptGetLiByReturnValue', 'found li element', li);
    }
    else {
      apex.debug.log(this.logPrefix, '_promptGetLiByReturnValue', 'there is no li element with return value', pValue); 
    }
    return li;
  },
  _maskRemoveTagFromDOM: function( pEvent ){
    apex.debug.log(this.logPrefix, '_maskRemoveTagFromDOM', pEvent);

    var 
      value = $(pEvent.target).closest('div').attr('aria-return-value');

    if ( this.mask.state.disabled ) {
      apex.debug.log(this.logPrefix, '_maskRemoveTagFromDOM', 'APEX item is disabled, do nothing.');
      pEvent.preventDefault();
      pEvent.stopImmediatePropagation();
      return void(0);
    }


    if ( this.prompt.isVisible ) {
      this._promptReposition();
      this._promptGetLiByReturnValue( value ).removeAttr('aria-selected')
    }

    this._maskStateSelectedRemove( this._maskStateSelectedGetIndex( value ) );

    pEvent.stopImmediatePropagation();

    this._promptApplyValues( true );
  },
  _maskTagRemove: function( pReturn ){
    apex.debug.log(this.logPrefix, '_maskTagRemove', pReturn);

    var 
      indexOf = this._promptTagsGetIndex( pReturn ),
      tag = undefined;

    if ( indexOf < 0 ) {
      apex.debug.log(this.logPrefix, '_maskTagRemove', 'Tag not found');      
      return void(0);
    }

    tag = this.mask.state.tags[indexOf];

    //remove tag from dom
    apex.debug.log(this.logPrefix, '_maskTagRemove', 'tag to be removed from DOM', tag);
    tag.container.remove();

    //remove tag from list of tags
    this.mask.state.tags.splice( indexOf, 1 );

  },
  _promptTagsAddNew: function( pDisplay, pReturn, pIsExtraValue ){
    apex.debug.log(this.logPrefix, '_promptTagsAddNew', pDisplay, pReturn, pIsExtraValue);

    var 
      extraValueClass = pIsExtraValue ? ' extra' : '',
      newTag = $(''+
        '<div class="tag'+extraValueClass+'" aria-return-value="'+pReturn+'" title="'+pDisplay+'">'+
        '  <span class="value">'+pDisplay+'</span>'+
        '  <span class="fa fa-times remove"></span>'+
        '</div>'+
        ''),
      newTagObject = {
        "value": pReturn,
        "display": pDisplay,
        "container": newTag,
        "isExtraValue": pIsExtraValue ? true : false
      };

    this.mask.state.tags.push( newTagObject );
    this.mask.tagsContainer.append( newTag );
  },
  _promptTagsSummaryOpenSelected: function(){
    apex.debug.log(this.logPrefix, '_promptTagsSummaryOpenSelected');

    if ( this.pluginSettings.isPopupReportAvailable ) {
      apex.debug.log(this.logPrefix, '_promptTagsSummaryOpenSelected, popup not available, do nth');

      this.popup.showSelectedCheckbox.prop('checked', true);
      this._popupOpen();
    
    }

  },
  _promptTagsSummary: function( pNotRenderedCnt ){
    apex.debug.log(this.logPrefix, '_promptTagsSummary', pNotRenderedCnt);

    var 
      text;
      summaryTag = $(''+
        '<div class="tag summary">default summary</div>'
      );

    if ( this.pluginSettings.prompt.areTagsLimited && this.pluginSettings.prompt.tagsNo > 0 ) {
      text = this.C_TAGS_LIMITED_OTHERS.replace( '%0', pNotRenderedCnt );
    }
    else {
      text = this.C_TAGS_LIMITED_0.replace( '%0', pNotRenderedCnt);
    }

    summaryTag.text( text );

    summaryTag.on('click', function(pEvent){ pEvent.stopImmediatePropagation(); });
    summaryTag.on('dblclick', $.proxy(this._promptTagsSummaryOpenSelected, this));

    this.mask.tagsContainer.append( summaryTag );
  },
  _promptCheckClickOutside: function( pEvent ){
    apex.debug.log(this.logPrefix, '_promptCheckClickOutside', pEvent.currentTarget, pEvent.target);

    if ( 
      $.contains( this.prompt.container.get(0), pEvent.target ) 
      || $.contains( this.mask.container.get(0), pEvent.target )
      || $(pEvent.target).is('.remove')
      || window.getSelection().toString().length > 0
    ) {
      return void(0);
    }
    else {
      //don't focus any element, end-user clicked outside plugin dom nodes
      this._promptHide( undefined );
    }

  },  
  /*
    AUTOCOMPLETE to be remapped as _prompt*
  */
  _getNextFocusAble: function(){
    apex.debug.log(this.logPrefix, '_getNextFocusAble');

    var tabbableArr, indexOf, next;

    this.element.show();
    
    tabbableArr = $(':tabbable').toArray();
    indexOf = tabbableArr.indexOf( this.element.get(0) );
    next = tabbableArr[ indexOf+1 ];

    this.element.hide();

    return $(next);

  },

  _promptNavigateArrows: function( pDirection ){
    //apex.debug.log(this.logPrefix, '_promptNavigateArrows', pDirection);

    var 
      resultsRendered = this.prompt.body.find('li').length,
      allPrev = this.mask.state.currentSelection.prevAll().length,
      allNext = this.mask.state.currentSelection.nextAll().length,
      scrolltop = this.prompt.body.scrollTop(),
      heightToTopBorder,
      next,
      position,
      scrollValue;

    if ( pDirection == 'DOWN' ) {
      next = this.mask.state.currentSelection.next();
    }
    else if ( pDirection == 'UP' ){
      next = this.mask.state.currentSelection.prev();
    }
    else {
      return void(0);
      //
    }

    position = next.position();

    if ( next.length > 0 ) {
      this._promptHighlightLi( next );  

      heightToTopBorder = position.top-scrolltop;

      if ( heightToTopBorder >= 0 && heightToTopBorder <= this.pluginSettings.prompt.maxHeight-next.outerHeight() ) {
        //do nothing, li element is fully visible
      }
      else {
        if ( pDirection == 'DOWN' ) {
          scrollValue = ( scrolltop + (heightToTopBorder+next.outerHeight() - this.pluginSettings.prompt.maxHeight) )  
        }
        else {
          scrollValue = scrolltop + heightToTopBorder;
        }

        this.prompt.body.scrollTop( scrollValue );  
      }
    }
    else {
      if ( resultsRendered < this.mask.state.totalCount ) {
        this._promptAjaxPerform( ++this.mask.state.lastFetchedPage );
      }

    }
    
  },
  _promptLiClickHanlder: function( pEvent ){
    apex.debug.log(this.logPrefix, '_promptLiClickHanlder', pEvent);

    var 
      target = $(pEvent.target).is('li') ? $(pEvent.target) : $(pEvent.target).closest('li');
      

    if ( target.is('[aria-selected="true"]') ) {
      this._promptUnselectValue( target.attr('aria-return-value'), target );  
    }
    else {
      apex.debug.log(this.logPrefix, '_promptLiClickHanlder currently selected items: ', this.mask.state.selected.length, this.mask.state.selected);

      this._promptSelectValue( target );
    }
    

  },

  _maskHandleFocus: function( pEvent ){
    apex.debug.log(this.logPrefix, '_maskHandleFocus', pEvent);
//    this.mask.itemContainerBody.attr('contenteditable', true)
  },
  _maskHandleBlur: function( pEvent ){
    apex.debug.log(this.logPrefix, '_maskHandleBlur', pEvent);
//    this.mask.itemContainerBody.attr('contenteditable', false)
  },

  _maskHandleKeyDown: function( pEvent ){
    apex.debug.log(this.logPrefix, '_maskHandleKeyDown', pEvent);
    var
      keyCode = pEvent.keyCode,
      isNavigationDirection = this._isNavigationKey( keyCode );

    if ( isNavigationDirection == 'DOWN' ) {
      /*

      this._promptCreateNew();
      this._promptAddListeners();

      this._promptShow();

      this.prompt.input.focus();
      */
      this._promptSearchInputFocusHandler();
    }

  },
  _maskHandleKeyPress: function( pEvent ){
    apex.debug.log(this.logPrefix, '_maskHandleKeyPress', pEvent);

    this._promptCreateNew();
    this._promptAddListeners();

    if ( pEvent.keyCode != 13 ) {
      this.prompt.input.val( pEvent.key )
    }

    this.prompt.input.trigger('keyup');

    this._promptShow();

    setTimeout( $.proxy( function(){
      this.prompt.input.focus();              
    }, this ), 100 )



  },
  _promptFakeCursorHandler: function( pEvent ){
    apex.debug.log(this.logPrefix, '_promptFakeCursorHandler', pEvent);

    var 
      fakeInput= $('<input type="text" class="fakeCursorHandler">');

      this.mask.itemContainerBody.append( fakeInput );
      
      setTimeout( $.proxy(function( pInput ){
        pInput
          .on('blur', function( pEvent ){
            $(pEvent.target).remove();
          })
          .on('keypress', $.proxy( function( pEvent ){
            var 
              self = $(pEvent.target),
              value = self.val();

            pEvent.stopImmediatePropagation();
            pEvent.preventDefault();

            this._promptCreateNew();
            this._promptAddListeners();

            
            

            
            this.prompt.input.val( value ).trigger('keyup');

            setTimeout( $.proxy( function(){
              this.prompt.input.focus();              
            }, this ), 100 )

            this.prompt.input.focus();

            self.remove();
            this._promptShow();

          }, this ));

        fakeInput.focus()

      }, this, fakeInput), 100 );
      //

  
      
    return false;
  },
  _promptSearchInputFocusHandler: function( pEvent ){
    apex.debug.log(this.logPrefix, '_promptSearchInputFocusHandler');

    if ( this.mask.state.disabled ) {
      apex.debug.log(this.logPrefix, '_promptSearchInputFocusHandler', 'APEX item is disabled, do nothing.');
      return void(0);
    }

    if ( !this.pluginSettings.isAutocompleteAvailable ) {
      apex.debug.log(this.logPrefix, '_promptSearchInputFocusHandler', 'Autocomplete is not available');
      return void(0);
    }

    if ( this.prompt.container == undefined ) {

      this._promptCreateNew();
      this._promptAddListeners();

      this._promptShow();

      if (
        this.pluginSettings.prompt.isMinimalInputLength
        && this.pluginSettings.prompt.minimalInputLength == 0
      ){
        this._promptDrawMinimalInputLength( this.C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_0 );
      }
      else if ( 
        this.pluginSettings.prompt.isMinimalInputLength 
        && this._promptIsMinimalInputLengthMatched()
      ) {
        this._promptDrawMinimalInputLength( this.C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_X );
      }
      else {
        this._promptAjaxPerform();
      }

      this.prompt.input.focus();
    }    
  },


  /*
    OTHER
  */
  _promptIsMinimalInputLengthMatched: function(){
    var returnValue = this.pluginSettings.prompt.minimalInputLength > this.prompt.input.val().length;

    apex.debug.log(this.logPrefix, '_promptIsMinimalInputLengthMatched returns', returnValue);
    return returnValue;
  },
  _sortJson: function( pProperty, pDirection ){
    apex.debug.log(this.logPrefix, '_sortJson', pProperty, pDirection);

    var sortOrder;

    if ( pDirection == 'asc' ) {
      sortOrder = 1;
    }
    else {
      sortOrder = -1;
    }

    return function (a,b) {
        var result = (a[pProperty] < b[pProperty]) ? -1 : (a[pProperty] > b[pProperty]) ? 1 : 0;
        return result * sortOrder;
    }

  },
  _highlightWord: function( pText, pSearchString ){
    apex.debug.log(this.logPrefix, '_highlightWord', pText, pSearchString);

    var 
      text = pText,
      searchString = pSearchString,
      resultText,
      position = text.toUpperCase().indexOf( searchString.toUpperCase() ),
      start,
      middle,
      end;


    if ( position > -1 ) {
      start   = text.substr(0, position );
      middle  = text.substr(start.length, searchString.length);
      end     = text.substr(position+middle.length, text.length);
      return start+'<span class="highlight">'+middle+'</span>'+end;
    }
    else {
      return pText;
    }
  },
  _getItemContainer: function(){
    return this.mask.container.find('.itemContainer');
  },
  _getItemContainerBody: function(){
    return this.mask.container.find('.itemContainerBody');
  },
  _getTagsContainer: function(){
    return this.mask.container.find('.tags');
  },
  _getMaskInput: function(){
    return this.mask.container.find('.fakeInput');
  },
  _isNavigationKey: function( pKeyCode ) {
    //apex.debug.log(this.logPrefix, '_isNavigationKey', pKeyCode);

    var returnValue = false;

    if ( pKeyCode == 40 ) {
      returnValue = 'DOWN';
    }
    else if ( pKeyCode == 38 ) {
      returnValue = 'UP';
    }
    else if ( pKeyCode == 37 ) {
      returnValue = 'LEFT';
    }
    else if ( pKeyCode == 39 ) {
      returnValue = 'RIGHT';
    }

    else {
      returnValue = false;
    }

    return returnValue;
  },
  _maskGetValue: function(){
    apex.debug.log(this.logPrefix, '_maskGetValue');

    return this.prompt.input.val();
  },
  _maskKeyUpManageIcons: function(){
    apex.debug.log(this.logPrefix, '_maskKeyUpManageIcons');

    if ( this.popup.search.val().length == 0 ) {
      this.popup.search.addClass('empty');
    }
    else {
      this.popup.search.removeClass('empty');
    }
  },
  _promptInputKeyDownHandler: function( pEvent ){
    var 
      keyCode = pEvent.keyCode,
      isNavigationDirection = this._isNavigationKey( keyCode );


    if ( pEvent.shiftKey ) {
      return false;
    }

    if ( keyCode == 9 ) {
      apex.debug.log(this.logPrefix, '_promptInputKeyDownHandler', 'TAB key pressed.');
      this._promptHide( this.mask.popupButton );
    }      
    else if ( keyCode == 27) {
      //when escape or tab pressed
      apex.debug.log(this.logPrefix, '_promptInputKeyDownHandler', 'ESCAPE key pressed.');
      this._promptHide( this.mask.itemContainer );
      
      return false;
    }
    else if ( isNavigationDirection ) {

      if ( this.mask.state.areResultsAvailable ) {
        pEvent.preventDefault();
        pEvent.stopImmediatePropagation();

        this._promptNavigateArrows( isNavigationDirection );  
      }
      else {
        apex.debug.log(this.logPrefix, '_promptInputKeyDownHandler', 'no results available');        
      }
    }
  },  
  _maskKeyUp: function( pEvent ){
    apex.debug.log(this.logPrefix, '_maskKeyUp', pEvent);

    var 
      keyCode = pEvent.keyCode,
      isNavigationDirection = this._isNavigationKey( keyCode ),
      highlighted = this._promptGetHiglighted();

    if ( keyCode == 9 ) {
      apex.debug.log(this.logPrefix, '_maskKeyUp', 'TAB key released. Do not perform autocomplete because it was already');
      return false; 
    }

    if ( keyCode == 16 ) {
      apex.debug.log(this.logPrefix, '_maskKeyUp', 'SHIFT key released. Do not perform autocomplete');
      return false; 
    }

    if ( isNavigationDirection ) {
      return false;
    }
    else if ( keyCode == 13 ) {
      apex.debug.log(this.logPrefix, '_maskKeyUp', 'enter pressed');

      if ( this.mask.state.areResultsAvailable == false ) {
        apex.debug.log(this.logPrefix, '_maskKeyUp', 'results are not yet available');        
        return false;
      }

      if ( highlighted.is('[aria-selected="true"]') ) {
        this._promptUnselectValue( highlighted.attr('aria-return-value'), highlighted );
      }
      else {
        this._promptSelectValue( highlighted );
      }
      
      return false;
    }

    if (
      this.pluginSettings.prompt.isMinimalInputLength
      && this.pluginSettings.prompt.minimalInputLength == 0
      && this.prompt.input.val().length == 0
    ){
      this._promptDrawMinimalInputLength( this.C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_0 );
    }
    else if ( 
      this.pluginSettings.prompt.isMinimalInputLength 
      && this._promptIsMinimalInputLengthMatched()
    ) {
      this._promptDrawMinimalInputLength( this.C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_X );
    }
    else {
      this._promptAjaxPerform();  
    }
    
    
  },
  _checkIfDataContainsDisplayColumn: function( pData ) {
    apex.debug.log(this.logPrefix, '_checkIfDataContainsDisplayColumn', "pData", pData);

    var exists = false;

    for ( var i in pData.data ) {
      if (pData.data[i].D != undefined) {
        exists = true;
        break;
      }
    }

    return exists;
  },
  _checkIfDataContainsReturnColumn: function( pData ) {
    apex.debug.log(this.logPrefix, '_checkIfDataContainsReturnColumn', "pData", pData);

    var exists = false;

    for ( var i in pData.data ) {
      if (pData.data[i].R != undefined) {
        exists = true;
        break;
      }
    }

    return exists;
  },
  _getScrollPercent: function( pElement, pMaxHeight ){
    var 
      scrolled = pElement.scrollTop(),
      realHeight = pElement.children().outerHeight() - pMaxHeight,
      percent ;

    percent = scrolled * 100 / realHeight;
    percent = percent > 100 ? 100 : percent;

    apex.debug.log(this.logPrefix, '_getScrollPercent', 'result', percent);

    return percent;
  },

  _createItemPopupButton: function(  ){
    apex.debug.log(this.logPrefix, '_createItemPopupButton');

    //
    var button = $('<button></button>');
    var icon = $('<span></span>');

    icon.addClass( 'fa '+this.options.item.icon );

    button.addClass('a-Button a-Button--popupLOV');
    button.attr('id', this.options.item.name+'_BUTTON' );
    button.attr('onclick', 'javascript: return false;')
    button.append( icon );

    return button;
  },
  _createItemAjaxButton: function(  ){
    apex.debug.log(this.logPrefix, '_createItemAjaxButton');
    
    var 
      button = $('<button></button>'),
      icon = $('<span></span>');

    icon.addClass( 'fa fa-search icon' );

    button.addClass('a-Button a-Button--ajaxIndicator a-Button--popupLOV');
    button.attr('id', this.options.item.name+'_BUTTON_AJAX' );
    button.attr('onclick', 'javascript: return false;')
    button.append( icon );

    return button;
  },  
  _maskCreateNew: function(){
    apex.debug.log(this.logPrefix, '_maskCreateNew', 'element', this.element.get(0));
    
    var 
      classes     = this.element.get(0).attributes.class != undefined ? this.element.get(0).attributes.class.value.split(' ') : [],
      maskLayer   = $('<div class="masking"></div>'),
      popupButton = this._createItemPopupButton(),
      ajaxStateButton = this._createItemAjaxButton(),
      placeholder = $('<div class="placeholder">'+this.element.attr('placeholder')+'</div>'),
      container = $('<div></div>'),
      itemContainer = $('<div></div>'),
      itemContainerBody = $('<div></div>'),
      tagsConteiner = $('<div></div>');

    apex.debug.log(this.logPrefix, '_maskCreateNew', 'classes', classes);

    container
      .addClass('pretius--enhancedLovItem mask');

    for (var i in classes) {
      container.addClass( classes[i]+'-mask' );  
    }
      
    itemContainer
      .addClass('itemContainer')
      .css('borderColor', this.inputCss.borderColor);

    //if ( this.pluginSettings.isPopupReportAvailable == false ) {
    if ( this.pluginSettings.isAutocompleteAvailable == true ) {
      //in case of popup report is not available, make mask focusable
      //so the end-user can navigate to field using tab key
      itemContainer.attr('tabindex', 0);
    }


    itemContainerBody
      .addClass('itemContainerBody')
      .append( tagsConteiner.addClass('tags') )
      .append( maskLayer )
      .appendTo( itemContainer );

    itemContainer.append( placeholder );

    itemContainer.appendTo( container );

    if ( this.pluginSettings.isPopupReportAvailable ) {
      popupButton.on('click', $.proxy(this._popupOpenByButton, this));
      itemContainer.after( popupButton );
    }
  
    itemContainer.after( ajaxStateButton.hide() );

    //transfer result width of APEX item after rendering the element
    if ( this.element.closest('.col').outerWidth() >= this.element.outerWidth() ) {
      container.css('minWidth', this.element.outerWidth());
    }
    
    container.css('minHeight', this.element.outerHeight() );

    return {
      "container"         : container,
      "itemContainer"     : itemContainer,
      "itemContainerBody" : itemContainerBody,
      "tagsContainer"     : tagsConteiner,
      "placeholder"       : placeholder,
      "popupButton"       : popupButton,
      "ajaxStateButton"   : {
        "button": ajaxStateButton,
        "errorMessage": undefined,
        "isError": false
      }
    }

  },
//
  _writeQueryToConsole: function( pQuery ) {
    apex.debug.log(this.logPrefix, '_writeQueryToConsole', 'start'); 

    var array = pQuery.split("\n");

    for ( var i=0; i < array.length; i++ ) {
      apex.debug.log('#', array[i]);       
    }

    apex.debug.log(this.logPrefix, '_writeQueryToConsole', 'end'); 
  },
  _throwErrorText: function( pText ){
    apex.debug.log(this.logPrefix, '_throwErrorText', 'pText', pText); 
    throw pText;

  },

  _debounce: function(func, wait, immediate) {
    //apex.debug.log('debounce', 'func', func, 'wait', wait, 'immediate', immediate);

    var timeout;
    return function() {
      var context = this, args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  },
  _throwError: function( pErrorThrown ) {
    apex.debug.log(this.logPrefix, '_throwError', 'pErrorThrown', pErrorThrown); 
    throw pErrorThrown;
  }

});