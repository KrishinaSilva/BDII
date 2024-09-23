-- Tabela e insert para armazenar informações sobre clientes
create database Livraria;
use Livraria;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);
Alter table Clientes add FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido);

INSERT INTO Clientes (nome, endereco, telefone, email)
VALUES
('João da Silva', 'Rua A, 123', '91234-5678', 'joao@gmail.com'),
('Maria Oliveira', 'Avenida B, 456', '92345-6789', 'maria@gmail.com'),
('Carlos Pereira', 'Praça C, 789', '3456-7890', 'carlos@gmail.com'),
('Ana Santos', 'Rua D, 101', '94567-8901', 'ana@hotmail.com'),
('Fernanda Lima', 'Rua E, 202', '95678-9012', 'fernanda@gmail.com'),
('Roberto Souza', 'Rua F, 303', '6789-0123', 'roberto@hotmail.com'),
('Juliana Costa', 'Avenida G, 404', '97890-1234', 'juliana@hotmail.com'),
('Pedro Almeida', 'Praça H, 505', '8901-2345', 'pedro@hotmail.com'),
('Larissa Martins', 'Rua I, 606', '99012-3456', 'larissa@hotmail.com'),
('Tiago Rocha', 'Avenida J, 707', '90123-4567', 'tiago@hotmail.com'),
('Sofia Ferreira', 'Rua K, 808', '91234-5670', 'sofia@gmail.com'),
('André Gomes', 'Avenida L, 909', '2345-6781', 'andre@gmail.com'),
('Mariana Alves', 'Praça M, 1010', '3456-7892', 'mariana@gmail.com'),
('Lucas Martins', 'Rua N, 1111', '94567-8903', 'lucas@gmail.com'),
('Bianca Rocha', 'Avenida O, 1212', '5678-9014', 'bianca@gmail.com'),
('Gabriel Lima', 'Rua P, 1313', '96789-0125', 'gabriel@gmail.com'),
('Clara Dias', 'Praça Q, 1414', '97890-1236', 'clara@hotmail.com'),
('Felipe Cardoso', 'Rua R, 1515', '98901-2347', 'felipe@hotmail.com'),
('Vanessa Ribeiro', 'Avenida S, 91616', '9012-3458', 'vanessa@gmail.com'),
('Thiago Pires', 'Rua T, 1717', '0123-4569', 'thiago@gmail.com');

-- Tabela e insert para armazenar informações sobre livros

CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(20),
    autor VARCHAR(100) NOT NULL,
    editora VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

INSERT INTO Livros (titulo, isbn, autor, editora, preco, quantidade_estoque)
VALUES
('O Senhor dos Anéis: A Sociedade do Anel', '978-85-363-0002-7', 'J.R.R. Tolkien', 'HarperCollins', 49.90, 30),
('1984', '978-85-363-0001-0', 'George Orwell', 'Companhia das Letras', 39.90, 20),
('Dom Casmurro', '978-85-254-0030-0', 'Machado de Assis', 'Nova Fronteira', 29.90, 25),
('A Revolução dos Bichos', '978-85-359-0157-4', 'George Orwell', 'Companhia das Letras', 34.90, 15),
('O Pequeno Príncipe', '978-85-363-0021-6', 'Antoine de Saint-Exupéry', 'Agir', 19.90, 50),
('Moby Dick', '978-85-359-0257-5', 'Herman Melville', 'Companhia das Letras', 44.90, 10),
('O Alquimista', '978-85-7322-120-0', 'Paulo Coelho', 'Rocco', 39.90, 40),
('A Metamorfose', '978-85-356-3994-6', 'Franz Kafka', 'Companhia das Letras', 29.90, 12),
('Cem Anos de Solidão', '978-85-7508-031-4', 'Gabriel García Márquez', 'Record', 54.90, 8),
('O Hobbit', '978-85-363-0019-3', 'J.R.R. Tolkien', 'HarperCollins', 39.90, 20),
('A Arte da Guerra', '978-85-7430-119-6', 'Sun Tzu', 'Editorial Presença', 29.90, 18),
('O Morro dos Ventos Uivantes', '978-85-256-0431-9', 'Emily Brontë', 'Martin Claret', 35.90, 15),
('A Menina que Roubava Livros', '978-85-254-1791-4', 'Markus Zusak', 'Intrínseca', 37.90, 22),
('O Lobo da Estepe', '978-85-356-3136-5', 'Hermann Hesse', 'Companhia das Letras', 41.90, 14),
('A Divina Comédia', '978-85-207-1206-4', 'Dante Alighieri', 'Editora 34', 45.00, 9),
('O Processo', '978-85-356-0260-8', 'Franz Kafka', 'Companhia das Letras', 34.90, 11),
('Ensaio sobre a cegueira', '978-85-7508-490-8', 'José Saramago', 'Caminho', 39.90, 13),
('A História Sem Fim', '978-85-7616-195-5', 'Michael Ende', 'Melhoramentos', 29.90, 16),
('A Estrangeira', '978-85-7930-186-7', 'Claudia Tajes', 'Editora Rocco', 37.90, 21),
('O Homem Invisível', '978-85-367-1030-7', 'H.G. Wells', 'Martins Fontes', 32.90, 17);

