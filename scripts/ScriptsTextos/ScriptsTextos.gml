#region TODO TEXTO DOS NPCS
// Função que define os textos dos NPCs
function scr_textos(){
    if (npc_nome == "") {
        texto[0] = "Nenhum NPC definido";
        texto[1] = "";
        texto[2] = "";
        return;
    }

    switch (npc_nome) {
        case "NPC1 Rosa":
            texto[0] = "NPC1 click no mouse para o proximo dialogo até esgota";
            texto[1] = "DIALOGO DO NPC 1 PARTE 1";
            texto[2] = "DIALOGO DO NPC 1 PARTE 2";
            break;
            
        case "NPC2 Vermelho":
            texto[0] = "NPC2 click no mouse para o proximo dialogo até esgota";
            texto[1] = "DIALOGO DO NPC 2 PARTE 1";
            texto[2] = "DIALOGO DO NPC 2 PARTE 2";
            break;
			
		case "NPC3 Lilas":
            texto[0] = "NPC3 click no mouse para o proximo dialogo até esgota";
            texto[1] = "DIALOGO DO NPC 3 PARTE 1";
            texto[2] = "DIALOGO DO NPC 3 PARTE 2";
            break;	
            
        default:
            texto[0] = "Diálogo não encontrado.";
            texto[1] = "";
            texto[2] = "";
            break;
    }
}


#endregion