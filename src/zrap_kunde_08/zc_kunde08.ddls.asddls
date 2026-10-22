@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View kunde'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_Kunde08
  as projection on ZI_Kunde08
  
{
  key KundenNr,
      Anrede,
      Name,
      Vorname,
      Firma,
      Strasse,
      Ort,
      Land,
      Plz,
      Sperre,
      Datum,
      @Semantics.amount.currencyCode : 'Waehrung'
      Umsatz,
      Fax,
      Telefon,
      Email,
      Url,
      Waehrung,
      Sprache,
      Weblogin,
      Webpw,
      Memo,
      
      /* Associations */
      _Bestellungen : redirected to composition child ZC_Bestellung08 
}
