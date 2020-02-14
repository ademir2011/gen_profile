import 'package:gen_profile/gen_profile.dart';
import 'package:test/test.dart';

void main() {
  print('''
    Login => ${GP.login()}
    Password => ${GP.password()}
    First Name => ${GP.first_name()}
    Last Name => ${GP.last_name()}
    Gender => ${GP.gender()}
    email => ${GP.email()}
    phone => ${GP.phone()}
    cell => ${GP.cell()}
    cpf => ${GP.cpf()}
  ''');

  test('Testando se os resultados são do tipo esperado', () {
    expect(GP.login().runtimeType, equals(''.runtimeType));
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
