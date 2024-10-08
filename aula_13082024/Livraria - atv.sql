create database Livraria;
use Livraria;

-- Tabela para armazenar informações sobre clientes

CREATE TABLE Clientes (
    id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela para armazenar informações sobre livros

CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(20),
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    editora VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

-- Tabela para armazenar informações sobre vendedores

CREATE TABLE Vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela para armazenar informações sobre pedidos

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
	id_clientes INT NOT NULL,
    id_vendedor INT NOT NULL,
    status_pedido ENUM('pendente', 'atendido') NOT NULL,
    FOREIGN KEY (id_clientes) REFERENCES Clientes(id_clientes),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor)
);

-- Tabela para armazenar itens de pedidos

CREATE TABLE Itens_Pedido (
    id_item_pedido INT AUTO_INCREMENT PRIMARY KEY,
	id_pedido INT NOT NULL,
    id_livro INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);

-- Tabela para armazenar informações sobre notas fiscais

CREATE TABLE Notas_Fiscais (
    id_nota_fiscal INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    data_emissao DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

-- Tabela para armazenar informações sobre boletos de cobrança

CREATE TABLE Boletos_Cobranca (
    id_boleto INT AUTO_INCREMENT PRIMARY KEY,
    id_nota_fiscal INT NOT NULL,
    data_emissao DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status_pagamento ENUM('pago', 'pendente') NOT NULL,
    FOREIGN KEY (id_nota_fiscal) REFERENCES Notas_Fiscais(id_nota_fiscal)
);

-- Tabela para armazenar informações sobre funcionários da gerência operacional

CREATE TABLE Funcionarios_Gerencia (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

-- Tabela para armazenar registros de relatórios

CREATE TABLE Relatorios (
    id_relatorio INT AUTO_INCREMENT PRIMARY KEY,
    data_relatorio DATE NOT NULL,
    tipo_relatorio ENUM('vendas', 'estoque', 'pedidos') NOT NULL,
    conteudo TEXT
);