// Exercício 4
// 4 - Considere as temperaturas de um processador (CPU): var temperaturas = [45, 52, 68, 75, 81, 59];
// Até 59°C → Normal
// De 60°C até 74°C → Atenção
// 75°C ou mais → Temperatura elevada

// Função principal: é o ponto de entrada, onde o programa começa a executar
void main() {

  // Cria a variável "temperaturas" com um conjunto (Set) de valores inteiros.
  // As chaves { } criam um Set em Dart; os colchetes [ ] criariam uma List.
  var temperaturas = {45, 52,};

  // Percorre cada elemento do conjunto, um por vez.
  // Em cada volta, o valor atual é guardado na variável "temperatura".
  for ( var temperatura in temperaturas) {

    // Se a temperatura for menor ou igual a 59, está em nível normal
    if (temperatura <= 59) {
      // Imprime a temperatura seguida de "°C - Normal"
      // O "$temperatura" insere o valor da variável dentro do texto
      print("$temperatura°C - Normal");

    // Senão, verifica se está entre 60 e 74 (os dois testes precisam ser verdadeiros por causa do &&)
    } else if ((temperatura >= 60) && (temperatura <= 74)) {
      // Imprime a temperatura com o aviso de "Atenção"
      print("$temperatura°C - Atenção");

    // Se nenhuma condição anterior for verdadeira, a temperatura é 75 ou mais
    } else {
      // Imprime a temperatura com o alerta de temperatura elevada
      print("$temperatura°C - Temperatura elevada!");
    }
  } // Fim do laço for: repete até percorrer todos os elementos
} // Fim da função main: o programa termina aqui