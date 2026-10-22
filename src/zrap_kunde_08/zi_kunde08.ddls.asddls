@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Entity Kunde'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_Kunde08
  as select from zdb_kunde08

  composition [0..*] of ZI_Bestellung08 as _Bestellungen

{
  key kdnr     as KundenNr,
      anrede   as Anrede,
      name     as Name,
      vorname  as Vorname,
      firma    as Firma,
      strasse  as Strasse,
      ort      as Ort,
      land     as Land,
      plz      as Plz,
      sperre   as Sperre,
      datum    as Datum,
      @Semantics.amount.currencyCode : 'Waehrung'
      umsatz   as Umsatz,
      fax      as Fax,
      telefon  as Telefon,
      email    as Email,
      url      as Url,
      waehrung as Waehrung,
      sprache  as Sprache,
      weblogin as Weblogin,
      webpw    as Webpw,
      memo     as Memo,


      _Bestellungen 
}


