CREATE TABLE agencia(
	nome_agencia varchar(50) NOT NULL,
    cidade_agencia varchar(50) NOT NULL,
    ativos int NOT NULL,
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
    valor int,
    PRIMARY KEY(num_empre),
    FOREIGN KEY(nome_agencia) REFERENCES agencia(nome_agencia)
);

