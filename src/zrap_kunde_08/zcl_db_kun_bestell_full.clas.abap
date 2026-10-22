CLASS zcl_db_kun_bestell_full DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_db_kun_bestell_full IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "---------------------------------------
    " Kunden
    "---------------------------------------
    DATA lt_kunden TYPE STANDARD TABLE OF zdb_kunde08
                   WITH EMPTY KEY.

    lt_kunden = VALUE #(
      (
        kdnr      = '000001'
        anrede    = 'Herr'
        name      = 'Müller'
        vorname   = 'Max'
        firma     = 'Müller GmbH'
        strasse   = 'Hauptstraße 10'
        ort       = 'Hamburg'
        land      = 'DE'
        plz       = '20095'
        telefon   = '040123456'
        email     = 'max@mueller.de'
        waehrung  = 'EUR'
        sprache   = 'D'
      )

      (
        kdnr      = '000002'
        anrede    = 'Frau'
        name      = 'Schmidt'
        vorname   = 'Anna'
        firma     = 'Schmidt AG'
        strasse   = 'Bahnhofstraße 20'
        ort       = 'Berlin'
        land      = 'DE'
        plz       = '10115'
        telefon   = '030123456'
        email     = 'anna@schmidt.de'
        waehrung  = 'EUR'
        sprache   = 'D'
      )
    ).

    INSERT zdb_kunde08 FROM TABLE @lt_kunden.

    out->write(
      |{ sy-dbcnt } Kunden angelegt|
    ).


    "---------------------------------------
    " Bestellungen
    "---------------------------------------
    DATA lt_bestellungen TYPE STANDARD TABLE OF zdb_bestel08
                         WITH EMPTY KEY.

    lt_bestellungen = VALUE #(
      (
        bstnr    = '000001'
        kdnr     = '000001'
        datum    = '20261020'
        summe    = '149.90'
        rabatt   = '5.00'
        info     = 'Erste Bestellung'
        status   = 'BO'
        waehrung = 'EUR'
      )

      (
        bstnr    = '000002'
        kdnr     = '000002'
        datum    = '20261021'
        summe    = '499.00'
        rabatt   = '10.00'
        info     = 'Onlinebestellung'
        status   = 'BO'
        waehrung = 'EUR'
      )
    ).

    INSERT zdb_bestel08 FROM TABLE @lt_bestellungen.

    out->write(
      |{ sy-dbcnt } Bestellungen angelegt|
    ).




  ENDMETHOD.
ENDCLASS.
