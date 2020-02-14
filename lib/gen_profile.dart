library generate_profile;

import 'dart:math';

class GP {
  static GP _instance;
  static Random random = Random();
  static const List<String> first_names = [
    'Snyder',
    'Ruiz',
    'Aaden',
    'Waylon',
    'Keira',
    'Mikayla',
    'Cyrus',
    'London',
    'Jamison',
    'Dario',
    'Savanah',
    'Brenda',
    'Lily',
    'Jax',
  ];

  static const List<String> last_names = [
    'Turci',
    'Salt',
    'Carraro',
    'Villarreal',
    'Ascher',
    'Feather',
    'Noel',
    'Antoine',
    'Hartel',
    'Harvie',
    'Hazlitt',
    'Pallini',
    'Schiavinotto',
  ];

  factory GP() {
    _instance ??= GP._instance;
    return _instance;
  }

  GP._internalContructor();

  static String login() =>
      first_name() + (random.nextInt(1000) + 1000).toString();

  static String password() =>
      first_name() + (random.nextInt(1000) + 1000).toString();

  static String first_name() => first_names[random.nextInt(first_names.length)];

  static String last_name() => last_names[random.nextInt(last_names.length)];

  static String gender() =>
      (random.nextInt(2) + 1) % 2 == 0 ? 'Homem' : 'Mulher';

  static Map location() {
    return {
      'rua': 'Travessa Marcelino Garrido',
      'cidade': 'Salvador',
      'bairro': 'Valéria',
      'estado': 'bahia',
      'sigla': 'BA',
      'cep': '41301-745',
    };
  }

  static String email() =>
      '${first_names[random.nextInt(first_names.length)]}@generateprofile.com';

  static String phone() => List(10).map((e) => random.nextInt(10) + 1).join();

  static String cell() {
    var cell = [];
    for (var i = 0; i < 9; i++) cell.add(random.nextInt(10) + 1);
    cell.insert(2, 9);
    return cell.join();
  }

  static int getDigitOne(List<int> cpf) {
    var count = 10;
    return ((cpf.map((v) => v * count--).reduce((c, n) => c + n) * 10) % 11) %
        10;
  }

  static int getDigitTwo(List<int> cpf) {
    var count = 11;
    return ((cpf.map((v) => v * count--).reduce((c, n) => c + n) * 10) % 11) %
        10;
  }

  static String cpf() {
    var cpf = <int>[];
    for (var i = 0; i < 9; i++) cpf.add(random.nextInt(9) + 1);

    var digit_1 = getDigitOne(cpf);
    cpf.add(digit_1);
    var digit_2 = getDigitTwo(cpf);
    cpf.add(digit_2);
    return cpf.join();
  }

  static String cnpj() => '59.022.477/0001-10';

  static String cnh() => '71334321621';

  static String rg() => '00123456';
}
