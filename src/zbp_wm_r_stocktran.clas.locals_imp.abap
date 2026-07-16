CLASS lhc_ZWM_R_STOCKTRAN DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zwm_r_stocktran RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zwm_r_stocktran RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zwm_r_stocktran.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zwm_r_stocktran.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zwm_r_stocktran.

*    METHODS read FOR READ
*      IMPORTING keys FOR READ zwm_r_stocktran RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zwm_r_stocktran.
    METHODS read FOR READ
      IMPORTING keys FOR READ zwm_r_stocktran RESULT result.

    METHODS changestocktype FOR MODIFY
      IMPORTING keys FOR ACTION zwm_r_stocktran~changestocktype.


ENDCLASS.

CLASS lhc_ZWM_R_STOCKTRAN IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

*  METHOD read.
*  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD changeStockType.

    TYPES: BEGIN OF ty_transfer,
             typ TYPE zwm_de_strocktype,
             qty TYPE zwm_de_quantity,
           END OF ty_transfer,
           ty_transfer_tab TYPE STANDARD TABLE OF ty_transfer WITH EMPTY KEY.

    DATA: comm_system_id   TYPE if_com_management=>ty_cs_id,
          lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
          lo_action_req    TYPE REF TO /iwbep/if_cp_request_create,
          lo_http_request  TYPE REF TO if_web_http_request,
          lo_http_response TYPE REF TO if_web_http_response,
          lv_csrf_token    TYPE string,
          lv_action_path   TYPE string,
          lv_json_body     TYPE string,
          lv_any_failed    TYPE c,
          lv_success_count TYPE int2 VALUE 0,
          lv_failure_count TYPE int2 VALUE 0.

    LOOP AT keys INTO DATA(ls_key).

      DATA(lt_transfer) = VALUE ty_transfer_tab(
            ( typ = 'F1' qty = ls_key-%param-new_qtyf1 )
            ( typ = 'F2' qty = ls_key-%param-new_qtyf2 )
            ( typ = 'F3' qty = ls_key-%param-new_qtyf3 )
            ( typ = 'F4' qty = ls_key-%param-new_qtyf4 )
        ).

      lv_any_failed = abap_false.

      TRY.

          DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                        comm_scenario     = 'ZWM_CS_STOCKTRAN'
                        service_id        = 'ZWM_OBS_STOCKTRAN_REST' ).

          DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

          ASSERT lo_http_client IS BOUND.

          "---- Step 1: fetch CSRF token (needed for the POST) ----
          DATA(lo_token_request) = lo_http_client->get_http_request( ).
          lo_token_request->set_uri_path( '/sap/opu/odata4/sap/api_whse_physstockprod/srvd_a2x/sap/whsephysicalstockproducts/0001/' ).
          lo_token_request->set_header_field( i_name = 'x-csrf-token' i_value = 'Fetch' ).

          DATA(lo_token_response) = lo_http_client->execute( if_web_http_client=>get ).
          lv_csrf_token = lo_token_response->get_header_field( 'x-csrf-token' ).

          " Convert the 32-char hex GUIDs to standard hyphenated lowercase format
          DATA(lv_parent_hex) = to_lower( |{ ls_key-ParentHandlingUnitUUID }| ).
          DATA(lv_stock_hex)  = to_lower( |{ ls_key-StockItemUUID }| ).

          DATA(lv_parent_uuid) = |{ lv_parent_hex+0(8) }-{ lv_parent_hex+8(4) }-{ lv_parent_hex+12(4) }-{ lv_parent_hex+16(4) }-{ lv_parent_hex+20(12) }|.
          DATA(lv_stock_uuid)  = |{ lv_stock_hex+0(8) }-{ lv_stock_hex+8(4) }-{ lv_stock_hex+12(4) }-{ lv_stock_hex+16(4) }-{ lv_stock_hex+20(12) }|.

          "---- Step 2: build the action URL with the composite key ----
          lv_action_path = |/sap/opu/odata4/sap/api_whse_physstockprod/srvd_a2x/sap/whsephysicalstockproducts/0001/| &&
                           |WarehousePhysicalStockProducts/{ lv_parent_uuid }/| && |{ lv_stock_uuid }/SAP__self.ChangeStockType|.


          LOOP AT lt_transfer INTO DATA(ls_transfer) WHERE qty > 0.


            "---- Step 3: build the JSON body ----
            lv_json_body = |\{ "EWMStockType": "{ ls_transfer-typ }", | &&
                           |"EWMGoodsMovementEntryUnit": "PC", | &&
                           |"EWMGoodsMovementEntryQuantity": { ls_transfer-qty } \}|.

            "---- Step 4: execute the POST ----
            lo_http_request = lo_http_client->get_http_request( ).
            lo_http_request->set_uri_path( lv_action_path ).
            lo_http_request->set_header_field( i_name = 'x-csrf-token' i_value = lv_csrf_token ).
            lo_http_request->set_header_field( i_name = 'content-type' i_value = 'application/json' ).
            lo_http_request->set_text( lv_json_body ).

            lo_http_response = lo_http_client->execute( if_web_http_client=>post ).

            DATA(lv_status) = lo_http_response->get_status( )-code.
            DATA(lv_resp_body) = lo_http_response->get_text( ).

            IF lv_status EQ 200.

              lv_success_count = lv_success_count + 1.

              "APPEND VALUE #( %tky = ls_key-%tky ) TO result.

              APPEND VALUE #( %tky = ls_key-%tky
                 %msg = new_message( id       = 'ZWM'
                                      number   = '001'
                                      v1       = ls_transfer-typ
                                      v2       = ls_transfer-qty
                                      severity = if_abap_behv_message=>severity-success ) )
              TO reported-zwm_r_stocktran.

            ELSE.

              lv_failure_count = lv_failure_count + 1.

              APPEND VALUE #( %tky = ls_key-%tky %fail-cause = if_abap_behv=>cause-unspecific ) TO failed-zwm_r_stocktran.

              APPEND VALUE #( %tky = ls_key-%tky
                %msg = new_message( id       = 'ZWM'
                                    number   = '002'
                                    v1       = ls_transfer-typ
                                    v2       = ls_transfer-qty
                                    severity = if_abap_behv_message=>severity-warning ) )
              TO reported-zwm_r_stocktran.

            ENDIF.



          ENDLOOP.


          APPEND VALUE #(
            %tky = ls_key-%tky
            %msg = new_message( id       = 'ZWM'
                                number   = '004'
                                v1       = lv_success_count
                                v2       = lv_failure_count
                                severity = if_abap_behv_message=>severity-information )
                              ) TO reported-zwm_r_stocktran.


        CATCH cx_http_dest_provider_error cx_web_http_client_error  /iwbep/cx_gateway INTO DATA(lx_error).


          APPEND VALUE #(
              %tky = ls_key-%tky
              %msg = new_message( id       = 'ZWM'
                                  number   = '003'
                                  v1       = lx_error->get_text( )
                                  severity = if_abap_behv_message=>severity-error )
              ) TO reported-zwm_r_stocktran.


      ENDTRY.


    ENDLOOP.

  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZWM_R_STOCKTRAN DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZWM_R_STOCKTRAN IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
