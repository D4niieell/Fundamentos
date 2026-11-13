// Exercícios Integração CPF e CNPJ

// Crie um programa em Dart que simule o cadastro de uma pessoa ou empresa.
 
// O programa deverá receber um documento (CPF ou CNPJ) e identificar automaticamente se o cadastro pertence a uma Pessoa Física ou Pessoa Jurídica.
 
// O programa deverá:
 
// Remover pontos, hífens e barras do documento.

// Verificar a quantidade de dígitos.

// Se possuir 11 dígitos, tentar validar como CPF.
// Se possuir 14 dígitos, tentar validar como CNPJ.

// Se o CPF for válido, mostrar:
// Cadastro realizado: Pessoa Física

// Se o CNPJ for válido, mostrar:
// Cadastro realizado: Pessoa Jurídica

// Caso o documento seja inválido, mostrar:
// Documento inválido!

// Caso não possua 11 nem 14 dígitos, mostrar:
// Documento deve ser um CPF ou CNPJ.
 
void main() {
  String documento = '54.526.082/0089-73';

  validarDocumento(documento);
}

void validarDocumento(String documento) {

  // Remove pontos, hífens e barras
  documento = documento
              .replaceAll('.', '')
              .replaceAll('-', '')
              .replaceAll('/', '');

  // Verifica a quantidade de dígitos
  if (documento.length != 11 && documento.length != 14) {
    print('Documento deve ser um CPF ou CNPJ');
    return;
  }

  // Se ti er 11 dígitos, tenta validar como CPF
  if (documento.length == 11) {

    if (validarCPF(documento)) {
      print("Cadastro realizado: Pessoa Física!");
    } else {
      print("CPF inválido!");
    }
  }

  // Se ti er 14 dígitos, tenta validar como CNPJ
  if (documento.length == 14) {
    if (validarCNPJ(documento)) {
      print('Cadastro realizado: Pessoa Jurídica!!!');
    } else {
      print('CNPJ Inválido!!!');
    }
  }
}

bool validarCPF(String cpf) {

      // Verifica se todos os caracteres são números
      for (int i = 0; i < cpf.length; i++) {
        if (int.tryParse(cpf[i]) == null) {
          return false;
        }
      }

      // Rejeição CPFs com todos os dígitos iguais
      bool todosIguais = true;
      for (int i = 1; i < cpf.length; i++) {
        if (cpf[i] != cpf[0]) {
          todosIguais = false;
          break;
        }
      }

      if (todosIguais) {
        return false;
      }

      // Calcula o primeiro digito
      int primeiroDigito = calcularDigito(cpf, 9, 10);

      // Junta os 9 números com o primeiro dígito
      String cpfCalculado = cpf.substring(0,9) + primeiroDigito.toString();

      // Calcula o segundo digito
      int segundoDigito = calcularDigito(cpfCalculado, 10, 11);

      // Monta o CPF completo Calculado
      cpfCalculado += segundoDigito.toString();

      if (cpf == cpfCalculado) {
        print('Calculo OK para o CPF = $cpfCalculado');
      } 

      return true;
    }

   int calcularDigito(String cpf, int quantidade, int m1) {

    int soma = 0;

    for (int i = 0; i < quantidade; i++) {
      int numero = int.parse(cpf[i]);
      int multiplicador =  m1 -i;

      soma += numero * multiplicador;
    }
    int resto = soma % 11;
    int digito = 11 - resto;

    if (digito == 10 || digito == 11) {
      digito = 0;
    }

    return digito;
   } 

   bool validarCNPJ(String cnpj) {

  // Verifica de todos os números são iguais

  if (cnpj == '00000000000000' ||
      cnpj == '11111111111111' ||
      cnpj == '22222222222222' ||
      cnpj == '33333333333333' ||
      cnpj == '44444444444444' ||
      cnpj == '55555555555555' ||
      cnpj == '66666666666666' ||
      cnpj == '77777777777777' ||
      cnpj == '88888888888888' ||
      cnpj == '99999999999999') {
    return false;  
  };

  // Pega os 12 primeiros números do CNPJ
  String base = cnpj.substring(0, 12);

  // Calcula o primeiro dígito
  int primeiro = calculaDigito(base, 12);

  // Juntar o primeiro dígito ao CNPJ Base
  String novoCNPJ = base + primeiro.toString();

  // Calcula o primeiro dígito
  int segundo = calculaDigito(novoCNPJ, 13);

  // Compara os dígitos calculados com os dígitos informados
  if (primeiro == int.parse(cnpj[12]) && segundo == int.parse(cnpj[13])) {
    return true;
  }

  return false;
}

int calculaDigito(String cnpj, int quantidade) {

  // Pesos para calcular o primeiro digito
  var digito1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

  // Pesos para calcular o segundo digito
  var digito2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

  List<int> multi;

  if (quantidade == 12) {
    multi = digito1;
  } else {
    multi = digito2;
  }

  print(multi);

  // Guarda a soma das multiplicações.
  int soma = 0;

  for (int i = 0; i < quantidade; i++) {

    // Pegar o número do CNPJ
    int numero = int.parse(cnpj[i]);

    // Multiplica o número pelo vetor (peso)
    soma = soma + (numero * multi[i]);
  }

  // Calcula o resto da divisão por 11
  int resto = soma % 11;

  // Se o resto for 0 ou 1, o dígito será 0.
  if (resto < 2) {
    return 0;
  }

  return 11 - resto;
}