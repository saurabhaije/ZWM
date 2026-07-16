CLASS zwm_cl_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zwm_cl_test IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    TRY.

        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                  comm_scenario     = 'ZWM_CS_STOCKTRAN'
                                  service_id        = 'ZWM_OBS_STOCKTRAN_REST' ).

        DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

*        LOOP AT keys INTO DATA(ls_key).
*
*          DATA(lt_transfer) = VALUE ty_transfer_tab(
*                ( typ = 'F1' qty = ls_key-%param-new_qtyf1 )
*                ( typ = 'F2' qty = ls_key-%param-new_qtyf2 )
*                ( typ = 'F3' qty = ls_key-%param-new_qtyf3 )
*                ( typ = 'F4' qty = ls_key-%param-new_qtyf4 )
*            ).
*
*          LOOP AT lt_transfer INTO DATA(ls_transfer) WHERE qty > 0.
*
*          ENDLOOP.
*
*        ENDLOOP.





      CATCH cx_http_dest_provider_error cx_web_http_client_error INTO DATA(lx_error).


*        APPEND VALUE #(
*            %tky = ls_key-%tky
*            %msg = new_message( id       = 'ZWM_MSG'
*                                number   = '003'
*                                v1       = ls_transfer-typ
*                                v2       = lx_error->get_text( )
*                                severity = if_abap_behv_message=>severity-error )
*            ) TO reported-zwm_r_stocktran.

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
