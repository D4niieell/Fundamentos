class Carro {
  String cor = '';
  String modelo = '';
  String marca = '';
  String Ano =  '';
  String nome = '';

  void acelerar() {
    print('O carro acelerou!!!');
  }

  void frear() {
    print('O carro acelerou e parou quando foi freando!!!');
  }

  // Método para exibir os dados do carro
  void exibirDados() {
    print("Modelo: $modelo");
    print("Ano: $Ano");
    print("Cor: $cor");
    print("Marca: $marca");
    print("Nome: $nome");
  }

}

void main() {
  Carro car1 = Carro();
  Carro car2 = Carro();

  car1.cor = 'Vermelho';
  car1.modelo = 'hatch';
  car1.marca = 'Ferrari';
  car1.Ano = '1965';
  car1.nome = 'F65';

  car2.cor = 'Prata';
  car2.modelo = 'Sedan';
  car2.marca = 'Honda';
  car2.Ano = '2026';
  car2.nome = 'Civic';

  car1.exibirDados();
   print('');
  
  car2.exibirDados();

  print(car1.modelo);

  car1.acelerar();
  car1.frear();
}