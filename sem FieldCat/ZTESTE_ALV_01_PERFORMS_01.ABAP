*&---------------------------------------------------------------------*
*&  Include           ZTESTE_ALV_01_PERFORMS_01
*&---------------------------------------------------------------------*

FORM buscar_dados.

  SELECT *
    FROM sflight
    INTO TABLE tabela_interna_sflight
    WHERE carrid IN s_carrid
    AND   connid IN s_connid
    AND   fldate IN s_fldate.

  IF sy-subrc <> 0.
    MESSAGE 'Dados não encontrados.' TYPE 'E'.

  ELSE.
    MESSAGE 'Dados encontrados com sucesso.' TYPE 'S'.

  ENDIF.

ENDFORM.                    "buscar_dados

FORM impressao_alv.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
   EXPORTING
     I_STRUCTURE_NAME                  = 'SFLIGHT'
    TABLES
      t_outtab                          = tabela_interna_sflight
   EXCEPTIONS
     PROGRAM_ERROR                     = 1
     OTHERS                            = 2.
     
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.

ENDFORM.                    "impressao_alv
