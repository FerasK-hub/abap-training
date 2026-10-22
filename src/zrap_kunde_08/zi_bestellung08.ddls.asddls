@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Entity Bestellung'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_Bestellung08
  as select from zdb_bestel08

  association to parent ZI_Kunde08 as _Kunde on $projection.KundenNr = _Kunde.KundenNr

{
  key bstnr    as BestellNr,
      kdnr     as KundenNr,
      datum    as Datum,
       @Semantics.amount.currencyCode : 'Waehrung'
      summe    as Summe,
      rabatt   as Rabatt,
      info     as Info,
      status   as Status,
      waehrung as Waehrung,

      _Kunde
}
