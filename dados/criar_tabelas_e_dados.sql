-- Criando tabela de clientes
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome TEXT,
  cidade TEXT
);

-- Criando tabela de produtos
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome TEXT,
  preco DECIMAL(5,2)
);

-- Criando tabela de vendas
CREATE TABLE vendas (
  id INT PRIMARY KEY,
  cliente_id INT,
  produto_id INT,
  data DATE,
  quantidade INT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo clientes
INSERT INTO clientes VALUES
(1, 'João', 'São Paulo'),
(2, 'Maria', 'Itapevi'),
(3, 'Pedro', 'Osasco');

-- Inserindo produtos
INSERT INTO produtos VALUES
(1, 'Brigadeiro', 2.50),
(2, 'Beijinho', 2.00),
(3, 'Bolo de pote', 7.00);

-- Inserindo vendas
INSERT INTO vendas VALUES
(1, 1, 1, '2025-06-01', 3),
(2, 2, 2, '2025-06-02', 5),
(3, 1, 3, '2025-06-05', 2),
(4, 3, 1, '2025-06-06', 1);
