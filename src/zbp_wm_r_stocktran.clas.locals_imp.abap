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
      IMPORTING keys FOR ACTION zwm_r_stocktran~changestocktype RESULT result.


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

    DATA: comm_system_id           TYPE if_com_management=>ty_cs_id.


    TRY.

        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                  comm_scenario     = 'ZWM_CS_STOCKTRAN'
                                  service_id        = 'ZWM_OBS_STOCKTRAN_REST' ).

        DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        LOOP AT keys INTO DATA(ls_key).

          DATA(lt_transfer) = VALUE ty_transfer_tab(
                ( typ = 'F1' qty = ls_key-%param-new_qtyf1 )
                ( typ = 'F2' qty = ls_key-%param-new_qtyf2 )
                ( typ = 'F3' qty = ls_key-%param-new_qtyf3 )
                ( typ = 'F4' qty = ls_key-%param-new_qtyf4 )
            ).

          LOOP AT lt_transfer INTO DATA(ls_transfer) WHERE qty > 0.

          ENDLOOP.

        ENDLOOP.





      CATCH cx_http_dest_provider_error cx_web_http_client_error INTO DATA(lx_error).


        APPEND VALUE #(
            %tky = ls_key-%tky
            %msg = new_message( id       = 'ZWM_MSG'
                                number   = '003'
                                v1       = ls_transfer-typ
                                v2       = lx_error->get_text( )
                                severity = if_abap_behv_message=>severity-error )
            ) TO reported-zwm_r_stocktran.

    ENDTRY.


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
