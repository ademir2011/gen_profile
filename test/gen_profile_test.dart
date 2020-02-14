import 'package:gen_profile/gen_profile.dart';
import 'package:test/test.dart';

void main() {
  print('''
    Login => ${GP.login()}

    Login (Apenas letras) => ${GP.login(size: 10, letters: true, numbers: false)}
    Login (Apenas números) => ${GP.login(size: 10, letters: false, numbers: true)}

    Login (Letras e números) => ${GP.login(size: 10, letters: true, numbers: true)}

    Password => ${GP.password()}
    First Name => ${GP.first_name()}
    Last Name => ${GP.last_name()}
    Gender => ${GP.gender()}
    email => ${GP.email()}
    phone => ${GP.phone()}
    cell => ${GP.cell()}
    cpf => ${GP.cpf()}
  ''');

  test('Testando possíveis resultados para logins', () {
    expect(GP.login(size: 10).length, equals(10));
    expect(GP.login(size: 1).length, equals(1));
    expect(GP.login(size: 100).length, equals(100));
    expect(
      GP.login(size: 10, numbers: true).runtimeType,
      equals(0.runtimeType),
    );
    expect(
      GP.login(size: 10, letters: true).runtimeType,
      equals(''.runtimeType),
    );
    expect(
      GP.login(size: 10, letters: true, numbers: false).runtimeType,
      equals(''.runtimeType),
    );
    expect(
      GP.login(size: 10, letters: false, numbers: true).runtimeType,
      equals(0.runtimeType),
    );
  });

  test('Testando se os resultados são do tipo esperado', () {
    expect(GP.password().runtimeType, equals(''.runtimeType));
    expect(GP.first_name().runtimeType, equals(''.runtimeType));
    expect(GP.last_name().runtimeType, equals(''.runtimeType));
    expect(GP.gender().runtimeType, equals(''.runtimeType));
    expect(GP.email().runtimeType, equals(''.runtimeType));
    expect(GP.phone().runtimeType, equals(''.runtimeType));
    expect(GP.cell().runtimeType, equals(''.runtimeType));
    expect(GP.cpf().runtimeType, equals(''.runtimeType));
    expect(GP.cnpj().runtimeType, equals(''.runtimeType));
    expect(GP.rg().runtimeType, equals(''.runtimeType));
  });
}
