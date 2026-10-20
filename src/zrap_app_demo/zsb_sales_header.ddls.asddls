@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SALES ROOT ENTITY'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSB_SALES_HEADER
  as select from zrap_sales_h_tab
  composition[1..*] of ZSB_SALES_ITEM as _SalesItem
{
  key order_id       as OrderId,
      order_date     as OrderDate,
      buyer_name     as BuyerName,
      mobile_no      as MobileNo,
      address        as Address,
      country        as Country,
      case country 
        when 'Aus' then 'Australia'
        when 'IND' then 'India'
        when 'Rus' then 'Russia'
        when 'UK' then 'United Kingdom'
        when 'USA' then 'United States'
        when 'Ger' then 'Germany'
        when 'Jap' then 'Japan'
        else 'None'
        end as CountryText,
      case country
        when 'Aus' then 1
        when 'Ind' then 2
        when 'Rus' then 2
        when 'UK' then 3
        when 'USA' then 3
        when 'Ger' then 1
        when 'Jap' then 2  
        else 0
        end as Criticality,
      created_by     as CreatedBy,
      created_at     as CreatedAt,
      lastchanged_by as LastchangedBy,
      lastchanged_at as LastchangedAt,
      _SalesItem
}
