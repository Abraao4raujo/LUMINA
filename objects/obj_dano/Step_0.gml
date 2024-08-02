/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Verifica se há uma instância de obj_entidade no ponto (x, y)
var _outro = instance_place(x, y, obj_entidade_1);

// Se estiver tocando em uma instância de obj_entidade
if (_outro) {
    // Se a instância não for o pai
    if (_outro != pai) {
        _outro.estado = "hit";       // Muda o estado da entidade para "hit"
        _outro.vida_atual -= dano;   // Subtrai o dano da vida atual da entidade
        instance_destroy();          // Destrói a instância atual (provavelmente um projétil)
    }
}