-- Tabela e insert para armazenar informações de empréstimos

CREATE TABLE Emprestimos (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_livro INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);

INSERT INTO Emprestimos (id_cliente, id_livro, data_emprestimo, data_devolucao)
VALUES
(1, 11, '2024-01-15', '2024-01-30'),
(2, 2, '2024-01-16', '2024-02-01'),
(3, 20, '2024-01-17', '2024-02-05'),
(1, 17, '2024-01-18', '2024-02-10'),
(4, 5, '2024-01-19', '2024-02-15'),
(5, 6, '2024-01-20', '2024-02-20'),
(6, 1, '2024-01-21', '2024-02-25'),
(2, 8, '2024-01-22', '2024-03-01'),
(8, 3, '2024-01-23', '2024-03-04'),
(10, 3, '2024-01-23', '2024-03-03'),
(13, 3, '2024-01-24', '2024-03-05'),
(3, 19, '2024-01-27', '2024-03-15'),
(2, 3, '2024-01-02', '2024-03-25'),
(5, 3, '2024-01-03', '2024-03-05'),
(9, 3, '2024-01-25', '2024-03-10'),
(12, 3, '2024-01-28', '2024-03-11'),
(13, 3, '2024-01-22', '2024-03-08'),
(16, 3, '2024-01-17', '2024-03-05'),
(4, 10, '2024-01-24', '2024-03-10');

-- Tabela e insert para armazenar informações sobre vendedores

CREATE TABLE Vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

INSERT INTO Vendedores (nome, telefone, email)
VALUES
('Ana Costa', '1234-5678', 'ana.costa@example.com'),
('Bruno Silva', '2345-6789', 'bruno.silva@example.com'),
('Carlos Almeida', '3456-7890', 'carlos.almeida@example.com'),
('Daniela Lima', '4567-8901', 'daniela.lima@example.com'),
('Eduardo Santos', '5678-9012', 'eduardo.santos@example.com'),
('Fernanda Rocha', '6789-0123', 'fernanda.rocha@example.com'),
('Gabriel Ferreira', '7890-1234', 'gabriel.ferreira@example.com'),
('Heloísa Martins', '8901-2345', 'heloisa.martins@example.com'),
('Igor Ribeiro', '9012-3456', 'igor.ribeiro@example.com'),
('Juliana Oliveira', '0123-4567', 'juliana.oliveira@example.com'),
('Kelly Martins', '1234-5679', 'kelly.martins@example.com'),
('Luciana Torres', '2345-6790', 'luciana.torres@example.com'),
('Mateus Gomes', '3456-7901', 'mateus.gomes@example.com'),
('Nathalia Pires', '4567-9012', 'nathalia.pires@example.com'),
('Otávio Mendes', '5678-0123', 'otavio.mendes@example.com'),
('Priscila Barros', '6789-1234', 'priscila.barros@example.com'),
('Renato Costa', '7890-2345', 'renato.costa@example.com'),
('Samara Lopes', '8901-3456', 'samara.lopes@example.com'),
('Tânia Soares', '9012-4567', 'tania.soares@example.com'),
('Victor Almeida', '0123-5678', 'victor.almeida@example.com');


-- Tabela e insert para armazenar informações sobre pedidos

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    status_pedido ENUM('pendente', 'atendido') NOT NULL
);
alter table Pedidos add FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente);
alter table Pedidos add FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor);

INSERT INTO Pedidos (data_pedido, id_cliente, id_vendedor, status_pedido)
VALUES
('2024-01-10', 1, 1, 'pendente'),
('2024-01-11', 2, 2, 'atendido'),
('2024-01-12', 3, 3, 'pendente'),
('2024-01-13', 4, 4, 'atendido'),
('2024-01-14', 5, 5, 'pendente'),
('2024-01-15', 6, 6, 'atendido'),
('2024-01-16', 7, 7, 'pendente'),
('2024-01-17', 8, 8, 'atendido'),
('2024-01-18', 9, 9, 'pendente'),
('2024-02-20', 1, 1, 'atendido'),
('2024-02-21', 2, 2, 'pendente'),
('2024-02-22', 3, 3, 'atendido'),
('2024-02-23', 4, 4, 'pendente'),
('2024-02-24', 5, 5, 'atendido'),
('2024-02-25', 6, 6, 'pendente'),
('2024-02-26', 7, 7, 'atendido'),
('2024-02-27', 8, 8, 'pendente'),
('2024-02-28', 9, 9, 'atendido'),
('2024-02-29', 10, 10, 'pendente'),
('2024-01-19', 10, 10, 'atendido');

