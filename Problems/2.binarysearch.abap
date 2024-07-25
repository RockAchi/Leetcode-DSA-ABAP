*** Problem 2: Binary Search Implementation
*** Given an sorted internal Tables of type integers of size n, find out a value key is present in the table or not,
*** implement the Binary Search Alogrithm
*** Ex: it_numbers = VALUE #( ( 10) ( 13 ) ( 19 ) ( 24 ) ( 98 ) ( 105 ) ), iv_key = 15
*** Expected Result: False
*** Time Complexity = O(logn)
*** Space Complexity = O(1)
*** Reference Leetcode Question: https://leetcode.com/problems/binary-search/description/


CLASS zcl_binary_search DEFINITION
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: lt_numbers TYPE SORTED TABLE OF i WITH NON-UNIQUE KEY table_line.
    METHODS:
      binary_search
        IMPORTING
                  it_numbers     LIKE  lt_numbers
                  iv_size        TYPE i
                  iv_key         TYPE i
        RETURNING VALUE(rv_bool) TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_binary_search  IMPLEMENTATION.

  METHOD binary_search.
    DATA: lv_low  TYPE i VALUE 1,
          lv_mid  TYPE i,
          lv_high TYPE i.

    lv_high = iv_size.
    WHILE lv_low <= lv_high.
      lv_mid = lv_low + ( lv_high - lv_low ) / 2.
      IF it_numbers[ lv_mid ] = iv_key.
        rv_bool = abap_true. RETURN.
      ELSEIF it_numbers[ lv_mid ] > iv_key.
        lv_high = lv_mid - 1.
      ELSE.
        lv_low = lv_mid + 1.
      ENDIF.
    ENDWHILE.
    rv_bool = abap_false.
  ENDMETHOD.

ENDCLASS.

*** If size is not given use this Code to get the Size "DESCRIBE TABLE it_numbers LINES DATA(lv_size)."