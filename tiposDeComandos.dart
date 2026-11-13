/*
  - List (Listas)
  - Set (Definição)
  - Map (Mapas)
*/

// Função principal: é o ponto de entrada de todo programa Dart
void main() {
  // ---------- List ----------
  // Cria uma lista de Strings; o tipo List<String> é inferido pelo 'var'
  // Listas são ordenadas, permitem elementos repetidos e usam índices começando em 0
  var alunos = ['Israel', 'Kauã', 'Jonathan', 'Wellington'];

  // Imprime a lista inteira: [Israel, Kauã, Jonathan, Wellington]
  print(alunos);

  // Acessa o elemento na posição 2 (terceiro item) usando colchetes: Jonathan
  print(alunos[2]);

  // Acessa o elemento na posição 3 (quarto item) com o método elementAt: Wellington
  print(alunos.elementAt(3));

  // Imprime a quantidade de elementos da lista: 4
  print(alunos.length);

  // Verifica se a variável 'alunos' é do tipo List; retorna true
  print(alunos is List);

  // ---------- Map ----------
  // Cria um mapa (pares chave: valor), onde o nome é a chave e o telefone é o valor
  // As chaves de um Map são únicas
  var telefone = {
    'Stefany': '+55 (11) 78947-4564',   // chave 'Stefany' com seu telefone
    'Adenilson': '+55 (11) 98765-4123', // chave 'Adenilson' com seu telefone
    'Daniel': '+55 (11) 32145-6789',    // chave 'Daniel' com seu telefone
    'Iara': '+55 (11) 96385-2741',      // chave 'Iara' com seu telefone
  };

  // Busca o valor associado à chave 'Iara': +55 (11) 96385-2741
  print(telefone['Iara']);

  // Busca o valor associado à chave 'Adenilson': +55 (11) 98765-4123
  print(telefone['Adenilson']);

  // Imprime a quantidade de pares chave/valor no mapa: 4
  print(telefone.length);

  // Imprime apenas as chaves do mapa: (Stefany, Adenilson, Daniel, Iara)
  print(telefone.keys);

  // Imprime o mapa completo, com todas as chaves e valores
  print(telefone);

  // Verifica se a variável 'telefone' é do tipo Map; retorna true
  print(telefone is Map);

  // ---------- Set ----------
  // Cria um conjunto (Set) de Strings usando chaves {} sem pares chave: valor
  // Sets não permitem elementos repetidos e não são acessados por índice
  var times = {'Chicago Bulls', 'Boston Celtics', 'New York Knicks'};

  // Imprime o primeiro elemento do conjunto: Chicago Bulls
  print(times.first);

  // Imprime o último elemento do conjunto: New York Knicks
  print(times.last);

  // Imprime o conjunto inteiro: {Chicago Bulls, Boston Celtics, New York Knicks}
  print(times);

  // Imprime a quantidade de elementos do conjunto: 3
  print(times.length);
}