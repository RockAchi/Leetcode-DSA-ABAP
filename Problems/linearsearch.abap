*** Problem 1: Linear Search Implementation
*** Given an internal Tables of type integers find out a key value is present in the table or not,
*** implement the Linear Search Alogrithm 
*** Ex: it_numbers = VALUE #( ( 44 ) ( 526 ) ( 15 ) ( 7 ) ( 38968 ) ( 15 ) ( 7896 ) ( 865 ) ), iv_key = 15
*** Expected Result: True
*** Time Complexity = O(n)
*** Space Complexity = O(1)
***

CLASS zcl_linear_search DEFINITION
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: lt_numbers TYPE STANDARD TABLE OF i.
    METHODS:
      linear_search
        IMPORTING
                  it_numbers     LIKE  lt_numbers
                  iv_key         TYPE i
        RETURNING VALUE(rv_bool) TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_linear_search  IMPLEMENTATION.

  METHOD linear_search.
    LOOP AT it_numbers INTO DATA(ls_numbers).
      IF ls_numbers = iv_key.
        rv_bool = abap_true. RETURN.      
      ENDIF.
    ENDLOOP.
    rv_bool = abap_false.
  ENDMETHOD.

ENDCLASS.