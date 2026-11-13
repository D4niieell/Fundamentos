// class Produto {
//   String nome = '';
//   double preco = 0;

//   Produto p1 = Produto(preco: 5, nome: 'chocolate');
// }

// ARQUIVO: maquina_vendas.dart

// Declara a classe 
// class MaquinaVendas {
//   // Nome do produto vendido pela máquina (ex: "Refrigerante")
//   String produto;
//   // Preço de cada unidade do produto 
//   double preco;
//   // Quantidade de unidades disponíveis no estoque
//   int quantidade;
//   // Valor total acumulado com as vendas; começa em 0 conforme o enunciado 
//   double totalArrecadado = 0;
 
//   // Construtor com parâmetros nomeados
//   // 'required' obriga quem criar o objeto a informar esses três valores.
//   // 'this.produto' etc. atribuem o valor recebido diretamente ao atributo da classe.
//   MaquinaVendas ({
//     required this.produto,
//     required this.preco,
//     required this.quantidade,
//   });

//   // Método que adiciona unidades ao estoque.
//   // O parâmetro 'quantidade' (local) tem o mesmo nome do atributo da classe.
//   void abastecer(int quantidade) {
//     // Rejeita valores menores ou iguais a zero
//     if (quantidade <= 0) {
//       print("Erro: a quantidade para abastecer deve ser maior que zero.");
//       // Encerra o método sem alterar o estoque
//       return;
//     }

//     // 'this.quantidade' é o atributo da classe (o estoque);
//     // 'quantidade' é o parâmetro recebido. Soma-se o parâmetro ao estoque.
//     this.quantidade += quantidade;

//     // Confirma a operação para o usuário
//     print("Estoque de $produto abastecido com $quantidade unidade(s).");
//   }
 
//   // Método que realiza uma venda
//   void comprar(int quantidade) {
//     // 1a. verificação: a quantidade solicitada precisa ser positiva
//     if (quantidade <= 0) {
//       print("Erro: a quantidade para comprar deve ser maior que zero.");
//       return; // Interrompe a compra
//     }

//     // 2a. verificação: o estoque precisa ser suficiente.
//     // 'this.quantidade' é o estoque atual; 'quantidade' é o que o cliente pediu.
//     if (quantidade > this.quantidade) {
//       print("Erro: estoque insuficiente de $produto." "Disponível: ${this.quantidade}.");
//       return; // Interrompe a compra
//     }

//     // Se chegou aqui, a compra é possível.
//     // Diminui o estoque pela quantidade vendida
//     this.quantidade -= quantidade;

//     // Calcula o valor da venda (quantidade x preço unitário)
//     double valorVenda = quantidade * preco;

//     // Acrescenta o valor da venda ao total arrecadado
//     totalArrecadado += valorVenda;

//     // Confirma a venda, mostrando o valor com 2 casas decimais
//     print("Venda realizada: $quantidade x $produto = " "R\$ ${valorVenda.toStringAsFixed(2)}");
//   }
 
//   // Método que altera o preço do produto
//   void alterarPreco(double novoPreco) {
//     // O novo preço só é aceito se for maior que zero
//     if (novoPreco > 0) {
//       // Atualiza o atributo 'preco' com o novo valor
//       preco = novoPreco;
//       print("Preço de $produto alterado para " "R\$ ${preco.toStringAsFixed(2)}.");
//     } else {
//       // Caso contrário, informa que o valor é inválido e mantém o preço antigo 
//       print("Erro: o novo preço deve ser maior que zero."); 
//     }
//   }
 
//   // Método que mostra as informações da máquina
//   void exibirRelatorio() {
//     // Linha de separação visual
//     print("-------------------------------------");
//     // Título do relatório
//     print("RELATÓRIO DA MÁQUINA");
//     // Nome do produto
//     print("Produto: $produto");
//     // Preço unitário formatado com 2 casas decimais ('$\' imprime o símbolo $)
//     print("Preço: R\$ ${preco.toStringAsFixed(2)}");
//     // Estoque atual
//     print("Quantidade em estoque: $quantidade");
//     // Total arrecadado formatado com 2 casas decimais
//     print("Total arrecadado: R\$ ${totalArrecadado.toStringAsFixed(2)}");
//     // Linha de separação final
//     print("-------------------------------------");
//   }
// }

class MaquinaVendas {
  String produto;
  double preco;
  int quantidade;
  double totalArrecadado = 0;
 
  // Construtor com parâmetros nomeados
  MaquinaVendas({
    required this.produto,
    required this.preco,
    required this.quantidade,
  });
 
  // Adicionar produtos ao estoque
  void abastecer(int quantidade) {
    
    if (quantidade > 0) {
        //this.quantidade = this.quantidade + quantidade;
        this.quantidade += quantidade;
        print('$produto: $quantidade unidade(s) foi adicionado!!!');
      } else {
        print('Quantidade inválida para abastecimento ou QTDE < 0');
      } 
    }
 
