// Exercício CNPJ
// COMO CALCULAR E VALIDAR UM CNPJ
 
// 1. ESTRUTURA DO CNPJ
// ================================
// CNPJ: 04.252.011/0001-10 Sem formatação: 04252011000110 Podemos separar: 042520110001 1 0
// ------------ - -
//    12 dígitos  | |
//                | +-- 2º dígito verificador
//                +---- 1º dígito verificador  
 
// 2. CÁLCULO DO PRIMEIRO DÍGITO VERIFICADOR
// ========================================= 
// Para calcular o primeiro dígito, utilizamos somente os 12 primeiros
// números do CNPJ. CNPJ base: 0 4 2 5 2 0 1 1 0 0 0 1 Os pesos utilizados são: 5 4 3 2 9 8 7 6 5 4 3 2  
// Agora multiplicamos cada número pelo respectivo peso:
// 0 x 5 =  0
// 4 x 4 = 16
// 2 x 3 =  6
// 5 x 2 = 10
// 2 x 9 = 18
// 0 x 8 =  0
// 1 x 7 =  7
// 1 x 6 =  6
// 0 x 5 =  0
// 0 x 4 =  0
// 0 x 3 =  0
// 1 x 2 =  2  
// Somamos os resultados: 0 + 16 + 6 + 10 + 18 + 0 + 7 + 6 + 0 + 0 + 0 + 2
// Resultado: 65  
// Agora calculamos o resto da divisão por 11: 65 % 11 = 10  A regra para obter o dígito verificador é:
// Se o resto for 0 ou 1:    
// dígito = 0 Caso contrário:    
// dígito = 11 - resto  Neste caso: resto = 10 Então: 11 - 10 = 1  
// Portanto: PRIMEIRO DÍGITO VERIFICADOR = 1  O CNPJ passa a ser: 0425201100011  
 
// 3. CÁLCULO DO SEGUNDO DÍGITO VERIFICADOR
// ========================================
// Para calcular o segundo dígito, utilizamos os 12 números originais mais o primeiro dígito verificador que acabamos de calcular.
// Temos: 0 4 2 5 2 0 1 1 0 0 0 1 1
// Agora utilizamos os seguintes pesos: 6 5 4 3 2 9 8 7 6 5 4 3 2  
// Fazemos as multiplicações:
// 0 x 6 =  0
// 4 x 5 = 20
// 2 x 4 =  8
// 5 x 3 = 15
// 2 x 2 =  4
// 0 x 9 =  0
// 1 x 8 =  8
// 1 x 7 =  7
// 0 x 6 =  0
// 0 x 5 =  0
// 0 x 4 =  0
// 1 x 3 =  3
// 1 x 2 =  2  
// Somamos: 0 + 20 + 8 + 15 + 4 + 0 + 8 + 7 + 0 + 0 + 0 + 3 + 2
// Resultado: 67  Calculamos o resto da divisão por 11: 67 % 11 = 1  
// Como o resto é menor que 2: dígito = 0  
// Portanto: SEGUNDO DÍGITO VERIFICADOR = 0  
 
// 4. CNPJ COMPLETO
// ================
// Agora temos: 12 primeiros dígitos: 042520110001 Primeiro dígito: 1 Segundo dígito: 0  
// Resultado: 04252011000110  Formatando: 04.252.011/0001-10  
// Portanto, o CNPJ: 04.252.011/0001-10 possui os dígitos verificadores: 1 e 0 5. REJEITAR CNPJ COM TODOS OS NÚMEROS IGUAIS
// =============================================
// Além do cálculo dos dígitos verificadores, é importante rejeitar
// CNPJs formados pelo mesmo número repetido. Exemplos que devem ser considerados inválidos: 00000000000000
// 11111111111111
// 22222222222222
// 33333333333333
// 44444444444444
// 55555555555555
// 66666666666666
// 77777777777777
// 88888888888888
// 99999999999999
 
// Cálculo e validação de CNPJ

// Pesos usados no cálculo do 1º dígito verificador (aplicados aos 12 primeiros dígitos)
const pesos1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

// Pesos usados no cálculo do 2º dígito verificador (aplicados aos 12 primeiros dígitos + o 1º dígito verificador)
const pesos2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

// Remove tudo que não for número (pontos, barra, traço, espaços etc.)
String limparCNPJ(String cnpj) {
  // \D é uma expressão regular que representa "qualquer caractere que NÃO é dígito"
  // replaceAll troca todos eles por string vazia, deixando só os números
  return cnpj.replaceAll(RegExp(r'\D'), '');
}

