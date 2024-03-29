void main() {
  //  Variáveis

  print("\n\t--- Variáveis ---\n");
  String name = "Thiago";
  print(name);
  int number = 10;
  print(number);
  bool its_true = true;
  print(its_true);
  List<String> words_list = ["Thiago", "Almeida"];
  print('${words_list[0]} - ${words_list[1]}');

  // Null Safety
  //Variáveis não podem receber valores nulos

  print("\n\t--- Null Safety ---\n");
  //String? nome; // Força a variável a receber um valor nulo
  //nome = 'ABC';
  //print(nome!); // Diz para o programa que sua variável não é nula
  //nome = null; // Variável recebe valor nulo

  late String
      sobrenome; //Após a primeira vez que a variável receber um valor ela nunca mais será nula.
  sobrenome = 'Almeida'; //Sobrenome recebeu uma string
  print(sobrenome);
  //sobrenome = null; //Impossível

  //If e Switch -  Estrutura de controle de fluxo.

  print("\n\t--- IF e SWITCH ---\n");

  bool seguir_em_frente = true;

  if (seguir_em_frente) {
    // Se a condição for verdadeira
    print("if.1 - Andar\n");
    // ignore: dead_code
  } else {
    // Caso contrário
    print("if.2 - Parar\n");
  }

  if (10 > 5) {
    print("if.2 - 10 é maior que 5\n");
  }

  // SWITCH

  int valor = 6;
  switch (valor) {
    // Switch é separado em casos, com base na condição passada
    case 0:
      print("Zero"); // Valor não é igual a 0
      break; // Sempre usar break depois do case
    case 1:
      print("Um"); // Valor não é igual a 1
      break;
    case 2:
      print("Dois"); // Valor igual a 2, print = 2
      break;
    default:
      print(
          "Padrão"); // Para qualquer valor que não atende os case's, vai receber o valor default
  }

  // Estruturas de repetição

  print("\n\t--- Estruturas de Repetição ---\n");

  // For
  // Tem uma condição de parada definida

  print("\n\t--- For ---\n");

  for (int i = 1; i <= 10; i++) {
    print(i * 2); // Vai printar a tabuada do dois até a condição ser satisfeita
  }

  // While
  // Só vai ser parado caso aconteça alguma coisa

  print("\n\t--- While ---\n");

  /*While(true){
    // Looping infinito, roda sem ter fim
  }*/

  int contador = 10;

  while (contador != 1) {
    contador = contador - 1;
    print("Loop -> $contador");
  }

  // Métodos e Classes.

  print("\n\t--- Métodos e Classes ---\n");

  Celular celular_do_thiago = Celular("Gold", 5, 5.7,
      0.277); // "celular_do_thiago" é um objeto que vai ser criado a partir do método construtor da classe Celular.

  Celular celular_do_pedro = Celular("Prata", 6, 6.0,
      0.560); // "celular_do_pedro" é um objeto diferente do "celular_do_thiago"

  print(
      "A cor do objeto celular_do_thiago é ${celular_do_thiago.cor}\n"); // Acessa o atributo cor do objeto celular_do_thiago
  print(
      "O tamanho do celular_do_pedro é ${celular_do_pedro.tamanho} polegadas\n"); // Acessa atributo de outro objeto criado

  print("Celular do Thiago\n${celular_do_thiago.toString()}");

  print("Celular do Pedro\n${celular_do_pedro.toString()}");

  print(
      "Preço do Celular do Thiago\n${celular_do_thiago.valor_do_celular(1000)}\n");

  // Programação Orientada a Objetos

  print("\n\t--- Programação Orientada a Objetos ---\n");

  // Pradigma de programação que procura uma forma de trabalhar com objetos do mundo real

  // Características: Classes, Objetos, Atributos, Escopo de Visibilidade
  // *Escopo de Visibilidade: Encapsulamento, onde a classe terá atributos que o mundo não precisa saber, partes desnecessárias.

  Carro mercedes = Carro("Mercedes");
  Carro ferrari = Carro("Ferrari");

  print("Carros ${ferrari.modelo} e ${mercedes.modelo}\n");
  print("Valor usando get ${ferrari._valor}\n");

  // Interfaces(Abstração), Herança e Polimorfismo

  print("\n\t--- Interfaces(Abstract Class), Herança e Polimorfismo ---\n");

  // Dart não tem interfaces. Tem Abstract Class.
  print("\n\t--- Herança ---\n");

  Thiago thiago = Thiago();
  print(thiago
      .falar()); // Aqui mesmo sem passar nenhum metodo na class, "Thiago" herdou "Falar" da classe "Pai"

  print("\n\t--- Polimorfismo ---\n");

  Pagamento pagamento = Pagar_com_boleto();
  pagamento.pagar();

  pagamento = Pagar_com_pix();
  pagamento.pagar();
}

