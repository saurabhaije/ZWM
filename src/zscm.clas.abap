"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd_a2x.api_whse_physstockprod.v0001</em>
CLASS zscm DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type BATCH
        batch                      TYPE c LENGTH 10,
        "! Used for primitive type BATCH_2
        batch_2                    TYPE c LENGTH 10,
        "! Used for primitive type ENTITLED_TO_DISPOSE_PARTY
        entitled_to_dispose_party  TYPE c LENGTH 10,
        "! Used for primitive type EWMACCOUNT_ASSIGNMENT_CATE
        ewmaccount_assignment_cate TYPE c LENGTH 2,
        "! Used for primitive type EWMACCOUNT_ASSIGNMENT_CA_2
        ewmaccount_assignment_ca_2 TYPE c LENGTH 2,
        "! Used for primitive type EWMACCOUNT_ASSIGNMENT_OBJE
        ewmaccount_assignment_obje TYPE c LENGTH 35,
        "! Used for primitive type EWMACCOUNT_ASSIGNMENT_OB_2
        ewmaccount_assignment_ob_2 TYPE c LENGTH 35,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_10
        ewmgoods_movement_entry_10 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_11
        ewmgoods_movement_entry_11 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_12
        ewmgoods_movement_entry_12 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_13
        ewmgoods_movement_entry_13 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_14
        ewmgoods_movement_entry_14 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_15
        ewmgoods_movement_entry_15 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_QU
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY_UN
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__2
        ewmgoods_movement_entry__2 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__3
        ewmgoods_movement_entry__3 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__4
        ewmgoods_movement_entry__4 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__5
        ewmgoods_movement_entry__5 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__6
        ewmgoods_movement_entry__6 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__7
        ewmgoods_movement_entry__7 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__8
        ewmgoods_movement_entry__8 TYPE c LENGTH 3,
        "! Used for primitive type EWMGOODS_MOVEMENT_ENTRY__9
        ewmgoods_movement_entry__9 TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type EWMSTOCK_OWNER
        ewmstock_owner             TYPE c LENGTH 10,
        "! Used for primitive type EWMSTOCK_TYPE
        ewmstock_type              TYPE c LENGTH 2,
        "! Used for primitive type EWMSTOCK_USAGE
        ewmstock_usage             TYPE c LENGTH 1,
        "! Used for primitive type EXTERNAL_STOCK_DOCUMENT_NU
        external_stock_document_nu TYPE c LENGTH 35,
        "! Used for primitive type PRODUCT
        product                    TYPE c LENGTH 40,
        "! Used for primitive type STOCK_DOCUMENT_CATEGORY
        stock_document_category    TYPE c LENGTH 3,
        "! Used for primitive type STOCK_ITEM_NUMBER
        stock_item_number          TYPE c LENGTH 10,
        "! Used for primitive type WAREHOUSE_MOVEMENTS_REASON
        warehouse_movements_reason TYPE c LENGTH 4,
        "! Used for primitive type WAREHOUSE_MOVEMENTS_REAS_2
        warehouse_movements_reas_2 TYPE c LENGTH 4,
        "! Used for primitive type WAREHOUSE_MOVEMENTS_TEXT
        warehouse_movements_text   TYPE c LENGTH 50,
        "! Used for primitive type WAREHOUSE_MOVEMENTS_TEXT_2
        warehouse_movements_text_2 TYPE c LENGTH 50,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Types for primitive collection fields</p>
      BEGIN OF tys_types_for_prim_colls,
        "! additionalTargets
        "! Used for TYS_SAP_MESSAGE-ADDITIONAL_TARGETS
        additional_targets TYPE string,
      END OF tys_types_for_prim_colls.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseChgDsplPtySrlNmbrP</p>
      BEGIN OF tys_d_whse_chg_dspl_pty_srl_nm,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_chg_dspl_pty_srl_nm,
      "! <p class="shorttext synchronized">List of D_WhseChgDsplPtySrlNmbrP</p>
      tyt_d_whse_chg_dspl_pty_srl_nm TYPE STANDARD TABLE OF tys_d_whse_chg_dspl_pty_srl_nm WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseChgProdOrBatSrlNmbrP</p>
      BEGIN OF tys_d_whse_chg_prod_or_bat_srl,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_chg_prod_or_bat_srl,
      "! <p class="shorttext synchronized">List of D_WhseChgProdOrBatSrlNmbrP</p>
      tyt_d_whse_chg_prod_or_bat_srl TYPE STANDARD TABLE OF tys_d_whse_chg_prod_or_bat_srl WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseChgSlOrOrPrjSrlNmbrP</p>
      BEGIN OF tys_d_whse_chg_sl_or_or_prj_sr,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_chg_sl_or_or_prj_sr,
      "! <p class="shorttext synchronized">List of D_WhseChgSlOrOrPrjSrlNmbrP</p>
      tyt_d_whse_chg_sl_or_or_prj_sr TYPE STANDARD TABLE OF tys_d_whse_chg_sl_or_or_prj_sr WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseChgStkOwAnUsgSrlNmbrP</p>
      BEGIN OF tys_d_whse_chg_stk_ow_an_usg_s,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_chg_stk_ow_an_usg_s,
      "! <p class="shorttext synchronized">List of D_WhseChgStkOwAnUsgSrlNmbrP</p>
      tyt_d_whse_chg_stk_ow_an_usg_s TYPE STANDARD TABLE OF tys_d_whse_chg_stk_ow_an_usg_s WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseChgStkTypeSrlNmbrP</p>
      BEGIN OF tys_d_whse_chg_stk_type_srl_nm,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_chg_stk_type_srl_nm,
      "! <p class="shorttext synchronized">List of D_WhseChgStkTypeSrlNmbrP</p>
      tyt_d_whse_chg_stk_type_srl_nm TYPE STANDARD TABLE OF tys_d_whse_chg_stk_type_srl_nm WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseConsumeStkSrlNmbrP</p>
      BEGIN OF tys_d_whse_consume_stk_srl_nmb,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_consume_stk_srl_nmb,
      "! <p class="shorttext synchronized">List of D_WhseConsumeStkSrlNmbrP</p>
      tyt_d_whse_consume_stk_srl_nmb TYPE STANDARD TABLE OF tys_d_whse_consume_stk_srl_nmb WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseRelPMtlReqStkRefSrlNrP</p>
      BEGIN OF tys_d_whse_rel_pmtl_req_stk_re,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_rel_pmtl_req_stk_re,
      "! <p class="shorttext synchronized">List of D_WhseRelPMtlReqStkRefSrlNrP</p>
      tyt_d_whse_rel_pmtl_req_stk_re TYPE STANDARD TABLE OF tys_d_whse_rel_pmtl_req_stk_re WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">D_WhseScrapStkSrlNmbrP</p>
      BEGIN OF tys_d_whse_scrap_stk_srl_nmbr,
        "! EWMSerialNumber
        ewmserial_number TYPE c LENGTH 30,
      END OF tys_d_whse_scrap_stk_srl_nmbr,
      "! <p class="shorttext synchronized">List of D_WhseScrapStkSrlNmbrP</p>
      tyt_d_whse_scrap_stk_srl_nmbr TYPE STANDARD TABLE OF tys_d_whse_scrap_stk_srl_nmbr WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of SAP_MESSAGE</p>
      BEGIN OF tys_value_controls_1,
        "! TARGET
        target       TYPE /iwbep/v4_value_control,
        "! LONGTEXT_URL
        longtext_url TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Message</p>
      BEGIN OF tys_sap_message,
        "! <em>Value Control Structure</em>
        value_controls     TYPE tys_value_controls_1,
        "! code
        code               TYPE string,
        "! message
        message            TYPE string,
        "! target
        target             TYPE string,
        "! additionalTargets
        additional_targets TYPE STANDARD TABLE OF tys_types_for_prim_colls-additional_targets WITH DEFAULT KEY,
        "! transition
        transition         TYPE abap_bool,
        "! numericSeverity
        numeric_severity   TYPE int1,
        "! longtextUrl
        longtext_url       TYPE string,
      END OF tys_sap_message,
      "! <p class="shorttext synchronized">List of SAP__Message</p>
      tyt_sap_message TYPE STANDARD TABLE OF tys_sap_message WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of WHSE_PHYSICAL_STOCK_PRODUC</p>
      BEGIN OF tys_value_controls_2,
        "! EWMGOODS_RECEIPT_DATE_TIME
        ewmgoods_receipt_date_time TYPE /iwbep/v4_value_control,
        "! SHELF_LIFE_EXPIRATION_DATE
        shelf_life_expiration_date TYPE /iwbep/v4_value_control,
        "! SERIAL_NUMBER
        serial_number              TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ChangeDisposalParty</p>
      "! <em>with the internal name</em> CHANGE_DISPOSAL_PARTY
      BEGIN OF tys_parameters_1,
        "! EntitledToDisposeParty
        entitled_to_dispose_party  TYPE c LENGTH 10,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_chg_dspl_pty_srl_nm,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ChangeProductOrBatch</p>
      "! <em>with the internal name</em> CHANGE_PRODUCT_OR_BATCH
      BEGIN OF tys_parameters_2,
        "! Product
        product                    TYPE c LENGTH 40,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_chg_prod_or_bat_srl,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ChangeSalesOrderOrProject</p>
      "! <em>with the internal name</em> CHANGE_SALES_ORDER_OR_PROJ
      BEGIN OF tys_parameters_3,
        "! StockDocumentCategory
        stock_document_category    TYPE c LENGTH 3,
        "! ExternalStockDocumentNumber
        external_stock_document_nu TYPE c LENGTH 35,
        "! StockItemNumber
        stock_item_number          TYPE c LENGTH 10,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_chg_sl_or_or_prj_sr,
      END OF tys_parameters_3,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_3</p>
      tyt_parameters_3 TYPE STANDARD TABLE OF tys_parameters_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ChangeStockOwnerAndUsage</p>
      "! <em>with the internal name</em> CHANGE_STOCK_OWNER_AND_USA
      BEGIN OF tys_parameters_4,
        "! EWMStockOwner
        ewmstock_owner             TYPE c LENGTH 10,
        "! EWMStockUsage
        ewmstock_usage             TYPE c LENGTH 1,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_chg_stk_ow_an_usg_s,
      END OF tys_parameters_4,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_4</p>
      tyt_parameters_4 TYPE STANDARD TABLE OF tys_parameters_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ChangeStockType</p>
      "! <em>with the internal name</em> CHANGE_STOCK_TYPE
      BEGIN OF tys_parameters_5,
        "! EWMStockType
        ewmstock_type              TYPE c LENGTH 2,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_chg_stk_type_srl_nm,
      END OF tys_parameters_5,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_5</p>
      tyt_parameters_5 TYPE STANDARD TABLE OF tys_parameters_5 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ConsumeStock</p>
      "! <em>with the internal name</em> CONSUME_STOCK
      BEGIN OF tys_parameters_6,
        "! WarehouseMovementsReason
        warehouse_movements_reason TYPE c LENGTH 4,
        "! WarehouseMovementsText
        warehouse_movements_text   TYPE c LENGTH 50,
        "! EWMAccountAssignmentCategory
        ewmaccount_assignment_cate TYPE c LENGTH 2,
        "! EWMAccountAssignmentObject
        ewmaccount_assignment_obje TYPE c LENGTH 35,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_consume_stk_srl_nmb,
      END OF tys_parameters_6,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_6</p>
      tyt_parameters_6 TYPE STANDARD TABLE OF tys_parameters_6 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action RelProdnMatlReqStockReference</p>
      "! <em>with the internal name</em> REL_PRODN_MATL_REQ_STOCK_R
      BEGIN OF tys_parameters_7,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_rel_pmtl_req_stk_re,
      END OF tys_parameters_7,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_7</p>
      tyt_parameters_7 TYPE STANDARD TABLE OF tys_parameters_7 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ScrapStock</p>
      "! <em>with the internal name</em> SCRAP_STOCK
      BEGIN OF tys_parameters_8,
        "! WarehouseMovementsReason
        warehouse_movements_reason TYPE c LENGTH 4,
        "! WarehouseMovementsText
        warehouse_movements_text   TYPE c LENGTH 50,
        "! EWMAccountAssignmentCategory
        ewmaccount_assignment_cate TYPE c LENGTH 2,
        "! EWMAccountAssignmentObject
        ewmaccount_assignment_obje TYPE c LENGTH 35,
        "! EWMGoodsMovementEntryUnit
        ewmgoods_movement_entry_un TYPE c LENGTH 3,
        "! EWMGoodsMovementEntryQuantity
        ewmgoods_movement_entry_qu TYPE p LENGTH 7 DECIMALS 3,
        "! _PhysStockProdSerialNumber
        phys_stock_prod_serial_num TYPE tyt_d_whse_scrap_stk_srl_nmbr,
      END OF tys_parameters_8,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_8</p>
      tyt_parameters_8 TYPE STANDARD TABLE OF tys_parameters_8 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WhsePhysicalStockProducts_Type</p>
      BEGIN OF tys_whse_physical_stock_produc,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_2,
        "! <em>Key property</em> ParentHandlingUnitUUID
        parent_handling_unit_uuid  TYPE sysuuid_x16,
        "! <em>Key property</em> StockItemUUID
        stock_item_uuid            TYPE sysuuid_x16,
        "! EWMWarehouse
        ewmwarehouse               TYPE c LENGTH 4,
        "! Product
        product                    TYPE c LENGTH 40,
        "! EWMStockType
        ewmstock_type              TYPE c LENGTH 2,
        "! EWMStockOwner
        ewmstock_owner             TYPE c LENGTH 10,
        "! EntitledToDisposeParty
        entitled_to_dispose_party  TYPE c LENGTH 10,
        "! EWMStockUsage
        ewmstock_usage             TYPE c LENGTH 1,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! StockDocumentCategory
        stock_document_category    TYPE c LENGTH 3,
        "! StockDocumentNumber
        stock_document_number      TYPE c LENGTH 35,
        "! ExternalStockDocumentNumber
        external_stock_document_nu TYPE c LENGTH 35,
        "! StockItemNumber
        stock_item_number          TYPE c LENGTH 10,
        "! EWMStockReferenceDocCategory
        ewmstock_reference_doc_cat TYPE c LENGTH 3,
        "! EWMStockReferenceDocument
        ewmstock_reference_documen TYPE c LENGTH 35,
        "! EWMStockReferenceDocumentItem
        ewmstock_reference_docum_2 TYPE c LENGTH 10,
        "! StockIdentificationNumber
        stock_identification_numbe TYPE c LENGTH 20,
        "! WhseQualityInspectionType
        whse_quality_inspection_ty TYPE c LENGTH 1,
        "! QualityInspectionDocument
        quality_inspection_documen TYPE c LENGTH 35,
        "! EWMHghstLvlHandlingUnitNumber
        ewmhghst_lvl_handling_unit TYPE c LENGTH 20,
        "! HandlingUnitNumber
        handling_unit_number       TYPE c LENGTH 20,
        "! EWMStorageBin
        ewmstorage_bin             TYPE c LENGTH 18,
        "! EWMStockQuantityInBaseUnit
        ewmstock_quantity_in_base  TYPE p LENGTH 16 DECIMALS 14,
        "! EWMStockQuantityBaseUnit
        ewmstock_quantity_base_uni TYPE c LENGTH 3,
        "! EWMStockQtyBaseUnitISOCode
        ewmstock_qty_base_unit_iso TYPE c LENGTH 3,
        "! EWMStockQtyBaseUnitSAPCode
        ewmstock_qty_base_unit_sap TYPE c LENGTH 3,
        "! EWMStockQuantityAltvUnit
        ewmstock_quantity_altv_uni TYPE c LENGTH 3,
        "! EWMStockQtyAltvUnitISOCode
        ewmstock_qty_altv_unit_iso TYPE c LENGTH 3,
        "! EWMStockQtyAltvUnitSAPCode
        ewmstock_qty_altv_unit_sap TYPE c LENGTH 3,
        "! EWMLoadingOrNetWeight
        ewmloading_or_net_weight   TYPE p LENGTH 8 DECIMALS 3,
        "! EWMLoadingOrNetWeightUnit
        ewmloading_or_net_weight_u TYPE c LENGTH 3,
        "! EWMLoadgOrNetWgtUntISOCode
        ewmloadg_or_net_wgt_unt_is TYPE c LENGTH 3,
        "! EWMLoadgOrNetWgtUntSAPCode
        ewmloadg_or_net_wgt_unt_sa TYPE c LENGTH 3,
        "! EWMLoadingOrNetVolume
        ewmloading_or_net_volume   TYPE p LENGTH 8 DECIMALS 3,
        "! EWMLoadingOrNetVolumeUnit
        ewmloading_or_net_volume_u TYPE c LENGTH 3,
        "! EWMLoadgOrNetVolUntISOCode
        ewmloadg_or_net_vol_unt_is TYPE c LENGTH 3,
        "! EWMLoadgOrNetVolUntSAPCode
        ewmloadg_or_net_vol_unt_sa TYPE c LENGTH 3,
        "! EWMStorageBinCapConsumptionVal
        ewmstorage_bin_cap_consump TYPE p LENGTH 8 DECIMALS 3,
        "! EWMGoodsReceiptDateTime
        ewmgoods_receipt_date_time TYPE timestamp,
        "! WarehouseTimeZone
        warehouse_time_zone        TYPE c LENGTH 6,
        "! ShelfLifeExpirationDate
        shelf_life_expiration_date TYPE datn,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! EWMBatchIsInRestrictedUseStock
        ewmbatch_is_in_restricted  TYPE abap_bool,
        "! InspectionPartialLot
        inspection_partial_lot     TYPE c LENGTH 6,
        "! EWMStockIsBlockedForInventory
        ewmstock_is_blocked_for_in TYPE abap_bool,
        "! EWMConsolidationGroup
        ewmconsolidation_group     TYPE c LENGTH 10,
        "! SerialNumberRequiredLevel
        serial_number_required_lev TYPE c LENGTH 1,
        "! EWMStorBinIsBlockedForPutaway
        ewmstor_bin_is_blocked_for TYPE abap_bool,
        "! EWMStorBinIsBlockedForRemoval
        ewmstor_bin_is_blocked_f_2 TYPE abap_bool,
        "! EWMStorBinIsBlockedDueToPInv
        ewmstor_bin_is_blocked_due TYPE abap_bool,
        "! EWMStorageType
        ewmstorage_type            TYPE c LENGTH 4,
        "! EWMStorageSection
        ewmstorage_section         TYPE c LENGTH 4,
        "! EWMPhysStkMigrtnStsCode
        ewmphys_stk_migrtn_sts_cod TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_whse_physical_stock_produc,
      "! <p class="shorttext synchronized">List of WhsePhysicalStockProducts_Type</p>
      tyt_whse_physical_stock_produc TYPE STANDARD TABLE OF tys_whse_physical_stock_produc WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WhsePhysStockProdSerialNmbr_Type</p>
      BEGIN OF tys_whse_phys_stock_prod_ser_2,
        "! <em>Key property</em> ParentHandlingUnitUUID
        parent_handling_unit_uuid TYPE sysuuid_x16,
        "! <em>Key property</em> StockItemUUID
        stock_item_uuid           TYPE sysuuid_x16,
        "! <em>Key property</em> EWMSerialNumber
        ewmserial_number          TYPE c LENGTH 30,
        "! EWMWarehouse
        ewmwarehouse              TYPE c LENGTH 4,
        "! odata.etag
        etag                      TYPE string,
      END OF tys_whse_phys_stock_prod_ser_2,
      "! <p class="shorttext synchronized">List of WhsePhysStockProdSerialNmbr_Type</p>
      tyt_whse_phys_stock_prod_ser_2 TYPE STANDARD TABLE OF tys_whse_phys_stock_prod_ser_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! WarehousePhysicalStockProducts
        "! <br/> Collection of type 'WhsePhysicalStockProducts_Type'
        warehouse_physical_stock_p TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WAREHOUSE_PHYSICAL_STOCK_P',
        "! WhsePhysStockProdSerialNumber
        "! <br/> Collection of type 'WhsePhysStockProdSerialNmbr_Type'
        whse_phys_stock_prod_seria TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WHSE_PHYS_STOCK_PROD_SERIA',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound actions</p>
      BEGIN OF gcs_bound_action,
        "! ChangeDisposalParty
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        change_disposal_party      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CHANGE_DISPOSAL_PARTY',
        "! ChangeProductOrBatch
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        change_product_or_batch    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CHANGE_PRODUCT_OR_BATCH',
        "! ChangeSalesOrderOrProject
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_3} for the parameters
        change_sales_order_or_proj TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CHANGE_SALES_ORDER_OR_PROJ',
        "! ChangeStockOwnerAndUsage
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_4} for the parameters
        change_stock_owner_and_usa TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CHANGE_STOCK_OWNER_AND_USA',
        "! ChangeStockType
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_5} for the parameters
        change_stock_type          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CHANGE_STOCK_TYPE',
        "! ConsumeStock
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_6} for the parameters
        consume_stock              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONSUME_STOCK',
        "! RelProdnMatlReqStockReference
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_7} for the parameters
        rel_prodn_matl_req_stock_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'REL_PRODN_MATL_REQ_STOCK_R',
        "! ScrapStock
        "! <em>bound against entity type</em> WhsePhysicalStockProducts_Type
        "! <br/> See structure type {@link ..tys_parameters_8} for the parameters
        scrap_stock                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SCRAP_STOCK',
      END OF gcs_bound_action.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for D_WhseChgDsplPtySrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_chg_dspl_pty_srl_nm}
        BEGIN OF d_whse_chg_dspl_pty_srl_nm,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_chg_dspl_pty_srl_nm,
        "! <p class="shorttext synchronized">Internal names for D_WhseChgProdOrBatSrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_chg_prod_or_bat_srl}
        BEGIN OF d_whse_chg_prod_or_bat_srl,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_chg_prod_or_bat_srl,
        "! <p class="shorttext synchronized">Internal names for D_WhseChgSlOrOrPrjSrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_chg_sl_or_or_prj_sr}
        BEGIN OF d_whse_chg_sl_or_or_prj_sr,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_chg_sl_or_or_prj_sr,
        "! <p class="shorttext synchronized">Internal names for D_WhseChgStkOwAnUsgSrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_chg_stk_ow_an_usg_s}
        BEGIN OF d_whse_chg_stk_ow_an_usg_s,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_chg_stk_ow_an_usg_s,
        "! <p class="shorttext synchronized">Internal names for D_WhseChgStkTypeSrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_chg_stk_type_srl_nm}
        BEGIN OF d_whse_chg_stk_type_srl_nm,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_chg_stk_type_srl_nm,
        "! <p class="shorttext synchronized">Internal names for D_WhseConsumeStkSrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_consume_stk_srl_nmb}
        BEGIN OF d_whse_consume_stk_srl_nmb,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_consume_stk_srl_nmb,
        "! <p class="shorttext synchronized">Internal names for D_WhseRelPMtlReqStkRefSrlNrP</p>
        "! See also structure type {@link ..tys_d_whse_rel_pmtl_req_stk_re}
        BEGIN OF d_whse_rel_pmtl_req_stk_re,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_rel_pmtl_req_stk_re,
        "! <p class="shorttext synchronized">Internal names for D_WhseScrapStkSrlNmbrP</p>
        "! See also structure type {@link ..tys_d_whse_scrap_stk_srl_nmbr}
        BEGIN OF d_whse_scrap_stk_srl_nmbr,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_whse_scrap_stk_srl_nmbr,
        "! <p class="shorttext synchronized">Internal names for SAP__Message</p>
        "! See also structure type {@link ..tys_sap_message}
        BEGIN OF sap_message,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_message,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for WhsePhysicalStockProducts_Type</p>
        "! See also structure type {@link ..tys_whse_physical_stock_produc}
        BEGIN OF whse_physical_stock_produc,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _SerialNumber
            serial_number TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SERIAL_NUMBER',
          END OF navigation,
        END OF whse_physical_stock_produc,
        "! <p class="shorttext synchronized">Internal names for WhsePhysStockProdSerialNmbr_Type</p>
        "! See also structure type {@link ..tys_whse_phys_stock_prod_ser_2}
        BEGIN OF whse_phys_stock_prod_ser_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _PhysStock
            phys_stock TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PHYS_STOCK',
          END OF navigation,
        END OF whse_phys_stock_prod_ser_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define D_WhseChgDsplPtySrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_chg_dspl_pty_srl_nm RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseChgProdOrBatSrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_chg_prod_or_bat_srl RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseChgSlOrOrPrjSrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_chg_sl_or_or_prj_sr RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseChgStkOwAnUsgSrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_chg_stk_ow_an_usg_s RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseChgStkTypeSrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_chg_stk_type_srl_nm RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseConsumeStkSrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_consume_stk_srl_nmb RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseRelPMtlReqStkRefSrlNrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_rel_pmtl_req_stk_re RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_WhseScrapStkSrlNmbrP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_whse_scrap_stk_srl_nmbr RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Message</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_message RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WhsePhysicalStockProducts_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_whse_physical_stock_produc RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WhsePhysStockProdSerialNmbr_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_whse_phys_stock_prod_ser_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeDisposalParty</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_disposal_party RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeProductOrBatch</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_product_or_batch RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeSalesOrderOrProject</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_sales_order_or_proj RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeStockOwnerAndUsage</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_stock_owner_and_usa RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeStockType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_stock_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ConsumeStock</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_consume_stock RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define RelProdnMatlReqStockReference</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_rel_prodn_matl_req_stock_r RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ScrapStock</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_scrap_stock RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZSCM IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd_a2x.api_whse_physstockprod.v0001' ) ##NO_TEXT.

    def_d_whse_chg_dspl_pty_srl_nm( ).
    def_d_whse_chg_prod_or_bat_srl( ).
    def_d_whse_chg_sl_or_or_prj_sr( ).
    def_d_whse_chg_stk_ow_an_usg_s( ).
    def_d_whse_chg_stk_type_srl_nm( ).
    def_d_whse_consume_stk_srl_nmb( ).
    def_d_whse_rel_pmtl_req_stk_re( ).
    def_d_whse_scrap_stk_srl_nmbr( ).
    def_sap_message( ).
    def_whse_physical_stock_produc( ).
    def_whse_phys_stock_prod_ser_2( ).
    def_change_disposal_party( ).
    def_change_product_or_batch( ).
    def_change_sales_order_or_proj( ).
    def_change_stock_owner_and_usa( ).
    def_change_stock_type( ).
    def_consume_stock( ).
    def_rel_prodn_matl_req_stock_r( ).
    def_scrap_stock( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BATCH'
                            iv_element             = VALUE tys_types_for_prim_types-batch( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BATCH_2'
                            iv_element             = VALUE tys_types_for_prim_types-batch_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ENTITLED_TO_DISPOSE_PARTY'
                            iv_element             = VALUE tys_types_for_prim_types-entitled_to_dispose_party( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMACCOUNT_ASSIGNMENT_CATE'
                            iv_element             = VALUE tys_types_for_prim_types-ewmaccount_assignment_cate( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMACCOUNT_ASSIGNMENT_CA_2'
                            iv_element             = VALUE tys_types_for_prim_types-ewmaccount_assignment_ca_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMACCOUNT_ASSIGNMENT_OBJE'
                            iv_element             = VALUE tys_types_for_prim_types-ewmaccount_assignment_obje( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMACCOUNT_ASSIGNMENT_OB_2'
                            iv_element             = VALUE tys_types_for_prim_types-ewmaccount_assignment_ob_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_10'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_10( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_11'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_11( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_12'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_12( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_13'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_13( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_14'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_14( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_15'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_15( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_QU'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_qu( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY_UN'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry_un( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__2'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__3'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__3( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__4'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__5'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__5( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__6'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__6( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__7'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__7( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__8'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__8( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMGOODS_MOVEMENT_ENTRY__9'
                            iv_element             = VALUE tys_types_for_prim_types-ewmgoods_movement_entry__9( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMSTOCK_OWNER'
                            iv_element             = VALUE tys_types_for_prim_types-ewmstock_owner( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMSTOCK_TYPE'
                            iv_element             = VALUE tys_types_for_prim_types-ewmstock_type( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EWMSTOCK_USAGE'
                            iv_element             = VALUE tys_types_for_prim_types-ewmstock_usage( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EXTERNAL_STOCK_DOCUMENT_NU'
                            iv_element             = VALUE tys_types_for_prim_types-external_stock_document_nu( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'PRODUCT'
                            iv_element             = VALUE tys_types_for_prim_types-product( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STOCK_DOCUMENT_CATEGORY'
                            iv_element             = VALUE tys_types_for_prim_types-stock_document_category( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STOCK_ITEM_NUMBER'
                            iv_element             = VALUE tys_types_for_prim_types-stock_item_number( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WAREHOUSE_MOVEMENTS_REASON'
                            iv_element             = VALUE tys_types_for_prim_types-warehouse_movements_reason( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WAREHOUSE_MOVEMENTS_REAS_2'
                            iv_element             = VALUE tys_types_for_prim_types-warehouse_movements_reas_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WAREHOUSE_MOVEMENTS_TEXT'
                            iv_element             = VALUE tys_types_for_prim_types-warehouse_movements_text( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WAREHOUSE_MOVEMENTS_TEXT_2'
                            iv_element             = VALUE tys_types_for_prim_types-warehouse_movements_text_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_change_disposal_party.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CHANGE_DISPOSAL_PARTY' ).
    lo_action->set_edm_name( 'ChangeDisposalParty' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'ENTITLED_TO_DISPOSE_PARTY' ).
    lo_parameter->set_edm_name( 'EntitledToDisposeParty' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ENTITLED_TO_DISPOSE_PARTY' ).

    lo_parameter = lo_action->create_parameter( 'BATCH' ).
    lo_parameter->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BATCH' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__8' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__9' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_CHG_DSPL_PTY_SRL_NM' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_change_product_or_batch.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CHANGE_PRODUCT_OR_BATCH' ).
    lo_action->set_edm_name( 'ChangeProductOrBatch' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_2( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'PRODUCT' ).
    lo_parameter->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'PRODUCT' ).

    lo_parameter = lo_action->create_parameter( 'BATCH' ).
    lo_parameter->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BATCH_2' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_10' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_11' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_CHG_PROD_OR_BAT_SRL' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_change_sales_order_or_proj.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CHANGE_SALES_ORDER_OR_PROJ' ).
    lo_action->set_edm_name( 'ChangeSalesOrderOrProject' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_3( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'STOCK_DOCUMENT_CATEGORY' ).
    lo_parameter->set_edm_name( 'StockDocumentCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STOCK_DOCUMENT_CATEGORY' ).

    lo_parameter = lo_action->create_parameter( 'EXTERNAL_STOCK_DOCUMENT_NU' ).
    lo_parameter->set_edm_name( 'ExternalStockDocumentNumber' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EXTERNAL_STOCK_DOCUMENT_NU' ).

    lo_parameter = lo_action->create_parameter( 'STOCK_ITEM_NUMBER' ).
    lo_parameter->set_edm_name( 'StockItemNumber' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STOCK_ITEM_NUMBER' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__2' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__3' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_CHG_SL_OR_OR_PRJ_SR' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_change_stock_owner_and_usa.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CHANGE_STOCK_OWNER_AND_USA' ).
    lo_action->set_edm_name( 'ChangeStockOwnerAndUsage' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_4( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'EWMSTOCK_OWNER' ).
    lo_parameter->set_edm_name( 'EWMStockOwner' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMSTOCK_OWNER' ).

    lo_parameter = lo_action->create_parameter( 'EWMSTOCK_USAGE' ).
    lo_parameter->set_edm_name( 'EWMStockUsage' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMSTOCK_USAGE' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_12' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_13' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_CHG_STK_OW_AN_USG_S' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_change_stock_type.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CHANGE_STOCK_TYPE' ).
    lo_action->set_edm_name( 'ChangeStockType' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_5( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'EWMSTOCK_TYPE' ).
    lo_parameter->set_edm_name( 'EWMStockType' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMSTOCK_TYPE' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_14' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_15' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_CHG_STK_TYPE_SRL_NM' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_consume_stock.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CONSUME_STOCK' ).
    lo_action->set_edm_name( 'ConsumeStock' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_6( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'WAREHOUSE_MOVEMENTS_REASON' ).
    lo_parameter->set_edm_name( 'WarehouseMovementsReason' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WAREHOUSE_MOVEMENTS_REASON' ).

    lo_parameter = lo_action->create_parameter( 'WAREHOUSE_MOVEMENTS_TEXT' ).
    lo_parameter->set_edm_name( 'WarehouseMovementsText' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WAREHOUSE_MOVEMENTS_TEXT' ).

    lo_parameter = lo_action->create_parameter( 'EWMACCOUNT_ASSIGNMENT_CATE' ).
    lo_parameter->set_edm_name( 'EWMAccountAssignmentCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMACCOUNT_ASSIGNMENT_CATE' ).

    lo_parameter = lo_action->create_parameter( 'EWMACCOUNT_ASSIGNMENT_OBJE' ).
    lo_parameter->set_edm_name( 'EWMAccountAssignmentObject' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMACCOUNT_ASSIGNMENT_OBJE' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_CONSUME_STK_SRL_NMB' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_d_whse_chg_dspl_pty_srl_nm.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_CHG_DSPL_PTY_SRL_NM'
                                    is_structure              = VALUE tys_d_whse_chg_dspl_pty_srl_nm( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseChgDsplPtySrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_chg_prod_or_bat_srl.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_CHG_PROD_OR_BAT_SRL'
                                    is_structure              = VALUE tys_d_whse_chg_prod_or_bat_srl( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseChgProdOrBatSrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_chg_sl_or_or_prj_sr.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_CHG_SL_OR_OR_PRJ_SR'
                                    is_structure              = VALUE tys_d_whse_chg_sl_or_or_prj_sr( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseChgSlOrOrPrjSrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_chg_stk_ow_an_usg_s.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_CHG_STK_OW_AN_USG_S'
                                    is_structure              = VALUE tys_d_whse_chg_stk_ow_an_usg_s( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseChgStkOwAnUsgSrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_chg_stk_type_srl_nm.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_CHG_STK_TYPE_SRL_NM'
                                    is_structure              = VALUE tys_d_whse_chg_stk_type_srl_nm( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseChgStkTypeSrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_consume_stk_srl_nmb.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_CONSUME_STK_SRL_NMB'
                                    is_structure              = VALUE tys_d_whse_consume_stk_srl_nmb( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseConsumeStkSrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_rel_pmtl_req_stk_re.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_REL_PMTL_REQ_STK_RE'
                                    is_structure              = VALUE tys_d_whse_rel_pmtl_req_stk_re( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseRelPMtlReqStkRefSrlNrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_whse_scrap_stk_srl_nmbr.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_WHSE_SCRAP_STK_SRL_NMBR'
                                    is_structure              = VALUE tys_d_whse_scrap_stk_srl_nmbr( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_WhseScrapStkSrlNmbrP' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_rel_prodn_matl_req_stock_r.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'REL_PRODN_MATL_REQ_STOCK_R' ).
    lo_action->set_edm_name( 'RelProdnMatlReqStockReference' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_7( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__6' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__7' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_REL_PMTL_REQ_STK_RE' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_sap_message.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_MESSAGE'
                                    is_structure              = VALUE tys_sap_message( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__Message' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TARGET' ).
    lo_primitive_property->set_edm_name( 'target' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDITIONAL_TARGETS' ).
    lo_primitive_property->set_edm_name( 'additionalTargets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_collection( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TRANSITION' ).
    lo_primitive_property->set_edm_name( 'transition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERIC_SEVERITY' ).
    lo_primitive_property->set_edm_name( 'numericSeverity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONGTEXT_URL' ).
    lo_primitive_property->set_edm_name( 'longtextUrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_scrap_stock.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'SCRAP_STOCK' ).
    lo_action->set_edm_name( 'ScrapStock' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_8( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'WAREHOUSE_MOVEMENTS_REASON' ).
    lo_parameter->set_edm_name( 'WarehouseMovementsReason' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WAREHOUSE_MOVEMENTS_REAS_2' ).

    lo_parameter = lo_action->create_parameter( 'WAREHOUSE_MOVEMENTS_TEXT' ).
    lo_parameter->set_edm_name( 'WarehouseMovementsText' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WAREHOUSE_MOVEMENTS_TEXT_2' ).

    lo_parameter = lo_action->create_parameter( 'EWMACCOUNT_ASSIGNMENT_CATE' ).
    lo_parameter->set_edm_name( 'EWMAccountAssignmentCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMACCOUNT_ASSIGNMENT_CA_2' ).

    lo_parameter = lo_action->create_parameter( 'EWMACCOUNT_ASSIGNMENT_OBJE' ).
    lo_parameter->set_edm_name( 'EWMAccountAssignmentObject' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMACCOUNT_ASSIGNMENT_OB_2' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_UN' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryUnit' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__4' ).

    lo_parameter = lo_action->create_parameter( 'EWMGOODS_MOVEMENT_ENTRY_QU' ).
    lo_parameter->set_edm_name( 'EWMGoodsMovementEntryQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EWMGOODS_MOVEMENT_ENTRY__5' ).

    lo_parameter = lo_action->create_parameter( 'PHYS_STOCK_PROD_SERIAL_NUM' ).
    lo_parameter->set_edm_name( '_PhysStockProdSerialNumber' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_WHSE_SCRAP_STK_SRL_NMBR' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'WHSE_PHYSICAL_STOCK_PRODUC' ).

  ENDMETHOD.


  METHOD def_whse_physical_stock_produc.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WHSE_PHYSICAL_STOCK_PRODUC'
                                    is_structure              = VALUE tys_whse_physical_stock_produc( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WhsePhysicalStockProducts_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'WAREHOUSE_PHYSICAL_STOCK_P' ).
    lo_entity_set->set_edm_name( 'WarehousePhysicalStockProducts' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_HANDLING_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'ParentHandlingUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'StockItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMWAREHOUSE' ).
    lo_primitive_property->set_edm_name( 'EWMWarehouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_TYPE' ).
    lo_primitive_property->set_edm_name( 'EWMStockType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_OWNER' ).
    lo_primitive_property->set_edm_name( 'EWMStockOwner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENTITLED_TO_DISPOSE_PARTY' ).
    lo_primitive_property->set_edm_name( 'EntitledToDisposeParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_USAGE' ).
    lo_primitive_property->set_edm_name( 'EWMStockUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH' ).
    lo_primitive_property->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_DOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'StockDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_DOCUMENT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'StockDocumentNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_STOCK_DOCUMENT_NU' ).
    lo_primitive_property->set_edm_name( 'ExternalStockDocumentNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_ITEM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'StockItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_REFERENCE_DOC_CAT' ).
    lo_primitive_property->set_edm_name( 'EWMStockReferenceDocCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_REFERENCE_DOCUMEN' ).
    lo_primitive_property->set_edm_name( 'EWMStockReferenceDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_REFERENCE_DOCUM_2' ).
    lo_primitive_property->set_edm_name( 'EWMStockReferenceDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_IDENTIFICATION_NUMBE' ).
    lo_primitive_property->set_edm_name( 'StockIdentificationNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WHSE_QUALITY_INSPECTION_TY' ).
    lo_primitive_property->set_edm_name( 'WhseQualityInspectionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_INSPECTION_DOCUMEN' ).
    lo_primitive_property->set_edm_name( 'QualityInspectionDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMHGHST_LVL_HANDLING_UNIT' ).
    lo_primitive_property->set_edm_name( 'EWMHghstLvlHandlingUnitNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_UNIT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HandlingUnitNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_BIN' ).
    lo_primitive_property->set_edm_name( 'EWMStorageBin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QUANTITY_IN_BASE' ).
    lo_primitive_property->set_edm_name( 'EWMStockQuantityInBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QUANTITY_BASE_UNI' ).
    lo_primitive_property->set_edm_name( 'EWMStockQuantityBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QTY_BASE_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'EWMStockQtyBaseUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QTY_BASE_UNIT_SAP' ).
    lo_primitive_property->set_edm_name( 'EWMStockQtyBaseUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QUANTITY_ALTV_UNI' ).
    lo_primitive_property->set_edm_name( 'EWMStockQuantityAltvUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QTY_ALTV_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'EWMStockQtyAltvUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_QTY_ALTV_UNIT_SAP' ).
    lo_primitive_property->set_edm_name( 'EWMStockQtyAltvUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADING_OR_NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'EWMLoadingOrNetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADING_OR_NET_WEIGHT_U' ).
    lo_primitive_property->set_edm_name( 'EWMLoadingOrNetWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADG_OR_NET_WGT_UNT_IS' ).
    lo_primitive_property->set_edm_name( 'EWMLoadgOrNetWgtUntISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADG_OR_NET_WGT_UNT_SA' ).
    lo_primitive_property->set_edm_name( 'EWMLoadgOrNetWgtUntSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADING_OR_NET_VOLUME' ).
    lo_primitive_property->set_edm_name( 'EWMLoadingOrNetVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADING_OR_NET_VOLUME_U' ).
    lo_primitive_property->set_edm_name( 'EWMLoadingOrNetVolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADG_OR_NET_VOL_UNT_IS' ).
    lo_primitive_property->set_edm_name( 'EWMLoadgOrNetVolUntISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMLOADG_OR_NET_VOL_UNT_SA' ).
    lo_primitive_property->set_edm_name( 'EWMLoadgOrNetVolUntSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_BIN_CAP_CONSUMP' ).
    lo_primitive_property->set_edm_name( 'EWMStorageBinCapConsumptionVal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMGOODS_RECEIPT_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'EWMGoodsReceiptDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_TIME_ZONE' ).
    lo_primitive_property->set_edm_name( 'WarehouseTimeZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHELF_LIFE_EXPIRATION_DATE' ).
    lo_primitive_property->set_edm_name( 'ShelfLifeExpirationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMBATCH_IS_IN_RESTRICTED' ).
    lo_primitive_property->set_edm_name( 'EWMBatchIsInRestrictedUseStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSPECTION_PARTIAL_LOT' ).
    lo_primitive_property->set_edm_name( 'InspectionPartialLot' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_IS_BLOCKED_FOR_IN' ).
    lo_primitive_property->set_edm_name( 'EWMStockIsBlockedForInventory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMCONSOLIDATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'EWMConsolidationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_REQUIRED_LEV' ).
    lo_primitive_property->set_edm_name( 'SerialNumberRequiredLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOR_BIN_IS_BLOCKED_FOR' ).
    lo_primitive_property->set_edm_name( 'EWMStorBinIsBlockedForPutaway' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOR_BIN_IS_BLOCKED_F_2' ).
    lo_primitive_property->set_edm_name( 'EWMStorBinIsBlockedForRemoval' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOR_BIN_IS_BLOCKED_DUE' ).
    lo_primitive_property->set_edm_name( 'EWMStorBinIsBlockedDueToPInv' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'EWMStorageType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_SECTION' ).
    lo_primitive_property->set_edm_name( 'EWMStorageSection' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPHYS_STK_MIGRTN_STS_COD' ).
    lo_primitive_property->set_edm_name( 'EWMPhysStkMigrtnStsCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SERIAL_NUMBER' ).
    lo_navigation_property->set_edm_name( '_SerialNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'WHSE_PHYS_STOCK_PROD_SER_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_whse_phys_stock_prod_ser_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WHSE_PHYS_STOCK_PROD_SER_2'
                                    is_structure              = VALUE tys_whse_phys_stock_prod_ser_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WhsePhysStockProdSerialNmbr_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'WHSE_PHYS_STOCK_PROD_SERIA' ).
    lo_entity_set->set_edm_name( 'WhsePhysStockProdSerialNumber' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_HANDLING_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'ParentHandlingUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'StockItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'EWMSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMWAREHOUSE' ).
    lo_primitive_property->set_edm_name( 'EWMWarehouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PHYS_STOCK' ).
    lo_navigation_property->set_edm_name( '_PhysStock' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'WHSE_PHYSICAL_STOCK_PRODUC' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.
ENDCLASS.
