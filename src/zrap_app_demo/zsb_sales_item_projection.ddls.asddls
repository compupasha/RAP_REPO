@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SALES CHILD PROJECTION-CONSUMPTION'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZSB_SALES_ITEM_PROJECTION
  as projection on ZSB_SALES_ITEM
{
  key OrderId,
  key OrderItemNo,
      GrossAmount,
      CurrencyCode,
      OrderStatus,
      LastchangedBy,
      LastchangedAt,
      /* Associations */
      _SalesHeader : redirected to parent ZSB_SALES_HEADER_PROJECTION
}
