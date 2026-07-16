@EndUserText.label: 'Action Parameter - Stock Transfer'
define abstract entity ZWM_DD_STOCKTRAN_INPUT
{

  //  @UI.defaultValue : #( 'ELEMENT_OF_REFERENCED_ENTITY: Product ')
  //  product : matnr;

  @EndUserText.label: 'Material / Storage Bin'
  @UI.defaultValue : #( 'ELEMENT_OF_REFERENCED_ENTITY: ProdTypeBin')
  ProdTypeBin : abap.char( 80 );

  @UI.defaultValue : #( 'ELEMENT_OF_REFERENCED_ENTITY: TypeQuan')
  @EndUserText.label: 'Type / Available Quantity'
  TypeQuan    : abap.char( 90 );

  @EndUserText.label: 'Transfer to F1 (JS)'
  @UI.defaultValue: '0'
  new_qtyf1   : zwm_de_quantity;

  @EndUserText.label: 'Transfer to F2 (Tmall)'
  @UI.defaultValue: '0'
  new_qtyf2   : zwm_de_quantity;

  @EndUserText.label: 'Transfer to F3 (Douyin)'
  @UI.defaultValue: '0'
  new_qtyf3   : zwm_de_quantity;

  @EndUserText.label: 'Transfer to F4 (B2B)'
  @UI.defaultValue: '0'
  new_qtyf4   : zwm_de_quantity;


}
