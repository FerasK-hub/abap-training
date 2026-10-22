CLASS zcl_test_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_08 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    data cv type i .

    cv = 5 / 0.

    out->write( cv ).


  ENDMETHOD.

ENDCLASS.
