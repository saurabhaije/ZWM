@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View Entity - Stock Transfer'
@Metadata.ignorePropagatedAnnotations: false
define root view entity ZWM_R_STOCKTRAN
  as select from I_EWM_PhysStockProd
{
  key ParentHandlingUnitUUID,
  key StockItemUUID,
      EWMWarehouse,
      Product,
      EWMStockType,
      EWMStockOwner,
      EntitledToDisposeParty,
      EWMStockUsage,
      Batch,
      StockDocumentCategory,
      ExternalStockDocumentNumber,
      StockItemNumber,
      EWMWorkInProcess,
      EWMStockReferenceDocCategory,
      EWMStockReferenceDocument,
      EWMStockReferenceDocumentItem,
      StockIdentificationNumber,
      WhseQualityInspectionType,
      QualityInspectionDocument,
      EWMStorageBin,
      HandlingUnitNumber,
      EWMResource,
      TranspUnitInternalNumber,
      EWMStockIndexCode,
      ProductUUID,
      BatchUUID,
      EWMDocumentCategory,
      StockDocumentNumber,
      EWMStockQuantityInBaseUnit,
      EWMStockQuantityBaseUnit,
      EWMStockQtyBaseUnitISOCode,
      EWMStockQtyBaseUnitSAPCode,
      EWMStockQuantityAltvUnit,
      EWMStockQtyAltvUnitISOCode,
      EWMStockQtyAltvUnitSAPCode,
      EWMLoadingOrNetWeight,
      EWMLoadingOrNetWeightUnit,
      EWMLoadgOrNetWgtUntISOCode,
      EWMLoadgOrNetWgtUntSAPCode,
      EWMLoadingOrNetVolume,
      EWMLoadingOrNetVolumeUnit,
      EWMLoadgOrNetVolUntISOCode,
      EWMLoadgOrNetVolUntSAPCode,
      EWMStorageBinCapConsumptionVal,
      ShelfLifeExpirationDate,
      CountryOfOrigin,
      EWMBatchIsInRestrictedUseStock,
      StockSegment,
      QualityInspectionDocUUID,
      InspectionPartialLot,
      EWMStockRefDocumentUUID,
      EWMStockRefDocItemUUID,
      EWMValuationQuantity,
      EWMValuationQuantityUnit,
      EWMValuationQtyUnitISOCode,
      EWMValuationQtyUnitSAPCode,
      EWMValuationQuantityStatus,
      EWMStockIsBlockedForInventory,
      EWMConsolidationGroup,
      SerialNumberRequiredLevel,
      EWMGoodsReceiptDateTime,
      WarehouseTimeZone,
      EWMStorageType,
      EWMStorageSection,
      EWMStorBinIsBlockedForPutaway,
      EWMStorBinIsBlockedForRemoval,
      EWMStorBinIsBlockedDueToPInv,
      EWMHghstLvlHandlingUnitNumber,
      EWMLocationType,
      EWMParentLocationIndexCode,

      _ProductText[1: Language = $session.system_language].ProductName           as ProductName,
      _EWMStockTypeText[1: Language = $session.system_language].EWMStockTypeName as StockTypeName,

      cast(
        concat_with_space(
          Product,
          concat_with_space( '/', concat_with_space( EWMStorageType, EWMStorageBin, 1 ), 1 ),
          1
        )
        as abap.char( 80 )
      )                                                                          as ProdTypeBin,

      cast(
        concat_with_space(
          EWMStockType,
          concat_with_space(
            '/',
            cast( cast( round( EWMStockQuantityInBaseUnit, 0 ) as abap.dec( 17, 0 ) ) as abap.char( 40 ) ),
            1
          ),
          1
        )
        as abap.char( 90 )
      )                                                                          as TypeQuan,

      /* Associations */
      _CountryText,
      _EWMDocumentCategoryText,
      _EWMEntitledToDisposePartyText,
      _EWMStockOwnerText,
      _EWMStockRefDocCategoryText,
      _EWMStockTypeText,
      _EWMStockUsageText,
      _EWMValuationQtyStatusText,
      _LocationTypeText,
      _ProductText,
      _SerialNumberRequiredLevelText,
      _StockDocCategoryText,
      _StorageSectionText,
      _StorageTypeText,
      _UnitOfMeasureAlternativeUnit,
      _UnitOfMeasureBaseUnit,
      _UnitOfMeasureNetVolumeUoM,
      _UnitOfMeasureNetWeightUoM,
      _UnitOfMeasureValnQtyUnit,
      _WarehouseText,
      _WhseQualityInspectionTypeText

}
