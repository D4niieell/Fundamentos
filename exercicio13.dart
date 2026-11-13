// Exercício - Batalha entre jogadores
// Crie um programa em Dart que simule uma batalha entre dois personagens.
 
// Cada personagem deverá possuir:
 
// Nome
// Pontos de vida
// Força de ataque
 
// O programa deverá possuir três funções que representam diferentes resultados de um ataque:
 
// ataqueForte()
// ataqueNormal()
// ataqueFraco()
 
// Crie também uma função chamada realizarAtaque() que receba:
 
// nome do jogador atacante;
// nome do jogador que está sendo atacado;
// força do ataque;
// uma função para ataque forte;
// uma função para ataque normal;
// uma função para ataque fraco.
 
// A função realizarAtaque() deverá decidir qual função executar de acordo com a força do ataque:
 
// Força maior ou igual a 80 → ataque forte
// Força maior ou igual a 50 → ataque normal
// Força menor que 50 → ataque fraco
// veja menos
// Responder
// tem menu de contexto
// Postar no canal

// Importa a biblioteca de matemática do Dart, necessária para usar a classe Random
import 'dart:math';

// Funções que apresentam os resultados do ataque

// Função chamada quando o ataque é forte; recebe o nome de quem ataca e de quem recebe
void ataqueForte(String atacante, String alvo) {
  // Imprime a mensagem de ataque forte, inserindo os nomes com interpolação ($variável)
  print('$atacante acertou um ataque forte em $alvo!');
}

// Função chamada quando o ataque é normal
void ataqueNormal(String atacante, String alvo) {
  // Imprime a mensagem de ataque normal
  print('$atacante acertou um ataque normal em $alvo!');
}

// Função chamada quando o ataque é fraco
void ataqueFraco(String atacante, String alvo) {
  // Imprime a mensagem de ataque fraco
  print('$atacante fez um ataque fraco em $alvo...');
}

// Decide qual função executar de acordo com a força do ataque
void realizarAtaque(
  String atacante, // Nome de quem está atacando
  String alvo, // Nome de quem está sendo atacado
  int forcaAtaque, // Valor da força do ataque (0 a 100)
  void Function(String, String) forte, // Função recebida por parâmetro para ataque forte
  void Function(String, String) normal, // Função recebida por parâmetro para ataque normal
  void Function(String, String) fraco, // Função recebida por parâmetro para ataque fraco
) {
  // Se a força for 80 ou mais, é um ataque forte
  if (forcaAtaque >= 80) {
    // Executa a função de ataque forte passada como argumento
    forte(atacante, alvo);
  // Senão, se a força for 50 ou mais (entre 50 e 79), é um ataque normal
  } else if (forcaAtaque >= 50) {
    // Executa a função de ataque normal
    normal(atacante, alvo);
  // Caso contrário (menos de 50), é um ataque fraco
  } else {
    // Executa a função de ataque fraco
    fraco(atacante, alvo);
  }
}

// Função principal: ponto de entrada do programa
void main() {
  // Cria um objeto Random para gerar números aleatórios (final = não pode ser reatribuído)
  final random = Random();

  // Personagens
  String nome1 = 'Noah'; // Nome do primeiro lutador
  String nome2 = 'Seth'; // Nome do segundo lutador
  int vida1 = 100; // Pontos de vida iniciais do primeiro lutador
  int vida2 = 100; // Pontos de vida iniciais do segundo lutador

  // Imprime o título da batalha; \n pula uma linha extra no final
  print('=== BATALHA: $nome1 vs $nome2 ===\n');

  // Contador que controla o número da rodada atual
  int rodada = 1;

  // Repete enquanto os dois lutadores ainda tiverem vida (maior que 0)
  while (vida1 > 0 && vida2 > 0) {
    // Mostra o número da rodada
    print('--- Rodada $rodada ---');

    // Jogador 1 ataca!
    // Sorteia a força do ataque; nextInt(101) gera um inteiro de 0 a 100
    int forca1 = random.nextInt(101); // De 0 a 100
    // Mostra a força sorteada
    print('$nome1 atacou com força $forca1');
    // Chama a função que escolhe a mensagem adequada, passando as funções de ataque
    realizarAtaque(nome1, nome2, forca1, ataqueForte, ataqueNormal, ataqueFraco);
    // Diminui a vida do alvo; ~/ é a divisão inteira (força dividida por 4, sem casas decimais)
    vida2 -= forca1 ~/ 4;
    // Impede que a vida fique negativa, ajustando para 0
    if (vida2 < 0) vida2 = 0;
    // Mostra a vida restante do jogador 2
    print('Vida de $nome2: $vida2\n');

    // Se o jogador 2 zerou a vida, encerra o laço imediatamente (ele não contra-ataca)
    if (vida2 == 0) break;

    // Jogador 2 ataca
    // Sorteia a força do ataque do jogador 2 (0 a 100)
    int forca2 = random.nextInt(101);
    // Mostra a força sorteada
    print('$nome2 atacou com força $forca2');
    // Executa o ataque do jogador 2 contra o jogador 1
    realizarAtaque(nome2, nome1, forca2, ataqueForte, ataqueNormal, ataqueFraco);
    // Reduz a vida do jogador 1 (divisão inteira da força por 4)
    vida1 -= forca2 ~/ 4;
    // Garante que a vida do jogador 1 não fique negativa
    if (vida1 < 0) vida1 = 0;
    // Mostra a vida restante do jogador 1
    print('Vida de $nome1: $vida1\n');

    // Avança para a próxima rodada
    rodada++;
  }

  // Fora do laço: a batalha terminou
  print('=== FIM DA BATALHA!!! ===');
  // Operador ternário: se a vida1 for maior que 0, Noah venceu; senão, Seth venceu
  print(vida1 > 0 ? '$nome1 venceu!': '$nome2 venceu!');
}