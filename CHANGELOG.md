## 0.2.1

- Fix warnings

## 0.2.0

- Geração de login e password aceitando opções
  - ```dart
    GP.login(size: 10, numbers: true) // Return => '3124523452'
    GP.login(size: 10, letters: true) // Return => 'dasfasxzvb'
    GP.login(size: 5) // Return => 'd1sa0'

    GP.password(size: 15, letters: true) // Return => 'absgdfhtyxcbssd'
    GP.password(letters: true) // Return => 'dsghgdf' 
    ```

## 0.1.0

- alterando descrição do projeto
- alterando nome para o padrão americano
- alterando readme

## 0.0.1

- Projeto inicial
  - Adionando gerador de:
    - login
    - senha
    - primeiro nome
    - último nome
    - gênero
    - localização
      - rua
      - cidade
      - bairro
      - estado
      - sigla
      - cep
    - email
    - telefone
    - celular
    - cpf
    - cnpj
    - cnh
    - rg