  // Realizar uma venda
  void comprar(int quantidade) {
    // Registra uma compra, se houver estoque
    if (quantidade > 0 && quantidade <= this.quantidade) {
      this.quantidade = this.quantidade - quantidade;
      // this.quantidade -= quantidade;
      totalArrecadado += quantidade * this.preco;
      print('Compra realizada com sucesso: $produto');
    }  else if (quantidade > this.quantidade) {
      print('Estoque infuciente de $produto');
      print('Qtde disponivel é: ${this.quantidade}');
    } else {
      print('Estoque insuficiente do $produto!!!');
    }
  } 
  // Alterar o preço do produto
  void alterarPreco(double novoPreco) {
    if (novoPreco > 0) {
        this.preco = novoPreco;
        print('Novo Preço do $produto: R\$ $preco');
    } else {
      print('Não é possível alterar o preço!!!');
    }
  }
 
  // Mostrar informações da máquina
  void exibirRelatorio() {
    print('==============================');
    print('Produto: $produto');
    print('Preço: R\$ $preco');
    print('Quantidade: $quantidade');
    print('Valor da venda: $totalArrecadado');
    print('==============================');
  }
}

class GerenciarMaquinas {
  // CRUD
  // Create Read Update Delete
  
  // Lista de armazenamento das máquinas cadastradas
  final List<MaquinaVendas> maquina = [];

  // Create: cadastrar novas máquinas
  void cadastrar(MaquinaVendas novaMaquina) {
    // Adiciona a máquina à lista
    maquina.add(novaMaquina);

    // Informa que o cadastro foi realizado
    print('Máquina de ${novaMaquina.produto} cadastrada com sucesso!!!');
  }

  // Read: lista todas as máquinas cadastradas
  void listar() {
    for (int i = 0; i < maquina.length; i++) {
      print('Máquina listada ${1 + i}');

      // Exive o relatório da máquina atual
      maquina[i].exibirRelatorio();
    }
  }

  // Read: para fazer a consulta
  void consultar(int indice) {
    // Verificar se o índice existe na lista
    if (indice < 0 || indice >= maquina.length) {
      print('Máquina não encontrada!!!');
      return;
    }

    // Obtém a máquina correspondente ao índice
    MaquinaVendas maquinaConsultada = maquina[indice];

    // Exibe o relatório da máquina consultada
    maquinaConsultada.exibirRelatorio();
  }

  void consultar2(MaquinaVendas maquina) {
    maquina.exibirRelatorio();
  } 

  // UPDATE: atualizar o preço de uma máquina
  void atualizarPreco(int indice, double novoPreco) {
    
    // Verifica se o índice existe na lista
    if (indice < 0 && indice >= maquina.length) {
      print('Máquina não encontrada!!!');
      return;
    }

    // Obtém a máquina que será atualizada
    MaquinaVendas maquinaAtual = maquina[indice];

    //maquina[indice].alterarPreco(novoPreco);
    maquinaAtual.alterarPreco(novoPreco);
  }

  // DELETE: remove uma máquina do cadastro
  void remover(int indice) {
    // Verifica se o índice existe na lista
    if (indice < 0 && indice >= maquina.length) {
      print('Máquina não encontrada!!!');
      return;
    }

    // Remove a máquina da lista
    MaquinaVendas removida = maquina.removeAt(indice);

    print('Máquina de ${removida.produto} com sucesso!!!');
  }
}

// class GerenciarMaquinas {
//   // C.R.U.D.
//   // Create - Read - Update - Delete
  
//   // Lista de armazenamento da máquinas cadastradas
//   final List<MaquinaVendas> maquina = [];

//   // Create: cadastrar novas máquinas
//   void cadastrar(MaquinaVendas maquina) {
//     // Adiciona a máquina á lista
//     maquina.add(maquina);

//     // Informa que o cadastro foi realizado
//     print("Máquina de ${maquina.produto} cadastrada com sucesso!");
//   }

//   // Read: lista todas as máquinas cadastradas
//   void listar() {
//     for (int i = 0; i < maquina.length; i++) {
//       print("Máquina listada ${1 + i}");
//     }
    
//     // Read: para fazer a consulta
//     void consultar(MaquinaVendas maquina) {
//       // Exibe o relátorio de máquinas
//       print("O relatório de máquinas é: $maquina");
//     }
//   }

//   // Update: atualizar o preço de uma máquina
//   void atualizarPreco(int indice, double novoPreco) {
//     // Obtem a máquina que será atualizada
//     MaquinaVendas maquina = maquinas[indice];

//     // Atualiza o preço 
//     maquina.preco = novoPreco;
//   }
// }
