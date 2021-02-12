CREATE DATABASE agencia_bancaria;

CREATE TABLE agencia(
	nome_agencia varchar(50) NOT NULL,
    cidade_agencia varchar(50) NOT NULL,
    ativos double NOT NULL,
    PRIMARY KEY(nome_agencia)
);

CREATE TABLE cliente(
	nome_cliente varchar(50) NOT NULL,
    endereco_cliente varchar(50) NOT NULL,
    cidade_cliente varchar(50) NOT NULL,
    PRIMARY KEY(nome_cliente)
);

CREATE TABLE emprestimo(
	num_empre int NOT NULL,
    nome_agencia varchar(50) NOT NULL,
    valor double,
    PRIMARY KEY(num_empre),
    FOREIGN KEY(nome_agencia) REFERENCES agencia(nome_agencia)
);

CREATE TABLE tomador(
    nome_cliente varchar(50) NOT NULL,
	num_empre int NOT NULL,
    PRIMARY KEY(nome_cliente, num_empre),
    FOREIGN KEY(nome_cliente) REFERENCES cliente(nome_cliente),
    FOREIGN KEY(num_empre) REFERENCES emprestimo(num_empre)
);

CREATE TABLE conta(
    num_conta int NOT NULL,
    nome_agencia varchar(50) NOT NULL,
	saldo double NOT NULL,
    PRIMARY KEY(num_conta),
    FOREIGN KEY(nome_agencia) REFERENCES agencia(nome_agencia)
);

CREATE TABLE depositante(
    nome_cliente varchar(50) NOT NULL,
	num_conta int NOT NULL,
    PRIMARY KEY(nome_cliente, num_conta),
    FOREIGN KEY(nome_cliente) REFERENCES cliente(nome_cliente),
    FOREIGN KEY(num_conta) REFERENCES conta(num_conta)
);