// Metodos e Classes
// Classes -> Tudo que representa um objeto no mundo real.
// Metodos -> Partes de código que executam uma lógica encapsulada.

class Celular {
  // Atributos
  final String cor;
  final int qtdprocess;
  final double tamanho;
  final double peso;
  // "final" serve para passar a responsabilidade dos atributos passarem valores para o método construtor que vai criar o objeto.

  Celular(this.cor, this.qtdprocess, this.tamanho, this.peso);

  String toString() {
    // Método toString, não recebe parametros e retorna uma string.
    return "Cor: $cor\nQuantidade de processadores: $qtdprocess\nTamanho: $tamanho\nPeso: $peso\n"; //Vai retornar todas as informações do objeto.
  }

  double valor_do_celular(double valor) {
    return valor * qtdprocess;
  }
}

// Programação Orientada a Objetos

class Carro {
  final String modelo;
  String _segredo =
      "Muito caro"; // O under_line transforma em um atributo secreto, é um objeto privado.

  int _valor = 1000; // Atributo privado

  // => Arrow function é usada com o mesmo objetivo das chaves na função, porém é usada quando terá apenas uma linha de código.

  int get valor_do_carro =>
      _valor; // Get transforma o atributo em público porém não aceita alterações pelo usuário.

  void set_value(int valor) =>
      _valor = valor; // Permitir alterações no atributo privado.

  Carro(this.modelo);
}

// Interfaces(Abstração), Polimorfismo e Abstração
// Podemos colocar como se fosse um contrato, se eu criar uma class dizendo que tem que fazer algo para esta classe ser criada, quem assinar o contrato terá que fazer o que foi pedido.

// Abstração ou Classes Abstratas
abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  // A "PessoaET" tem que seguir o contrato da "Pessoa", que no caso é saber se comunicar, para poder implementar "Pessoa"
  String comunicar() {
    return "Ola Mundo"; // Aqui a "PessoaET" está seguindo o contrato passado pela classe abstrata Pessoa, passando assim uma frase.
  }
}

class Pessoa_nao_ET implements Pessoa {
  String comunicar() {
    return "Bom dia";
  }
}

// Herança

// A herança é usada para classes herdarem coisas de outras classes
class Pai {
  String falar() {
    return "Girias"; // Neste caso temos uma class "Pai", e o Pai fala Girias.
  }
}

class Thiago extends Pai {
  // Temos aqui sem passar nenhuma função, nenhum metodo uma class que herdou Girias da class "Pai" por ter usado o Extend.
}

// Polimorfismo

abstract class Pagamento {
  // Temos um contrato de pagamento
  void
      pagar(); // E a condição do contrato é que ele saiba pagar, independente da forma de pagamento.
  // Qualquer pessoa que implementar este código tem que saber pagar
}
// Neste caso queremos que em determinado momento da execução essa classe possa mudar, por isso "Polimórfica"
// Podemos mudar a forma de pagamento sem quebrar o sistema

class Pagar_com_boleto implements Pagamento {
  // Adicionando uma forma de pagamento que respeite o contrato.
  void pagar() {
    print("Pagando com boleto\n");
  }
}

// Pela class ser polimórfica podemos mudar a forma de pagamento desde que a pessoa saiba pagar

class Pagar_com_pix implements Pagamento {
  // Foi criado uma segunda class que atende ao contrato, dessa forma temos uma Abstract class polimórfica, ou seja, pode ser mudada a qualquer momento dentro do código desde que atenda ao contrato.
  void pagar() {
    print(
        "Pagando com pix\n"); // Quando a Classe Pagamento for chamada usando a classe "Pagar_com_pix", irá mudar, ou irá escolher dentre as implementações disponíveis.
  }
}
