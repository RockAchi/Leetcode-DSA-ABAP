*linear_search
*IMPORTING it_numbers   TYPE STANDARD TABLE OF i
*          iv_key TYPE i
*RETURNING VALUE(rv_result) TYPE i.

METHOD linear_search.
    LOOP AT it_numbers INTO  DATA(ls_number).
        IF ls_number = iv_key.
            rv_bool = abap_true.
            RETURN.
        ENDIF.
    ENDLOOP.
    rv_bool = abap_false.
   