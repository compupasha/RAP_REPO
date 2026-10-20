@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SALES PROJECTION ROOT-CONSUMPTION'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZSB_SALES_HEADER_PROJECTION
  provider contract transactional_query 
as projection on ZSB_SALES_HEADER
{
    @Consumption.valueHelpDefinition: [{ 
        entity.name: 'ZSB_SALES_HEADER',
        entity.element: 'OrderId' 
        }]
    key OrderId,
    OrderDate,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: 'ZSB_SALES_HEADER',
        entity.element: 'BuyerName' 
        }]
    BuyerName,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: 'ZSB_SALES_HEADER',
        entity.element: 'MobileNo' 
        }]
    MobileNo,
    Address,
    @ObjectModel.text.element: [ 'CountryText' ]
    Country,
    CountryText,
    Criticality,
    CreatedBy,
    CreatedAt,
    LastchangedBy,
    LastchangedAt,
    /* Associations */
    _SalesItem : redirected to composition child ZSB_SALES_ITEM_PROJECTION
}
