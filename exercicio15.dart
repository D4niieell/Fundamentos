// EXERCÍCIO 2
// * CONTA BANCÁRIA DIGITAL
// Um banco digital precisa desenvolver um programa simples para movimentar contas de clientes. Cada conta possui titular, número e saldo. O programa deverá permitir depósitos, saques e transferências, respeitando as regras de cada operação.
 
// 1. Crie uma classe chamada ContaBancaria com os atributos:
 
//    titular      – String – valor inicial: ""
//    numeroConta  – int    – valor inicial: 0
//    saldo        – double – valor inicial: 0.0
 
// 2. Implemente os métodos:
 
//    void depositar(double valor)
//    - Adicione o valor informado ao saldo.
//    - Não permita depósitos de valor zero ou negativo.
//    - Exiba uma mensagem informando o resultado.
 
//    void sacar(double valor)
//    - Retire o valor informado do saldo.
//    - Não permita saques de valor zero ou negativo.
//    - Não permita saques superiores ao saldo disponível.
//    - Exiba uma mensagem informando o resultado.
 
//    void exibirSaldo()
//    - Apresente o titular, o número da conta e o saldo atual.
 
//    void transferir(double valor, ContaBancaria destino)
//    - Transfira o valor da conta atual para outra conta.
//    - Não permita transferências de valor zero ou negativo.
//    - Não permita transferências superiores ao saldo disponível.
//    - Em caso de transferência válida, diminua o saldo da conta de origem e aumente o saldo da conta de destino.
//    - Exiba uma mensagem com o resultado da transferência.
 
// 3. No main():
 
//    a) Crie duas contas: uma para Ana e outra para Pedro.
//    b) Atribua números diferentes às contas.
//    c) Defina o saldo inicial de Ana como R$ 500,00 e o de Pedro como R$ 0,00.
//    d) Deposite R$ 200,00 na conta de Ana.
//    e) Saque R$ 100,00 da conta de Ana.
//    f) Transfira R$ 150,00 da conta de Ana para a conta de Pedro.
//    g) Exiba os saldos finais das duas contas.
 
// RESULTADO ESPERADO (VALORES)
 
// Saldo inicial de Ana:   R$ 500,00
// Depósito em Ana:        R$ 200,00
// Saque de Ana:           R$ 100,00
// Transferência:          R$ 150,00 de Ana para Pedro
 
// Saldo final de Ana:     R$ 450,00
// Saldo final de Pedro:   R$ 150,00
 
// ESTRUTURA INICIAL (SEM SOLUÇÃO)

// Define a classe ContaBancaria, o "molde" de toda a conta do banco 
class ContaBancaria {
  // Nome do dono da conta, começa vazio
  String titular = "";
  // Número da conta, começa em 0 
  int numeroConta = 0;
  // Dinheiro disponível na conta, começa em 0.0
  double saldo = 0.0;

  // Método que adiciona o dinheiro à conta; recebe o valor a depositar
  void depositar(double valor) {
    // Verifica se o valor é zero ou negativo (inválido para depósito)
    if (valor <= 0) {
      // Informa o erro ao usuário
      print("Depósito inválido: o valor deve ser maior que zero.");
      // Encerra o método aqui, sem alterar o saldo
      return;
    }
    // Se chegou aqui, o valor é válido: soma ao saldo (mesmo que o saldo = saldo + valor)
    saldo += valor;
    // Mostra a confirmação; toStringAsFixed(2) mostra 2 casas decimais
    print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado com sucesso em $titular");
  }
 
  // Método que retira o dinheiro da conta; recebe o valor a sacar 
  void sacar(double valor) {
    // Verifica se o valor é zero ou negativo
    if (valor <= 0) {
      print("Saque inválido: o valor deve ser maior que zero.");
      // Encerra o método sem mexer no saldo
      return;
    }
    // Verifica se o valor pedido é maior do que o saldo disponível
    if (valor > saldo) {
      print("Saque negado: saldo insuficiente para $titular.");
      // Encerra o método sem mexer no saldo
      return;
    }
    // Todas as validações passaram: subtrai o valor do saldo
    saldo -= valor;
    // Mostra a confirmação do saque
    print("Saque de R\$ ${valor.toStringAsFixed(2)} realizado com sucesso em $titular."); 
  }
 
  // Método que mostra as informações da conta na tela
  void exibirSaldo() {
    // Imprime o nome do titular
    print("Titular: $titular");
    // Imprime o número da conta
    print("Número da conta: $numeroConta");
    // Imprime o saldo com 2 casas decimais
    print("Saldo atual: R\$ ${saldo.toStringAsFixed(2)}");
  }
 
  // Método que envia dinheiro desta conta para a outra (o "destino")
  void transferir(double valor, ContaBancaria destino) {
    // Verifica se o valor é zero ou negativo
    if (valor <= 0) {
      print("Transferência inválida: o valor deve ser maior que zero.");
      return;
    }
    // Verifica se esta conta tem saldo suficiente
    if (valor > saldo) {
      print("Transferência negada: saldo insuficiente em $titular.");
      return;
    }
    // Tira o dinheiro da conta de origem (esta conta)
    saldo -= valor;
    // Coloca o dinheiro na conta de destino
    destino.saldo += valor;
    // Mostra a confirmação, citando origem e destino
    print("Transferência de R\$ ${valor.toStringAsFixed(2)} de $titular para ${destino.titular} realizada com sucesso."); 
  }
}
 
// Função principal: é onde o programa começa a executar
void main() {
  // Cria um objeto (conta) para Ana
  ContaBancaria contaAna = ContaBancaria();
  // Cria um objeto (conta) para o Pedro
  ContaBancaria contaPedro = ContaBancaria();

  // Define o titular conta da Ana
  contaAna.titular = "Ana";
  // Define o número da conta da Ana
  contaAna.numeroConta = 1001;
  // Define o saldo inicial da Ana: R$ 500,00
  contaAna.saldo = 500.0;
 
  // Define o titular da conta Pedro
  contaPedro.titular = "Pedro";
  // Define o número da conta do Pedro (diferente do da Ana)
  contaPedro.numeroConta = 1002;
  // Define o saldo inicial do Pedro: R$ 0,00
  contaPedro.saldo = 0.0;

  // d) Deposita R$ 200,00 na conta da Ana (saldo vai para 700)
  contaAna.depositar(200.0);
  // e) Saca R$ 100,00 da conta da Ana (saldo vai para 600)
  contaAna.sacar(100.0);
  // f) Transfere R$ 150,00 da Ana para o Pedro (Anan: 450 / Pedro: 150)
  contaAna.transferir(150.0, contaPedro);

  // Linha em branco para separar as mensagens dos saldos
  print("");
  // g) Exibe os dados finais da conta da Ana
  contaAna.exibirSaldo();
  // Linha em branco para separar as contas
  print("");
  // Exibe os dados finais da conta do Pedro
  contaPedro.exibirSaldo();
 } 