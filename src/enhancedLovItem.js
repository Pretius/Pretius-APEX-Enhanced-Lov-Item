$.widget('pretius.enhancedLovItem', {
//
//
  C_LOG_DEBUG    : apex.debug.LOG_LEVEL.INFO,
  C_LOG_WARNING  : apex.debug.LOG_LEVEL.WARN,
  C_LOG_ERROR    : apex.debug.LOG_LEVEL.ERROR,
  C_LOG_LEVEL6   : apex.debug.LOG_LEVEL.APP_TRACE,
  C_LOG_LEVEL9   : apex.debug.LOG_LEVEL.ENGINE_TRACE,
//
//
  C_VALUE_SEPARATOR                             : ':',
  C_DISPLAY_SEPARATOR                           : ',',
  C_AJAX_STATUS_SUCCESS                         : 'SUCCESS',
  C_AJAX_STATUS_ERROR                           : 'ERROR',
  C_POPUP_SEARCH_PLACEHOLDER                    : 'Enter a search term',
  C_POPUP_BTN_SELECT_TEXT                       : 'Select',
  C_POPUP_SHOW_SELECTED_LABEL                   : "Show only selected",
  C_POPUP_TEXT_ROWS_SELECTED                    : "All results (%0) on this page has been selected.",
  C_POPUP_TEXT_NO_DATA_FOUND_SEARCH             : 'No data found for search term "%0".',
  C_POPUP_TEXT_NO_DATA_FOUND_QUERY              : 'Dictionary has no data to render.',
  C_POPUP_TEXT_CLEAR_FILTERING                  : 'Click <a href="javascript: void(0)" class="clearFiltering">here</a> to clear filtering.',
  C_POPUP_TEXT_UNSAVED_CHANGES                  : 'You have selected %0 values. Closing without saving will not save selected values.',
  C_POPUP_TEXT_SEACH_IN_SELECTED                : 'You have filtered %0 row(s) from %1 selected row(s). </br>Click <a href="javascript: void(0)" class="showSelected">here</a> to get back to all selected rows.',
  C_POPUP_TEXT_FILTERED_INFO                    : '%0 results found for search term "%1". ',
  C_POPUP_TEXT_EXTRA_VALUE                      : 'Value "%0" is not within dictionary.',
  C_PROMPT_MENU_EXPAND_TITLE                    : 'Show or hide all tags',
  C_PROMPT_MENU_SORT_TITLE                      : 'Sort tags',
  C_PROMPT_MENU_CLEAR_TITLE                     : 'Clear all selected values',
  C_PROMPT_MENU_PASTE_TITLE                     : 'Paste values',
  C_PROMPT_MENU_POPUP_TITLE                     : 'Open popup report',
  C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_X          : 'Please enter %0 or more characters.',
  C_PROMPT_TEXT_MINIMAL_INPUT_LENGTH_0          : 'Start typing to get results.',
  C_PROMPT_TEXT_NO_DATA_FOUND                   : 'No data found.',
  C_PROMPT_TEXT_SEARCHING                       : 'Searching...',
  C_PROMPT_TEXT_RAPID_SELECTION                 : 'Start typing to select more...',
  C_PROMPT_TEXT_LOAD_MORE                       : 'Load more...',
  C_ERROR_DEBUG_OFF                             : "Please contact application administrator for more information.\nDetailed information available in debug mode.",  
  C_TAGS_LIMITED_OTHERS                         : 'and %0 more...',
  C_TAGS_LIMITED_0                              : '%0 selected',
  C_POPUP_PAGINATION_PREV                       : 'Previous',
  C_POPUP_PAGINATION_NEXT                       : 'Next',
  C_POPUP_PAGINATION_OF                         : 'of',
  C_POPUP_HEADER_SORT_ASC_TITLE                 : 'Sort ascending',
  C_POPUP_HEADER_SORT_DESC_TITLE                : 'Sort descending',
  C_POPUP_TEXT_SEARCHING                        : 'Waiting for results...',
  //v1.1.0
  C_POPUP_PASTE_TEXTAREA_PLACEHOLDER            : 'Values must be separated by a newline character',
  C_POPUP_PASTE_BTN_PARSE_TEXT                  : 'Parse',
  C_POPUP_PASTE_BTN_CLEAR_TEXT                  : 'Clear',
  C_POPUP_PASTE_BTN_SELECT_TEXT                 : 'Apply',
  C_POPUP_PASTE_BTN_BACK_TEXT                   : 'Back',
  C_POPUP_PASTE_SUMMARY_PASTED_COUNT            : 'Total number of pasted values',
  C_POPUP_PASTE_SUMMARY_PASTED_LENGHT           : 'Total length of pasted values including separator',
  C_POPUP_PASTE_SUMMARY_MAX_LENGTH              : 'Maximum length',
  C_POPUP_PASTE_SUMMARY_VALUES_TO_BE_APPLIED    : 'Number of pasted values to be applied %0',
  C_POPUP_PASTE_SUMMARY_VALUES_EXCEEDING_LIMIT  : 'Number of pasted values exceeding the maximum length %0',
  C_POPUP_PASTE_SUMMARY_SHOW_LIST_ANCHOR        : '(show list)',
  C_POPUP_PASTE_SUMMARY_MAXLENGTH_NOTSET        : 'not set',
  C_POPUP_PASTE_SUMMARY_TH_VALUES_OUT           : 'Values exceeding maximum length limit',
  C_POPUP_PASTE_SUMMARY_TH_VALUES_IN            : 'Values ready to be applied',
  C_POPUP_PASTE_SUMMARY_TH_SUMMARY              : 'Summary',


  _create: function(){
    var 
      popupColumnSettingsJson = undefined;

    this.logPrefix = '# '+this.options.plugin.name+':';
    //this.logPrefix = '# ('+this.element.get(0).id+') '+this.options.plugin.name+':';

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_create', 'Debug level = "'+apex.debug.getLevel()+'"');

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_create', 'options', {
      "options": this.options, 
      'widget': this
    });

    this._super( this.options );
    this._applyTranslations();

    this.pluginStopped = false;


    this.pluginSettings = {
      "maxlength"                : this.options.item.element_max_length,
      "isDebugOn"                : this.options.debug,
      "displayExtra"             : this.options.item.lov_display_extra,
      "popupSearchDebounceTime"  : 300,
      "isAutocompleteAvailable"  : this.options.attributes.settings != null && this.options.attributes.settings.indexOf('AUTOCOMPLETE') > -1,
      "isPopupReportAvailable"   : this.options.attributes.settings != null && this.options.attributes.settings.indexOf('POPOUP_REPORT') > -1,
      "isMultipleSelection"      : this.options.attributes.settings != null && this.options.attributes.settings.indexOf('MS') > -1,
      "popup": {
        "width"                  : this.options.attributes.popupWidth,
        "height"                 : this.options.attributes.popupHeight,
        "title"                  : this._getPluginSettings_popupTitleText(),
        "rowsPerPage"            : 10,
        "isReportBasicConf"      : this._getPluginSettings_isBasicConfiguration(),        
        //sprwadz w kontekscie isReportBasicConf
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
        "isRapidSelection"       : this.options.attributes.autoCompleteSettings != null && this.options.attributes.autoCompleteSettings.indexOf('RS') > -1,
        "hideToolbar"            : this.options.attributes.autoCompleteSettings != null && this.options.attributes.autoCompleteSettings.indexOf('HT') > -1
        
      }
    };

    this.inputCss = {
      //"borderColor" : this.element.css('borderColor') == 'rgb(0, 0, 0)' ? 'rgb(223, 223, 223)' : this.element.css('borderColor'),
      "fontSize"    : this.element.css('fontSize'),
      "lineHeight"  : this.element.css('lineHeight')
    };

    if ( this.options.item.lov_cascade_parent_items != undefined ) {
      $(this.options.item.lov_cascade_parent_items).on('change', $.proxy(this._cascadingLovItem, this));
    }    
    
    this.widgetUniqueId  = $('<div></div>').uniqueId().attr('id');
    
    this.mask = this._maskCreateNew();
    this.popup = this._popupCreateObject();

    this.prompt = this._promptCreateNew();

    if ( this.element.closest('.t-DialogRegion').length > 0 ) {
      this.element.closest('.t-DialogRegion-body').append( this.prompt.container );
    }
    else {
      $('body').append( this.prompt.container );  
    }

    this.paste = {
      "popup": this._pastePopupCreateNew(),
      "classes": {
        "body": "body"
      },
      "state": {
        "pasted": [],
        "parsed": [],
        "outOfLimit": []
      }
  
    };

    if ( apex.debug.getLevel() >= this.C_LOG_LEVEL6 ) {
      this._createMaskDebugButton();  
    }

    $( window ).resize($.proxy( function(){
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'window resized, reposition prompt');

      if ( this.prompt.isVisible ) {
        
        this._promptReposition();
      }
    }, this));


    this.element.on('apexrefresh', $.proxy(this._manualRefreshCallback, this));

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_create', 'Plugin instance created. Unique id = "#'+this.widgetUniqueId+'"');

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'pluginSettings', this.pluginSettings);    



    this.element.after( this.mask.container );
    this.element.hide();

    this.ig = {
      "isEmbededInGrid": this.element.closest('.a-GV-columnItem').length > 0,
      "grid": undefined,
      "region": undefined
    };

    this._integrateWithApexApi();

    if ( this._elementGetValueLenght() > 0 && !this.pluginStopped ) {
      this._getOnLoadLov( this._elementGetValue() );
    }
    else {
      this._promptPlaceHolderShow();
    }
    
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
  /*
    *
    * function name: _getPluginSettings_popupTitleText
    * description  :
    * params       : none
    *
  */

  _getPluginSettings_popupTitleText: function() {
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_getPluginSettings_popupTitleText', {
      "arguments": arguments
    });

    var returnValue = 'undefined';

    if ( 
      this.options.attributes.popupSettings != null 
      && this.options.attributes.popupSettings.indexOf('CT') > -1
    ) {
      returnValue = this.options.attributes.popupTitleText
    }
    else {
      returnValue = this.options.item.plain_label;
    }

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_getPluginSettings_popupTitleText', "returns", {
      "returnValue": returnValue
    });

    return returnValue;
  },  
  /*
    *
    * function name: _getPluginSettings_isBasicConfiguration
    * description  :
    * params       : none
    *
  */
  _getPluginSettings_isBasicConfiguration: function() {
    var returnValue = false;

    if (
      //popup settings is empty
      this.options.attributes.popupSettings == null
      || (
        //popup settings is not empty but checkbox is not checked
        this.options.attributes.popupSettings != null
        && this.options.attributes.popupSettings.indexOf('RCC') == -1
      )
    ) {
      returnValue = true;
    }
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_getPluginSettings_isBasicConfiguration', {
      "arguments": arguments,
      "return": returnValue
    });

    return returnValue;
  },
  /*
    *
    * function name: _cascadingLovItem
    * description  :
    * params       : none
    *
  */  
  _cascadingLovItem: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_cascadingLovItem', {
      "arguments": arguments
    });

    var
      ajaxData = {
        "x01": "CASCADINGLOV",
        "pageItems": this._ajaxGetPageItems()
      },
      ajaxOptions = {
        "target"     : this.element.get(0),
        "beforeSend": $.proxy(function(){
          this._maskAjaxStateButtonRunning();
        }, this),
        "complete": $.proxy(function(){
          this._maskAjaxStateButtonHide();
          this._getOnLoadLov( this._elementGetValue() );
        },this)
      };

    apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
  },
  /*
    *
    * function name: _triggerEvent
    * description  : Triggers given event on APEX item
    * params:
    *   - pEventName - event name to be triggered
    *   - pData      - data to be passed with the event (this.data in dynamic action)
    *
  */
  _triggerEvent: function( pEventName, pData ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_triggerEvent', {
      "arguments"  : arguments,
      "pEventName" : pEventName,
      "pData"      : pData
    });

    apex.event.trigger( this.element.get(0), pEventName, pData );
  },
  /*
    *
    * function name: _manualRefreshCallback
    * description  :
    * params       : none
    *
  */
  _manualRefreshCallback: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_manualRefreshCallback', {
      "arguments"  : arguments
    });

    this._getOnLoadLov();
  },
  /*
    *
    * function name: _getColumnIdxByColumnName
    * description  : 
    * params:
    *   - pColumnName - tbd
    *
    * 
  */
  _getColumnIdxByColumnName: function( pColumnName ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getColumnIdxByColumnName', {
      "arguments"  : arguments,
      "pColumnName": pColumnName, 
      "columns"    : this.options.columns
    });

    var 
      returnValue = undefined;

    for (var i in this.options.columns) {
      if ( this.options.columns[i].COLUMN_NAME == pColumnName) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getColumnIdxByColumnName column "'+pColumnName+'" found, return its IDX.');
        returnValue = this.options.columns[i].IDX;
        break;
      }
    }

    if ( returnValue == undefined ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getColumnIdxByColumnName column "'+pColumnName+'" not found, return 1st column.', this.options.columns[0].IDX);
      returnValue = this.options.columns[0].IDX;
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getColumnIdxByColumnName returns "'+returnValue+'"');

    return returnValue;
  },
  /*
    *
    * function name: printFunctionToConsole
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  printFunctionToConsole: function( pFunctionBody ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'printFunctionToConsole', {
      "arguments"    : arguments,
      "pFunctionBody": pFunctionBody
    });

    var array = pFunctionBody.split("\n");

    for ( var i = 0; i < array.length; i++ ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'printFunctionToConsole #', array[i]);
      //apex.debug.info(this.logPrefix, '#', array[i]);  
    }
  },
  /*
    *
    * function name: _promptPrepateCustomTemplateFunction
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _promptPrepateCustomTemplateFunction: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptPrepateCustomTemplateFunction', {
      "arguments": arguments
    });

    var func;

    try {
      func = new Function(
        "pRow",
        "this.data = pRow;\n"+
        this.pluginSettings.prompt.template
      );

      this.printFunctionToConsole( func.toString() );

      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptPrepateCustomTemplateFunction', "function created");
    
    } catch(error) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptPrepateCustomTemplateFunction', "function can't be created: "+error.message);
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
  /*
    *
    * function name: _applyTranslations
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _applyTranslations: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_applyTranslations', {
      "arguments": arguments
    });

    var translations = this.options.attributes.translations;

    if ( translations.length > 0 ) {
      for ( var i in translations ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_applyTranslations', translations[i].TRANSLATABLE_MESSAGE, translations[i].MESSAGE_TEXT);
        this[translations[i].TRANSLATABLE_MESSAGE.replace('PAELI_', 'C_')] = translations[i].MESSAGE_TEXT;
      }
    }
  },
  /*
    *
    * function name: _integrateWithApexApi
    * description  : https://docs.oracle.com/en/database/oracle/application-express/19.1/aexjs/item.html
    * params:
    *   -
    *   -
    *
  */
  _integrateWithApexApi: function() {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_integrateWithApexApi', {
      "arguments": arguments,
      "domElement": this.element.get(0)
    });

    var 
      pOptions = {
        /*
          *
          * getPopupSelector
          *
        */
        "getPopupSelector": $.proxy( function(){
          var 
            selectors = [
              '[data-prompt="'+this.widgetUniqueId+'"]',
              '[data-popup="'+this.widgetUniqueId+'"]'
              //'[data-paste="'+this.widgetUniqueId+'"]',
              //'[data-mask="'+this.widgetUniqueId+'"]'   */
            ];

          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'getPopupSelector', {
            "arguments" : arguments,
            "selector": selectors.join(','),
            "selector eval": $(selectors.join(','))
          });

          return selectors.join(',');
        }, this ),
        /*
          *
          * setValue
          *
        */
        "setValue": $.proxy(function( pValue, pDisplayValue, pSuppressChangeEvent ) {
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'setValue', {
            "arguments": arguments,            
            "pValue"               : pValue,
            "pDisplayValue"        : pDisplayValue,
            "pSuppressChangeEvent" : pSuppressChangeEvent
          });

          this._promptEmptyTags();
          this._promptEmptyMaskState();

          if ( pValue == undefined || pValue == null || pValue != undefined && pValue != null && pValue.length == 0 ) {
            pValue = null;
          }

          this._elementSetValue( pValue );

          if ( pSuppressChangeEvent == true || pSuppressChangeEvent == undefined ) {
            apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_integrateWithApexApi', 'setValue', 'Change event is not triggered (Suppress Change Event is set to "Yes").');
          }
          else {
            apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_integrateWithApexApi', 'setValue', 'Change event is triggered (Suppress Change Event is set to "No").');

            apex.event.trigger( this.element.get(0), 'change' );
          }

          if ( pValue == null ) {
            // reset value
            // do nothing
          }
          else if ( pDisplayValue != undefined ) {
            // value is defined
            // pDisplay is defined
            // render tag
            // for example quick picks

            this._maskStateSelectedAdd(
              {
                "display": pDisplayValue,
                "value"  : pValue
              },                          // object
              false,                      // is extra value,
              false                       // is null value
            );

            this._promptApplyValues( false );
            this._promptRenderTags();
          }
          else {
            this._getOnLoadLov( pValue );
          }
        }, this),
        /*
          *
          * nullValue
          *
        */
        "nullValue": this._getItemLOVNullValue(),
        /*
          *
          * reinit
          *
        */
        "reinit": $.proxy( function( pValue, pDisplay ){

          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'reinit', {
            "arguments": arguments,
            "pValue": pValue,
            "pDisplay": pDisplay,
            "id": this.element.get(0).id
          });

          var 
            //displayArr = pDisplay == null ? pValue.split( this.C_DISPLAY_SEPARATOR ) : pDisplay.split( this.C_DISPLAY_SEPARATOR ),
            displayArr = [],
            notEmpty = false,
            objectTemp;

          if ( this.ig.isEmbededInGrid ) {
            this.ig.region = this.element.closest('.a-IG');
            this.ig.grid = this.ig.region.interactiveGrid('getViews').grid;
          }

          //reset autocomplete search string
          this.prompt.input.val(null);

          //reset popup report state
          this.popup.state.searchString          = undefined;
          this.popup.state.lastFetchedPage       = null;
          this.popup.state.sortedColumnIdx       = null;
          this.popup.state.sortedColumnDirection = 'asc';
          this.popup.state.searchColumnIdx       = undefined;
 
          this._promptEmptyTags();
          this._promptEmptyMaskState();

          if ( this.pluginSettings.isMultipleSelection ) {

            if ( !Array.isArray( pValue ) ) {
              pValue = pValue.split( this.C_VALUE_SEPARATOR );
            }

            try {
              displayArr = pDisplay.split( this.C_DISPLAY_SEPARATOR );
            } catch( pError ) {
              //              
              displayArr = pValue;

              apex.debug.message(this.C_LOG_WARNING, this.logPrefix, 'reinit', 'Couldn\'t split display value(s) because it is null.', {
                'pError' : pError
              });            
            }            

            if ( pValue.length == 1 && pValue[0].length == 0 ) {
              //empty value
              apex.debug.message(this.C_LOG_WARNING, this.logPrefix, 'reinit', 'Value is not set');
              this._elementSetValue( "" );
              return void(0);
            }

            for (var i=0; i < pValue.length; i++) {
              objectTemp = {
                "value"  : pValue[i],
                "display": displayArr[i]
              };

              this._maskStateSelectedAdd( 
                objectTemp, // object
                false,      // is extra value
                false       // is null value
              );
            }

            notEmpty = pValue.length > 0;
          }
          else { //singular selection
            if ( pValue.length > 0 ) {
              objectTemp = {
                "value"  : pValue,
                "display": pDisplay
              };
          
              this._maskStateSelectedAdd( 
                objectTemp, // object
                false,      // is extra value
                false       // is null value
              );

              notEmpty = true;

            } 
            else {
              apex.debug.message(this.C_LOG_WARNING, this.logPrefix, 'reinit', 'Value is not set');
              this._elementSetValue( "" );
            }           
          }

          if ( notEmpty ) {
            this._elementSetValue( pValue );
            this._promptApplyValues( false );
            this._promptRenderTags();
          }
        }, this ),
        /*
          *
          * enable
          *
        */
        "enable": $.proxy(function() {
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'enable', {
            "arguments": arguments,
            "id": this.element.get(0).id
          });

          this._enable();
        }, this),
        /*
          *
          * disable
          *
        */
        "disable": $.proxy(function() {
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'disable', {
            "arguments": arguments,
            "id": this.element.get(0).id
          });

          this._disable();
        }, this),
        /*
          *
          * afterModify
          *
        */
        "afterModify": $.proxy(function(){
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'afterModify', {
            "arguments": arguments,
            "id": this.element.get(0).id,
            "value": this._elementGetValue()
          });
          // code to always fire after the item has been modified (value set, enabled, etc.)
          // deprecated by Oracle
        }, this),
        /*
          *
          * loadingIndicator
          *
        */
        "loadingIndicator": $.proxy(function( pLoadingIndicator ){
          var returnElem;

          returnElem = pLoadingIndicator;

          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'loadingIndicator', {
            "arguments": arguments,
            "pLoadingIndicator": pLoadingIndicator,
            "id": this.element.get(0).id,
            "return": returnElem
          });

          // code to add the loading indicator in the best place for the item
          return returnElem;
        }, this),
        /*
          *
          * setFocusTo
          *
        */
        "setFocusTo": $.proxy(function(){
          var returnElem;
          returnElem = this.mask.popupButton;

          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'setFocusTo', {
            "arguments": arguments,
            "id": this.element.get(0).id,
            "return": returnElem
          });

          return returnElem;
        }, this),
        /*
          *
          * setStyleTo
          *
        */
        "setStyleTo": this.mask.container,
        /*
          *
          * displayValueFor
          *
        */
        "displayValueFor": $.proxy( function( pValue ){
          var 
            arrayOfDisplay = [],
            returnValue;

          for (var i=0; i < this.mask.state.selected.length; i++) {
            if ( pValue.indexOf( this.mask.state.selected[i].value ) > -1 ) {
              arrayOfDisplay.push( this.mask.state.selected[i] );
            }
          }

          arrayOfDisplay = arrayOfDisplay.map( function( pElem ){
            return pElem.display
          } );   

          if (arrayOfDisplay.length == 0) {
            returnValue = pValue;
          }
          else {
            returnValue = arrayOfDisplay.join( this.C_DISPLAY_SEPARATOR );  
          }

          

          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'displayValueFor', {
            "arguments": arguments,
            "pValue": pValue,
            "id": this.element.get(0).id,
            "return": returnValue,
            "arrayOfDisplay": arrayOfDisplay,
            "arrayOfDisplay length": arrayOfDisplay.length
          });

          return returnValue;

        }, this),
        /*
          *
          * getValue
          *
        */
        "getValue": $.proxy(function() {
          var returnValue = this._elementGetValue();

          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'getValue', {
            "arguments": arguments,
            "id": this.element.get(0).id,
            "return": returnValue
          });
          
          
          return returnValue;
        }, this),
        /*
          *
          * show
          *
        */        
        "show": $.proxy(function() {
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'show', {
            "arguments": arguments,
            "id": this.element.get(0).id
          });
          // code that shows the item type
        }, this),
        /*
          *
          * hide
          *
        */        
        "hide": $.proxy(function() {
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'hide', {
            "arguments": arguments,
            "id": this.element.get(0).id
          });
          // code that hides the item type
        }, this),
        /*
          *
          * addValue
          *
        */        
        "addValue": $.proxy(function( pValue ) {
          apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_integrateWithApexApi', 'addValue', {
            "arguments": arguments,
            "pValue": pValue,
            "id": this.element.get(0).id
          });
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
  /*
    *
    * function name: _disable
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _disable: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_disable', {
      "arguments": arguments
    });

    this.element.prop( "disabled", true );
    this.mask.state.disabled = true;
    this.mask.container.addClass('disabled');
    this.mask.popupButton.prop('disabled', true);
  },
  /*
    *
    * function name: _enable
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _enable: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_enable', {
      "arguments": arguments
    });

    this.element.prop( "disabled", false );
    this.mask.state.disabled = false;
    this.mask.container.removeClass('disabled');
    this.mask.popupButton.prop('disabled', false);
  },
  /*
    *
    * function name: _createMaskDebugButton
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _createMaskDebugButton: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_createMaskDebugButton', {
      "arguments": arguments
    });

    var button = $('<button class="debugAutocomplete a-Button a-Button--popupLOV"><span class="fa fa-info"></span></button>');

    button.click($.proxy( function(pEvent){
      pEvent.preventDefault();

      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'debug prompt', this.mask);

    }, this ));

    button.attr('title', 'Writes to console autocomplete state');

    this.mask.popupButton.after( button );
  },
  /*
    *
    * function name: _getExtraValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _getItemLOVNullText: function(){
    var returnValue;

    if ( this.options.item.lov_null_text == null ) {
      returnValue = "undefined";
    }
    else if ( this.options.item.lov_null_text == undefined ) {
      returnValue = "undefined";
    }
    else {
      returnValue = this.options.item.lov_null_text; 
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getItemLOVNullText', {
      "arguments": arguments,
      "lov_null_text": this.options.item.lov_null_text,
      "return": returnValue
    });

    return returnValue;

  },  
  /*
    *
    * function name: _getExtraValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _getItemLOVNullValue: function(){
    var returnValue;

    if ( this.options.item.lov_null_value == null ) {
      returnValue = "";
    }
    else if ( this.options.item.lov_null_value == undefined ) {
      returnValue = "undefined";
    }
    else {
      returnValue = this.options.item.lov_null_value; 
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getItemLOVNullValue', {
      "arguments": arguments,
      "lov_null_value": this.options.item.lov_null_value,
      "return": returnValue
    });

    return returnValue;

  },
  /*
    *
    * function name: _getExtraValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _getExtraValues: function( pValuesSent, pDataReturned ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getExtraValues', {
      "arguments": arguments,
      "pValuesSent": pValuesSent,
      "pDataReturned": pDataReturned,
      "pDataReturned length": pDataReturned.length
    });

    var 
      dataToCheck = $.extend([], pDataReturned),
      extraValues = $.extend([], pValuesSent).filter(function (element) {
      return element != null && element.length > 0;
    });

    //add null value so it won't be treated as extra value
    if ( this.options.item.lov_display_null ) {
      dataToCheck.push( {
        "D": this._getItemLOVNullText(),
        "R": this._getItemLOVNullValue()
      } );
    }
  
    for ( var i=0; i < dataToCheck.length; i++ ) {

      indexOf = extraValues.indexOf( dataToCheck[i].R.toString() );

      if ( indexOf > -1 ) {
        extraValues.splice( indexOf, 1 );
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getExtraValues', 'removing '+dataToCheck[i].R.toString()+' from ', extraValues);
      }
      else {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getExtraValues', 'looking for '+dataToCheck[i].R.toString()+' in ', extraValues);
      }
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getExtraValues', 'extraValues', extraValues);

    return extraValues;
  },
  /*
    *
    * function name: _maskPopupButtonHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _maskPopupButtonHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskPopupButtonHide', {
      "arguments": arguments
    });
    
    this.mask.popupButton.hide();
  },
  /*
    *
    * function name: _maskPopupButtonShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _maskPopupButtonShow: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskPopupButtonShow', {
      "arguments": arguments
    });
    
    this.mask.popupButton.show();
  },
  /*
    *
    * function name: _maskAjaxStateButtonHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskAjaxStateButtonHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonHide', {
      "arguments": arguments
    });
    
    this._maskPopupButtonShow();
    this.mask.ajaxStateButton.button.hide();
  },
  /*
    *
    * function name: _maskAjaxStateButtonSetError
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskAjaxStateButtonSetError: function( pObject, pStopPlugin ){ 
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonSetError', {
      "arguments": arguments,
      "pObject": pObject,
      "pStopPlugin": pStopPlugin
    });
    
    $.extend(this.mask.ajaxStateButton, {"errorObject":pObject});

    //error occured but don't have to stop plugin usage
    this.mask.state.error = true;

    if ( pStopPlugin )  {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonSetError stop plugin!');  
      this.pluginStopped = true;  
      this.mask.state.disabled = true;
    }
  },
  /*
    *
    * function name: _maskAjaxStateButtonDisplayError
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskAjaxStateButtonDisplayError: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonDisplayError', {
      "arguments": arguments
    });

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
  /*
    *
    * function name: _maskAjaxStateButtonError
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskAjaxStateButtonError: function( ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonError', {
      "arguments": arguments,
      "this.pluginStopped": this.pluginStopped
    });

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
  /*
    *
    * function name: _maskAjaxStateButtonRunning
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskAjaxStateButtonRunning: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonRunning', {
      "arguments": arguments
    });

    this._maskPopupButtonHide();

    this.mask.ajaxStateButton.button.find('.icon')
      .removeAttr('class')
      .addClass('icon fa fa-refresh fa-anim-spin');

    this.mask.ajaxStateButton.button.show();
  },
  /*
    *
    * function name: _maskAjaxStateButtonShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskAjaxStateButtonShow: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskAjaxStateButtonShow', {
      "arguments": arguments
    });

    this.mask.ajaxStateButton.button.show();
  },
  /*
    *
    * function name: _getOnLoadLov_SuccessCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _getOnLoadLov_SuccessCallback: function( pMode, pValuesSent, pData, pTextStatus, pJqXHR ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_getOnLoadLov', 'success', {
      "arguments"   : arguments,
      "pMode"       : pMode,
      "pValuesSent" : pValuesSent,
      "pData"       : pData,
      "pTextStatus" : pTextStatus,
      "pJqXHR"      : pJqXHR      ,
    });

    var 
      objectTemp,
      valuesExtra;

    this._promptEmptyTags();
    this._promptEmptyMaskState();

    //pData.data.sort( this._sortJson( "D", "asc" ) );
    //this.mask.state.sorted = "asc";

    if ( pData.nullValueSelected ) {

      objectTemp = {
        "value"  : this._getItemLOVNullValue(),
        "display": this._getItemLOVNullText()
      };

      apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_getOnLoadLov', 'success', 'NULL value selected', objectTemp);

      this._maskStateSelectedAdd( 
        objectTemp,   // object
        false,        // is extra value
        true          // is null value
      );
    }

    //add values on which tags will be rendered
    for ( var i=0; i < pData.data.length; i++ ) {

      objectTemp = {
        "value"  : pData.data[i].R.toString(),
        "display": pData.data[i].D
      };

      this._maskStateSelectedAdd( 
        objectTemp,   // object
        false,        // is extra value
        false         // is null value
      );

    }

    if ( pMode == 'GETSESSIONSTATE' ) {
      pValuesSent = pData.session;
    }

    //handle extra values (not defined in dictionary) 
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

        this._maskStateSelectedAdd( 
          objectTemp, // object 
          true,       // is extra value
          false       // is null value
        );
      }
    }

    this._promptApplyValues( false );
    
    this._promptRenderTags();

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
  },
  /*
    *
    * function name: _getOnLoadLov
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _getOnLoadLov: function( pValue ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_getOnLoadLov', {
      "arguments": arguments,
      "pValue"   : pValue,
      "target"   : this.element.get(0)
    });

    var
      mode     = pValue == null || pValue == undefined || pValue == "" ? 'GETSESSIONSTATE' : 'GETONLYSELECTED',
      values   = pValue == null || pValue == undefined || pValue == "" ? [] : pValue.split(this.C_VALUE_SEPARATOR),
      ajaxData = {
        "x01": mode,  //tryb
        "f01": values, //selected values
        "pageItems": this._ajaxGetPageItems()
      },
      ajaxOptions = {
        "target"     : this.element.get(0),
        "beforeSend" : $.proxy(function( pJqXHR, pSettings ){
          apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_getOnLoadLov', 'before send', {
            "pJqXHR": pJqXHR,
            "pSettings": pSettings
          });

          this._maskAjaxStateButtonRunning();

        }, this),
        "success"    : $.proxy( this._getOnLoadLov_SuccessCallback, this, mode, pValue ),
        "error"      : $.proxy(function(pJqXHR, pTextStatus, pErrorThrown){

          apex.debug.message(this.C_LOG_ERROR, this.logPrefix, '_getOnLoadLov', 'error', {
            'pJqXHR'        : pJqXHR,
            'pTextStatus'   : pTextStatus,
            'pErrorThrown'  : pErrorThrown            
          });

          if ( this._elementGetValueLenght() > 0 ) {
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
          //          
        }, this)
      };    

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_getOnLoadLov', 'values sent to retrieve display values', values, ajaxOptions);
      
    apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
  },
  /*
    *
    * function name: _maskDrawTagsFromInvalidValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _maskDrawTagsFromInvalidValues: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskDrawTagsFromInvalidValues', {
      "arguments": arguments
    });

    var values = this._elementGetValue().split(this.C_VALUE_SEPARATOR);

    if ( values.length > 0 ) {
      for (var i in values) {
        //_promptTagsAddNew: function( pDisplay, pReturn, pIsExtraValue ){
        this._promptTagsAddNew( values[i], values[i], true );
      }

      this._promptPlaceHolderHide();
    
    }
  },
  /*
    *
    * function name: _popupSelectedGetValueArr
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSelectedGetValueArr: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupSelectedGetValueArr', {
      "arguments": arguments
    });

    var arr = [];

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      if ( !this.popup.state.selected[i].isAPEXNullValue ) {
        arr.push( this.popup.state.selected[i].value );  
      }
      
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupSelectedGetValueArr', arr);
    return arr;
  },
  /*
    *
    * function name: _popupAjaxGetOnlySelected
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxGetOnlySelected: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupAjaxGetOnlySelected', {
      "arguments": arguments,
      "target"   : this.element.get(0)
    });

    var
      ajaxData = {
        "x01": 'GETONLYSELECTED',                // mode
        "f01": this._popupSelectedGetValueArr(), // selected values
        "pageItems": this._ajaxGetPageItems()    // items to be sent
      },
      ajaxOptions = {
        "target"     : this.element.get(0),
        "beforeSend" : $.proxy(this._popupAjaxBeforeSend, this),
        "success"    : $.proxy(this._popupAjaxSuccess,    this),
        "error"      : $.proxy(this._popupAjaxError,      this),
        "complete"   : $.proxy(this._popupAjaxComplete,   this)
      };

    this.popup.state.xhr = apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
  },
  /*
    *
    * function name: _popupAjaxPerform
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxPerform: function( pPage, pSortByColumnIdx, pDirection, pSearchString, pSearchColumn ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxPerform', {
      "arguments": arguments,
      "pPage": pPage,
      "pSortByColumnIdx": pSortByColumnIdx,
      "pDirection": pDirection,
      "pSearchString": pSearchString,
      "pSearchColumn": pSearchColumn
    });

    var
      searchString = pSearchString,
      ajaxData = {
        "pageItems": this._ajaxGetPageItems(),
        "x01": 'POPUP',                         // mode
        "x02": this._popupGetRowsPerPage(),     // rows per page
        "x03": pSearchString,                   // search string
        "x04": pPage == undefined ? 1 : pPage,  // page
        "x05": pSortByColumnIdx,                // 
        "x06": pDirection,                      // 
        "x07": pSearchColumn                    // 
      },

      ajaxOptions = {
        "target"     : this.element.get(0),
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
  /*
    *
    * function name: _popupAjaxBeforeSend
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxBeforeSend: function( pJqXHR, pSettings ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxBeforeSend', {
      "arguments": arguments,
      "pJqXHR": pJqXHR,
      "pSettings": pSettings
    });

    this.popup.state.ajaxRunning = true;
    this.popup.contentTable = undefined;
    this.popup.body.addClass('searching');

    if ( this.popup.state.isVisible && this.popup.headerActionContainer != undefined) {
      this._popupReportHeaderWidgetHide();  
    }

    this._popupReportRenderSearching(0);
  },
  /*
    *
    * function name: _popupAjaxDataFindIndexByReturnValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxDataFindIndexByReturnValue: function( pData, pReturnValue ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxDataFindIndexByReturnValue', {
      "arguments": arguments,
      "pData": pData,
      "pReturnValue": pReturnValue
    });    

    for ( var i=0; i < pData.data.length; i++ ) {
      if ( pData.data[i].R == pReturnValue ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxDataFindIndexByReturnValue', 'pReturnValue found at index '+i);
        return i;
      }
    }
    
    apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_popupAjaxDataFindIndexByReturnValue', 'pReturnValue not found');
    return -1;
  },
  /*
    *
    * function name: _popupExtendDataWithNullValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupExtendDataWithNullValues: function( pData ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupExtendDataWithNullValues', {
      "arguments": arguments,
      "pData": pData
    });

    var
      isSelected = false;

    for (var i=0; i < this.popup.state.selected.length; i++){
      if ( this.popup.state.selected[i].isAPEXNullValue ) {
        isSelected = true;
        break;
      }
    }

    pData.data.unshift({
      "R": this._getItemLOVNullValue(),
      "D": this._getItemLOVNullText(),
      "isAPEXNullValue": true,
      "selected": isSelected
    });

    return pData;
  },
  /*
    *
    * function name: _popupExtendDataWithExtraValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupExtendDataWithExtraValues: function( pData ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupExtendDataWithExtraValues', {
      "arguments": arguments,
      "pData": pData
    });

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

        if ( newRowObject.R == this._getItemLOVNullValue() ) {
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
  /*
    *
    * function name: _popupReportRenderSearching
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupReportRenderSearching: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportRenderSearching', {
      "arguments": arguments
    });

    var 
      searchTerm = this.popup.state.searchString,
      searchingText = this.C_POPUP_TEXT_SEARCHING.replace('%0', searchTerm),
      mask = $('<div class="searchingForResultsMask"></div>'),
      container = $('                                 '+
        '<div class="searchingForResults">            '+
        '  <div class="icon">                         '+
        '    <span class="fa fa-refresh fa-anim-spin"></span> '+
        '  </div>                                     '+
        '  <div class="text">'+searchingText+'</div>'+
        '</div>                                       '+
        ''
      );

    //this.popup.body.empty().append(container);
    this.popup.body
      .append(mask)
      .append(container);

    //this._popupHeaderHide();
    this._popupHeaderDisable();
    //this._popupFooterHide();
    this._popupFooterDisable();
    //this.popupInformationHide();
    this._popupAdjustBodyHeight();
  },
  /*
    *
    * function name: _popupAjaxSuccess
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupAjaxSuccess: function( pData, pTextStatus, pJqXHR){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxSuccess', {
      "arguments": arguments,
      "pData": pData,
      "pTextStatus": pTextStatus,
      "pJqXHR": pJqXHR
    });

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
        && this.options.item.lov_display_null
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

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxSuccess', 'state', this.popup.state);
  },
  /*
    *
    * function name: _popupAjaxDrawError
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupAjaxDrawError: function( pAjaxResponse ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxDrawError', {
      "arguments": arguments,
      "pAjaxResponse": pAjaxResponse
    });

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
  /*
    *
    * function name: _popupAjaxError
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxError: function( pJqXHR, pTextStatus, pErrorThrown ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxError', {
      "arguments": arguments,
      "pJqXHR": pJqXHR,
      "pTextStatus": pTextStatus,
      "pErrorThrown": pErrorThrown
    });

    var array;

    if ( pJqXHR.statusText == 'abort' ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_popupAjaxError', 'AJAX call aborted!');
      return void(0);
    }

    this.popup.state.ajaxStatus           = this.C_AJAX_STATUS_ERROR;
    this.popup.state.ajaxDataFetchedCount = undefined;
    this.popup.state.ajaxDataTotalCount   = undefined;

    this._popupHeaderHide();
    this._popupFooterHide();

    if ( pJqXHR.responseJSON.techInfo != undefined ) {
      
      this._popupAjaxDrawError( pJqXHR.responseJSON );

      for (var i=0; i < pJqXHR.responseJSON.techInfo.length; i++ ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'PL/SQL', pJqXHR.responseJSON.techInfo[i].name, pJqXHR.responseJSON.techInfo[i].value);

        if ( pJqXHR.responseJSON.techInfo[i].value.indexOf('\n') > -1 ) {
          array = pJqXHR.responseJSON.techInfo[i].value.split('\n');

          for ( var y = 0; y < array.length; y++ ) {
            apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, 'PL/SQL', pJqXHR.responseJSON.techInfo[i].name, array[y]);            
          }
        }
      }      
    }

    this._popupAjaxComplete();
    this._triggerEvent('paeli_popup_error', this._popupGetEventData());
    this._throwError( pErrorThrown );
  },
  /*
    *
    * function name: _popupAjaxComplete
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxComplete: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxComplete', {
      "arguments": arguments
    });

    this.popup.state.ajaxRunning = false;

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxComplete', 'popup state', this.popup.state);
  },
  /*
    *
    * function name: _popupAjaxAbort
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAjaxAbort: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAjaxAbort', {
      "arguments": arguments
    });

    this.popup.state.xhr.abort();
    this.popup.state.ajaxRunning = false;
  },
  /*
    *
    * function name: _popupGetSelectedHash
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupGetSelectedHash: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetSelectedHash', {
      "arguments": arguments
    });

    var 
      newArray = this.popup.state.selected.map(function(pCurrentValue, pIndex, pArray){
        return pCurrentValue.value;
      }),
      hashCode = this._getHashCode( newArray.join(':') );

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetSelectedHash returns ', hashCode);

    return hashCode;
  },
  /*
    *
    * function name: _getHashCode
    * description  : implementation of https://stackoverflow.com/questions/7616461/generate-a-hash-from-string-in-javascript
    * params:
    *   -
    *   -
    *
  */  
  _getHashCode: function( pString ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getHashCode', {
      "arguments": arguments,
      "pString": pString
    });

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

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getHashCode returns', hash);
    return hash;
  },
  /*
    *
    * function name: _popupDialogBeforeCloseCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDialogBeforeCloseCallback: function( pEvent, pUi ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupDialogBeforeCloseCallback', {
      "arguments": arguments,
      "pEvent": pEvent,
      "pUi": pUi
    });

    if ( this.popup.state.selecting ) {
      this.popup.state.selecting = false;
      return true;
    }

    if ( this.popup.state.selectedHash != this._popupGetSelectedHash() ) {
      return confirm( this.C_POPUP_TEXT_UNSAVED_CHANGES.replace('%0', this.popup.state.selected.length) );
    }
    else {
      return true;
    }

  },
  /*
    *
    * function name: _promptPlaceHolderShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptPlaceHolderShow: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptPlaceHolderShow', {
      "arguments": arguments,
      "placeholder": this.mask.placeholder
    });

    this.mask.placeholder.show();
    this.mask.itemContainerBody.hide();
  },
  /*
    *
    * function name: _promptPlaceHolderHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptPlaceHolderHide: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptPlaceHolderHide', {
      "arguments": arguments
    });

    this.mask.placeholder.hide();
    this.mask.itemContainerBody.show();
  },
  /*
    *
    * function name: _promptEmptyTags
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptEmptyTags: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptEmptyTags', {
      "arguments": arguments
    });

    this.mask.state.tags = [];
    this.mask.tagsContainer.empty();
    
  },
  /*
    *
    * function name: _promptEmptyMaskState
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptEmptyMaskState: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptEmptyMaskState', {
      "arguments": arguments
    });

    this.mask.state.selected = [];
  },
  /*
    *
    * function name: _elementGetValueLenght
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _elementGetValueLenght: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_elementGetValueLenght', {
      "arguments": arguments
    });

    var returnValue = this.element.val().length;

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_elementGetValueLenght returns "'+returnValue+'"');

    return returnValue;
  },
  /*
    *
    * function name: _elementGetValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _elementGetValue: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_elementGetValue', {
      "arguments": arguments
    });

    var returnValue = this.element.val();

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_elementGetValue returns "'+returnValue+'"');

    return returnValue;
  },
  /*
    *
    * function name: _elementSetValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _elementSetValue: function( pValue ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_elementSetValue', {
      "arguments": arguments,
      "pValue": pValue
    });

    this.element.val( pValue );
  },
  /*
    *
    * function name: _popupSelectAndClose
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSelectAndClose: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupSelectAndClose', {
      "arguments": arguments
    });

    this._promptEmptyTags();

    this._promptEmptyMaskState();

    for (var i=0; i < this.popup.state.selected.length; i++) {
      this._maskStateSelectedAdd( 
        {
          "display"         : this.popup.state.selected[i].display,
          "value"           : this.popup.state.selected[i].value,
          "isAPEXNullValue" : this.popup.state.selected[i].isAPEXNullValue,
        },                                            //object
        this.popup.state.selected[i].isExtraValue,    //is extra value
        this.popup.state.selected[i].isAPEXNullValue  //is null value
      );
    }

    this._promptApplyValues( true );
    this._promptRenderTags();

    this.popup.state.selecting = true;

    this._popupClose();
    
  },
  /*
    *
    * function name: _popupClearFiltering
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupClearFiltering: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupClearFiltering', {
      "arguments": arguments
    });

    if ( this.popup.showSelectedCheckbox.is(':checked') ) {
      this._popupShowSelectedCheckboxChange();
    }
    else {
      this._popupSearchClear( true );
    }
  },
  /*
    *
    * function name: _popupSearchClear
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSearchClear: function( pPerformAjax ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupSearchClear', {
      "arguments": arguments,
      "pPerformAjax": pPerformAjax
    });

    this.popup.state.searchString = null;
    this.popup.search.val(null);

    if ( pPerformAjax ) {
      this.popup.search.trigger('keyup');

      this._popupAjaxPerform(1, this._popupOpenGetDefaultSortColumnIdx(), this._popupOpenGetDefaultSortColumnDirection());
    }
  },
  /*
    *
    * function name: _popupNewOption
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupNewOption: function( pValue, pText){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupNewOption', {
      "arguments": arguments,
      "pValue": pValue,
      "pText": pText
    });

    return $('<option value="'+pValue+'">'+pText+'</option>');
  },
  /*
    *
    * function name: _popupDebugStateObject
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDebugStateObject: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupDebugStateObject', {
      "arguments": arguments,
      "this.popup.state": this.popup.state
    });

    for ( var i in this.popup.state ) {

      if ( this.popup.state[i] instanceof Array ) {
        apex.debug.message(this.C_LOG_LEVEL6,  this.logPrefix, 'this.popup.state.'+i+' ARRAY START' );  

        for ( var x in this.popup.state[i] ) {
          apex.debug.message(this.C_LOG_LEVEL6,  this.logPrefix, 'this.popup.state.'+i+'['+x+']', this.popup.state[i][x] );  
        }

        apex.debug.message(this.C_LOG_LEVEL6,  this.logPrefix, 'this.popup.state.'+i+' ARRAY END' );  
        
      }
      else {
        apex.debug.message(this.C_LOG_LEVEL6,  this.logPrefix, 'this.popup.state.'+i+' = "'+this.popup.state[i]+'"' );  
      }
    }

  },
  /*
    *
    * function name: _popupClose
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupClose: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupClose', {
      "arguments": arguments
    });

    this.popup.container.dialog('close');

    this._triggerEvent('paeli_popup_hidden', this._popupGetEventData());
  },
  /*
    *
    * function name: _popupGetEventData
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupGetEventData: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupGetEventData', {
      "arguments": arguments
    });

    var returnObject = {
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

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupGetEventData returns', returnObject);

    return returnObject;
  },
  /*
    *
    * function name: _popupOpen
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupOpen: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupOpen', {
      "arguments": arguments
    });

    this.popup.body.empty();
    this.popup.container.dialog('open');
  },
  /*
    *
    * function name: _popupOpenByButton
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupOpenByButton: function( pEvent ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupOpenByButton', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    pEvent.preventDefault();

    if ( this.mask.state.disabled ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_popupOpenByButton', 'APEX item is disabled, do nothing.');
      return void(0);
    }

    this._popupOpen();
  },
  /*
    *
    * function name: _popupCreatePaginationContainer
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupCreatePaginationContainer: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupCreatePaginationContainer', {
      "arguments": arguments
    });

    var
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
  /*
    *
    * function name: _popupCreateObject
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupCreateObject: function() {
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupCreateObject', {
      "arguments": arguments
    });

    var 
      popupColumnSettingsJson = undefined,
      popupContainer = undefined,
      object = undefined;

    if ( this.pluginSettings.isPopupReportAvailable == false) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_popupCreateObject popup is not available.');
      return void(0);
    }

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

    popupContainer = this._popupCreateNew();

    object = {
      "container": popupContainer,
      "defaultReportSettings": {
        //"heading": "",
        "thAlign": "left",
        "tdAlign": "left",
        "visible": true,
        "sort"   : true,
        "filter" : true
      },
      "headers"  : popupColumnSettingsJson,
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
        "cache"                     : [], // do dopisania kiedyś 
        "selected"                  : [],
        "selectedHash"              : 0
      },        
      "dialogHeader"          : popupContainer.parent().find('.ui-dialog-titlebar'),
      "header"                : popupContainer.find('.header'),
      "informationContainer"  : popupContainer.find('.information'),
      "informationText"       : popupContainer.find('.information .text'),
      "body"                  : popupContainer.find('.body'),
      "footer"                : popupContainer.find('.footer'),
      "showSelectedContainer" : popupContainer.find('.footer-showSelected'),
      "stickyHeaders"         : undefined,
      "search"                : popupContainer.find('.searchContainer :input'),
      "selectAllCheckbox"     : undefined,
      "showSelectedCheckbox"  : popupContainer.find('.footer :checkbox'),
      "showSelectedLabel"     : popupContainer.find('.footer label'),
      "clear"                 : popupContainer.find('.searchContainer .clear'),
      "select"                : popupContainer.find('.select'),
      "paginationContainer"   : popupContainer.find('.paginationContainer'),
      "paginationPrevPage"    : popupContainer.find('.prev'),
      "paginationNextPage"    : popupContainer.find('.next'),
      "paginationCurrent"     : popupContainer.find('.current'),
      "rowsPerPage"           : popupContainer.find('select'),
      "contentTable"          : undefined,
      "rowsPerPageContainer"  : popupContainer.find('.rowsPerPageContainer')
    };

    object.body.on('scroll', $.proxy( this._popupScrollCallback, this ) );   
    object.clear.on('click', $.proxy( this._popupSearchClear, this, true ) );
    
    object.paginationPrevPage.on('click', $.proxy( this._popupPaginationPrevPage, this ));
    object.paginationNextPage.on('click', $.proxy( this._popupPaginationNextPage, this ));
    object.rowsPerPage.on('change', $.proxy( this._popupChangeRowsPerPage, this ) )

    object.showSelectedCheckbox.on('change', $.proxy( this._popupShowSelectedCheckboxChange, this ) );

    if ( this.pluginSettings.popup.clickOnRowSelectsIt ) {
      object.container.on('click', 'td', $.proxy( this._popupClickOnCell, this) );
    }
    
    object.container
      .on('click',  '.fakeCheckbox',            $.proxy( this._popupFakeCheckboxClick,          this) )
      .on('click',  'button.select',            $.proxy( this._popupSelectAndClose,             this) )
      .on('click',  'a.showSelected',           $.proxy( this._popupShowSelectedCheckboxChange, this) )
      .on('click',  'a.clearFiltering',         $.proxy( this._popupClearFiltering,             this) )
      .on('click',  '.fakeRadio',               $.proxy( this._popupFakeRadioClick,             this) )
      .on('change', 'th:first-child :checkbox', $.proxy( this._popupThCheckboxChange,           this) )
      .on('change', 'td:first-child :checkbox', $.proxy( this._popupTdCheckboxChange,           this) )
      .on('change', 'td:first-child :radio',    $.proxy( this._popupTdRadioChange,              this) );

    object.search
      .on('keyup', this._debounce($.proxy( this._popupSearchKeyUp, this, null, null), this.pluginSettings.popupSearchDebounceTime))
      .on('keyup', $.proxy( this._maskKeyUpManageIcons, this) )
      .on('focus', $.proxy( this._popupSearchFocus, this ) );    

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupCreateObject', {
      "arguments": arguments,
      "returns": object
    });

    return object;
  }, 
  /*
    *
    * function name: _popupCreateNew
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupCreateNew: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupCreateNew', {
      "arguments": arguments
    });

    var 
      header                = $('<div class="header"></div>'),
      information           = $('<div class="information hidden"> <div class="text"></div> </div>'),
      searchContainer       = $('<div class="searchContainer"></div>'),
      rowsPerPageContainer  = $('<div class="rowsPerPageContainer"></div>'),
      rowsPerPageSelect     = $('<select></select'),

      searchInput           = $('<input type="text" placeholder="'+this.C_POPUP_SEARCH_PLACEHOLDER+'" class="empty">'),
      searchIcon            = $('<span class="fa fa-search search"></span>'),
      searchClearIcon       = $('<span class="fa fa-trash-o clear"></span>'),
      body                  = $('<div class="body"></div>'),
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
        "dialogClass"   : "pretius--enhancedLovItem popup "+extraClass,
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

      rowsPerPageSelect.val( this.pluginSettings.popup.rowsPerPage );

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

    if ( apex.debug.getLevel() >= this.C_LOG_LEVEL6 ) {
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

    //dialog constructor appends newly created container to specified element (body)
    container.dialog( options );
    container.attr({
      'tabindex': 0,
      'data-popup': this.widgetUniqueId
    });

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupCreateNew', "returns", {
      "container": container
    });

    return container;
  },
  /*
    *
    * function name: _popupSearchInSelectedData
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSearchInSelectedData: function( pSearchColumnName, pSearchColumnIdx, pSearchString, pIsSearchGlobal ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupSearchInSelectedData', {
      "arguments": arguments,
      "pSearchColumnName": pSearchColumnName,
      "pSearchColumnIdx": pSearchColumnIdx,
      "pSearchString": pSearchString,
      "pIsSearchGlobal": pIsSearchGlobal,
      "this.popup.state.ajaxCurrentPageData": this.popup.state.ajaxCurrentPageData
    });

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
  
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupSearchInSelectedData', 'filtered', newData);

    this.popup.state.searchString    = pSearchString;
    this.popup.state.searchColumnIdx = pSearchColumnIdx;

    this.popup.state.ajaxCurrentPageData = newData;
    this._popupReportRender( {"data": newData} );
    
    message = this.C_POPUP_TEXT_SEACH_IN_SELECTED
        .replace('%0', newData.length)
        .replace('%1', this.popup.state.ajaxSelectedData.length);

    this._popupInformationAppend( message, this.C_POPUP_TEXT_SEACH_IN_SELECTED);


  },
  /*
    *
    * function name: _popupSearchBlur
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSearchBlur: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupSearchBlur', {
      "arguments": arguments,
      "pEvent": pEvent,
      "current value": this.popup.search.val(),
      "focus value": this.popup.state.searchStringOnFocus
    });

    var newEvent = apex.jQuery.Event( 'keyup', { which: $.ui.keyCode.ENTER, keyCode: 13 } );

    if ( this.popup.search.val() != this.popup.state.searchStringOnFocus) { 
      this.popup.search.trigger(newEvent);
    }

  },
  /*
    *
    * function name: _popupSearchFocus
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSearchFocus: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupSearchFocus', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    this.popup.state.searchStringOnFocus = this.popup.search.val();

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupSearchFocus', 'current search string is "'+this.popup.state.searchStringOnFocus+'"');
  },
  /*
    *
    * function name: _popupSearchKeyUp
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSearchKeyUp: function( pSearchColumnName, pSearchColumnIdx, pEvent ){
    var 
      searchItem     = $(pEvent.currentTarget),
      searchString   = searchItem.val(),
      isSearchGlobal = pEvent.currentTarget == this.popup.search.get(0);

    //when other key then "enter" triggered keyup event
    if ( pEvent.keyCode != 13 ) {
      return void(0);
    }

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupSearchKeyUp', {
      "arguments": arguments,
      "pSearchColumnName": pSearchColumnName,
      "pSearchColumnIdx": pSearchColumnIdx,
      "pEvent": pEvent,
      "pEvent.keyCode": pEvent.keyCode
    });

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
  /*
    *
    * function name: _popupGetMaxDialogHeight
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupGetMaxDialogHeight: function( pReportHeight ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetMaxDialogHeight', {
      "arguments": arguments,
      "pReportHeight": pReportHeight
    });

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

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetMaxDialogHeight', 'returns', totalHeight);
    return totalHeight;
  },
  /*
    *
    * function name: _popupGetMaxHeightReport
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupGetMaxHeightReport: function( pDialogTotalHeight ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetMaxHeightReport', {
      "arguments": arguments,
      "pDialogTotalHeight": pDialogTotalHeight
    });

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

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetMaxHeightReport', 'returns', reportMaxHeight);
    return reportMaxHeight;
  },
  /*
    *
    * function name: _popupAdjustBodyHeightAnimate
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAdjustBodyHeightAnimate: function( pDuration ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAdjustBodyHeightAnimate', {
      "arguments": arguments,
      "pDuration": pDuration
    });

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
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAdjustBodyHeightAnimate', 'animation completed');
      }, this)
    });
  },
  /*
    *
    * function name: _popupGetTableHeight
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupGetTableHeight: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetTableHeight', {
      "arguments": arguments
    });

    var 
      tableHeight = 0;

    if ( this.popup.contentTable != undefined ) {
      tableHeight = this.popup.contentTable.outerHeight();
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetTableHeight', 'tableHeight', tableHeight);
    }
    else {
      tableHeight = this.popup.body.children().first().outerHeight();
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetTableHeight', 'tableHeight of children', tableHeight);
    }

    tableHeight = this._popupGetMaxHeightReport( this._popupGetMaxDialogHeight( tableHeight ) );

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetTableHeight returns', tableHeight);
    return tableHeight;

  },
  /*
    *
    * function name: _popupAdjustBodyHeight
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupAdjustBodyHeight: function( pDuration ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupAdjustBodyHeight', {
      "arguments": arguments,
      "pDuration": pDuration
    });

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
  /*
    *
    * function name: _popupHighlightResults
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupHighlightResults: function( pResultsJquery ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupHighlightResults', {
      "arguments": arguments,
      "pResultsJquery": pResultsJquery
    });

    var 
      resultText,
      searchString = this.popup.state.searchString,
      searchStringArr = searchString != null ? searchString.split('%') : [],
      tds;

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupHighlightResults', searchStringArr);

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
  /*
    *
    * function name: _popupShowSelectedCheckboxChange
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupShowSelectedCheckboxChange: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupShowSelectedCheckboxChange', {
      "arguments": arguments
    });

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
  /*
    *
    * function name: popupInformationHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  popupInformationHide: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, 'popupInformationHide', {
      "arguments": arguments
    });

    this.popup.state.informationTemplate = undefined;
    this.popup.state.informationText     = undefined;
    this.popup.informationContainer.addClass('hidden');
  },

  /*
    *
    * function name: popupInformationShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  popupInformationShow: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, 'popupInformationShow', {
      "arguments": arguments
    });

    this.popup.informationContainer.removeClass('hidden');
  },
  /*
    *
    * function name: _popupInformationAppend
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupInformationAppend: function( pMessage, pMessageTemplate ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupInformationAppend', {
      "arguments": arguments,
      "pMessage": pMessage,
      "pMessageTemplate": pMessageTemplate
    });

    this.popup.informationText.empty().append( pMessage );
    this.popupInformationShow();

    this.popup.state.informationText     = pMessage;
    this.popup.state.informationTemplate = pMessageTemplate;
  },
  /*
    *
    * function name: _popupThCheckboxChange
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupThCheckboxChange: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupThCheckboxChange', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      checkboxes  = this.popup.contentTable.find('tr td:first-child :checkbox'),
      selected    = checkboxes.filter(function(){ return $(this).is(':checked') }).toArray(),
      notSelected = checkboxes.filter(function(){ return $(this).is(':not(:checked)') }).toArray(),
      message     = this.C_POPUP_TEXT_ROWS_SELECTED.replace('%0', checkboxes.length);

    pEvent.stopImmediatePropagation();

    if ( this.popup.selectAllCheckbox.is(':checked') ) {

      for( var i=0; i < notSelected.length; i++ ) {
        $( notSelected[i] ).prop('checked', true).trigger('change');
      }

      this._popupInformationAppend( message, this.C_POPUP_TEXT_ROWS_SELECTED );
    }
    else {
        
      if ( this.popup.state.informationTemplate == this.C_POPUP_TEXT_ROWS_SELECTED ) {
        this.popupInformationHide();
      }

      for( var i=0; i < selected.length; i++ ) {
        $( selected[i] ).prop('checked', false).trigger('change');
      }
    }

    this._popupAdjustBodyHeight();
  },
  /*
    *
    * function name: _popupToggleRowState
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupToggleRowState: function( pInput ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupToggleRowState', {
      "arguments": arguments,
      "pInput": pInput
    });

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
  /*
    *
    * function name: _popupTdCheckboxChange
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupTdCheckboxChange: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupTdCheckboxChange', {
      "arguments": arguments,
      "pEvent": pEvent,
      "pEvent.currentTarget": pEvent.currentTarget
    });

    var 
      checkbox = $(pEvent.currentTarget),
      checkboxes  = undefined,
      selected    = undefined;

    pEvent.stopImmediatePropagation();

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

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupTdCheckboxChange', 'checkboxes cnt', checkboxes.length);
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupTdCheckboxChange', 'checked checkboxes cnt', selected.length);

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

  /*
    *
    * function name: _popupTdRadioChange
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupTdRadioChange: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupTdRadioChange', {
      "arguments": arguments,
      "pEvent": pEvent
    });

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
  /*
    *
    * function name: _popupIsValueSelected
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupIsValueSelected: function( pValue ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupIsValueSelected', {
      "arguments": arguments,
      "pValue": pValue
    });

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      if ( this.popup.state.selected[i].value == pValue ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupIsValueSelected', pValue, true);
        return true;
      }
    }
    
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupIsValueSelected', pValue, false);

    return false;
  },
  /*
    *
    * function name: _popupValueSelectedIndex
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupValueSelectedIndex: function( pValue ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupValueSelectedIndex', {
      "arguments": arguments,
      "pValue": pValue
    });

    for ( var i=0; i < this.popup.state.selected.length; i++ ) {
      if ( this.popup.state.selected[i].value == pValue ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupValueSelectedIndex', pValue, i);
        return i;
      }
    }
    
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupValueSelectedIndex', pValue, -1);

    return -1;
  },

  /*
    *
    * function name: _popupUnselectValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupUnselectValue: function( pValue ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupUnselectValue', {
      "arguments": arguments,
      "pValue": pValue
    });

    var 
      indexOf = this._popupValueSelectedIndex( pValue )
      removed = null;

    if ( indexOf < 0 ) {
      this._throwErrorText(' Value "'+pValue+'" is not selected!');
    }

    removed = this.popup.state.selected.splice( indexOf, 1 );

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupUnselectValue', 'removed value', removed);

    this._popupShowSelectedUpdate( true );
  },
  /*
    *
    * function name: _popupResetValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupResetValues: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupResetValues', {
      "arguments": arguments
    });

    this.popup.state.selected = [];
  },
  /*
    *
    * function name: _popupSelectValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupSelectValue: function( pInput ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupSelectValue', {
      "arguments": arguments,
      "pInput": pInput
    });

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
  /*
    *
    * function name: _popupShowSelectedUpdate
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupShowSelectedUpdate: function( pPerformAjaxOn0Selected ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupShowSelectedUpdate', {
      "arguments": arguments,
      "pPerformAjaxOn0Selected": pPerformAjaxOn0Selected
    });
    
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

  /*
    *
    * function name: _popupClickOnCell
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupClickOnCell: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupClickOnCell', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      tr = $(pEvent.target).closest('tr'),
      input = tr.find('td:first-child :input');

    if ( input.is(':checkbox') && input.is(':checked') ) {
      //checkbox
      input.prop('checked', false).trigger('change');
    }
    else if ( input.is(':checkbox') && !input.is(':checked') ) {
      input.prop('checked', true).trigger('change');
    }
    else {
      //radio
      input.prop('checked', true) ;
      input.trigger('change');
    }    
  },
  /*
    *
    * function name: _popupFakeRadioClick
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupFakeRadioClick: function( pEvent ) {
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupFakeRadioClick', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var triggeringElement = $(pEvent.currentTarget);

    pEvent.stopImmediatePropagation();

    triggeringElement.parent().find(':radio').trigger('click');

  },
  /*
    *
    * function name: _popupFakeCheckboxClick
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupFakeCheckboxClick: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupFakeCheckboxClick', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      triggeringElement = $(pEvent.currentTarget),
      checkbox          = triggeringElement.parent().find(':checkbox');

    pEvent.stopImmediatePropagation();

    checkbox.prop('checked', !checkbox.is(':checked')).trigger('change');

  },

  /*
    *
    * function name: _popupSortReport
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupSortReport: function( pColumnName, pColumnIdx, pSortDirection ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupSortReport', {
      "arguments": arguments,
      "pColumnName": pColumnName,
      "pColumnIdx": pColumnIdx,
      "pSortDirection": pSortDirection
    });

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

  /*
    *
    * function name: _popupGetHeadings
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupGetHeadings: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetHeadings', {
      "arguments": arguments
    });

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

      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetHeadings filtering or sorting available, bind click callback');

      th.bind('click', $.proxy(this._popupReportHeaderClickCallback, this, this.options.columns[i], sortingDirection));

      thead.find('tr').append( th );
    }

    return thead;

  },
  /*
    *
    * function name: _popupReportHeaderContainerCreate
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportHeaderContainerCreate: function( pCurrentTh, pColumnObject ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderContainerCreate', {
      "arguments": arguments,
      "pCurrentTh": pCurrentTh,
      "pColumnObject": pColumnObject
    });

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
  /*
    *
    * function name: _popupReportHeaderWidgetHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportHeaderWidgetHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderWidgetHide', {
      "arguments": arguments
    });

    this.popup.stickyHeaders.find('th').removeClass('is-active');
    this.popup.headerActionContainer.remove();
    this.popup.headerActionContainer = undefined
    $(document).off('click.pretius--enhancedLovItem');
  },

  /*
    *
    * function name: _popupReportHeaderWidgetShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupReportHeaderWidgetShow: function( pTh, pWidget){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderWidgetShow', {
      "arguments": arguments,
      "pTh": pTh,
      "pWidget": pWidget
    });

    if ( this.popup.headerActionContainer != undefined  ) {
      this._popupReportHeaderWidgetHide();
    }

    pTh.addClass('is-active');
    this.popup.headerActionContainer = pWidget;
    this.popup.body.append( pWidget );

    pWidget.find(':input').focus();
  },
  /*
    *
    * function name: _popupReportHeaderClickCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportHeaderClickCallback: function( pColumnObject, pSortDirection, pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderClickCallback', {
      "arguments": arguments,
      "pColumnObject": pColumnObject,
      "pSortDirection": pSortDirection,
      "pEvent": pEvent
    });

    pEvent.stopImmediatePropagation();

    var 
      th = $(pEvent.currentTarget),
      container = this._popupReportHeaderContainerCreate( th, pColumnObject );

    this._popupReportHeaderWidgetShow( th, container );

    
    $(document).bind('click.pretius--enhancedLovItem', $.proxy( this._popupReportHeaderClickOutsideCheck, this ));
  },
  /*
    *
    * function name: _popupReportHeaderClickOutsideCheck
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportHeaderClickOutsideCheck: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderClickOutsideCheck', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var target = $(pEvent.target);

    if ( !$.contains( this.popup.headerActionContainer.get(0), target.get(0) ) ) {
      //click outside found
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderClickOutsideCheck', 'clicked outside header widget');
      this._popupReportHeaderWidgetHide();
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportHeaderClickOutsideCheck', 'clicked inside header widget');
    }
    
  },
  /*
    *
    * function name: _popupCreateStickyHeaders
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupCreateStickyHeaders: function() {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupCreateStickyHeaders', {
      "arguments": arguments
    });

    var
      table = $('<table></table>'),
      thead = this.popup.body.find('.report thead').clone(true, true),
      ths = this.popup.body.find('table th'),
      stickyHeader;

    if ( this.popup.stickyHeaders != undefined ) {
      this.popup.stickyHeaders.remove();
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupCreateStickyHeaders', 'removing existing stickyHeaders');
    }

    thead.find('th').each( function( pIndex, pElem ){
      $(pElem).css({
        'minWidth': ths.eq(pIndex).outerWidth(),
        'maxWidth': ths.eq(pIndex).outerWidth(),
        'width'   : ths.eq(pIndex).outerWidth(),
      });

      ths.eq(pIndex).css({
        'minWidth': ths.eq(pIndex).outerWidth(),
        'maxWidth': ths.eq(pIndex).outerWidth(),
        'width'   : ths.eq(pIndex).outerWidth(),
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
  /*
    *
    * function name: _popupReportRenderNodataFound
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportRenderNodataFound: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupReportRenderNodataFound', {
      "arguments": arguments
    });

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
  /*
    *
    * function name: _popupReportBodyGet
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportBodyGet: function( pData ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupReportBodyGet', {
      "arguments": arguments,
      "pData": pData
    });

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
  /*
    *
    * function name: _popupMarkAsNullValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupMarkAsNullValue: function( pRendered ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupMarkAsNullValue', {
      "arguments": arguments,
      "pRendered": pRendered
    });

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
  /*
    *
    * function name: _popupMarkAsExtraValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupMarkAsExtraValue: function( pRendered ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupMarkAsExtraValue', {
      "arguments": arguments,
      "pRendered": pRendered
    });

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
  /*
    *
    * function name: _popupReportRender
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupReportRender: function( pData ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupReportRender', {
      "arguments": arguments,
      "pData": pData
    });

    var 
      tableContainer = $('<div></div>'),
      table = $('<table></table>'),
      thead,
      tbody = $('<tbody></tbody>'),
      selectedCnt = 0;

    if ( pData.data.length == 0 ) {
      apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupReportRender', 'no rows to render, display no data found');
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
    //this._popupHeaderShow();
    this._popupHeaderEnable();
    //this._popupFooterShow();
    this._popupFooterEnable();
    
    this._popupAdjustBodyHeight();
    this._popupCreateStickyHeaders();

    this.popup.search.focus();

    if ( this.pluginSettings.isMultipleSelection ) {
      if ( pData.data.length == selectedCnt ) {
        apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupReportRender ajax data length match selected rows');
        this.popup.selectAllCheckbox.prop('checked', true);
      }
      else {
        apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupReportRender ajax data length doesn\'t match selected rows', 'ajax data length = "'+pData.data.length+'"', 'selected rows = "'+selectedCnt+'"');
      }

    }

    this._triggerEvent('paeli_popup_data_rendered', this._popupGetEventData());
  },

  /*
    *
    * function name: _popupGetRowsPerPage
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupGetRowsPerPage: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupGetRowsPerPage', {
      "arguments": arguments
    });

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
  
  /*
    *
    * function name: _popupChangeRowsPerPage
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupChangeRowsPerPage: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupChangeRowsPerPage', {
      "arguments": arguments
    });

    var
      searchString = this.popup.state.searchString,
      searchColumnIdx = this.popup.state.searchColumnIdx;

    this._popupAjaxPerform(1, this.popup.state.sortedColumnIdx, this.popup.state.sortedColumnDirection, searchString, this.popup.state.searchColumnIdx);
  },

  /*
    *
    * function name: _popupHeaderDisable
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupHeaderDisable: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupHeaderHide', {
      "arguments": arguments,
      "header": this.popup.header
    });

    this.popup.header.find(':input').prop('disabled', true);
  },
  /*
    *
    * function name: _popupHeaderEnable
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupHeaderEnable: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupHeaderEnable', {
      "arguments": arguments,
      "header": this.popup.header
    });

    this.popup.header.find(':input').prop('disabled', false);
  },
  /*
    *
    * function name: _popupHeaderHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupHeaderHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupHeaderHide', {
      "arguments": arguments,
      "header": this.popup.header
    });

    this.popup.header.addClass('hidden');
  },
  /*
    *
    * function name: _popupHeaderShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupHeaderShow: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupHeaderShow', {
      "arguments": arguments
    });

    this.popup.header.removeClass('hidden');
  },
  /*
    *
    * function name: _popupFooterHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupFooterHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupFooterHide', {
      "arguments": arguments
    });

    this.popup.footer.addClass('hidden');    
  },
  /*
    *
    * function name: _popupFooterDisable
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupFooterDisable: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupFooterDisable', {
      "arguments": arguments
    });

    this.popup.footer.find('button').prop('disabled', true);
  },
  /*
    *
    * function name: _popupFooterEnable
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupFooterEnable: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupFooterEnable', {
      "arguments": arguments
    });

    this.popup.footer.find('button').prop('disabled', false);
  },
  /*
    *
    * function name: _popupFooterShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupFooterShow: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupFooterShow', {
      "arguments": arguments
    });

    this.popup.footer.removeClass('hidden');
  },
  /*
    *
    * function name: _popupRowsPerPageHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupRowsPerPageHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupRowsPerPageHide', {
      "arguments": arguments
    });

    this.popup.rowsPerPageContainer.hide();
  },
  /*
    *
    * function name: _popupRowsPerPageShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupRowsPerPageShow: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupRowsPerPageShow', {
      "arguments": arguments
    });

    this.popup.rowsPerPageContainer.show();
  },
  /*
    *
    * function name: _popupPaginationHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupPaginationHide: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupPaginationHide', {
      "arguments": arguments
    });

    this.popup.paginationContainer.hide();

  },
  /*
    *
    * function name: _popupPaginationShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupPaginationShow: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupPaginationShow', {
      "arguments": arguments
    });

    this.popup.paginationContainer.show();

  },
  /*
    *
    * function name: _popupPaginationPrevPage
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupPaginationPrevPage: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupPaginationPrevPage', {
      "arguments": arguments
    });

    this._popupAjaxPerform(
      --this.popup.state.lastFetchedPage,
      this.popup.state.sortedColumnIdx,
      this.popup.state.sortedColumnDirection,
      this.popup.state.searchString,
      this.popup.state.searchColumnIdx
    );

  },

  /*
    *
    * function name: _popupPaginationNextPage
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupPaginationNextPage: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_popupPaginationNextPage', {
      "arguments": arguments
    });

    this._popupAjaxPerform(
      ++this.popup.state.lastFetchedPage,
      this.popup.state.sortedColumnIdx,
      this.popup.state.sortedColumnDirection,
      this.popup.state.searchString,
      this.popup.state.searchColumnIdx
    );
  },
  /*
    *
    * function name: _popupPaginationUpdate
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupPaginationUpdate: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupPaginationUpdate', {
      "arguments": arguments
    });

    var 
      start = this.popup.state.ajaxCurrentPageRownumStart,
      end   = this.popup.state.ajaxCurrentPageRownumEnd,
      total = this.popup.state.ajaxDataTotalCount,
      of    = this.C_POPUP_PAGINATION_OF;


    end = end > total ? total : end;

    this.popup.paginationCurrent.text(start+' - '+end+' '+of+' '+total);

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
  /*
    *
    * function name: _popupIsFiltered
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupIsFiltered: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupIsFiltered', {
      "arguments": arguments
    });

    if ( this.popup.state.searchString != undefined && this.popup.state.searchString.length > 0 ) {
      return true;
    }

    return false;
  },
  /*
    *
    * function name: _popupScrollCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupScrollCallback: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupScrollCallback', {
      "arguments": arguments,
      "pEvent": pEvent
    });

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
  /*
    *
    * function name: _popupDragPositionFixCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDragPositionFixCallback: function( pEvent, pUi ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupDragPositionFixCallback', {
      "arguments": arguments,
      "pEvent": pEvent, 
      "pUi"   : pUi
    });

    var 
      documentScrollTop = $(document).scrollTop(),
      position;

    if ( documentScrollTop > 0 ) {
      position = pUi.position;
      position.top = position.top - documentScrollTop;

      this.popup.container.parent().closest(".ui-dialog").css("top", position.top + "px");    
    }      

  },
  /*
    *
    * function name: _popupDialogDragStartCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDialogDragStartCallback: function( pEvent, pUi ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupDialogDragStartCallback', {
      "arguments": arguments,
      "pEvent": pEvent, 
      "pUi"   : pUi
    });

    if ( this.popup.headerActionContainer !=undefined ) {
      this.popup.headerActionContainer.hide();  
    }

  },

  /*
    *
    * function name: _popupDialogDragStopCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _popupDialogDragStopCallback: function( pEvent, pUi ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupDialogDragStopCallback', {
      "arguments": arguments,
      "pEvent": pEvent, 
      "pUi"   : pUi
    });

    if ( this.popup.headerActionContainer !=undefined ) {
      this.popup.headerActionContainer.show();  
    }

  },  
  /*
    *
    * function name: _popupDialogResizeStopCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDialogResizeStopCallback: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupDialogResizeStopCallback', {
      "arguments": arguments     
    });

    this._popupAdjustBodyHeight();
  },
  /*
    *
    * function name: _popupColumnIsDefined
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupColumnIsDefined: function( pColumnName ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupColumnIsDefined', {
      "arguments": arguments,
      "pColumnName": pColumnName
    });

    var returnValue = false;

    if (
      this.popup.headers                                 != undefined
      && this.popup.headers.columns                         != undefined
      && this.popup.headers.columns[ pColumnName ]          != undefined
    ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupColumnIsDefined', 'Column "'+pColumnName+'" is defined.');
      returnValue = true;
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupColumnIsDefined', 'Column "'+pColumnName+'" is not defined.');
      returnValue = false;
    }

    
    return returnValue;

  },
  /*
    *
    * function name: _popupColumnIsConfigurationAvailable
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupColumnIsConfigurationAvailable: function( pColumnName, pAttr ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupColumnIsConfigurationAvailable', {
      "arguments": arguments,
      "pColumnName" : pColumnName,
      "pAttr"       : pAttr
    });

    var returnValue;

    if (
         this.pluginSettings.popup.isReportAdvancedConf     == true
      && this.popup.headers                                 != undefined
      && this.popup.headers.columns                         != undefined
      && this.popup.headers.columns[ pColumnName ]          != undefined
      && this.popup.headers.columns[ pColumnName ][ pAttr ] != undefined      
    ) {
      returnValue = this.popup.headers.columns[ pColumnName ][ pAttr ];
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupColumnIsConfigurationAvailable', 'Column "'+pColumnName+'": attr "'+pAttr+'" = "'+returnValue+'"');
      return returnValue;
    }
    else {
      if ( pAttr == 'heading' ) {
        returnValue = pColumnName;
      }
      else {
        returnValue = this.popup.defaultReportSettings[ pAttr ];
      }

      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupColumnIsConfigurationAvailable', 'Column "'+pColumnName+'": default attr "'+pAttr+'" = "'+returnValue+'"');
      return returnValue;
    }
  },

  
  /*
    *
    * function name: _popupOpenGetDefaultSortColumnIdx
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupOpenGetDefaultSortColumnIdx: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnIdx', {
      "arguments": arguments
    });

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
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnIdx defaultSort by column "'+column+'"');
      returnValue = this._getColumnIdxByColumnName( column );
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnIdx defaultSort configuration is not defined, sort by 1st column.');
      returnValue = 1;      
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnIdx return "'+returnValue+'"');

    return returnValue;
  },
  /*
    *
    * function name: _popupOpenGetDefaultSortColumnDirection
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupOpenGetDefaultSortColumnDirection: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnDirection', {
      "arguments": arguments
    });

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
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnDirection defaultSort direction defined as "'+direction+'".');
      returnValue = this.popup.headers.defaultSort.direction
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnDirection defaultSort configuration is not defined, sort direction asc.');
      returnValue = "asc";
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupOpenGetDefaultSortColumnDirection return "'+returnValue+'"');

    return returnValue;

  },
  /*
    *
    * function name: _popupDialogOpenCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDialogOpenCallback: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupDialogOpenCallback', {
      "arguments": arguments
    });

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
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_popupDialogOpenCallback hash "'+this.popup.state.selectedHash+'"');

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
  /*
    *
    * function name: _popupDialogCloseCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _popupDialogCloseCallback: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_popupDialogCloseCallback', {
      "arguments": arguments
    });

    this.popup.state.isVisible = false;
    this.popup.showSelectedCheckbox.prop('checked', false);

    $('body').removeClass('apex-no-scroll');
    
    this._resetFocus();

  },
  /*
    *
    * function name: _headerWidgetClearFiltering
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _headerWidgetClearFiltering: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_headerWidgetClearFiltering', {
      "arguments": arguments,
      "pEvent": pEvent
    });

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
  /*
    *
    * function name: _headerWidgetKeyUpManageIcons
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _headerWidgetKeyUpManageIcons: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_headerWidgetKeyUpManageIcons', {
      "arguments": arguments,
      "pEvent": pEvent
    });

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
  /*
    *
    * function name: _promptReposition
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptReposition: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptReposition', {
      "arguments": arguments
    });

    var 
      offset = this.mask.container.offset(),
      position = this.mask.container.position(),
      windowWidth = $(window).outerWidth(),
      top  = offset.top + this.mask.container.outerHeight() -1,
      left = offset.left,
      promptResultWidth = 0;

    if ( !this.prompt.isVisible )  {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptReposition prompt not visible, do nth.');
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
  /*
    *
    * function name: _promptGetZIndex
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptGetZIndex: function( pElem ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptGetZIndex', {
      "arguments": arguments,
      'pElem': pElem
    });

    var zIndex ;

    if ( pElem == undefined ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptGetZIndex', 'pElem is undefined');
      return NaN;
    }
    else if ( pElem.get(0) == $('body').get(0) ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptGetZIndex', 'pElem is body, no z-index is set');
      return NaN;
    }

    zIndex = parseInt(pElem.css('zIndex'));  

    if ( isNaN(zIndex) ) {
      return this._promptGetZIndex( pElem.parent() );
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptGetZIndex zIndex', zIndex);
      return zIndex;
    }
    
  },
  /*
    *
    * function name: _promptCreateNew
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptCreateNew: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptCreateNew', {
      "arguments": arguments
    });

    var 
      returnObject = {},
      attributes  = this.element.get(0).attributes,
      //advancedCustomdAttributes = this.options.item.attri,
      classes     = attributes.class != undefined ? attributes.class.value.split(' ') : [],
      fixBorder   = $('<div class="fixBorder"></div>'),
      container   = $('<div></div>'),
      header      = $('<div></div>'),
      menu        = $('<div class="menu"></div>'),
      menuExpand  = $(''+
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
      menuPaste    = $(''+
        '<a href="javascript: void(0)" class="t-Button t-Button--tiny t-Button--link t-Button--pill" title="'+this.C_PROMPT_MENU_PASTE_TITLE+'">'+
        '  <span aria-hidden="true" class="fa fa-paste paste"></span>'+
        '</a>'),
      menuPopup    = $(''+
        '<a href="javascript: void(0)" class="t-Button t-Button--tiny t-Button--link t-Button--pill" title="'+this.C_PROMPT_MENU_POPUP_TITLE+'">'+
        '  <span aria-hidden="true" class="fa fa-external-link-square popup"></span>'+
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
      .append( menuExpand )
      .append( menuSort )
      .append( menuClear );
      
    if ( this.pluginSettings.isMultipleSelection ) {
      menu.append( menuPaste );
    }

    if ( this.pluginSettings.isPopupReportAvailable ) {
      menu.append( menuPopup );
    }

    container
      .attr('data-prompt', this.widgetUniqueId)
      .addClass('pretius--enhancedLovItem prompt')
      .css({
        "minWidth"   : this.mask.container.outerWidth(),
        //"borderColor": this.inputCss.borderColor,
        "fontSize"   : this.inputCss.fontSize,
        "lineHeight" : this.inputCss.lineHeight
      })
      .append(fixBorder/*.css("borderColor", this.inputCss.borderColor)*/)
      .attr("tabindex", -1)
    ;
    

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptCreateNew', 'offset', offset);

    body
      .addClass('body')
      .css({
        'maxHeight': this.pluginSettings.prompt.maxHeight
      });

    //tbd
    //this is not needed, because maxlength has been used to
    //to limit pasting values
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

    if ( this.pluginSettings.prompt.hideToolbar == false ) {
      container.append(menu);
    }

    container
      .append(header)
      .append(body)
      .hide();
    

    returnObject = {
      "customTemplateFunction": this._promptPrepateCustomTemplateFunction(),
      "container" : container,
      "header"    : header,
      "body"      : body,
      "input"     : inputSearch,
      "icon"      : icon,
      "fixBorder" : fixBorder,
      "isVisible" : false,
      "menu"      : {
        "container": menu,
        "expand"   : menuExpand,
        "sort"     : menuSort,
        "clear"    : menuClear,
        "paste"    : menuPaste,
        "popup"    : menuPopup
      }
    };

    returnObject.body
      .on('click', 'li', $.proxy( this._promptLiClickHanlder, this ))
      .on('scroll', this._debounce($.proxy(this._promptScrollCallback, this), 100) )
      .on('mouseenter', 'li',$.proxy(this._promptUnhighlightOther, this))

    returnObject.input
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

    returnObject.menu.expand.on('click', $.proxy( this._promptMenuChangeView, this ) );
    returnObject.menu.sort  .on('click', $.proxy( this._promptMenuSortTags, this ) );
    returnObject.menu.clear .on('click', $.proxy( this._promptMenuClearValues, this ) );
    returnObject.menu.paste .on('click', $.proxy( this._promptMenuPasteValuesOpenPopup, this ) );
    returnObject.menu.popup .on('click', $.proxy( this._popupOpen, this ) );

    this.prompt = returnObject;

    return returnObject;

  },
  /*
    *
    * function name: _promptSetFocus
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptSetFocus: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptSetFocus', {
      "arguments": arguments
    });

    this.prompt.input.focus();
  },
  /*
    *
    * function name: _promptShow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptShow: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptShow', {
      "arguments": arguments,
      "container": this.prompt.container
    });

    var 
      promptZIndex;


    $(document).on('mousedown.promptcheck-'+this.element.get(0).id, $.proxy(this._promptCheckClickOutside, this));

    this.prompt.container.show();

    this.mask.container.addClass('focused');

    this.prompt.isVisible = true;


    //set prompt zIndex in case of being used as part of inline dialog
    promptZIndex = this._promptGetZIndex( this.mask.itemContainer );

    if ( !isNaN( promptZIndex ) ) {
      this.prompt.container.css('zIndex', promptZIndex+1);
    }
    
    this._maskPopupButtonHide();
    this._promptReposition();

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptShow z-index', promptZIndex);

    if ( this.mask.state.error && this.pluginStopped == false ) {
      this.mask.ajaxStateButton.button.hide();
      this.mask.state.error = false;
    }

    this._triggerEvent('paeli_prompt_shown', this._promptGetEventData());

  },
  /*
    *
    * function name: _promptHide
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptHide: function( pFocusOnElement ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptHide', {
      "arguments": arguments,
      "pFocusOnElement": pFocusOnElement
    });

    this.mask.container.removeClass('focused');
    this.prompt.input.val(null);
    this.prompt.container.hide();

    //this.prompt.container.remove();
    //this.prompt.container = undefined;

    this.prompt.isVisible = false;

    this._maskPopupButtonShow();

    if ( pFocusOnElement != undefined && pFocusOnElement.is(':focusable') ) {
      pFocusOnElement.focus();  
    }
    else {
      this._getNextFocusAble().focus();
    }
    
    this._triggerEvent('paeli_prompt_hidden', this._promptGetEventData());

    $(document).off('mousedown.promptcheck-'+this.element.get(0).id);    
  },
  /*
    *
    * function name: _ajaxGetPageItems
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _ajaxGetPageItems: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_ajaxGetPageItems', {
      "arguments": arguments
    });

    var items = [this.options.item.lov_cascade_parent_items, this.options.item.ajax_items_to_submit]
      .filter(function (selector) {
        return (selector)
      })
      .join(',');

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_ajaxGetPageItems', {
      "return": items
    });

    return items;
  },
  /*
    *
    * function name: _promptAjaxPerform
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptAjaxPerform: function( pPage ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptAjaxPerform', {
      "arguments": arguments,
      "pPage": pPage
    });

    var
      requestPage = pPage == undefined ? 1 : pPage,
      ajaxData = {
        "x01": 'AUTOCOMPLETE',                          //tryb
        "x02": this.pluginSettings.prompt.rowsPerPage,   //rows per page
        "x03": this._maskGetValue(),                    //search string
        "x04": requestPage,           //page
        "pageItems": this._ajaxGetPageItems()
      },
      ajaxOptions = {
        "beforeSend" : $.proxy(this._promptAjaxBeforeSend, this, requestPage),
        "success"    : $.proxy(this._promptAjaxSuccess, this),
        "error"      : $.proxy(this._promptAjaxError, this),
        "complete"   : $.proxy(this._promptAjaxComplete, this),
        "target"     : this.element.get(0)
      };

    if ( this.mask.state.ajaxRunning ) {
      this.mask.state.xhr.abort();
      this.mask.state.ajaxRunning = false;
      this.prompt.icon.removeAttr('class').addClass('fa fa-search');
    }

    this.mask.state.xhr = apex.server.plugin ( this.options.plugin.ajaxIdentifier, ajaxData, ajaxOptions );
    
  },
  /*
    *
    * function name: _promptAjaxBeforeSend
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptAjaxBeforeSend: function( pRequestedPage, pJqXHR, pSettings ) {
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptAjaxBeforeSend', {
      "arguments": arguments,
      "pRequestedPage": pRequestedPage,
      "pJqXHR": pJqXHR,
      "pSettings": pSettings
    });

    var 
      message  = this.C_PROMPT_TEXT_SEARCHING,
      template = ''+
        '<div class="searching">'+
        '  <span class="text">'+message+'</span>'+
        '</div>';

    this.mask.state.ajaxRunning = true;
    this.mask.state.areResultsAvailable = false;


    if ( pRequestedPage == 1 ) {
      this.prompt.body.html( template );  
    }

    this.prompt.icon.removeAttr('class').addClass('fa fa-anim-spin fa-refresh');
  },  
  /*
    *
    * function name: _promptAfterRenderingData
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptAfterRenderingData: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptAfterRenderingData', {
      "arguments": arguments
    });

    var
      resultsRendered = this.prompt.body.find('li').length,
      loadMore = $('<div class="loadMore"><a href="javascript: void(0)">'+this.C_PROMPT_TEXT_LOAD_MORE+'</a></div>'),
      isLoarMore = this.prompt.body.find('.loadMore').length > 0;

    loadMore.find('a').on('click', $.proxy(function(){
      this._promptAjaxPerform( ++this.mask.state.lastFetchedPage );
    }, this));

    //loadMore.css('borderColor', this.inputCss.borderColor)
    

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
  /*
    *
    * function name: _promptAjaxSuccess
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptAjaxSuccess: function(pData, pTextStatus, pJqXHR){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptAjaxSuccess', {
      "arguments": arguments,
      "pData": pData,
      "pTextStatus": pTextStatus,
      "pJqXHR": pJqXHR      
    });

    this.mask.state.totalCount      = pData.dataVolume[0].CNT;
    this.mask.state.lastFetchedPage = pData.requestedPage;
    this.mask.state.areResultsAvailable = true;

    
    this.prompt.icon.removeAttr('class').addClass('fa fa-search');

    //add null value if defined and first page to display
    if ( 
      this.mask.state.lastFetchedPage == 1 
      && this._maskGetValue().length == 0 
      && this.options.item.lov_display_null 
    ) {
      pData.data.unshift({
        "R": this._getItemLOVNullValue(),
        "D": this._getItemLOVNullText(),
        "isAPEXNullValue": true
      });
    }

    pData = this._dataExtendSelectedFromArrayOfObjects( pData, this.mask.state.selected );

    if ( this.mask.state.lastFetchedPage == 1 ) {
      this._promptRenderData( pData );
    }
    else {
      this._promptAppendData( pData );      
    }

    this._promptAfterRenderingData();

    if ( pData.query != undefined ) {
      this._writeQueryToConsole( pData.query );
    }   

  },
  /*
    *
    * function name: _promptAjaxError
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptAjaxError: function(pJqXHR, pTextStatus, pErrorThrown){
    apex.debug.message(this.C_LOG_ERROR, this.logPrefix, '_promptAjaxError', {
      "arguments": arguments,
      "pJqXHR": pJqXHR,      
      "pTextStatus": pTextStatus,
      "pErrorThrown": pErrorThrown
    });

    if ( pJqXHR.statusText == 'abort' ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptAjaxError', 'AJAX call aborted!');
      return void(0);
    }
    else {
      apex.debug.message(this.C_LOG_ERROR, this.logPrefix, '_promptAjaxError', {
        'pJqXHR'      : pJqXHR,
        'pTextStatus' : pTextStatus,
        'pErrorThrown': pErrorThrown
      });
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
  /*
    *
    * function name: _promptGetEventData
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptGetEventData: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptGetEventData', {
      "arguments": arguments
    });

    var returnObject = {
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

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptGetEventData', 'returns', returnObject);

    return returnObject;
  },
  /*
    *
    * function name: _promptAjaxComplete
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptAjaxComplete: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptAjaxComplete', {
      "arguments": arguments      
    });

    this.mask.state.ajaxRunning = false;
    this._promptCheckWidthDifference();
  },
  /*
    *
    * function name: _promptCheckWidthDifference
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptCheckWidthDifference: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptCheckWidthDifference', {
      "arguments": arguments
    });

    var difference;

    if ( !this.prompt.isVisible ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptCheckWidthDifference prompt not visible, do nth');
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

  /*
    *
    * function name: _promptMenuPasteValuesOpenPopup
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _promptMenuPasteValuesOpenPopup: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptMenuPasteValuesOpenPopup', {
      "arguments": arguments
    });

    this._promptHide();

    //var newPastePopup = this._pastePopupCreateNew();
    if ( this.paste.popup.container == undefined ) {
      this.paste.popup = this._pastePopupCreateNew();  
    }    

    this.paste.popup.container.dialog('open');
    this._pastePopupPasteForm();
  },
  /*
    *
    * function name: _pastePopupPasteForm
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _pastePopupPasteForm: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_pastePopupPasteForm', {
      "arguments": arguments
    });

    this.paste.popup.body
      .empty()
      .removeAttr('class')
      .addClass(this.paste.classes.body)
      .addClass('form')

    this.paste.popup.textarea.val(null).appendTo( this.paste.popup.body ).focus();
    this.paste.popup.buttons.parse.show();
    this.paste.popup.buttons.back.hide();
    this.paste.popup.buttons.clear.hide();
    this.paste.popup.buttons.apply.hide();

  },
  /*
    *
    * function name: _pastePopupOpenCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _pastePopupOpenCallback: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_pastePopupOpenCallback', {
      "arguments": arguments     
    });
  },
  /*
    *
    * function name: _pastePopupCloseCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _pastePopupCloseCallback: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_pastePopupCloseCallback', {
      "arguments": arguments     
    });
  },
  /*
    *
    * function name: _pastePopupBeforeCloseCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _pastePopupBeforeCloseCallback: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_pastePopupBeforeCloseCallback', {
      "arguments": arguments     
    });
  },
  /*
    *
    * function name: _pastePopupActionParse
    * description  : 
    * params:
    *   -
    *   -
    *
  */    
  _pastePopupActionParse: function(){
    apex.debug.message(this.C_LOG_DEBUG,  this.logPrefix, '_pastePopupActionParse', {
      "arguments": arguments     
    });

    var 
      value         = this.paste.popup.textarea.val().trim(),
      valuesArray   = value.split("\n"),
      limit         = this.pluginSettings.maxlength ? this.pluginSettings.maxlength : 0,
      valueLength   = 0,
      totalLength   = 0,
      parsedArray   = [],
      outOfLimitArray = []
    ;

    //store information about pasted values
    this.paste.state.pasted = $.extend([], valuesArray);

    for ( var i = 0; i < valuesArray.length; i++ ) {

      if ( limit > 0 ) {
        valueLength = valuesArray[i].length;

        if ( valueLength > limit ) {
          //value length is greater then total limit
          outOfLimitArray = valuesArray.slice(i, valuesArray.length);
          break;
        }
        else {

          if ( 
               ( i == 0 && valueLength <= limit )
            || ( i > 0 && totalLength + valueLength+1 <= limit )
          ) {
            //store value
            parsedArray.push( valuesArray[i] );
            totalLength = parsedArray.toString().length;          
          }
          else {
            //i > 0 and next indexes won't match limit
            outOfLimitArray = valuesArray.slice(i, valuesArray.length);
            break;
          }
        }
      }
      else {
        //there is no limitation
        parsedArray.push( valuesArray[i] );
      }
    }

    this.paste.state.parsed = $.extend([], parsedArray);
    this.paste.state.outOfLimit = $.extend([], outOfLimitArray);

    this._pastePopupShowParseResult();
  },
  /*
    *
    * function name: _pastePopupShowValuesToBeApplied
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _pastePopupShowValuesToBeApplied: function(){
    apex.debug.message(this.C_LOG_DEBUG,  this.logPrefix, '_pastePopupShowValuesToBeApplied', {
      "arguments": arguments     
    });

    var 
      tableContainer = $('<div></div>').addClass('t-Report t-Report--stretch t-Report--staticRowColors t-Report--rowHighlightOff t-Report--inline'),
      table = $('<table></table>').addClass('t-Report-report'),
      tr = $('<tr></tr>'),
      th = $('<th></th>').addClass('t-Report-colHead').attr('align', 'left'),
      template = '{{#array}}<tr><td class="t-Report-cell">{{.}}</td></tr>{{/array}}',
      rendered;

    this.paste.popup.textarea.detach();
    this.paste.popup.body
      .empty()
      .removeAttr('class')
      .addClass(this.paste.classes.body)
      .addClass('valuesIn');

    this.paste.popup.buttons.parse.hide();
    this.paste.popup.buttons.back.show();
    this.paste.popup.buttons.clear.show();
    this.paste.popup.buttons.apply.show();

    rendered = $(Mustache.render( template, {"array": this.paste.state.parsed}));

    table
      .append( tr.clone()
        .append( th.clone().html( this.C_POPUP_PASTE_SUMMARY_TH_VALUES_IN ) ) 
      )
      .append( rendered )
      .appendTo( tableContainer )
    ;

    this.paste.popup.body.append( tableContainer )

    this.paste.popup.buttons.back.off('click').on('click', $.proxy( this._pastePopupShowParseResult, this ) );
  },
  /*
    *
    * function name: _pastePopupShowValuesExceeding
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _pastePopupShowValuesExceeding: function(){
    apex.debug.message(this.C_LOG_DEBUG,  this.logPrefix, '_pastePopupShowValuesExceeding', {
      "arguments": arguments
    });

    var 
      tableContainer = $('<div></div>').addClass('t-Report t-Report--stretch t-Report--staticRowColors t-Report--rowHighlightOff t-Report--inline'),
      table = $('<table></table>').addClass('t-Report-report'),
      tr = $('<tr></tr>'),
      th = $('<th></th>').addClass('t-Report-colHead').attr('align', 'left'),
      template = '{{#array}}<tr><td class="t-Report-cell">{{.}}</td></tr>{{/array}}',
      rendered;

    this.paste.popup.textarea.detach();
    
    this.paste.popup.buttons.parse.hide();
    this.paste.popup.buttons.back.show();
    this.paste.popup.buttons.clear.show();
    this.paste.popup.buttons.apply.show();

    this.paste.popup.body
      .empty()
      .removeAttr('class')
      .addClass(this.paste.classes.body)
      .addClass('valuesOut');


    rendered = $(Mustache.render( template, {"array": this.paste.state.outOfLimit}));

    table
      .append( tr.clone()
        .append( th.clone().html( this.C_POPUP_PASTE_SUMMARY_TH_VALUES_OUT ) ) 
      )
      .append( rendered )
      .appendTo( tableContainer )
    ;

    this.paste.popup.body.append( tableContainer )

    this.paste.popup.buttons.back.off('click').on('click', $.proxy( this._pastePopupShowParseResult, this ) );    
  },
  /*
    *
    * function name: _pastePopupShowParseResult
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _pastePopupShowParseResult: function(){
    apex.debug.message(this.C_LOG_DEBUG,  this.logPrefix, '_pastePopupShowParseResult', {
      "arguments": arguments
    });

    var 
      showValuesTobeApplied = '<a href="javascript: void(0)" class="showToBeApplied">'+this.C_POPUP_PASTE_SUMMARY_SHOW_LIST_ANCHOR+'</a>',
      showValuesExceeding   = '<a href="javascript: void(0)" class="showExceeding">'+this.C_POPUP_PASTE_SUMMARY_SHOW_LIST_ANCHOR+'</a>',
      tableContainer = $('<div></div>').addClass('t-Report t-Report--stretch t-Report--staticRowColors t-Report--rowHighlightOff t-Report--inline'),
      table = $('<table></table>').addClass('t-Report-report'),
      tr = $('<tr></tr>'),
      th = $('<th></th>').addClass('t-Report-colHead').attr('align', 'left'),
      td = $('<td></td>').addClass('t-Report-cell').attr('align', 'left'),
      textPastedValues,
      textOutOfLimitValues,
      maxLength = this.pluginSettings.maxlength == undefined ? this.C_POPUP_PASTE_SUMMARY_MAXLENGTH_NOTSET : this.pluginSettings.maxlength;

    this.paste.popup.body
      .empty()
      .removeAttr('class')
      .addClass(this.paste.classes.body)
      .addClass('summary');


    this.paste.popup.buttons.parse.hide();
    this.paste.popup.buttons.back.hide();
    this.paste.popup.buttons.clear.show();
    this.paste.popup.buttons.apply.show();

    if ( this.paste.state.parsed.length > 0 ) {
      textPastedValues = this.C_POPUP_PASTE_SUMMARY_VALUES_TO_BE_APPLIED.replace('%0', showValuesTobeApplied);
    }
    else {
      textPastedValues = this.C_POPUP_PASTE_SUMMARY_VALUES_TO_BE_APPLIED.replace('%0', '');
    }

    if ( this.paste.state.outOfLimit.length > 0 ) {
      textOutOfLimitValues = this.C_POPUP_PASTE_SUMMARY_VALUES_EXCEEDING_LIMIT.replace('%0', showValuesExceeding);
    }
    else {
      textOutOfLimitValues = this.C_POPUP_PASTE_SUMMARY_VALUES_EXCEEDING_LIMIT.replace('%0', '');
    }

    table
      .append( tr.clone() 
        .append( th.clone().text( this.C_POPUP_PASTE_SUMMARY_TH_SUMMARY ).attr('colspan', 2) )
      )
      .append( tr.clone()
        .append( td.clone().html( this.C_POPUP_PASTE_SUMMARY_PASTED_COUNT ) ) 
        .append( td.clone().html( this.paste.state.pasted.length ) )
      )
      .append( tr.clone()
        .append( td.clone().html( this.C_POPUP_PASTE_SUMMARY_PASTED_LENGHT ) ) 
        .append( td.clone().html( this.paste.state.pasted.join(this.C_VALUE_SEPARATOR).length ) ) 
      )
      .append( tr.clone()
        .append( td.clone().html( this.C_POPUP_PASTE_SUMMARY_MAX_LENGTH ) ) 
        .append( td.clone().html( maxLength ) ) 
      )
      .append( tr.clone()
        .append( td.clone().html( textPastedValues ) ) 
        .append( td.clone().html( this.paste.state.parsed.length ) ) 
      )
      .append( tr.clone()
        .append( td.clone().html( textOutOfLimitValues ) ) 
        .append( td.clone().html( this.paste.state.outOfLimit.length ) ) 
      )
    ;

    table.find('.showToBeApplied').on('click', $.proxy( this._pastePopupShowValuesToBeApplied, this ));
    table.find('.showExceeding').on('click', $.proxy( this._pastePopupShowValuesExceeding, this ));

    tableContainer.append( table );
    this.paste.popup.body.append( tableContainer );
  },
  /*
    *
    * function name: _pastePopupActionClear
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _pastePopupActionClear: function(){
    apex.debug.message(this.C_LOG_DEBUG,  this.logPrefix, '_pastePopupActionClear', {
      "arguments": arguments
    });

    this._pastePopupPasteForm();
  },
  /*
    *
    * function name: _pastePopupActionApply
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _pastePopupActionApply: function(){
    apex.debug.message(this.C_LOG_DEBUG,  this.logPrefix, '_pastePopupActionApply', {
      "arguments": arguments
    });

    //this._elementSetValue( this.paste.state.parsed.join( this.C_VALUE_SEPARATOR ) );

    this._promptEmptyMaskState();
    this._promptEmptyTags();

    for (var i=0; i < this.paste.state.parsed.length; i++) {
      this._maskStateSelectedAdd( 
        {
          "display"         : this.paste.state.parsed[i],
          "value"           : this.paste.state.parsed[i]
        },    //object
        true, //is extra value
        false //is null value
      );
    }    

    this._promptApplyValues( true );
    this._promptRenderTags();

    this._getOnLoadLov( this._elementGetValue() );
    
    this.paste.popup.container.dialog('close');
  },
  /*
    *
    * function name: _pastePopupCreateNew
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _pastePopupCreateNew: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_pastePopupCreateNew', {
      "arguments": arguments
    });

    var 
      body         = $('<div class="body"></div>'),
      textarea     = $('<textarea placeholder="'+this.C_POPUP_PASTE_TEXTAREA_PLACEHOLDER+'"></textarea'),
      footer       = $('<div class="footer"></div>'),
      footerLeft   = $('<div class="left"></div>'),
      footerRight  = $('<div class="right"></div>'),
      tabs         = $('<ul><li>Pasted</li></ul>'),
      buttonParse  = $('<button class="t-Button t-Button--hot parse">'+this.C_POPUP_PASTE_BTN_PARSE_TEXT+'</button>'),
      buttonApply  = $('<button class="t-Button t-Button--hot apply">'+this.C_POPUP_PASTE_BTN_SELECT_TEXT+'</button>'),
      buttonDebug  = $('<button class="t-Button debug"><span class="fa fa-info"></span></button>'),
      buttonBack   = $('<button class="t-Button back">'+this.C_POPUP_PASTE_BTN_BACK_TEXT+'</button>'),
      buttonClear  = $('<button class="t-Button clear">'+this.C_POPUP_PASTE_BTN_CLEAR_TEXT+'</button>'),

      container    = $('<div class="container" data-apex-item="'+this.element.get(0).id+'"></div>'),
      options      = {
        "dialogClass"   : "pretius--enhancedLovItem paste",
        "autoOpen"      : false,
        "appendTo"      : 'body',
        "modal"         : true,
        "title"         : this.pluginSettings.popup.title,
        "width"         : 500,
        "minWidth"      : 500,
        "height"        : "auto",
        "minHeight"     : "auto",
        "resizable"     : false,
        "draggable"     : false,
        "closeOnEscape" : this.pluginSettings.popup.closeOnEscape,
        "open"          : $.proxy( this._pastePopupOpenCallback, this ),
        "close"         : $.proxy( this._pastePopupCloseCallback, this ),
        "beforeClose"   : $.proxy( this._pastePopupBeforeCloseCallback, this )
      },
      returnObject;

    container.dialog( options );
    container.attr({
      'tabindex': 0,
      'data-paste': this.widgetUniqueId
    });


    body.append( textarea );

    buttonParse.on('click', $.proxy( this._pastePopupActionParse, this ));
    buttonClear.on('click', $.proxy( this._pastePopupActionClear, this ));
    buttonApply.on('click', $.proxy( this._pastePopupActionApply, this ));

    footerLeft
      .append( buttonBack );

    footerRight
      .append( buttonClear )
      .append( buttonParse )
      .append( buttonApply );

    footer
      .append(footerLeft)
      .append(footerRight);
    
    container
      .append( body )
      .append( footer );

    returnObject = {
      "container": container,
      "body"     : body,
      "footer"   : footer,
      "buttons": {
        "parse": buttonParse,
        "clear": buttonClear,
        "apply": buttonApply,
        "back": buttonBack
      },
      "textarea" : textarea
    };

    return returnObject
  },

  /*
    *
    * function name: _promptMenuSortTags
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _promptMenuSortTags: function( pEvent ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptMenuSortTags', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      target = $(pEvent.target),
      direction = this.mask.state.sorted == 'asc' ? 'desc' : 'asc';    

    this.mask.state.selected.sort( this._sortJson( "display", direction ) );

    this._promptRenderTags();
    this._promptApplyValues(true);

    //set state of mask
    this.mask.state.sorted = direction;

    if ( this.prompt.isVisible ) {
      //set state of prompt
      this.prompt.menu.sort.removeClass('asc desc').addClass( direction );
    }

    this._promptSetFocus();
  },
  /*
    *
    * function name: _promptMenuClearValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptMenuClearValues: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptMenuClearValues', {
      "arguments": arguments
    });

    this._promptEmptyMaskState();
    this._promptEmptyTags();
    //this._promptHiglightRemoveCurrentLi();
    this._promptLiRemoveSelection();
    this._promptReposition();
    this._promptSelectFirstRow();
    this._promptApplyValues( true );

    this._promptSetFocus();
  },
  /*
    *
    * function name: _promptRenderTags
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptRenderTags: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptRenderTags', {
      "arguments": arguments
    });

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
        apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptRenderTags', 'value "'+this.mask.state.selected[i].value+'" is not in value from sql query.');
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
  /*
    *
    * function name: _promptMenuChangeView
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptMenuChangeView: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptMenuChangeView', {
      "arguments": arguments
    });

    if ( this.mask.container.is('.expanded') ) {
      this.mask.container.removeClass('expanded');
      this.prompt.menu.expand.removeClass('expanded')

    }
    else {
      this.mask.container.addClass('expanded');
      this.prompt.menu.expand.addClass('expanded')
    }

    this._promptReposition();

    this._promptSetFocus();
  },
  /*
    *
    * function name: _promptUnhighlightOther
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptUnhighlightOther: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptUnhighlightOther', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    this.prompt.body.find('li').not( pEvent.target ).removeAttr('aria-highlighted');
  },
  /*
    *
    * function name: _promptScrollCallback
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptScrollCallback: function( pEvent) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptScrollCallback', {
      "arguments": arguments,
      "pEvent": pEvent, 
      "scrollTop": this.prompt.body.scrollTop()
    });

    var 
      percent = this._getScrollPercent( this.prompt.body, this.pluginSettings.prompt.maxHeight );

    if ( percent > 90 && this.mask.state.ajaxRunning == false ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptScrollCallback', 'Reached over 90% of container scroll. Perform AJAX');
      this._promptAjaxPerform( ++this.mask.state.lastFetchedPage );
    }
    else if ( percent > 90 && this.mask.state.ajaxRunning == true ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptScrollCallback', 'There is AJAX awaiting for results. AJAX not performed');
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptScrollCallback', 'Just scroll. do nothing'); 
    }

  },
  /*
    *
    * function name: _promptInputBlur
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptInputBlur: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptInputBlur', {
      "arguments": arguments
    });
  },
  /*
    *
    * function name: _promptInputFocus
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptInputFocus: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptInputFocus', {
      "arguments": arguments
    });
  },
  /*
    *
    * function name: _promptDisplayError
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptDisplayError: function( pText ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptDisplayError', {
      "arguments": arguments,
      "pText": pText, 
      "prompt": this.prompt
    });

    this.prompt.body.html( '<div class="promptError"><span class="fa fa-exclamation-triangle"></span> '+pText+'</div>' );
    apex.debug.message(this.C_LOG_ERROR, this.logPrefix, '_promptDisplayError', pText);
  },
  /*
    *
    * function name: _promptLiRemoveSelection
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptLiRemoveSelection: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptHiglightRemoveAll', {
      "arguments": arguments
    });

    this.prompt.body.find('[aria-selected=true]').removeAttr('aria-selected');
  },
  /*
    *
    * function name: _promptHiglightRemoveCurrentLi
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptHiglightRemoveCurrentLi: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptHiglightRemoveCurrentLi', {
      "arguments": arguments
    });

    this.mask.state.currentSelection.removeAttr('aria-highlighted');
    this.mask.state.currentSelection = undefined;
  },
  /*
    *
    * function name: _promptHighlightLi
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptHighlightLi: function( pLiElement ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptHighlightLi', {
      "arguments": arguments,
      "pLiElement": pLiElement
    });

    //remove selection in all set of data
    if ( this.mask.state.currentSelection != undefined ) {
      this._promptHiglightRemoveCurrentLi();  
    }    

    this.mask.state.currentSelection = pLiElement;

    pLiElement.attr('aria-highlighted', true);
  },
  /*
    *
    * function name: _promptSelectFirstRow
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptSelectFirstRow: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptSelectFirstRow', {
      "arguments": arguments
    });

    var firstLine = this.prompt.body.find('li').first();

    this._promptHighlightLi( firstLine );
  },
  /*
    *
    * function name: _dataExtendSelectedFromArrayOfObjects
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _dataExtendSelectedFromArrayOfObjects: function( pData, pSelected ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_dataExtendSelectedFromArrayOfObjects', {
      "arguments": arguments,
      "pData": pData,
      "pSelected": pSelected
    });

    for ( var i in pData.data ) {
      for ( var y=0; y < pSelected.length; y++ ) {
        if ( pSelected[y].value.toString() == pData.data[i].R.toString() ) {
          pData.data[i].selected = true;
          continue;
        }

      }
    }

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_dataExtendSelectedFromArrayOfObjects', "returned pData", pData);

    return pData;
  },
  /*
    *
    * function name: _promptTemplateDefault
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptTemplateDefault: function(){
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

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptTemplateDefault', {
      "arguments": arguments,
      "returns": template
    });

    return template;
  },
  /*
    *
    * function name: _promptRenderDataInCustomTemplate
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptRenderDataInCustomTemplate: function( pData ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptRenderDataInCustomTemplate', {
      "arguments": arguments,
      "pData": pData
    });

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
  /*
    *
    * function name: _promptAppendData
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptAppendData: function( pData ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptAppendData', {
      "arguments": arguments,
      "pData": pData
    });

    var 
      rendered,
      template = this._promptTemplateDefault();

    if ( pData.data.length == 0 ) {
      return void(0);
    }

    if ( this.pluginSettings.prompt.isCustomTemplate == false ) {
      apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptAppendData', "render data in default template");

      try {
        rendered = $(Mustache.render( template, pData));
      } catch( error ) {
        this._throwError(error);
      }
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptAppendData', "render data in custom template");

      rendered = this._promptRenderDataInCustomTemplate( pData );
    }
  
    this.prompt.body.find('ul').append( rendered );
    this._promptReposition();

    this._triggerEvent('paeli_prompt_data_appended', this._promptGetEventData());
  },
  /*
    *
    * function name: _promptDrawMinimalInputLength
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptDrawMinimalInputLength: function( pMessage ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptDrawMinimalInputLength', {
      "arguments": arguments,
      "pMessage": pMessage
    });

    var 
      message = pMessage.replace('%0', this.pluginSettings.prompt.minimalInputLength),
      template = ''+
        '<div class="nodatafound">'+
        '  <span class="text">'+message+'</span>'+
        '</div>';

    this.prompt.body.html( template );
    this.mask.state.areResultsAvailable = false;

  },
  /*
    *
    * function name: _promptDrawNodataFound
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptDrawNodataFound: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptDrawNodataFound', {
      "arguments": arguments
    });
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
  /*
    *
    * function name: _promptRenderData
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptRenderData: function( pData ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptRenderData', {
      "arguments": arguments,
      "pData": pData
    });

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
      apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptRenderData', "render data in default template");

      defaultTemplate = '<ul>'+defaultTemplate+'</ul>';  

      try {
        rendered = $(Mustache.render( defaultTemplate, pData));
      } catch( error ) {
        this._throwError(error);
      }

    }
    else {
      apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptRenderData', "render data in custom template");

      rendered = this._promptRenderDataInCustomTemplate( pData );
      rendered = '<ul>'+rendered+'</ul>';
    }

    this.prompt.body.html( rendered );
    this._promptReposition();
    this.mask.state.areResultsAvailable = true;
    this._promptSelectFirstRow();

    this._triggerEvent('paeli_prompt_data_rendered', this._promptGetEventData());
  },
  /*
    *
    * function name: _resetFocus
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _resetFocus: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_resetFocus', {
      "arguments": arguments
    });


    if ( this.ig.isEmbededInGrid ) {
      var 
        widget = this,
        recordId = this.ig.grid.model.getRecordId(this.ig.grid.view$.grid('getSelectedRecords')[0]),
        column = this.ig.region.interactiveGrid('option').config.columns.filter(function (pColumn) {
          
          return pColumn.staticId === widget.options.item.name
        })[0];
        
      this.ig.grid.view$.grid('gotoCell', recordId, column.name)
      //this.ig.grid.focus();
      this.ig.region.interactiveGrid('focus');
    }
    else {
      this.element.focus();
    }

  },
  /*
    *
    * function name: _promptGetHiglighted
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _promptGetHiglighted: function(){
    var returnValue = this.prompt.body.find('[aria-highlighted="true"]');

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptGetHiglighted', {
      "arguments": arguments,
      "returns": returnValue
    });

    return returnValue;
  },
  /*
    *
    * function name: _maskPopupButtonKeyDown
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskPopupButtonKeyDown: function( pEvent ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskPopupButtonKeyDown', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var
      keyCode = pEvent.keyCode;

    if ( this._isNavigationKey( keyCode ) == 'DOWN' ) {
      this._promptSearchInputFocusHandler();
    }

  },
  /*
    *
    * function name: _maskStateSelectedRemove
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskStateSelectedRemove: function( pIndex ) {
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskStateSelectedRemove', {
      "arguments": arguments,
      "pIndex": pIndex
    });

    var removed;

    removed = this.mask.state.selected.splice( pIndex, 1 );

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskStateSelectedRemove', 'removed object', removed);
  },
  /*
    *
    * function name: _maskStateSelectedAdd
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskStateSelectedAdd: function( pObject, pIsExtraValue, pIsNullValue ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskStateSelectedAdd', {
      "arguments": arguments,
      "pObject"             : pObject,
      "pIsExtraValue"       : pIsExtraValue,
      "pIsNullValue"        : pIsNullValue
    });

    if ( pIsExtraValue ) {
      pObject.isExtraValue = true;      
    }

    if ( pIsNullValue ) {
      pObject.isAPEXNullValue = true; 
    }

    this.mask.state.selected.push( pObject );
  },

  /*
    *
    * function name: _maskStateSelectedGetIndex
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _maskStateSelectedGetIndex: function( pValue ){
    for ( var i=0; i < this.mask.state.selected.length; i++ ) {
      if ( this.mask.state.selected[i].value == pValue ) {
        apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskStateSelectedGetIndex', {
          "arguments": arguments,
          "pValue": pValue,
          "return": i
        });        

        return i;
      }
    }

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskStateSelectedGetIndex', {
      "arguments": arguments,
      "pValue": pValue,
      "return": -1
    });        

    return -1;
  },
  /*
    *
    * function name: _promptIsValueSelected
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptIsValueSelected: function( pValue ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptIsValueSelected', {
      "arguments": arguments,
      "pValue": pValue
    });

    var returnValue = this.mask.state.selected.indexOf( pValue ) > -1;

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptIsValueSelected', "returns", {
      "returnValue": returnValue
    });

    return returnValue;
  },
  /*
    *
    * function name: _promptRemoveHighlightedfromAllLi
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptRemoveHighlightedfromAllLi: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptRemoveHighlightedfromAllLi', {
      "arguments": arguments
    });

    this.prompt.body.find( 'li[aria-highlighted]' ).removeAttr('aria-highlighted');
  },
  /*
    *
    * function name: _promptRemoveHighlightedFromLi
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptRemoveHighlightedFromLi: function( pLi ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptRemoveHighlightedFromLi', {
      "arguments": arguments,
      'pLi': pLi
    });

    pLi.removeAttr('aria-highlighted');
  },

  /*
    *
    * function name: _promptGetLiSelected
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptGetLiSelected: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptGetLiSelected', {
      "arguments": arguments
    });

    return this.prompt.body.find('li').filter( function( pIndex, pElem ){
      return $(pElem).is('[aria-selected=true]');
    } );
  },
  /*
    *
    * function name: _promptSelectValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptSelectValue: function( pLi ){
    var
      valueReturn  = pLi.attr('aria-return-value'),
      valueDisplay = pLi.attr('aria-display-value'),
      isAPEXNullValue = pLi.attr('aria-null-value'),
      current = this._promptGetLiSelected().first();

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptSelectValue', {
      "arguments": arguments,
      "pLi"    : pLi,
      "value"  : valueReturn,
      "display": valueDisplay,
      "null"   : isAPEXNullValue
    });

    if ( this.mask.state.areResultsAvailable == false) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptSelectValue no results to be selected!');
      return void(0);
    }

    if ( 
      this.pluginSettings.isMultipleSelection == false
      && this.mask.state.selected.length == 1
    ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptSelectValue deselect and select new');

      try {
        this._promptUnselectValue( current.attr('aria-return-value'), current );
      } catch( error ) {
        this._promptEmptyTags();
        this._promptEmptyMaskState();
      }
      
    }
    else if (
      this.pluginSettings.isMultipleSelection == false
      && this.mask.state.selected.length > 1
    ) {
      this._promptRemoveHighlightedfromAllLi();
      this._promptEmptyTags();
      this._promptEmptyMaskState();
    }

    this._maskStateSelectedAdd(
      {
        "display": valueDisplay,
        "value"  : valueReturn
      },                          // object
      false,                      // is extra value,
      (isAPEXNullValue == "true") // is null value
    );

    this._promptApplyValues( true );
    this._promptRenderTags();

    pLi.attr('aria-selected', true);

    this._promptHighlightLi(pLi);

    this.mask.state.currentSelection = pLi;

    if ( this.prompt.isVisible ) {
      this._promptReposition();
      this._promptSetFocus();
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
        apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptSelectValue', 'length of mask input is 0, do not force new autocomplete result.');
        return void(0);
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
  /*
    *
    * function name: _promptUnselectValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptUnselectValue: function( pValue, pLi ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptUnselectValue', {
      "arguments": arguments,
      "pValue": pValue,
      "pLi": pLi
    });

    var 
      value = pValue,
      indexOf = this._maskStateSelectedGetIndex( value ),
      removed = null;

    if ( indexOf < 0 ) {
      this._throwErrorText(' Value "'+pValue+'" is not selected!');
    }

    if ( pLi != undefined ) {
      pLi.removeAttr('aria-selected')
    }

    
    this._maskStateSelectedRemove( indexOf );

    this._promptApplyValues( true );
    this._tagRemoveToBeDeleted( value );


    if ( this.prompt.isVisible ) {
      this._promptReposition();  
    }
  },  
  /*
    *
    * function name: _promptApplyValues
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptApplyValues: function( pTriggerChange ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptApplyValues', {
      "arguments": arguments,
      "pTriggerChange": pTriggerChange,
      "values length" : this.mask.state.selected.length,
      "values"        : $.extend([], this.mask.state.selected)
    });

    var arrayOfValues = [];
    
    if ( this.mask.state.selected.length > 0 ) {

      for ( var i=0; i< this.mask.state.selected.length; i++ ) {
        arrayOfValues.push( this.mask.state.selected[i].value );
      }

      this._elementSetValue( arrayOfValues.join( this.C_VALUE_SEPARATOR ) );
      
      //this.mask.state.selected.sort( this._sortJson( "display", this.mask.state.sorted ) );
    }
    else {
      this._elementSetValue( null );

      this._promptPlaceHolderShow();
    }

    if ( pTriggerChange ) {
      apex.event.trigger( this.element.get(0), 'change' );
    }
  },
  /*
    *
    * function name: _promptTagsGetObject
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptTagsGetObject: function( pReturn ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptTagsGetObject', {
      "arguments": arguments,
      "pReturn": pReturn
    });

    for ( var i=0; i < this.mask.state.tags.length; i++ ) {
      if ( this.mask.state.tags[i].value == pReturn ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptTagsGetObject', 'pReturn has index '+i);
        return this.mask.state.tags[i];
      }
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptTagsGetObject', 'pReturn is not in tags list');

    return undefined;

  },
  /*
    *
    * function name: _promptTagsGetIndex
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptTagsGetIndex: function( pReturn ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptTagsGetIndex', {
      "arguments": arguments,
      "pReturn": pReturn, 
      "tags"   : this.mask.state.tags
    });

    for ( var i=0; i < this.mask.state.tags.length; i++ ) {
      if ( this.mask.state.tags[i].value == pReturn ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptTagsGetIndex', 'pReturn has index '+i);
        return i;
      }
    }

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptTagsGetIndex', 'pReturn is not in tags list');

    return -1;
  },
  /*
    *
    * function name: _promptGetLiByReturnValue
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptGetLiByReturnValue: function( pValue ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptGetLiByReturnValue', {
      "arguments": arguments,
      "pValue": pValue
    });

    var li = this.prompt.body.find('li').filter( function( pIndex, pElem ){
      return $(pElem).attr('aria-return-value').toString() == pValue.toString();
    } );

    if ( li.length > 0 ) {
      apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptGetLiByReturnValue', 'found li element', li);
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptGetLiByReturnValue', 'there is no li element with return value', pValue); 
    }
    return li;
  },
  /*
    *
    * function name: _tagRemoveFromMask
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _tagRemoveFromMask: function( pEvent ){
    var 
      value = $(pEvent.target).closest('div').attr('aria-return-value');

    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_tagRemoveFromMask', {
      "arguments": arguments,
      "pEvent": pEvent,
      "value": value      
    });

    pEvent.stopImmediatePropagation();

    if ( this.mask.state.disabled ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_tagRemoveFromMask', 'APEX item is disabled, do nothing.');
      pEvent.preventDefault();
      pEvent.stopImmediatePropagation();
      return void(0);
    }

    this._maskStateSelectedRemove( this._maskStateSelectedGetIndex( value ) );
    this._tagRemoveToBeDeleted( value );
    this._promptApplyValues( true );

    if ( this.prompt.isVisible ) {
      this._promptReposition();
      this._promptGetLiByReturnValue( value ).removeAttr('aria-selected')
      this._promptSetFocus();
    }
  },

  /*
    *
    * function name: _tagRemoveToBeDeleted
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _tagRemoveToBeDeleted: function( pReturn ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_tagRemoveToBeDeleted', {
      "arguments": arguments,
      "pReturn": pReturn
    });

    var 
      indexOf = this._promptTagsGetIndex( pReturn ),
      tag = undefined;

    if ( indexOf < 0 ) {
      apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_tagRemoveToBeDeleted', 'Tag not found');      
      return void(0);
    }

    tag = this.mask.state.tags[indexOf];

    //remove tag from dom
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_tagRemoveToBeDeleted', 'tag to be removed from DOM', tag);
    tag.container.remove();

    //remove tag from list of tags
    this.mask.state.tags.splice( indexOf, 1 );
  },

  /*
    *
    * function name: _promptTagsAddNew
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _promptTagsAddNew: function( pDisplay, pReturn, pIsExtraValue ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptTagsAddNew', {
      "arguments": arguments,
      "pDisplay"      : pDisplay,
      "pReturn"       : pReturn,
      "pIsExtraValue" : pIsExtraValue
    });

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
  /*
    *
    * function name: _promptTagsSummaryOpenSelected
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptTagsSummaryOpenSelected: function(){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptTagsSummaryOpenSelected', {
      "arguments": arguments,
    });

    if ( this.pluginSettings.isPopupReportAvailable ) {
      apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptTagsSummaryOpenSelected, popup not available, do nth');

      this.popup.showSelectedCheckbox.prop('checked', true);
      this._popupOpen();
    
    }

  },
  /*
    *
    * function name: _promptTagsSummary
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptTagsSummary: function( pNotRenderedCnt ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptTagsSummary', {
      "arguments": arguments,
      "pNotRenderedCnt": pNotRenderedCnt
    });

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
  /*
    *
    * function name: _promptCheckClickOutside
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptCheckClickOutside: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptCheckClickOutside', {
      "arguments": arguments,
      "pEvent"               : pEvent,
      "pEvent.currentTarget" : pEvent.currentTarget,
      "pEvent.target"        : pEvent.target
    });

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
    *
    * function name: _getNextFocusAble
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _getNextFocusAble: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_getNextFocusAble', {
      "arguments": arguments
    });

    var tabbableArr, indexOf, next;

    this.element.show();
    
    tabbableArr = $(':tabbable').toArray();
    indexOf = tabbableArr.indexOf( this.element.get(0) );
    next = tabbableArr[ indexOf+1 ];

    this.element.hide();

    return $(next);

  },

  /*
    *
    * function name: _promptNavigateArrows
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _promptNavigateArrows: function( pDirection ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptNavigateArrows', {
      "arguments": arguments,
      "pDirection": pDirection
    });

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
  /*
    *
    * function name: _promptLiClickHanlder
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptLiClickHanlder: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptLiClickHanlder', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      target = $(pEvent.target).is('li') ? $(pEvent.target) : $(pEvent.target).closest('li');

    if ( target.is('[aria-selected="true"]') ) {
      this._promptUnselectValue( target.attr('aria-return-value'), target );  
    }
    else {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptLiClickHanlder currently selected items: ', this.mask.state.selected.length, this.mask.state.selected);

      this._promptSelectValue( target );
    }
    

  },

  /*
    *
    * function name: _maskHandleFocus
    * description  : 
    * params:
    *   -
    *   -
    *
  */
  _maskHandleFocus: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskHandleFocus', {
      "arguments": arguments,
      "pEvent": pEvent
    });

  },
  /*
    *
    * function name: _maskHandleBlur
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskHandleBlur: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskHandleBlur', {
      "arguments": arguments,
      "pEvent": pEvent
    });

  },
  /*
    *
    * function name: _maskHandleKeyDown
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskHandleKeyDown: function( pEvent ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_maskHandleKeyDown', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var
      keyCode = pEvent.keyCode,
      isNavigationDirection = this._isNavigationKey( keyCode );

    if ( isNavigationDirection == 'DOWN' ) {
      this._promptSearchInputFocusHandler();
    }

  },
  /*
    *
    * function name: _maskHandleKeyPress
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _maskHandleKeyPress: function( pEvent ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_maskHandleKeyPress', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    if ( !this.pluginSettings.isAutocompleteAvailable ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_maskHandleKeyPress', 'Autocomplete is not available');
      return void(0);
    }

    if ( pEvent.keyCode != 13 ) {
      this.prompt.input.val( pEvent.key )
    }

    this.prompt.input.trigger('keyup');

    this._promptShow();

    //tbd timeout
    setTimeout( $.proxy( function(){
      this._promptSetFocus();
    }, this ), 100 );
  },
  /*
    *
    * function name: _promptSearchInputFocusHandler
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptSearchInputFocusHandler: function( pEvent ){
    apex.debug.message(this.C_LOG_DEBUG, this.logPrefix, '_promptSearchInputFocusHandler', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    if ( this.mask.state.disabled ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptSearchInputFocusHandler', 'APEX item is disabled, do nothing.');
      return void(0);
    }

    if ( !this.pluginSettings.isAutocompleteAvailable ) {
      apex.debug.message(this.C_LOG_WARNING, this.logPrefix, '_promptSearchInputFocusHandler', 'Autocomplete is not available');
      return void(0);
    }

    if ( !this.prompt.isVisible ) {
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
    }
    else {
      this._promptReposition();
    }
  
    this._promptSetFocus();
  },
  /*
    *
    * function name: _promptIsMinimalInputLengthMatched
    * description  : 
    * params:
    *   -
    *   -
    *
  */  
  _promptIsMinimalInputLengthMatched: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptIsMinimalInputLengthMatched', {
      "arguments": arguments
    });

    var returnValue = this.pluginSettings.prompt.minimalInputLength > this.prompt.input.val().length;

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_promptIsMinimalInputLengthMatched returns', returnValue);
    return returnValue;
  },
  /*
    *
    * function name: _sortJson
    * description
    * params:
    *   -
    *   -
    *
  */  
  _sortJson: function( pProperty, pDirection ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_sortJson', {
      "arguments": arguments,
      "pProperty": pProperty,
      "pDirection": pDirection
    });

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
  /*
    *
    * function name: _highlightWord
    * description
    * params:
    *   -
    *   -
    *
  */  
  _highlightWord: function( pText, pSearchString ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_highlightWord', {
      "arguments" : arguments,
      "pText"         : pText,
      "pSearchString" : pSearchString
    });

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
  /*
    *
    * function name: _getItemContainer
    * description
    * params:
    *   -
    *   -
    *
  */  
  _getItemContainer: function(){
    var returnObject = this.mask.container.find('.itemContainer');

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getItemContainer', {
      "arguments": arguments,
      "return": returnObject
    });

    return returnObject
  },

  /*
    *
    * function name: _isNavigationKey
    * description
    * params:
    *   -
    *   -
    *
  */  
  _isNavigationKey: function( pKeyCode ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_isNavigationKey', {
      "arguments": arguments,
      "pKeyCode": pKeyCode
    });

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
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_isNavigationKey', "returns", returnValue);

    return returnValue;
  },
  /*
    *
    * function name: _maskGetValue
    * description
    * params:
    *   -
    *   -
    *
  */  
  _maskGetValue: function(){
    var returnValue = this.prompt.input.val();

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskGetValue', {
      "arguments": arguments,
      "return": returnValue
    });

    return returnValue;
  },
  /*
    *
    * function name: _maskKeyUpManageIcons
    * description
    * params:
    *   -
    *   -
    *
  */  
  _maskKeyUpManageIcons: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskKeyUpManageIcons', {
      "arguments": arguments
    });

    if ( this.popup.search.val().length == 0 ) {
      this.popup.search.addClass('empty');
    }
    else {
      this.popup.search.removeClass('empty');
    }
  },
  /*
    *
    * function name: _promptInputKeyDownHandler
    * description
    * params:
    *   -
    *   -
    *
  */  
  _promptInputKeyDownHandler: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptInputKeyDownHandler', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      keyCode = pEvent.keyCode,
      isNavigationDirection = this._isNavigationKey( keyCode );

    if ( pEvent.shiftKey ) {
      return false;
    }

    if ( keyCode == 9 ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptInputKeyDownHandler', 'TAB key pressed.');
      this._promptHide( this.mask.popupButton );
    }      
    else if ( keyCode == 27) {
      //when escape or tab pressed
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptInputKeyDownHandler', 'ESCAPE key pressed.');
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
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_promptInputKeyDownHandler', 'no results available');        
      }
    }
  },  
  /*
    *
    * function name: _maskKeyUp
    * description
    * params:
    *   -
    *   -
    *
  */  
  _maskKeyUp: function( pEvent ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskKeyUp', {
      "arguments": arguments,
      "pEvent": pEvent
    });

    var 
      keyCode = pEvent.keyCode,
      isNavigationDirection = this._isNavigationKey( keyCode ),
      highlighted = this._promptGetHiglighted();

    if ( keyCode == 9 ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskKeyUp', 'TAB key released. Do not perform autocomplete because it was already');
      return false; 
    }

    if ( keyCode == 16 ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskKeyUp', 'SHIFT key released. Do not perform autocomplete');
      return false; 
    }

    if ( isNavigationDirection ) {
      return false;
    }
    else if ( keyCode == 13 ) {
      apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskKeyUp', 'enter pressed');

      if ( this.mask.state.areResultsAvailable == false ) {
        apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_maskKeyUp', 'results are not yet available');        
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
  /*
    *
    * function name: _checkIfDataContainsDisplayColumn
    * description
    * params:
    *   -
    *   -
    *
  */  
  _checkIfDataContainsDisplayColumn: function( pData ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_checkIfDataContainsDisplayColumn', {
      "arguments": arguments,
      "pData": pData
    });

    var exists = false;

    for ( var i in pData.data ) {
      if (pData.data[i].D != undefined) {
        exists = true;
        break;
      }
    }

    return exists;
  },
  /*
    *
    * function name: _checkIfDataContainsReturnColumn
    * description
    * params:
    *   -
    *   -
    *
  */  
  _checkIfDataContainsReturnColumn: function( pData ) {
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_checkIfDataContainsReturnColumn', {
      "arguments": arguments,
      "pData": pData
    });

    var exists = false;

    for ( var i in pData.data ) {
      if (pData.data[i].R != undefined) {
        exists = true;
        break;
      }
    }

    return exists;
  },
  /*
    *
    * function name: _getScrollPercent
    * description
    * params:
    *   -
    *   -
    *
  */  
  _getScrollPercent: function( pElement, pMaxHeight ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getScrollPercent', {
      "arguments": arguments,
      "pElement"  : pElement,
      "pMaxHeight": pMaxHeight
    });

    var 
      scrolled = pElement.scrollTop(),
      realHeight = pElement.children().outerHeight() - pMaxHeight,
      percent ;

    percent = scrolled * 100 / realHeight;
    percent = percent > 100 ? 100 : percent;

    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_getScrollPercent', {
      'result': percent
    });

    return percent;
  },

  /*
    *
    * function name: _createItemPopupButton
    * description
    * params:
    *   -
    *   -
    *
  */
  _createItemPopupButton: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_createItemPopupButton', {
      "arguments": arguments
    });

    //
    var 
      button = $('<button></button>'),
      icon = $('<span></span>');

    icon.addClass( 'fa '+this.options.item.icon );

    button.addClass('a-Button a-Button--popupLOV');
    button.attr('id', this.options.item.name+'_BUTTON' );
    button.attr('onclick', 'javascript: return false;')
    button.append( icon );

    return button;
  },
  /*
    *
    * function name: _createItemAjaxButton
    * description
    * params:
    *   -
    *   -
    *
  */  
  _createItemAjaxButton: function(){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_createItemAjaxButton', {
      "arguments": arguments
    });
    
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
  /*
    *
    * function name: _maskCreateNew
    * description
    * params:
    *   -
    *   -
    *
  */  
  _maskCreateNew: function(){
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskCreateNew', {
      "arguments": arguments,
      'element': this.element.get(0)
    });
    
    var 
      classes     = this.element.get(0).attributes.class != undefined ? this.element.get(0).attributes.class.value.split(' ') : [],
      maskLayer   = $('<div class="masking"></div>'),
      popupButton = this._createItemPopupButton(),
      ajaxStateButton = this._createItemAjaxButton(),
      palceholderText = this.element.attr('placeholder') == undefined ? "" : this.element.attr('placeholder'),
      placeholder = $('<div class="placeholder">'+palceholderText+'</div>'),
      container = $('<div></div>'),
      itemContainer = $('<div></div>'),
      itemContainerBody = $('<div></div>'),
      tagsConteiner = $('<div></div>'),
      returnObject;

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_maskCreateNew', 'classes', classes);

    container
      .addClass('pretius--enhancedLovItem mask');

    for (var i in classes) {
      container.addClass( classes[i]+'-mask' );  
    }
      
    itemContainer
      .addClass('itemContainer')
      //.css('borderColor', this.inputCss.borderColor);

    //if ( this.pluginSettings.isAutocompleteAvailable == true ) {
      //in case of popup report is not available, make mask focusable
      //so the end-user can navigate to field using tab key
      itemContainer.attr({
        'tabindex': 0,
        'data-mask': this.widgetUniqueId
      });
    //}

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

    returnObject = {
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
      },
      //
      "fieldContainer"        : $('#'+this.options.item.name+'_CONTAINER'),
      "label"                 : $('[for='+this.options.item.name+']'),
      "labelWidth"            : $('[for='+this.options.item.name+']').outerWidth(),
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
    };

    if ( returnObject.fieldContainer.is('.t-Form-fieldContainer--floatingLabel') ) {
      returnObject.fieldContainer.addClass('is-active');
    }

    returnObject.itemContainer
      .on('click',    $.proxy( this._promptSearchInputFocusHandler, this ) )
      .on('focus',    $.proxy( this._maskHandleFocus, this ) )
      .on('blur',     $.proxy( this._maskHandleBlur, this ) )
      .on('keypress', $.proxy( this._maskHandleKeyPress, this ) )
      .on('keydown',  $.proxy( this._maskHandleKeyDown, this ) );

    //listen to event click on "x" icon in tag
    returnObject.tagsContainer.on('click', '.remove', $.proxy( this._tagRemoveFromMask, this ) );

    returnObject.popupButton.on('keydown', $.proxy( this._maskPopupButtonKeyDown, this ) );

    return returnObject;
  },
  /*
    *
    * function name: _writeQueryToConsole
    * description
    * params:
    *   -
    *   -
    *
  */
  _writeQueryToConsole: function( pQuery ) {
    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_writeQueryToConsole', {
      "arguments": arguments
    }); 

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_writeQueryToConsole', 'start'); 

    var array = pQuery.split("\n");

    for ( var i=0; i < array.length; i++ ) {
      apex.debug.message(this.C_LOG_LEVEL6, '# ', array[i]);       
    }

    apex.debug.message(this.C_LOG_LEVEL6, this.logPrefix, '_writeQueryToConsole', 'end'); 
  },
  /*
    *
    * function name: _throwErrorText
    * description
    * params:
    *   -
    *   -
    *
  */  
  _throwErrorText: function( pText ){
    apex.debug.message(this.C_LOG_LEVEL9, this.logPrefix, '_throwErrorText', {
      "arguments": arguments,
      "pText": pText      
    }); 
    throw pText;

  },

  /*
    *
    * function name: _debounce
    * description
    * params:
    *   -
    *   -
    *
  */
  _debounce: function(func, wait, immediate) {
    //apex.debug.message(this.C_LOG_LEVEL9, 'debounce', 'func', func, 'wait', wait, 'immediate', immediate);

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
  /*
    *
    * function name: _throwError
    * description
    * params:
    *   -
    *   -
    *
  */  
  _throwError: function( pErrorThrown ) {
    apex.debug.message(this.C_LOG_ERROR, this.logPrefix, '_throwError', {
      "arguments": arguments,
      "pErrorThrown": pErrorThrown
    }); 

    throw pErrorThrown;
  }

});