@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Bestellung'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_Bestellung08
  as projection on ZI_Bestellung08
  
{
  key BestellNr,
      KundenNr,
      Datum,
      @Semantics.amount.currencyCode : 'Waehrung'
      Summe,
      Rabatt,
      Info,
      Status,
      Waehrung,
      
      /* Associations */      
      _Kunde : redirected to parent ZC_Kunde08 
      
}
