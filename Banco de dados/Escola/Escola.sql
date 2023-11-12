CREATE TABLE aluno (
  id SERIAL PRIMARY KEY,
  nome VARCHAR (35) NOT NULL,
  email VARCHAR (35) NOT NULL,
  endereco VARCHAR (40) NOT NULL
)

INSERT INTO aluno (nome, email, endereco) VALUES ('João Carlos', 'Jcarlos@gmail.com', 'Rua 13 de maio');
INSERT INTO aluno (nome, email, endereco) VALUES ('José Vitor', 'Jvitor@gmail.com', 'Rua da Saudade');
INSERT INTO aluno (nome, email, endereco) VALUES ('Paulo André', 'Pandr@gmail.com', 'Rua do Sol');

SELECT * FROM aluno