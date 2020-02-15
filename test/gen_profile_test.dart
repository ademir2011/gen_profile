import 'package:gen_profile/gen_profile.dart';
import 'package:test/test.dart';

void main() {
  print('${GP.login(numbers: true)}');

  test('Testando possíveis resultados para login', () {
    expect(GP.login(size: 10).length, equals(10));
    expect(GP.login(size: 1).length, equals(1));
    expect(GP.login(size: 100).length, equals(100));

    expect(GP.login(numbers: true).runtimeType, equals(0.runtimeType));

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
    expect(
      GP.login().runtimeType,
      equals(''.runtimeType),
    );
  });

  test('Testando possíveis resultados para password', () {
    expect(GP.password(size: 10).length, equals(10));
    expect(GP.password(size: 1).length, equals(1));
    expect(GP.password(size: 100).length, equals(100));
    expect(
      GP.password(size: 10, numbers: true).runtimeType,
      equals(0.runtimeType),
    );
    expect(
      GP.password(size: 10, letters: true).runtimeType,
      equals(''.runtimeType),
    );
    expect(
      GP.password(size: 10, letters: true, numbers: false).runtimeType,
      equals(''.runtimeType),
    );
    expect(
      GP.password(size: 10, letters: false, numbers: true).runtimeType,
      equals(0.runtimeType),
    );
    expect(
      GP.login().runtimeType,
      equals(''.runtimeType),
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
