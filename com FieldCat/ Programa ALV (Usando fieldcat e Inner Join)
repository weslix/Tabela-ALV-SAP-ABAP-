REPORT zalv_fieldcat_01 NO STANDARD PAGE HEADING.

INCLUDE zalv_fieldcat_top.

INCLUDE zalv_fieldcat_sel.

INCLUDE zalv_fieldcat_performs_01.

START-OF-SELECTION.
  IF p_connid IS NOT INITIAL.

    vg_validacao = 'T'.

  ENDIF.

  PERFORM busca_dados USING vg_validacao.

  PERFORM montar_campos.

  PERFORM montar_layout.

  PERFORM exibir_alv.
