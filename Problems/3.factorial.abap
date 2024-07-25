*** Problem 3: Factorial of N
*** Given an integers N, find out the Factorial of it,
*** Ex: N = 5 Factorial = 120, N = 0 Fact = 1
*** Expected Result: False
*** Time Complexity = O(N)
*** Space Complexity = Recursive Approach( O(N) for Recursive Stack) / Iterative Approach O(1)
*** Reference Problem: https://www.geeksforgeeks.org/problems/factorial5739/1


CLASS zcl_factorial DEFINITION
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      factorial_recursive
        IMPORTING
                  iv_num           TYPE i
        RETURNING VALUE(rv_result) TYPE i,
      factorial_iterative
        IMPORTING
                  iv_num           TYPE i
        RETURNING VALUE(rv_result) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_factorial IMPLEMENTATION.

  METHOD factorial_recursive.
    IF iv_num = 0.
      rv_result = 1. RETURN.
    ELSE.
      rv_result = iv_num * factorial_recursive( iv_num - 1 ).
    ENDIF.
  ENDMETHOD.

  METHOD factorial_iterative.
    IF iv_num = 0.
      rv_result = 1. RETURN.
    ELSE.
      DATA(lv_num) = iv_num.
      rv_result = 1.
      DO iv_num TIMES.
        rv_result *= lv_num.
        lv_num -= 1.
      ENDDO.
    ENDIF.
  ENDMETHOD.

ENDCLASS.