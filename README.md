# Generate Profile

Biblioteca útil para gerar informações para preenchimento dos campos de formulários. Gere nomes, CPFs, logins, senhas dentre outras informações.

## Installation

Vá no seu arquivo ```pubspec.yaml``` procure por ```dependencies:``` e abaixo coloca o nome do pacote seguido pela versão mais recente.

## Usage

Exemplo de uso:

```dart
import 'package:gen_profile/gen_profile.dart';

main() {
  print('''
    Login => ${GP.login()} //Gerar login aleatório
    Login => ${GP.login(size: 10)} //Gerar login aleatório com tamanho de 10 caracteres
    Login => ${GP.login(numbers: true)} //Gerar login aleatório apenas com números
    Login => ${GP.login(letters: true)} //Gerar login aleatório apenas com letras

    Password => ${GP.password()} //Gerar senha aleatória
    First Name => ${GP.first_name()} //Gerar primeiro nome
    Last Name => ${GP.last_name()} //Gerar segundo nome
    Gender => ${GP.gender()} //Gerar Gênero
    email => ${GP.email()} //Gerar e-mail aleatório
    phone => ${GP.phone()} //Gerar telefone
    cell => ${GP.cell()} //Gerar número de celular
    cpf => ${GP.cpf()} // Gerar CPF aleatório válido
  ''');
}
```

## Licença
---
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).