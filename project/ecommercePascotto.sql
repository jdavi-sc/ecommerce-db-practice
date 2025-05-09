CREATE DATABASE ecommercePascotto;

USE ecommercePascotto;

CREATE TABLE pedidos (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    dataDopedido VARCHAR(20),
    statusAtualDoPedido VARCHAR(30),
	FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE produtos(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nomeDoProduto VARCHAR(100),
    descricaoDoProduto VARCHAR(300),
    precoDoProduto DECIMAL(10, 2),
    estoqueDisponivel INT,
    dataDoCadastro VARCHAR(10)
);

CREATE TABLE itens_pedidos (
	id_item_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidadeDeItens INT,
    precoUnitario DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT ,
    nome VARCHAR(250) NOT NULL,
    dataDeNascimento VARCHAR(10) NOT NULL,
    email VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    telefone VARCHAR(40) NOT NULL
);

CREATE TABLE funcionarios (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    dataDeNascimento VARCHAR(10) NOT NULL,
    dataAdmissao VARCHAR (10) NOT NULL,
    salario DOUBLE NOT NULL,
    telefoneDoFuncionario VARCHAR(40) NOT NULL,
    emailDoFuncionario VARCHAR(250) NOT NULL,
    senhaDoFuncionario VARCHAR (100) NOT NULL,
    id_cargo INT,
    FOREIGN KEY (id_cargo) REFERENCES cargos(id_cargo)	
);

CREATE TABLE cargos (
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    nomeDoCargo VARCHAR(250)
);

INSERT INTO cargos (nomeDoCargo) VALUES
('Supervisor'),
('Vendedor'),
('Suporte T.I'),
('Estoquista'),
('Financeiro'),
('Marketing'),
('Atendimento');

INSERT INTO clientes (nome, dataDeNascimento, email, cpf, telefone) VALUES 
('Lucas Almeida', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999'),
('Francisca Chagas', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999'),
('Joao Lucas', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999'),
('Wellington barbosa', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999'),
('Yasmim caires', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999'),
('Raphael Soares', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999'),
('Cristiano Ronaldo', '21-10-2005', 'email.exemplo@gmail.com', '000.000.000-00', '11999999999');

INSERT INTO funcionarios (nome, dataDeNascimento, dataAdmissao, salario, telefoneDoFuncionario, emailDoFuncionario, senhaDoFuncionario) VALUES 
('Larissa', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123'),
('Miguel', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123'),
('Gabriel Santos', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123'),
('Joao Santos', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123'),
('Jonas Rodrigues', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123'),
('Gustavo Matos', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123'),
('Cesar Pereira', '21-10-2005', '18-03-2024', 1500.00, '11999999999', 'email.example@gmail.com', 'senha123');

INSERT INTO produtos (nomeDoProduto, descricaoDoProduto, precoDoProduto, estoqueDisponivel, dataDoCadastro) VALUES
('Monitor', 'Monitor de alta qualidade e desempenho', 1200.00, 10, '08-05-2025'),
('Mouse', 'Mouse sem fio', 800.00, 10, '08-05-2025'),
('Cadeira', 'Cadeira de escritorio', 1200.00, 10, '08-05-2025'),
('Notebook', 'Nootebook de alta qualidade e desempenho', 2000.00, 10, '08-05-2025'),
('Mousepad', 'Mousepad de alta qualidade', 1200.00, 10, '08-05-2025'),
('Celular', '256GB e boa camera', 1200.00, 10, '08-05-2025'),
('Playstation 5 pro', 'Alta qualidade e desempenho', 1200.00, 10, '08-05-2025');

INSERT INTO pedidos (dataDoPedido, statusAtualDoPedido) VALUES
('09-05-2025', 'em transito'),
('09-05-2025', 'separacao'),
('09-05-2025', 'cancelado'),
('09-05-2025', 'entregue'),
('09-05-2025', 'entregue'),
('09-05-2025', 'entregue'),
('09-05-2025', 'entregue');

INSERT INTO itens_pedidos (id_produto, quantidadeDeItens, precoUnitario) VALUES
(1, 2, 200.00),
(5, 1, 129.00),
(2, 1, 199.00),
(4, 1, 3000.00),
(3, 2, 800.00),
(6, 1, 500.00),
(7, 1, 200.00);