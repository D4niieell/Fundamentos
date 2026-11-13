// // Define a classe Produto, que serve como "molde" para criar objetos de produto
// class Produto {
//   // Atributo (variável de instância) que guarda o nome do produto, iniciado com texto vazio
//   String nome = '';

//   // Atributo que guarda o preço do produto, iniciado com 0
//   double preco = 0;

//   // Linha comentada: seria uma forma de atribuir o valor diretamente no corpo da classe,
//   // mas isso não funciona fora de um construtor ou método (nomeProduto nem existe aqui)
//   // this.nome = nomeProduto;

//   // Construtor com parâmetros nomeados e obrigatórios (por causa das chaves { } e do "required").
//   // "this.nome" e "this.preco" são "formal parameters": o valor recebido
//   // já é atribuído automaticamente aos atributos da classe.
//   // Obs.: o "String" antes de "this.nome" é redundante; bastaria "required this.nome".
//   Produto({required String this.nome, required this.preco});

//   // Linhas comentadas abaixo: mostram a forma "tradicional" de fazer a mesma coisa,
//   // atribuindo manualmente dentro do corpo do construtor:
//   // { this.nome = nome;
//   // this.preco = preco; }
// }

// // Função principal: é o ponto de entrada do programa Dart
// void main() {
//   // Linhas comentadas: variáveis soltas que guardavam os dados do produto
//   // antes de existir a classe (nome e valor sem organização em um objeto)
//   // var nomeProduto = 'Chocolate';
//   // var valorProduto = 2.50;

//   // Cria um objeto (instância) da classe Produto chamado p1.
//   // Como os parâmetros são nomeados, a ordem não importa: informa-se
//   // o preço (5) e o nome ('chocolate') pelos seus nomes.
//   Produto p1 = Produto(preco: 5, nome: 'chocolate');

//   // Linha comentada: forma de criar o objeto com parâmetros posicionais
//   // (sem chaves no construtor, a ordem importaria: nome primeiro, depois preço)
//   // Produto p1 = Produto('Chocolate', 2.50);

//   // Linhas comentadas: forma de alterar os atributos depois que o objeto
//   // já foi criado, acessando-os com o ponto (.)
//   // p1.nome = 'chocolate';
//   // p1.preco = 2.50;
// }

// ARQUIVO: main.dart

// Importa o arquivo onde a classe MaquinaVendas foi definida 
import 'maquinaDeVendas.dart'; // Importa a classe MaquinaVendas

void main() {
  // Cria a primeira máquina de vendas, que vende refrigerantes
  MaquinaVendas maquina1 = MaquinaVendas(
    produto: "Refrigerante", // Define o nome do produto
    preco: 6.0, // Define o preço unitário
    quantidade: 10, // Define a quantidade inicial em estoque
  );

  // Cria a segunda máquina de vendas, que vende chocolates
  MaquinaVendas maquina2 = MaquinaVendas(
    produto: "Chocolate", // Define o nome do produto
    preco: 4.5, // Define o preço unitário
    quantidade: 5, // Define a quantidade inicial em estoque
  );

  // Realiza a compra de 3 refrigerantes
  maquina1.comprar(3);

  // Adiciona 5 refrigerantes ao estoque
  maquina1.abastecer(5);

  // Realiza a compra de 2 chocolates
  maquina2.comprar(2);

  // Altera o preço do chocolate para R$ 5,00
  maquina2.alterarPreco(5.0);

  // Exibe o relatório final da máquina de refrigerantes
  maquina1.exibirRelatorio();

  // Exibe o relatório final da máquina de chocolates
  maquina2.exibirRelatorio();

  // Cria o gerenciador
  GerenciarMaquinas gerenciador = GerenciarMaquinas();

  // CREATE: cadastra duas máquinas
  gerenciador.cadastrar(
    MaquinaVendas(
      produto: 'Refrigerante',
      preco: 6.0,
      quantidade: 10,
    ),
  );

  gerenciador.cadastrar(
    MaquinaVendas(
      produto: 'Chocolate',
      preco: 4.5,
      quantidade: 5,
    ),
  );

  // READ: lista as máquinas
  print('\n=== MÁQUINAS CADASTRADAS ===');
  gerenciador.listar();

  // READ: consulta a primeira máquina
  print('\n=== CONSULTAR MÁQUINA ===');
  gerenciador.consultar(0);

  // UPDATE: altera o preço da primeira máquina
  print('\n=== ATUALIZAR PREÇO ===');
  gerenciador.atualizarPreco(0, 7.0);

  // DELETE: remove a segunda máquina
  print('\n=== REMOVER MÁQUINA ===');
  gerenciador.remover(1);

  // READ: mostra a lista atualizada
  print('\n=== LISTA FINAL ===');
  gerenciador.listar();
}