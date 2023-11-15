---------- CRIAÇÃO DAS TABELAS -----------
CREATE TABLE departamento (
  fk_id_departamento SERIAL PRIMARY KEY,
  nome_departamento VARCHAR (15) NOT NULL,
  salario float not NULL
)

CREATE TABLE funcionario (
  fk_id_funcionario SERIAL PRIMARY KEY,
  nome VARCHAR (38) NOT NULL,
  cargo VARCHAR (15) NOT NULL
)

---------- INSERINDO DADOS -----------
INSERT INTO departamento (nome_departamento, salario)
VALUES
	('Financeiro', 2500.00),
    ('TI', 3600.00),
    ('Marketing', 2500.00),
    ('Administrativo', 2500.00) 

INSERT INTO funcionario (nome, cargo)
VALUES
	('Ana', 'Analista'), 
    ('Antonio', 'Analista'),
    ('Maria', 'Analista'),
    ('Carlos', 'Analista')
    
SELECT * FROM funcionario

SELECT nome_departamento, nome from departamento INNER JOIN funcionario on id_departamento = id_funcionario
SELECT nome_departamento, salario from departamento left JOIN funcionario on id_departamento = id_funcionario
SELECT nome, cargo from departamento right JOIN funcionario on id_departamento = id_funcionario
 
---------- CRIANDO FUNÇÃO E EXECUTANDO TRIGGER -----------
CREATE OR REPLACE FUNCTION cadastro_funcionario_novo()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO funcionario (nome)
    VALUES ('Funcionario novo' || NEW.nome);
    RETURN NEW;
END;

$$ LANGUAGE plpgsql;


CREATE TRIGGER Funcionario_novo
after INSERT ON funcionario
FOR EACH ROW
EXECUTE FUNCTION cadastro_funcionario_novo();

insert into funcionario (nome) values ('Funcionario novo', 'Lucas');

SELECT * FROM funcionario