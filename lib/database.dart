/* Banco de dados

Uma empresa solicitou a você um aplicativo para manutenção de um cadastro de clientes. Após a reunião de definição dos requisitos, as conclusões foram as seguintes:

- Um cliente pode ter um número ilimitado de telefones;
- Cada telefone de cliente tem um tipo, por exemplo: comercial, residencial, celular, etc. O sistema deve permitir cadastrar novos tipos de telefone;
- A princípio, é necessário saber apenas em qual estado brasileiro cada cliente se encontra. O sistema deve permitir cadastrar novos estados;

Você ficou responsável pela parte da estrutura de banco de dados que será usada pelo aplicativo. Assim sendo:

- Proponha um modelo lógico para o banco de dados que vai atender a aplicação. Desenhe as tabelas necessárias, os campos de cada uma e marque com setas os relacionamentos existentes entre as tabelas;
- Aponte os campos que são chave primária (PK) e chave estrangeira (FK);
- Faça uma busca utilizando comando SQL que traga o código, a razão social e o(s) telefone(s) de todos os clientes do estado de São Paulo (código “SP”); */

void run() {
  print("""
    Será utilizado 4 tabelas, sendo elas:
      - Estados 
        (id (PK), nome, sigla)
      - Clientes
        (id (PK), razao_social, estado_id (FK))
      - tipos_telefone
        (id (PK), descricao)
      - telefones
        (id (PK), numero, tipo_id (FK), cliente_id (FK))

    Sendo o relacionamento deles de:
    Clientes e telefones (1/N) - Um cliente pode ter vários telefones.
    tiposTelefone e telefone (1/N) - Um tipo de telefone pode ser associado a vários telefones.
    estados e cliente (1/N) - Um estado pode ter vários clientes.

    Código SQL para a busca que filtra os clientes pelo estado de SP pelo código "SP"
    SELECT 
      c.id AS codigo_cliente, 
      c.razao_social, 
      t.numero
    FROM 
      clientes c
    JOIN 
        estados e ON c.estado_id = e.id
    JOIN 
        telefones t ON c.id = t.cliente_id
    WHERE 
        e.sigla = 'SP';


""");
}