-- Tabela e insert para armazenar itens de pedidos

CREATE TABLE Itens_Pedido (
    id_item_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_livro INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);

INSERT INTO Itens_Pedido (id_pedido, id_livro, quantidade, preco_unitario)
VALUES
(1, 1, 2, 49.90),
(1, 2, 1, 39.90),
(2, 3, 3, 29.90),
(2, 4, 1, 34.90),
(3, 5, 2, 19.90),
(3, 6, 1, 44.90),
(4, 7, 5, 39.90),
(4, 8, 3, 29.90),
(5, 9, 4, 54.90),
(6, 11, 2, 59.90),
(6, 12, 1, 49.90),
(7, 13, 3, 39.90),
(7, 14, 1, 34.90),
(8, 15, 2, 29.90),
(8, 16, 1, 54.90),
(9, 17, 5, 49.90),
(9, 18, 3, 39.90),
(10, 19, 4, 59.90),
(10, 20, 2, 44.90),
(5, 10, 2, 39.90);

-- Tabela e insert para armazenar informações sobre notas fiscais

CREATE TABLE Notas_Fiscais (
    id_nota_fiscal INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    data_emissao DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

INSERT INTO Notas_Fiscais (id_pedido, data_emissao, valor_total) VALUES
(1, '2024-01-15', 139.80),
(2, '2024-01-16', 89.70),
(3, '2024-01-17', 69.80),
(4, '2024-01-18', 139.90),
(5, '2024-01-19', 119.80),
(6, '2024-01-20', 44.90),
(7, '2024-01-21', 99.90),
(8, '2024-01-22', 39.90),
(9, '2024-01-23', 54.90),
(6, '2024-02-21', 109.80),
(7, '2024-02-22', 79.70),
(8, '2024-02-23', 69.80),
(9, '2024-02-24', 139.90),
(10, '2024-02-25', 119.80),
(1, '2024-02-26', 44.90),
(2, '2024-02-27', 99.90),
(3, '2024-02-28', 39.90),
(4, '2024-02-29', 54.90),
(5, '2024-03-01', 49.90),
(10, '2024-01-24', 49.90);

-- Tabela e insert para armazenar informações sobre boletos de cobrança

CREATE TABLE Boletos_Cobranca (
    id_boleto INT AUTO_INCREMENT PRIMARY KEY,
    id_nota_fiscal INT NOT NULL,
    data_emissao DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status_pagamento ENUM('pago', 'pendente') NOT NULL,
    FOREIGN KEY (id_nota_fiscal) REFERENCES Notas_Fiscais(id_nota_fiscal)
);

INSERT INTO Boletos_Cobranca (id_nota_fiscal, data_emissao, valor, status_pagamento)
VALUES
(1, '2024-01-15', 139.80, 'pendente'),
(2, '2024-01-16', 89.70, 'pago'),
(3, '2024-01-17', 69.80, 'pendente'),
(4, '2024-01-18', 139.90, 'pago'),
(5, '2024-01-19', 119.80, 'pendente'),
(6, '2024-01-20', 44.90, 'pago'),
(7, '2024-01-21', 99.90, 'pendente'),
(8, '2024-01-22', 39.90, 'pago'),
(9, '2024-01-23', 54.90, 'pendente'),
(6, '2024-02-21', 109.80, 'pendente'),
(7, '2024-02-22', 79.70, 'pago'),
(8, '2024-02-23', 69.80, 'pendente'),
(9, '2024-02-24', 139.90, 'pago'),
(10, '2024-02-25', 119.80, 'pendente'),
(1, '2024-02-26', 44.90, 'pago'),
(2, '2024-02-27', 99.90, 'pendente'),
(3, '2024-02-28', 39.90, 'pago'),
(4, '2024-02-29', 54.90, 'pendente'),
(5, '2024-03-01', 49.90, 'pago'),
(10, '2024-01-24', 49.90, 'pago');

-- Tabela e insert para armazenar informações sobre funcionários da gerência operacional

CREATE TABLE Funcionarios_Gerencia (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

INSERT INTO Funcionarios_Gerencia (nome, cargo, email)
VALUES
('Roberto Ferreira', 'Gerente de Vendas', 'roberto.ferreira@example.com'),
('Clara Almeida', 'Gerente Financeiro', 'clara.almeida@example.com'),
('Fernando Lopes', 'Gerente de Estoque', 'fernando.lopes@example.com'),
('Sofia Santos', 'Gerente de Marketing', 'sofia.santos@example.com'),
('Rafael Costa', 'Gerente de TI', 'rafael.costa@example.com'),
('Gustavo Lima', 'Gerente de Recursos Humanos', 'gustavo.lima@example.com'),
('Juliana Nascimento', 'Gerente de Atendimento', 'juliana.nascimento@example.com'),
('Lucas Martins', 'Gerente de Projetos', 'lucas.martins@example.com'),
('Mariana Rocha', 'Gerente de Qualidade', 'mariana.rocha@example.com'),
('Patrícia Nunes', 'Analista de Vendas', 'patricia.nunes@example.com'),
('Rogério Dias', 'Analista Financeiro', 'rogerio.dias@example.com'),
('Silvia Torres', 'Analista de Estoque', 'silvia.torres@example.com'),
('Thiago Santos', 'Analista de Marketing', 'thiago.santos@example.com'),
('Ursula Lima', 'Analista de TI', 'ursula.lima@example.com'),
('Victor Hugo', 'Analista de Recursos Humanos', 'victor.hugo@example.com'),
('Wellington Martins', 'Analista de Atendimento', 'wellington.martins@example.com'),
('Xuxa Ribeiro', 'Analista de Projetos', 'xuxa.ribeiro@example.com'),
('Yara Silva', 'Analista de Qualidade', 'yara.silva@example.com'),
('Zé Carlos', 'Analista de Compras', 'ze.carlos@example.com'),
('Tiago Almeida', 'Gerente de Compras', 'tiago.almeida@example.com');

-- Tabela e insert para armazenar registros de relatórios

CREATE TABLE Relatorios (
    id_relatorio INT AUTO_INCREMENT PRIMARY KEY,
    data_relatorio DATE NOT NULL,
    tipo_relatorio ENUM('vendas', 'estoque', 'pedidos') NOT NULL,
    conteudo TEXT
);

INSERT INTO Relatorios (data_relatorio, tipo_relatorio, conteudo)
VALUES
('2024-01-31', 'vendas', 'Relatório mensal de vendas.'),
('2024-02-28', 'estoque', 'Relatório mensal de estoque.'),
('2024-03-31', 'pedidos', 'Relatório de pedidos do primeiro trimestre.'),
('2024-04-30', 'vendas', 'Relatório mensal de vendas.'),
('2024-05-31', 'estoque', 'Relatório mensal de estoque.'),
('2024-06-30', 'pedidos', 'Relatório de pedidos do segundo trimestre.'),
('2024-07-31', 'vendas', 'Relatório mensal de vendas.'),
('2024-08-31', 'estoque', 'Relatório mensal de estoque.'),
('2024-09-30', 'pedidos', 'Relatório de pedidos do terceiro trimestre.'),
('2024-02-29', 'vendas', 'Relatório de vendas do mês de fevereiro.'),
('2024-03-31', 'estoque', 'Relatório de estoque do mês de março.'),
('2024-04-30', 'pedidos', 'Relatório de pedidos do mês de abril.'),
('2024-05-31', 'vendas', 'Relatório de vendas do mês de maio.'),
('2024-06-30', 'estoque', 'Relatório de estoque do mês de junho.'),
('2024-07-31', 'pedidos', 'Relatório de pedidos do mês de julho.'),
('2024-08-31', 'vendas', 'Relatório de vendas do mês de agosto.'),
('2024-09-30', 'estoque', 'Relatório de estoque do mês de setembro.'),
('2024-10-31', 'pedidos', 'Relatório de pedidos do mês de outubro.'),
('2024-11-30', 'vendas', 'Relatório de vendas do mês de novembro.'),
('2024-10-31', 'vendas', 'Relatório mensal de vendas.');

-- Select tabela Clientes
select * from Clientes;
select * from Clientes where id_cliente >4 and id_cliente <10;

-- Select tabela Livros
select * from Livros;
select * from Livros order by preco asc;
select * from Livros where not autor = 'George Orwell';
select * from Livros where id_livro not in (select id_livro from Itens_Pedido);

-- Select tabela Pedidos
select * from Pedidos;
select count(*) as total_pedidos from Pedidos;

-- Select de livros emprestados
select 
    c.nome as cliente,
    l.titulo as livro,
    e.data_emprestimo,
    e.data_devolucao
from
    Emprestimos e
join 
    Clientes c ON e.id_cliente = c.id_cliente
join 
    Livros l ON e.id_livro = l.id_livro
where 
    c.id_cliente = 1;

-- Select Vendedores
select * from Vendedores;
select distinct nome from Vendedores;

-- Outros selects
select * from Itens_pedido limit 5;
select * from Notas_Fiscais;
select * from Boletos_Cobranca;
select * from Funcionarios_Gerencia;
select * from Relatorios;