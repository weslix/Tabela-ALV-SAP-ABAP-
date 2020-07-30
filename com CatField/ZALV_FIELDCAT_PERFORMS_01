*&---------------------------------------------------------------------*
*&  Include           ZALV_FIELDCAT_PERFORMS_01
*&---------------------------------------------------------------------*
FORM busca_dados USING vg_validacao.

  IF vg_validacao = 'T'.
   SELECT a~carrid a~connid a~fldate a~price b~cityfrom b~cityto b~airpfrom b~airpto
   INTO TABLE it_flight
   FROM sflight AS a INNER JOIN spfli AS b
   ON a~carrid = b~carrid AND a~connid = b~connid
   WHERE a~carrid = p_carrid AND a~connid = p_connid.


  ELSE.
    SELECT a~carrid a~connid a~fldate a~price b~cityfrom b~cityto b~airpfrom b~airpto
    INTO TABLE it_flight
    FROM sflight AS a INNER JOIN spfli AS b
    ON a~carrid = b~carrid
    WHERE a~carrid = p_carrid.


  ENDIF.

ENDFORM.


FORM montar_campos.


  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'CARRID'.
  wa_fieldcat-tabname   = 'SFLIGHT'.
  wa_fieldcat-seltext_m = 'Companhia'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'CONNID'.
  wa_fieldcat-tabname   = 'SFLIGHT'.
  wa_fieldcat-seltext_m = 'Cod. do Voo'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'FLDATE'.
  wa_fieldcat-tabname   = 'SFLIGHT'.
  wa_fieldcat-seltext_m = 'Data do voo'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'PRICE'.
  wa_fieldcat-tabname   = 'SFLIGHT'.
  wa_fieldcat-seltext_m = 'Preço'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'CITYFROM'.
  wa_fieldcat-tabname   = 'SPFLI'.
  wa_fieldcat-seltext_m = 'Cidade de partida'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'CITYTO'.
  wa_fieldcat-tabname   = 'SPFLI'.
  wa_fieldcat-seltext_m = 'Cidade de destino'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'AIRPFROM'.
  wa_fieldcat-tabname   = 'SPFLI'.
  wa_fieldcat-seltext_m = 'Aeroporto de partida'.
  APPEND wa_fieldcat TO it_fieldcat.

  CLEAR wa_fieldcat.
  wa_fieldcat-fieldname = 'AIRPTO'.
  wa_fieldcat-tabname   = 'SPFLI'.
  wa_fieldcat-seltext_m = 'Aeroporto de destino'.
  APPEND wa_fieldcat TO it_fieldcat.

ENDFORM.


FORM montar_layout.
  wa_layout-zebra = 'X'.
  wa_layout-colwidth_optimize = 'X'.
ENDFORM.


FORM exibir_alv.


  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      i_callback_program = sy-repid
      i_grid_title       = 'Dados dos Voos'
      is_layout          = wa_layout
      it_fieldcat        = it_fieldcat
    TABLES
      t_outtab           = it_flight.


ENDFORM.
