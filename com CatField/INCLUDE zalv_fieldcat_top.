*&---------------------------------------------------------------------*
*&  Include           ZALV_FIELDCAT_TOP
*&---------------------------------------------------------------------*
TABLES: spfli, sflight.

TYPES:
BEGIN OF ty_flight,
carrid   TYPE sflight-carrid,
connid   TYPE sflight-connid,
fldate   TYPE sflight-fldate,
price    TYPE sflight-price,
cityfrom TYPE spfli-cityfrom,
cityto   TYPE  spfli-cityto,
airpfrom TYPE spfli-airpfrom,
airpto   TYPE spfli-airpto,
END OF ty_flight.

DATA r_grid TYPE REF TO cl_gui_alv_grid.

DATA: vg_validacao  TYPE boolean  VALUE 'F',
      it_flight     TYPE TABLE OF ty_flight,
      wa_fieldcat   TYPE          slis_fieldcat_alv,
      wa_layout     TYPE          slis_layout_alv,
      it_fieldcat   TYPE          slis_t_fieldcat_alv.
