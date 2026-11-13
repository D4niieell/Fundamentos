// ============================================================
// BLOCO 1: Primeiro programa em Dart (exemplo de blocos)
// ============================================================

// main(){
// → Declara a função principal. Em Dart, o programa começa por ela.
//   (Aqui o tipo de retorno foi omitido; o ideal é escrever "void main()")
//     print('Olá TIPI 1 - Estou conhecendo o Dart!!!');
//     → print() exibe um texto no console, seguido de quebra de linha.
//     print('New York Knick é campeão da NBA 2026!');
//     → Exibe outra mensagem no console.

//     {
//     → Abre um bloco de código interno (escopo próprio), sem estrutura de controle.
//         print('Michael Jordan é o GOAT do basquete!');
//         → Exibe a mensagem dentro desse bloco.
//     }
//     → Fecha o bloco interno.
// }
// → Fecha a função main.


// ============================================================
// BLOCO 2: Recebendo argumentos na linha de comando
// ============================================================

// void main(List args) {
// → main com o parâmetro "args": uma lista de argumentos passados ao executar o programa.
//   "void" indica que a função não retorna valor.
//     print('Lista de argumentos');
//     → Exibe um título no console.
//     print(args);
//     → Exibe o conteúdo da lista de argumentos (vazia [] se nenhum for passado).
// }
// → Fecha a função main.


// ============================================================
// BLOCO 3: Tipos explícitos (int, String, double)
// ============================================================

// void main(List args) {
// → Início da função principal, recebendo a lista de argumentos.
//     int a = 3;
//     → Declara "a" como número inteiro com valor 3.
//     String b = "O valor da soma é: ";
//     → Declara "b" como texto (String).
//     double c = 3.1415;
//     → Declara "c" como número decimal (double).

//     print(a);
//     → Exibe o valor de "a": 3
//     // print(b);
//     → Linha comentada: se ativada, exibiria o texto de "b".
//     print(c);
//     → Exibe o valor de "c": 3.1415
//     print (a + c);
//     → Soma int + double (resultado é double) e exibe: 6.1415
//     print(b);
//     → Exibe o texto "O valor da soma é: "

//     print (b + (a + c).toString());
//     → Converte a soma em texto com toString() e concatena com "b" usando "+".
//       Resultado: "O valor da soma é: 6.1415"
// }
// → Fecha a função main.


// ============================================================
// BLOCO 4: Inferência de tipos com "var"
// ============================================================

// void main(List args) {
// → Início da função principal.
//     var a = 2;
//     → "var" faz o Dart inferir o tipo: aqui "a" vira int.
//     var b = "O valor da soma é: ";
//     → Tipo inferido: String.
//     var c = 3.1415;
//     → Tipo inferido: double.

//     print(b + (a + c).toString());
//     → Soma "a" e "c", converte para texto e concatena com "b".
//       Resultado: "O valor da soma é: 5.1415"
// }
// → Fecha a função main.


/*
 Resumo dos tipos básicos em Dart:
 - Números (int e double)  → int para inteiros, double para decimais
 - String                  → textos
 - Booleano (bool)         → true ou false (no original está "boot", mas o correto é "bool")
 - dynamic                 → tipo que pode mudar de valor/tipo durante a execução
*/


// ============================================================
// BLOCO 5: Código ativo (único que realmente executa)
// ============================================================

import 'dart:io';
// → Importa a biblioteca de entrada e saída (stdin, stdout), usada para ler dados do teclado.
import 'dart:math';
// → Importa a biblioteca de funções matemáticas (sqrt, pow, pi, etc.).
//   Não está sendo usada neste código, mas está disponível.

void main() {
// → Função principal: ponto de partida da execução do programa.

    int n1 = 3;
    // → Declara "n1" como inteiro com valor 3.
    double n2 = (-5.67).abs();
    // → Declara "n2" como double. O método abs() retorna o valor absoluto de -5.67, ou seja, 5.67.
    String n3 = '12.765';
    // → Declara "n3" como String. Apesar de parecer número, é um texto.
    num n4 = 6;
    // → "num" é o tipo pai de int e double; aceita qualquer um dos dois. Aqui guarda 6.
    //   (n4 não é utilizado no restante do código.)

    print(n1 + n2 + double.parse(n3));
    // → double.parse(n3) converte o texto '12.765' em número decimal.
    //   Soma: 3 + 5.67 + 12.765 = 21.435, e exibe o resultado.

    String s1 = "Boa ";
    // → Declara "s1" com o texto "Boa " (com espaço no final).
    String s2 = "Noite ";
    // → Declara "s2" com o texto "Noite " (com espaço no final).

    print(s1.toLowerCase() + s2.toUpperCase() + '!!!');
    // → toLowerCase() deixa "s1" em minúsculas: "boa "
    //   toUpperCase() deixa "s2" em maiúsculas: "NOITE "
    //   Concatena tudo com '!!!'. Saída: "boa NOITE !!!"

    bool estaFrio = true;
    // → Declara variável booleana "estaFrio" com valor verdadeiro.
    bool estaChovendo = false;
    // → Declara variável booleana "estaChovendo" com valor falso.

    print(estaFrio ^ !estaChovendo);
    // → "!" inverte o valor: !false = true.
    //   "^" é o operador XOR (ou exclusivo): é true apenas se os dois lados forem diferentes.
    //   Aqui: true ^ true = false. Saída: false

    // const PI = 3.141516;
    // → Declara uma constante PI (valor fixo, definido em tempo de compilação).
    // var entradaUsuario = stdin.readLineSync()!;
    // → Lê uma linha digitada no teclado. O "!" garante que o valor não é nulo.
    // // print('Informe o RAIO');
    // → Linha comentada: exibiria a mensagem com quebra de linha.
    // stdout.write('Informe o RAIO');
    // → Exibe a mensagem SEM quebra de linha, pedindo o raio ao usuário.

    // final raio = double.parse(entradaUsuario);
    // → "final" cria uma variável que recebe valor uma única vez (em tempo de execução).
    //   Converte o texto digitado em double.

    // var area = PI * (raio * raio);
    // → Calcula a área do círculo: π × raio².

    // print ("A area do circuito é: " + area.toString());
    // → Exibe a área convertida para texto.
    //   (O correto seria "círculo", não "circuito".)

    // dyanamic x = ("Estou aprendendo DART!!!");
    // → Tentativa de declarar uma variável "dynamic" (que aceita qualquer tipo).
    //   Atenção: está escrito "dyanamic"; o correto é "dynamic".
    // print(x);
    // → Exibiria: Estou aprendendo DART!!!

    // var y = ("123");
    // → "y" tem o tipo inferido como String e o mantém para sempre.
    // print(y);
    // → Exibiria: 123

    // x = false;
    // → Válido, pois "x" é dynamic e pode receber um bool.
    // print(x);
    // → Exibiria: false

    // y = 123;
    // → ERRO: "y" foi inferida como String, então não pode receber um int.
}
// → Fecha a função main e encerra o programa.