INSERT INTO agencia 
(nome_agencia, cidade_agencia, ativos) values
('Alfa', 'Brooklyn', 310000000.60),
('Gama', 'Los Angeles', 520000000.35),
('Theta', 'Atlanta', 20000000.40),
('Charlie', 'Los Angeles', 50000000.00),
('Bravo', 'Brooklyn', 50000000.03),
('Zulu', 'Atlanta', 72000000.45),
('Echo', 'Brooklyn', 420000000.00),
('Fox', 'Los Angeles', 40000000.00);

INSERT INTO cliente
(nome_cliente, endereco_cliente, cidade_cliente) values
('Janderson', 'Rua Maria Antonieta, 123, Centro', 'Brooklyn'),
('Felipe', 'Rua Carlos Nunes, 10, Jardim Atlantico', 'Atlanta'),
('Mauricio', 'Rua Jose Maria, 5, Centro', 'Los Angeles'),
('Laura', 'Rua Antonio Nunes, 13, Massagueira', 'Los Angeles'),
('Ana Maria', 'Rua Silvano Sales, 15, Cohab 1', 'Brooklyn'),
('Jilda', 'Rua Severiano Moraes, 1, Cohab 2', 'Brooklyn'),
('Peter', 'Rua Maria Antonieta, 123, Centro', 'Atlanta');

INSERT INTO emprestimo
(num_empre, nome_agencia, valor) values
(1, 'Alfa', 5000),
(2, 'Zulu', 4500),
(3, 'Bravo', 4500.50),
(4, 'Charlie', 7000),
(5, 'Echo', 6000),
(6, 'Fox', 2000),
(7, 'Gama', 15000.20),
(8, 'Echo', 13000.50);

INSERT INTO tomador
(nome_cliente, num_empre) values
('Janderson' ,1),
('Felipe' ,2),
('Peter' ,3),
('Peter' ,4),
('Laura' ,5),
('Peter' ,6),
('Ana Maria' ,7),
('Felipe' ,8);


INSERT INTO conta
(num_conta, nome_agencia, saldo) values
(1, 'Alfa', 1500.25),
(2, 'Zulu', 200.10),
(3, 'Bravo', 100.30),
(4, 'Charlie', 40.22),
(5, 'Echo', 5.15),
(6, 'Fox', 64.05),
(7, 'Gama', 740.55),
(8, 'Echo', 800.15);


INSERT INTO depositante
(nome_cliente, num_conta) values
('Janderson',  1), 
('Felipe',  2),
('Peter', 3),
('Peter', 4),
('Laura', 5),
('Peter', 6),
('Ana Maria', 7),
('Felipe', 8);

