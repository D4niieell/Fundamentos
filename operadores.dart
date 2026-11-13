// Função principal: ponto de entrada de todo programa Dart
void main() {
  // Operadores Aritméticos (binário/infix)
  // Comentário de seção: operadores binários ficam entre dois operandos

  int a = 7; // Declara a variável inteira 'a' e atribui o valor 7
  int b = 3; // Declara a variável inteira 'b' e atribui o valor 3
  int resultado = a + b; // Soma 'a' e 'b' (7 + 3) e guarda o resultado (10) na variável 'resultado'

  print(resultado); // Imprime no console: 10

  // a += 5;   // Atalho para a = a + 5 (soma 5 a 'a' e atribui o resultado a 'a')
  // a = a + 5; // Forma completa equivalente ao a += 5
  // a -= 5;   // Atalho para a = a - 5 (subtrai 5 de 'a')
  // a *= 5;   // Atalho para a = a * 5 (multiplica 'a' por 5)
  a %= 5; // Atalho para a = a % 5: calcula o resto da divisão de 'a' por 5 (7 % 5 = 2) e atribui a 'a'
  print(a); // Imprime no console: 2

  // Operadores Relacionais
  // Comparam dois valores e sempre retornam um booleano (true ou false)
  print(3 > 2); // Maior que: 3 é maior que 2? -> true
  print(3 >= 2); // Maior ou igual: 3 é maior ou igual a 2? -> true
  print(3 <= 2); // Menor ou igual: 3 é menor ou igual a 2? -> false
  print(3 < 2); // Menor que: 3 é menor que 2? -> false
  print(3 != 2); // Diferente: 3 é diferente de 2? -> true
  print(3 == 2); // Igual: 3 é igual a 2? -> false
  print(3 == 3); // Igual: 3 é igual a 3? -> true
  print(3 == '3'); // Compara um int com uma String: tipos diferentes, então -> false

  // Tabela de conversão Decimal (D) para Binário (B)
  // D - B
  // 1 = 1       // O número 1 em binário é 1
  // 2 = 2       // Observação: em binário, 2 seria na verdade 10 (o comentário original está incorreto)
  // 3 = 11      // O número 3 em binário é 11
  // 4 = 100     // O número 4 em binário é 100
  // 5 = 101     // O número 5 em binário é 101
  // 6 = 110     // O número 6 em binário é 110
  // 7 = 111     // O número 7 em binário é 111
  // 8 = 1000    // O número 8 em binário é 1000

  // Operadores Unários
  // Atuam sobre um único operando
  var c = 10; // Declara 'c' com tipo inferido (int) e valor 10
  var d = 10; // Declara 'd' com tipo inferido (int) e valor 10
  c++; // Pós-fixo: incrementa 'c' em 1 (c passa a ser 11)
  ++c; // Pré-fixo: incrementa 'c' em 1 (c passa a ser 12)

  print(c++ == --d);
  // Avalia da esquerda para a direita:
  // 1) c++ (pós-fixo) retorna o valor atual (12) e DEPOIS incrementa c para 13
  // 2) --d (pré-fixo) decrementa d ANTES (d passa a ser 9) e retorna 9
  // 3) Compara 12 == 9 -> false
  // Imprime no console: false

  print(c == d); // Compara c (13) com d (9) -> false

  print(!true); // Operador de negação lógica: inverte true para false -> false
}