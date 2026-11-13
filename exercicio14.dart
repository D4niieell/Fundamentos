// EXERCÍCIO 1 – BATALHA DE ROBÔS
// SITUAÇÃO-PROBLEMA
 
// Uma empresa está desenvolvendo um jogo de batalha entre robôs. Você foi contratado para implementar as primeiras funcionalidades do sistema. Cada robô terá nome, energia e poder de ataque. Durante uma batalha, os robôs poderão atacar, receber danos e recuperar energia.
 
// 1. Crie uma classe chamada Robo com os seguintes atributos:
 
//    nome         – String – valor inicial: ""

//    energia      – int    – valor inicial: 100

//    poderAtaque  – int    – valor inicial: 20
 
// 2. Implemente os métodos:
 
//    void atacar()

//    - Exiba uma mensagem informando que o robô realizou um ataque.

//    - Mostre o nome do robô e seu poder de ataque.
 
//    void receberDano(int dano)

//    - Diminua a energia conforme o dano recebido.

//    - Não permita que a energia fique abaixo de zero.

//    - Não aplique danos negativos ou iguais a zero.
 
//    void recarregar()

//    - Recupere 15 pontos de energia.

//    - A energia não poderá ultrapassar 100.
 
//    void exibirStatus()

//    - Exiba nome, energia e poder de ataque do robô.
 
// 3. No main():
 
//    a) Crie dois objetos da classe Robo: robo1 e robo2.

//    b) Defina os nomes "Titan" e "MegaBot".

//    c) Faça o primeiro robô atacar e o segundo receber dano.

//    d) Faça o segundo robô atacar e o primeiro receber dano.

//    e) Execute uma recarga de energia em um dos robôs.

//    f) Exiba o status dos dois robôs ao final da batalha.
 
//    Atenção: neste exercício, atacar() apenas anuncia o ataque.

//    Para registrar o dano, chame receberDano() no robô adversário.
 
// ESTRUTURA INICIAL (SEM SOLUÇÃO)

// Declara a classe "Robo", o "molde" que define como todo o robo vai ser  
class Robo {

// Atributo nome: texto. O enunciado pede valor inicial vazio ("").
  String nome = "Optimus Prime";

// Atributo energia> número inteiro. Todo robo começa com 100.
  int energia = 100;

// Atributo poderAtaque: número inteiro. Todo robo começa com 20.
  int poderAtaque = 20;

// Método atacar: não recebe nada e não devolve nada (void). 
  void atacar() {
// Mostra na tela quem atacaou e com quanto de poder.
// $nome e $poderAtaque são substituídos pelos valores do objeto.
  print("$nome realizou um ataque com poder de $poderAtaque!");
}
 
// Método receberDano: recebe um número inteiro chamado "dano".
  void receberDano(int dano) {
    //Se o dano for zero ou negativo, não é um dano válido.
    if (dano <= 0) {
      // Avisa que o dano foi ignorado.
      print("Dano inválido ($dano). Nenhum dano aplicado em $nome");
      // 'return' encerra o método aqui, sem executar o resto.
      return;
    }

    // Subtrai o dano da energia atual (energia = energia - dano).
    energia -= dano;

    // Se a energia ficou abaixo de zero...
    if (energia < 0) {
      // ...corrige para zero, pois a energia nunca pode ser negativa.
      energia = 0; 
    } 

    // Informa quanto dano foi recebido e quanto sobrou de energia.
    print("$nome recebeu $dano de dano. Energia atual: $energia");
  }

// Método recarregar: recupera energia.
  void recarregar() {
    // Soma 15 pontos à energia (energia = energia + 15).
    energia += 15;

    // Se passou de 100...
    if (energia > 100) {
      // ...limita em 100, que é o máximo permitido.
      energia = 100;
    }

    // Informa que a recarga aconteceu e mostra a energia resultante.
    print("$nome recarregou energia. Energia atual: $energia");
  }

// Método exibirStatus: mostra todas as informações do robo.
  void exibirStatus() {
  // Imprime nome, energia e poder de ataque em uma única linha.
   print("Status -> Nome: $nome | Energia: $energia | Poder de ataque: $poderAtaque");  
 }

// DESAFIO EXTRA: verifica se o robo foi destruído.
void estaDestruido() {
  // A energia igual a zero significa que o robo foi destruído.
  if (energia == 0) {
    // Exibe a mensagem de destruição.
    print("$nome foi DESTRUÍDO!!!");
  }
 }
}
 
// Função principal: é por aqui que o programa começa a rodar.
void main() {
// a) Cria dois objetos (robos) a partir da classe "Robo".
  Robo robo1 = Robo();
  Robo robo2 = Robo();
 
// b) Define o nome de cada robo 
  robo1.nome = "OptimusPrime";
  robo2.nome = "Decepticon";

// Linha de título para organizar a saída no console.
  print("=== INÍCIO DA BATALHA ===");

// c) Titan ataca (apenas anuncia o ataque)...
  robo1.atacar();
  // ...e Megabot recebe o dano. Usamos o poder de ataque do Titan como valor.
  robo2.receberDano(robo1.poderAtaque);

// d) Megabot ataca...
  robo2.atacar();
  // ..;e Titan recebe o dano, usando o poder de ataque do MegaBot.
  robo1.receberDano(robo2.poderAtaque);

// e) Titan recarrega energia.
  robo1.recarregar();

// f) Exibe o status final dos dois robos.
  print("=== STATUS FINAL ===");
  robo1.exibirStatus();
  robo2.exibirStatus();

// --------------- TESTE DO DESAFIO EXTRA ---------------
  print("=== TESTE DO DESAFIO EXTRA ===");
// Aplica um dano enorme (500) no Megabot, bem maior que a energia dele.
  robo2.receberDano(500);
// Verifica se ele foi destruído (energia travou em 0, então vai avisar).
  robo2.estaDestruido();
// Titan ainda tem energia, então este método não mostra nada.
  robo1.estaDestruido();

// Teste extra: dano inválido (zero) deve ser ignorado.
  robo1.receberDano(0);
}