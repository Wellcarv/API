#language:pt

Funcionalidade: Disponibilizar endpoint para consulta e criação de empréstimo
    Como interface
    Gostaria de consultar e criar empréstimos via endpoint
    Para que possa fazer a interface para o usuário


    Esquema do Cenário: Criar empréstimo

        Dado que o cliente possue todos os dados necessários para criação do empréstimo
            |name | Wellington                      |
            |email| wellcarv@gmail.com              |
            |token| b2c6f757eb9d49f4b2dace3aab9b1566|
            E possue um token válido para se comunicar com o serviço
        Quando envio todos os dados para o serviço de criação de empréstimo
        Então o serviço deve criar o empréstimo com sucesso HTTP "<200>"
    
        
    Esquema do Cenário: Consultar empréstimo

        Dado que o client tem um empréstimo criado
            |name | <name>  |
            |email| <email> |
            |token| <token> |
            E possue um token válido para se comunicar com o serviço
        Quando o cliente consultar o serviço de empréstimo informando o ID do empréstimo "<status_code>"
        Então o serviço deve me retornar as informações do empréstimo criado "<messagem>"

        Exemplos:
            |name       |email              |token                            |status_code|messagem           |
            |Wellington |wellcarv@gmail.com |b2c6f757eb9d49f4b2dace3aab9b1566 |  200      |Token valido.      |
            |Wellington |wellcarv@gmail.com |b2c6f757eb9d49f4b2dace3aab9b1500 |  409      |Token is required. |