// Verifica se todos os dígitos do CNPJ são iguais (ex.: 11111111111111)
// Esses casos passam no cálculo matemático, mas não são CNPJs válidos
bool todosIguais(String cnpj) {
  // ^      -> início da string
  // (\d)   -> captura o primeiro dígito
  // \1*    -> repete o mesmo dígito capturado, zero ou mais vezes
  // $      -> fim da string
  // Ou seja: a string inteira é composta apenas pelo primeiro dígito repetido
  return RegExp(r'^(\d)\1*$').hasMatch(cnpj);
}

// Calcula um dígito verificador a partir de uma lista de números e seus pesos
int calcularDigito(List<int> numeros, List<int> pesos) {
  // Acumulador da soma dos produtos (número × peso)
  int soma = 0;

  // Percorre cada posição da lista de números
  for (int i = 0; i < numeros.length; i++) {
    // Multiplica o número da posição i pelo peso da mesma posição e acumula na soma
    soma += numeros[i] * pesos[i];
  }

  // Calcula o resto da divisão da soma por 11
  int resto = soma % 11;

  // Regra do dígito verificador:
  // se o resto for menor que 2, o dígito é 0; caso contrário, é 11 - resto
  return resto < 2 ? 0 : 11 - resto;
}

// Valida um CNPJ (com ou sem formatação). Retorna true se for válido
bool validarCNPJ(String entrada) {
  // Remove a formatação, ficando só com os dígitos
  final cnpj = limparCNPJ(entrada);

  // Um CNPJ deve ter exatamente 14 dígitos e não pode ter todos os dígitos iguais
  if (cnpj.length != 14 || todosIguais(cnpj)) {
    // Se falhar em qualquer uma das condições, já é inválido
    return false;
  }

  // Transforma a string em lista de inteiros:
  // split('') separa cada caractere, map(int.parse) converte cada um em int,
  // toList() cria a lista final
  final numeros = cnpj.split('').map(int.parse).toList();

  // Pega apenas os 12 primeiros dígitos (a base do CNPJ, sem os dígitos verificadores)
  final primeiros12 = numeros.sublist(0, 12);

  // Calcula o 1º dígito verificador usando os 12 primeiros dígitos e os pesos1
  final d1 = calcularDigito(primeiros12, pesos1);

  // Adiciona o 1º dígito calculado à lista, que agora passa a ter 13 elementos
  primeiros12.add(d1);

  // Calcula o 2º dígito verificador usando os 13 dígitos e os pesos2
  final d2 = calcularDigito(primeiros12, pesos2);

  // Compara os dígitos calculados (d1 e d2) com os dígitos informados no CNPJ
  // (posições 12 e 13 da lista). Se ambos baterem, o CNPJ é válido
  return numeros[12] == d1 && numeros[13] == d2;
}

// Formata um CNPJ no padrão XX.XXX.XXX/XXXX-XX
String formatarCNPJ(String entrada) {
  // Remove qualquer formatação existente
  final cnpj = limparCNPJ(entrada);

  // Se não tiver 14 dígitos, não dá para formatar: devolve a entrada original
  if (cnpj.length != 14) {
    return entrada;
  }

  // Monta o CNPJ formatado concatenando as partes (as strings adjacentes são unidas)
  return '${cnpj.substring(0, 2)}.'    // 2 primeiros dígitos + ponto
      '${cnpj.substring(2, 5)}.'       // dígitos 3 a 5 + ponto
      '${cnpj.substring(5, 8)}/'       // dígitos 6 a 8 + barra
      '${cnpj.substring(8, 12)}-'      // dígitos 9 a 12 (filial) + traço
      '${cnpj.substring(12, 14)}';     // 2 últimos dígitos (verificadores)
}

// Função principal: ponto de entrada do programa
void main() {
  // Lista de CNPJs para testar a validação, com diferentes situações
  final testes = [
    '04.252.011/0001-10',  // CNPJ formatado
    '04252011000110',      // mesmo CNPJ, sem formatação
    '32.145.698/7740-10',  // CNPJ com dígitos verificadores incorretos
    '00.000.000/0000-00',  // todos os dígitos iguais (inválido)
    '123',                 // tamanho incorreto (inválido)
  ];

  // Percorre cada CNPJ da lista de testes
  for (final cnpj in testes) {
    // Chama a validação e guarda o resultado (true ou false)
    final valido = validarCNPJ(cnpj);

    // Se o CNPJ for válido...
    if (valido) {
      // ...imprime o CNPJ seguido de "VÁLIDO"
      print('$cnpj -> VÁLIDO');
    } else {
      // Caso contrário, imprime o CNPJ seguido de "INVÁLIDO"
      print('$cnpj -> INVÁLIDO');
    }
  }
}