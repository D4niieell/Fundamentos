// Exercício 1
// Crie um programa em Dart que verifique se um CPF é válido. Crie a função: bool validarCPF(String cpf) A função deverá: 
// - receber o CPF como parâmetro; 
// - remover pontos e hífen, caso existam; 
// - verificar se possui 11 dígitos; 
// - rejeitar CPFs formados por todos os dígitos iguais;
// - calcular o primeiro dígito verificador;
// - calcular o segundo dígito verificador;
// - comparar os dígitos calculados com os dois últimos dígitos do CPF;
// - retornar true para CPF válido e false para CPF inválido. Lógica para o cálculo do CPF Um CPF possui 11 dígitos. Os 9 primeiros formam a base e os 2 últimos
// são dígitos verificadores. 
// Exemplo de CPF para estudo: 529.982.247-25 
// Após remover a pontuação: 52998224725 
// Base: 529982247
// 1º dígito verificador: 2
// 2º dígito verificador: 5 Cálculo do primeiro dígito verificador Utilize apenas os 9 primeiros dígitos. Multiplique cada dígito, da esquerda para a direita, pelos pesos de 10
// até 2:     
//
//     5 × 10 = 50
//     2 ×  9 = 18
//     9 ×  8 = 72
//     9 ×  7 = 63
//     8 ×  6 = 48
//     2 ×  5 = 10
//     2 ×  4 =  8
//     4 ×  3 = 12
//     7 ×  2 = 14
//     ----------------
//     Soma    = 295 Agora:     
//     295 % 11 = 9
//     11 - 9 = 2 O primeiro dígito verificador é 2. 
//   Regra: 
//   - calcule o resto da divisão da soma por 11;
//   - faça 11 - resto;
//   - se o resultado for 10 ou 11, o dígito será 0;
//   - caso contrário, o resultado será o dígito verificador. Cálculo do segundo dígito verificador Agora utilize os 9 dígitos originais MAIS o primeiro dígito calculado: 5299822472 Multiplique pelos pesos de 11 até 2:     
//     
//     5 × 11 = 55
//     2 × 10 = 20
//     9 ×  9 = 81
//     9 ×  8 = 72
//     8 ×  7 = 56
//     2 ×  6 = 12
//     2 ×  5 = 10
//     4 ×  4 = 16
//     7 ×  3 = 21
//     2 ×  2 =  4
//     ----------------
//     Soma    = 347 
//    Agora:     
//     347 % 11 = 6
//     11 - 6 = 5 O segundo dígito verificador é 5. Portanto: 529.982.247-25 possui os dígitos verificadores 2 e 5. Estrutura inicial     
// void main() {       
//  String cpf = "529.982.247-25";       
//    if (validarCPF(cpf)) {
//         print("CPF válido!");
//       } else {
//         print("CPF inválido!");
//       }     }     bool validarCPF(String cpf) {       // Desenvolva aqui a validação do CPF.     } Dicas Para remover a pontuação:     cpf = cpf.replaceAll('.', '').replaceAll('-', ''); Para converter um caractere para inteiro:     int numero = int.parse(cpf[0]); Para obter o tamanho:     cpf.length Desafio Teste o programa com diferentes CPFs e verifique também situações como: 111.111.111-11 Mesmo passando pelo cálculo matemático em implementações incompletas,
// CPFs com todos os dígitos iguais devem ser considerados inválidos.veja menos

// Função principal: ponto de entrada do programa Dart
void main() {
  // Declara uma lista de strings com os CPFs que serão testados
  List<String> testes = [
    "963.258.741-01", // CPF com pontuação (marcado como válido)
    "96325874101",    // mesmo CPF, sem pontuação
    "963.258.741-01"  // CPF repetido (marcado como dígito errado)
    "111.111.111-11", // todos os dígitos iguais -> deve ser inválido
    "123",            // tamanho incorreto -> deve ser inválido
  ]; // Fim da lista

  // Percorre cada CPF da lista, um por vez
  for (String cpf in testes) {
    // Chama validarCPF; se retornar true, entra no if
    if (validarCPF(cpf)) {
      // Imprime o CPF seguido da mensagem de válido
      print("$cpf -> CPF válido!");
    } else {
      // Caso contrário, imprime a mensagem de inválido
      print("$cpf -> CPF inválido");
    }
  }
}

// Recebe o CPF como texto e devolve true (válido) ou false (inválido)
bool validarCPF(String cpf) {
  // 1. Remove pontos e hífen, deixando só os números
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');

  // 2. Se não tiver exatamente 11 caracteres, já é inválido
  if (cpf.length != 11) return false;

  // 3. Separa o CPF em caracteres e verifica se TODOS são iguais ao primeiro
  //    (ex.: 11111111111). Se forem, é inválido
  if (cpf.split('').every((d) => d == cpf[0])) return false;

  // 4. Cálculo do primeiro dígito verificador
  int soma = 0; // Acumulador da soma dos produtos
  // Percorre os 9 primeiros dígitos (posições 0 a 8)
  for (int i = 0; i < 9; i++) {
    // Converte o caractere em número e multiplica pelo peso (10, 9, 8 ... 2)
    soma += int.parse(cpf[i]) * (10 - i);
  }
  int resto = soma % 11;        // Resto da divisão da soma por 11
  int digito1 = 11 - resto;     // Primeiro dígito = 11 menos o resto
  if (digito1 >= 10) digito1 = 0; // Se der 10 ou 11, o dígito vale 0

  // 5. Cálculo do segundo dígito verificador
  soma = 0; // Zera o acumulador para reaproveitá-lo
  // Percorre os 10 primeiros dígitos (9 da base + o 1º verificador)
  for (int i = 0; i < 10; i++) {
    // Multiplica pelos pesos 11, 10, 9 ... 2
    soma += int.parse(cpf[i]) * (11 - i);
  }
  resto = soma % 11;            // Resto da divisão por 11
  int digito2 = 11 - resto;     // Segundo dígito = 11 menos o resto
  if (digito2 >= 10) digito2 = 0; // Se der 10 ou 11, o dígito vale 0

  // 6. Compara os dígitos calculados com os dois últimos do CPF (posições 9 e 10)
  //    Só retorna true se os DOIS forem iguais
  return digito1 == int.parse(cpf[9]) && digito2 == int.parse(cpf[10]);
}

// Função auxiliar que calcula um dígito verificador de forma genérica
// cpf = texto do CPF; quantidade = quantos dígitos usar; m1 = peso inicial
int calcularDigito(String cpf, int quantidade, int m1) {

  int soma = 0; // Acumulador da soma

  // Percorre a quantidade de dígitos informada
  for (int i = 0; i < quantidade; i++) {
    int numero = int.parse(cpf[i]);   // Converte o caractere em número
    int multiplicador = m1 - i;       // Peso decrescente (m1, m1-1, ...)

    soma = soma + (numero * multiplicador); // Soma o produto ao acumulador
  }
  int resto = soma % 11;      // Resto da divisão por 11
  int digito = 11 - resto;    // Dígito = 11 menos o resto

  // Se o resultado for 10 ou 11, o dígito vale 0
  if (digito == 10 || digito == 11) {
    digito = 0;
  }

  return digito; // Devolve o dígito calculado
}