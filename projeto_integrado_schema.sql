CREATE DATABASE projeto_integrado_empresa;
USE projeto_integrado_empresa;

CREATE TABLE bebidas (
	idBebidas INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(45),
    preco VARCHAR(45)
);

CREATE TABLE estoque (
	idEstoque INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    produto VARCHAR(45),
    quantidade INT
);

CREATE TABLE pedidos (
	idPedidos INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Bebidas_id INT NOT NULL,
    Estoque_id INT NOT NULL,
    FOREIGN KEY (Bebidas_id) REFERENCES bebidas(idBebidas),
    FOREIGN KEY (Estoque_id) REFERENCES estoque(idEstoque)
);

CREATE TABLE fornecedor (
	idFornecedor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(45),
    telefone VARCHAR(45),
    email VARCHAR(45),
    Bebidas_id INT NOT NULL,
    FOREIGN KEY (Bebidas_id) REFERENCES bebidas(idBebidas)
);

CREATE TABLE vendedor (
	idVendedor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(45),
    Pedidos_idPedidos INT NOT NULL,
    Pedidos_Bebidas_id INT NOT NULL,
    Pedidos_Estoque_idEstoque INT NOT NULL,
    FOREIGN KEY (Pedidos_idPedidos) REFERENCES pedidos(idPedidos),
    FOREIGN KEY (Pedidos_Bebidas_id) REFERENCES pedidos(Bebidas_id),
    FOREIGN KEY (Pedidos_Estoque_idEstoque) REFERENCES pedidos(Estoque_id)
);

CREATE TABLE cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    telefone VARCHAR(45),
    Vendedor_idVendedor INT NOT NULL,
    Pedidos_idPedidos INT NOT NULL,
    Pedidos_Bebidas_id INT NOT NULL,
    Pedidos_Estoque_idEstoque INT NOT NULL,
    FOREIGN KEY (Vendedor_idVendedor) REFERENCES vendedor(idVendedor),
    FOREIGN KEY (Pedidos_idPedidos) REFERENCES pedidos(idPedidos),
    FOREIGN KEY (Pedidos_Bebidas_id) REFERENCES pedidos(Bebidas_id),
    FOREIGN KEY (Pedidos_Estoque_idEstoque) REFERENCES pedidos(Estoque_id)
);
INSERT INTO bebidas (nome, preco) VALUES ("Brahma", "R$ 4,90");
INSERT INTO bebidas (nome, preco) VALUES ("Skol", "R$ 3,90");
INSERT INTO bebidas (nome, preco) VALUES ("Antartica", "R$ 3,90");
INSERT INTO bebidas (nome, preco) VALUES ("Artesanal", "R$ 5,90");
INSERT INTO bebidas (nome, preco) VALUES ("refrigerante", "R$ 4,00");
INSERT INTO bebidas (nome, preco) VALUES ("água com gás", "R$ 3,00");

SELECT * FROM bebidas;

INSERT INTO estoque (produto, quantidade) VALUES ("Brahma", 15);
INSERT INTO estoque (produto, quantidade) VALUES ("Skol", 20);
INSERT INTO estoque (produto, quantidade) VALUES ("Antartica", 25);
INSERT INTO estoque (produto, quantidade) VALUES ("Artesanal", 10);
INSERT INTO estoque (produto, quantidade) VALUES ("Refrigerante", 30);
INSERT INTO estoque (produto, quantidade) VALUES ("Água com gás", 26);

SELECT * FROM estoque;

INSERT INTO fornecedor (nome, telefone, email, Bebidas_id) VALUES ("Quetzalli", "11 2649-3955", "contato@quetzalli.com.br", 1);
INSERT INTO fornecedor (nome, telefone, email, Bebidas_id) VALUES ("Empório da cerveja", "(11) 4935-2330", "atendimento@emporiodacerveja.com.br", 2);

SELECT * FROM fornecedor;
