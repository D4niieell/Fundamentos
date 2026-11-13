void par() {
  print('O número é par!!!');
}

void impar() {
  print('O número é impar!!!');
}

void main() {
  // Passar o número e as duas funções
  verificarNumero(10, par, impar);
}

verificarNumero(int numero,
  Function quandoPar,
    Function quandoImpar,
) {
   if (numero % 2 == 0) {
    // Chama a função recebida para pares
    quandoPar;
   } else {
    // Chama a função recebida para impares
    quandoImpar();
   }
}