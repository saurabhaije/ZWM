CLASS zwm_cl_scope_page_space DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZWM_CL_SCOPE_PAGE_SPACE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_scope_api) = cl_aps_bc_scope_change_api=>create_instance( ).

    lo_scope_api->scope(

        EXPORTING it_object_scope = VALUE #(
            pgmid = if_aps_bc_scope_change_api=>gc_tadir_pgmid-r3tr
            scope_state = if_aps_bc_scope_change_api=>gc_scope_state-on
* Space template
            ( object = if_aps_bc_scope_change_api=>gc_tadir_object-uist obj_name = 'ZLST_MM_IDGR' )
* Page template
*            ( object = if_aps_bc_scope_change_api=>gc_tadir_object-uipg obj_name = 'ZWM_PAGE_STOCKTRAN' )
        )

    iv_simulate = abap_false
    iv_force = abap_false
    IMPORTING et_object_result = DATA(lt_results)
    et_message = DATA(lt_messages)

    ).

  ENDMETHOD.
ENDCLASS.
