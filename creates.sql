use agencia_bancaria;

CREATE TABLE emprestimo(
	num_empre int NOT NULL,
    nome_agencia varchar(50) NOT NULL,
    valor int,
    PRIMARY KEY(num_empre),
    FOREIGN KEY(nome_agencia) REFERENCES agencia(nome_agencia)
);

