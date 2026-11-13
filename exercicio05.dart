// exercício 5
// Utilizando o comando for in, percorra todos os contatos e exiba somente o nome de cada pessoa.

// Em cima do mesmo exercício, apresente agora o telefone do Adenilson.

// * Explicação
// - `contatos` é uma lista onde cada item é um `Map<String, String>` representando um contato (com chaves como `nome` e `telefone`).
// - O `for (var contato in contatos)` percorre cada elemento da lista, um de cada vez.
// - Dentro do laço, acessamos apenas a chave `'nome'` para exibir o nome da pessoa.

// - Observe que o contato Kaua possui dois telefones.
// Faça um programa que percorra os contatos e apresente:
// Telefone 1: +55 (11) 78979-4564
// Telefone 2: +55 (11) 74567-1234

// * O que mudou
// - Adicionei o Adenilson na lista `contatos`, com um telefone de exemplo (`11 91234-5678`) — troque pelo número real se o exercício já fornecer um.
// - Mantive o primeiro `for in` que só exibe os nomes (parte original do exercício).
// - Adicionei um segundo `for in` com um `if` dentro para checar o nome e imprimir só o telefone do Adenilson.

// Função principal: é o ponto de entrada, onde a execução do programa começa
void main(){
  //Map

  // Declara a variável `contatos` como um Map (dicionário chave-valor).
  // A chave é o nome da pessoa e o valor é outro Map com os dados dela.
  var contatos = {
    
    // Chave 'Stefany': o valor é um Map com os dados de contato dela
    'Stefany': {
      'telefone': '+55 (11) 78947-4564',   // telefone (String)
      'endereco': 'Aveida ZZZZ, 8000',     // endereço (String)
      'bairro': 'Centro',                  // bairro (String)
      'cidade': 'Santo André'              // cidade (String)
    },
    // Chave 'Adenilson': dados do contato Adenilson
    'Adenilson': {
      'telefone': '+55 (11) 32165-2587',   // telefone (String)
      'endereco': 'Aveida XPTO, 5000',     // endereço (String)
      'bairro': 'Vila Pires',              // bairro (String)
      'cidade': 'Santo André'              // cidade (String)
    },
    // Chave 'Daniel': dados do contato Daniel
    'Daniel': {
      'telefone': '+55 (11) 12311-1478',   // telefone (String)
      'endereco': 'Av. Goias, 1500',       // endereço (String)
      'bairro': 'Santo Antônio',           // bairro (String)
      'cidade': 'São Caetano do Sul'       // cidade (String)
    },
    // Chave 'Iara': dados do contato Iara
    'Iara': {
      'telefone': '+55 (11) 96325-3698',   // telefone (String)
      'endereco': 'Av. dsfsdfs, 1200',     // endereço (String)
      'bairro': 'Jardim Santa Cristina',   // bairro (String)
      'cidade': 'Santo André'              // cidade (String)
    },
    // Chave 'Kaua': ele é diferente, pois possui DOIS telefones
    'Kaua': {
      // Aqui o valor de 'telefone' é uma List (lista) em vez de uma String única
      'telefone': [ 
        '+55 (11) 78979-4564',             // primeiro telefone
        '+55 (11) 74567-1234'              // segundo telefone
        ],
      'endereco': 'Av. dsfsdfs, 654654',   // endereço (String)
      'bairro': 'Eldorado',                // bairro (String)
      'cidade': 'Diadema'                  // cidade (String)
    }
  };  // Fim da declaração do Map `contatos`

  // Linhas comentadas (não são executadas): exemplos de como acessar valores
  //print(contatos);                              // imprimiria o Map inteiro
  //print(contatos['Stefany']?['telefone']);      // telefone da Stefany
  //print(contatos['Kaua']?['cidade']);           // cidade do Kaua
  //print(contatos['Iara']?['endereco']);         // endereço da Iara

  // Percorre apenas as CHAVES do Map (os nomes), uma por vez, guardando em `nome`
  for (var nome in contatos.keys) {
    // Imprime a frase com o nome atual usando interpolação de String ($nome)
    print("O nome do contato é: $nome");
  } // Fim do for dos nomes

  // Acessa o contato 'Adenilson' e imprime o telefone dele.
  // O `?` (null-aware) evita erro caso 'Adenilson' não exista (retornaria null)
  print(contatos['Adenilson']?['telefone']);
  
  // Pega o Map completo do Kaua. O `!` garante ao Dart que o valor não é nulo
  var exemplo = contatos['Kaua']!;
  // Imprime o Map inteiro do Kaua (todos os dados dele)
  print(exemplo);

  // Pega o valor da chave 'telefone' e o converte (cast) para List,
  // pois sabemos que, no caso do Kaua, ele é uma lista de telefones
  var telefones = exemplo['telefone'] as List;

  // Cria um contador que começa em 1, para numerar os telefones na saída
  var indice = 1;
   // Percorre cada telefone da lista, um por vez, guardando em `telefone`
   for (var telefone in telefones){
    // Imprime "Telefone 1: ...", "Telefone 2: ..." usando o contador e o telefone atual
    print('Telefone $indice: $telefone');
    // Soma 1 ao contador para que o próximo telefone receba o número seguinte
    indice++;
   } // Fim do for dos telefones

   // Imprime a cidade do Kaua, acessando a chave 'cidade' dentro de ${...}
   print('Cidade: ${exemplo['cidade']}');
 } // Fim da função main