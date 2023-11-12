---------- CRIAÇÃO DAS TABELAS -----------
CREATE TABLE departamento (
  id_departamento SERIAL PRIMARY KEY,
  nome_departamento VARCHAR (15) NOT NULL,
  salario float not NULL
)

CREATE TABLE funcionario (
  id_funcionario SERIAL PRIMARY KEY,
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
---------- CRIAÇÃO DAS TABELAS -----------
CREATE TABLE departamento (
  id_departamento SERIAL PRIMARY KEY,
  nome_departamento VARCHAR (15) NOT NULL,
  salario float not NULL
 )

CREATE TABLE funcionario (
  id_funcionario SERIAL PRIMARY KEY,
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
    
SELECT * FROM departamento

SELECT nome_departamento, nome from departamento INNER JOIN funcionario on id_departamento = id_funcionario
SELECT nome_departamento, salario from departamento left JOIN funcionario on id_departamento = id_funcionario
SELECT nome, cargo from departamento right JOIN funcionario on id_departamento = id_funcionario
SELECT cargo, salario from departamento LEFT join funcionario on id_departamento = id_funcionario 
UNION
SELECT cargo, salario from departamento right JOIN funcionario on id_departamento = id_funcionario