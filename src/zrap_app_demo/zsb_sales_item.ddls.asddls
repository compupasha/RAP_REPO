@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SALES CHILD ENTITY'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSB_SALES_ITEM 
as select from zrap_sales_i_tab
association to parent ZSB_SALES_HEADER as _SalesHeader
on $projection.OrderId = _SalesHeader.OrderId
{
    key order_id as OrderId,
    key order_item_no as OrderItemNo,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    gross_amount as GrossAmount,
    currency_code as CurrencyCode,
    order_status as OrderStatus,
    lastchanged_by as LastchangedBy,
    lastchanged_at as LastchangedAt,
    _SalesHeader
}
