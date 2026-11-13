// Função principal: é o ponto de entrada de todo programa Dart
void main() {
  // Comentário de seção indicando que o código a seguir trabalha com Map
  // Map

  // --- Exemplo antigo (comentado): Map simples de chave -> valor ---

  // Declara a variável 'telefone' como um Map (dicionário) onde a chave é o nome
  // e o valor é o número de telefone
  //   var telefone = {
  //     'Stefany': '+55 (11) 78947-4564',   // chave 'Stefany' com seu telefone
  //     'Adenilson': '+55 (11) 78947-4564',  // chave 'Adenilson' com seu telefone
  //     'Daniel': '+55 (11) 12311-4564',     // chave 'Daniel' com seu telefone
  //     'Iara': '+55 (11) 78979-4564',       // chave 'Iara' com seu telefone
  //   };                                      // fecha o Map

  // Imprime o telefone associado à chave 'Adenilson'
  // print(telefone['Adenilson']);

  // --- Exemplo atual: Map aninhado (Map dentro de Map) ---

  // Declara 'contatos': um Map onde cada chave é um nome e cada valor é
  // outro Map com os dados detalhados daquela pessoa
  var contatos = {
    // Chave principal 'Stefany', cujo valor é um Map com os dados dela
    'Stefany': {
      'telefone': '+55 (11) 78947-4564', // Telefone da Stefany
      'endereco': 'Avenida São Pedro, 6000', // Endereço da Stefany
      'bairro': 'Centro', // Bairro da Stefany
      'ciadade': 'Santo André' // Cidade (atenção: a chave está escrita 'ciadade')
    }, // Fecha o Map da Stefany

    // Chave principal 'Adenilson', com seus dados
    'Adenilson': {
      'telefone': '+55 (11) 96325-8741', // Telefone do Adenilson
      'endereco': 'Avenida Dom Pedro I, 3000', // Endereço do Adenilson
      'bairro': 'Zona sul', // Bairro do Adenilson
      'ciadade': 'São Caetano' // Cidade do Adenilson
    }, // Fecha o Map do Adenilson

    // Chave principal 'Iara', com seus dados
    'Iara': {
      'telefone': '+55 (11) 58741-2369', // Telefone da Iara
      'endereco': 'Avenida Dom Pedro II, 7000', // Endereço da Iara
      'bairro': 'Zona leste', // Bairro da Iara
      'ciadade': 'São Bernardo' // Cidade da Iara
    }, // Fecha o Map da Iara

    // Chave principal 'Kaua', com seus dados
    'Kaua': {
      'telefone': '+55 (11) 15975-3579', // Telefone do Kaua
      'endereco': 'Avenida São Miguel Arcanjo, 4500', // Endereço do Kaua
      'bairro': 'Zona norte', // Bairro do Kaua
      'ciadade': 'São Bernardo' // Cidade do Kaua
    } // Fecha o Map do Kaua
  }; // Fecha o Map principal 'contatos'

  // --- Exemplos de acesso (comentados) ---

  // Imprime o Map completo, com todos os contatos
  // print(contatos);

  // Acessa o contato 'Stefany' e depois o campo 'telefone'.
  // O operador ?[] evita erro caso o contato não exista (retorna null)
  // print(contatos['Stefany']?['telefone']);

  // Tenta acessar a 'cidade' do Kaua. Retornaria null, pois a chave
  // no Map foi escrita 'ciadade' (com erro de digitação)
  // print(contatos['Kaua']?['cidade']);

  // Acessa o campo 'endereco' do contato 'Iara'
  // print(contatos['Iara']?['endereco']);

  // Percorre todas as chaves do Map 'contatos' (os nomes),
  // guardando cada uma na variável 'nome' a cada repetição
  for (var nome in contatos.keys) {
    // Imprime a frase com o nome atual; $nome insere o valor da variável no texto
    print("O nome do contato é: $nome");
  } // Fecha o laço for
} // Fecha a função main