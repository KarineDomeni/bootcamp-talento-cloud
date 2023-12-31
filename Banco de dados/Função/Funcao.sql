---------- CRIAÇÃO DAS TABELAS -----------
CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR (15) NOT NULL,
    preco float not NULL
)

CREATE TABLE comprador (
    id_comprador SERIAL PRIMARY KEY,
    nome_comprador VARCHAR (15) NOT NULL
)

CREATE TABLE vendas (
    id_pedido SERIAL PRIMARY KEY,
  	data_venda DATE not NULL,
    nome_comprador VARCHAR (15) NOT NULL,
    nome_produto VARCHAR (15) NOT NULL,
  	quantidade INT NOT NULL
)

---------- INSERINDO VALORES NAS TABELAS -----------
INSERT INTO produtos 
      (nome_produto, preco)
VALUES
      ('caderno', 19.00),
      ('caneta', 1.99),
      ('fichario', 28.90)

INSERT INTO comprador
      (nome_comprador)       
VALUES
      ('Carla de Souza'),
      ('Lucas Felipe'),
      ('Maria Clara'),
      ('Gabriel Alves'),
      ('Helena Silva')
 
INSERT INTO vendas
      (data_venda, nome_comprador, nome_produto, quantidade)         
VALUES
      (DATE '2023-11-02', 'Carla de Souza', 'caderno', 5),
      (DATE '2023-11-08', 'Lucas Felipe', 'caneta', 1),
      (DATE '2023-11-13', 'Maria Clara', 'caneta', 3),
      (DATE '2023-11-14', 'Gabriel Alves', 'fichario', 1),     
      (DATE '2023-11-17', 'Helena Silva', 'caderno', 2)
      
SELECT * from vendas

---------- CRIANDO FUNÇÃO -----------
CREATE OR REPLACE FUNCTION contar_clientes_por_dia()
RETURNS TABLE(data_venda DATE, total_clientes BIGINT) AS $$
BEGIN
    RETURN QUERY
    SELECT v.data_venda, COUNT(DISTINCT v.nome_comprador) AS total_clientes
    FROM vendas v
    GROUP BY v.data_venda
    ORDER BY v.data_venda;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM contar_clientes_por_dia()

