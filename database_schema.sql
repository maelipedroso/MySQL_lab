-- Criação do banco de dados

CREATE DATABASE mysql_lab;
use mysql_lab;

-- Criação da tabela de clientes

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do cliente',
    email VARCHAR(255) NOT NULL UNIQUE COMMENT 'Email do cliente',
    telefone VARCHAR(20) COMMENT 'Telefone do cliente',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do cliente',
    rua VARCHAR(255) COMMENT 'Rua do cliente',
    numero VARCHAR(10) COMMENT 'Número da residência do cliente',
    bairro VARCHAR(255) COMMENT 'Bairro do cliente',
    cidade VARCHAR(255) COMMENT 'Cidade do cliente',
    estado VARCHAR(2) COMMENT 'Estado do cliente (abrevidado)',
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de cadastro do cliente',
);

-- Criação da tabela de categorias dos produtos

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL UNIQUE COMMENT 'Nome da categoria'
);

-- Criação da tabela de produtos

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do produto',
    descricao TEXT COMMENT 'Descrição do produto',
    preco DECIMAL(10, 2) NOT NULL COMMENT 'Preço do produto',
    estoque INT NOT NULL DEFAULT 0 COMMENT 'Quantidade em estoque',
    id_categoria INT COMMENT 'ID da categoria do produto',

    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Criação da tabela de pedidos

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL COMMENT 'ID do cliente que fez o pedido',
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data do pedido',
    status ENUM('Pendente', 'Confirmado', 'Cancelado') DEFAULT 'Pendente' COMMENT 'Status do pedido',

    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

--Criação da tabela de itens do pedido

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL COMMENT 'ID do pedido',
    id_produto INT NOT NULL COMMENT 'ID do produto',
    quantidade INT NOT NULL DEFAULT 1 COMMENT 'Quantidade do produto no pedido',
    preco_unitario DECIMAL(10, 2) NOT NULL COMMENT 'Preço unitário do produto no momento do pedido',

    CHECK (quantidade > 0),
    CHECK (preco_unitario > 0),

    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);