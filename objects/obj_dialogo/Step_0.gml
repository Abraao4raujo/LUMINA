#region  INICIAR DIALOGO TEXTO É CONTROLE PARA PROXIMA PAGINA DE DIALOGO

if (!inicializar) {
    scr_textos();
    inicializar = true;
}

if mouse_check_button_pressed(mb_left){
	if pagina < array_length(texto) - 1{
		pagina++;	
	} else{
		instance_destroy();
		global.dialogo = false;
	}
	
}
#endregion