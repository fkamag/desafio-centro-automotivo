INSERT INTO states
VALUES
	(1, 'SP');
INSERT INTO city (id_city, city_name, id_state)
VALUES
	(1, 'São Paulo', 1),
    (2, 'Sorocaba', 1),
    (3, 'Tatuí', 1);
INSERT INTO supplier
VALUES
	(1, 'Casa das Borrachas', 'EMF Distribuidora Ltda', '11222333000100', 'Rua Penha', 575, 'Centro', '11222000', 1, '1123456789'),
    (2, 'Autocom', 'Com. peças automotivas autocom Ltda', '22333444000155', 'Rua José', 210, 'Centro', '11555000', 1, '11933004400'),
    (3, 'Amortecedores e Cia', 'Cofap Ltda', '33444555000166', 'Rua Barão', 315, 'Jd Primavera', '18001000', 2, '1522223333'),
    (4, 'Cobreq', 'Pastilhas Cobreq S.A.', '44555666000177', 'Rua Cruzeiro', 180, 'Centro', '18270000', 3, '1533050008');
INSERT INTO stock
VALUES
	(1, 'Armazem 1'),
    (2, 'Armazem 2'),
    (3, 'Armazem 3');
INSERT INTO category_product
VALUES
	(1, 'Borrachas'),
    (2, 'Amortecedor'),
    (3, 'Pastilhas e Discos'),
    (4, 'Cabos e Velas');
INSERT INTO product
VALUES
	(1, 'Magueira Radiador VW', 90.55, 1, 1),
    (2, 'Magueira Radiador GM', 92.75, 1, 1),
    (3, 'Amortecedor VW', 120.9, 2, 3),
    (4, 'Amortecedor GM', 150.9, 2, 3),
    (5, 'Pastilha Fiat', 97.3, 3, 4),
    (6, 'Disco Fiat', 139.9, 3, 4),
    (7, 'Vela NGK', 33, 4, 2),
    (8, 'Cabo de Vela NGK', 42, 4, 2);
INSERT INTO product_stock
VALUES
	(1, 1, 10),
    (2, 1, 12),
    (3, 2, 4),
    (4, 2, 4),
    (5, 1, 20),
    (6, 1, 6),
    (7, 3, 80),
    (8, 3, 80);
INSERT INTO customer
VALUES
	(1, 'NP'),
    (2, 'NP'),
    (3, 'NP'),
    (4, 'LP'),
    (5, 'NP'),
    (6, 'LP');
INSERT INTO natural_person
VALUES
	(1, 1, 'Zeca', 'José Carlos', '11122233344', '1990-05-10', '11988887777'),
    (2, 2, 'Maria', 'Maria Olinda', '22233344455', '1980-03-22', '11999998888'),
    (3, 3, 'Mané', 'Manoel Coelho', '33344455566', '2000-12-17', '15915150101'),
    (4, 5, 'Bob', 'Roberto Souza', '44455566677', '1970-05-26', '15997005555');
INSERT INTO legal_person
VALUES
	(1, 4, 'Borrachas Tatuí', 'BT Equipamentos Ltda', '44555666000177', '1533050020'),
    (2, 6, 'Varejão Ribeiro', 'Com. de Frutas Ribeiro Ltda', '55666777000188', '1533050008');
INSERT INTO address_customer
VALUES
	(1, 'Rua 1', 10, 'Vila Nova', '11001010', 1, 1, 'casa'),
    (2, 'Rua 2', 20, 'Centro', '11002020', 1, 1, 'trabalho'),
    (3, 'Rua 3', 30, 'Vila Nova', '11001010', 1, 2, 'cs'),
    (4, 'Rua 4', 40, 'Jd Primavera', '18001020', 2, 3, 'home'),
    (5, 'Rua 5', 50, 'Centro', '18001000', 2, 3, 'work'),
    (6, 'Rua 6', 60, 'Centro', '18270006', 3, 5, 'casa'),
    (7, 'Rua Rui Barbosa', 571, 'Valinho', '18270002', 3, 4, 'escritorio'),
    (8,  'Rua 10', 50, 'Vila Nova', '18001030', 2, 6, 'depósito');
INSERT INTO status_order
VALUES
	(1, 'Aguardando orçamento'),
    (2, 'Solicitar Peça'),
    (3, 'Aguardando Peça'),
    (4, 'Aguardando Serviço'),
    (5, 'Concluído'),
    (6, 'Cancelado');
INSERT INTO employee
VALUES
	(1, 'João', 'João Nogueira', '11222333-44', '1980-12-18', '15999998888'),
    (2, 'José', 'José Felício', '22333444-55', '1985-02-12', '15988887777');
INSERT INTO service
VALUES
	(1, 'Horas de Serviços de Suspensão', '120'),
    (2, 'Horas de Serviços de Freios', '130'),
    (3, 'Horas de Serviços Mecanica Geral', '100');
INSERT INTO vehicle
VALUES
	(1, 1, 'Ford', 'Fiesta', 'AAA1234'),
    (2, 1, 'VW', 'Gol', 'BBB2345'),
    (3, 2, 'Fiat', 'Uno', 'CCC3456'),
    (4, 3, 'Ford', 'Ka', 'DDD4567'),
    (5, 4, 'VW', 'Kombi', 'EEE5678'),
    (6, 5, 'GM', 'Corsa', 'FFF6789'),
    (7, 6, 'Fiat', 'Fiorino', 'FEF7890');
INSERT INTO orders
VALUES
	(1, 1, 5, 400, '2023-08-30 20:30:15'),
    (2, 2, 5, 190.55, '2023-08-30 20:33:12'),
    (3, 3, 5, 734.4, '2023-08-30 20:34:10'),
    (4, 4, 3, 232, '2023-08-30 20:40:22'),
    (5, 5, 4, 723.6, '2023-08-30 21:00:32'),
    (6, 6, 2, 192.75, '2023-08-31 20:42:30'),
    (7, 7, 1, 1202.9, '2023-08-31 20:42:32');
INSERT INTO payment
VALUES
	(1, 'Dinheiro'),
    (2, 'Cartão de Débito'),
    (3, 'Cartão de Crédito'),
    (4, 'Boleto'),
    (5, 'Aguardando pagamento');
INSERT INTO order_payment
VALUES
	(1, 1, 200),
    (1, 2, 200),
    (2, 3, 190.55),
    (3, 3, 734.4),
    (4, 1, 232),
    (5, 2, 723.6),
    (6, 5, 192.75),
    (7, 5, 1202.9);
INSERT INTO order_product
VALUES
	(1, 7, 4, 33),
    (1, 8, 4, 42),
    (2, 1, 1, 90.55),
    (3, 5, 2, 97.3),
    (3, 6, 2, 139.9),
    (4, 7, 4, 33),
    (5, 3, 4, 120.9),
    (6, 2, 1, 92.75),
    (7, 5, 4, 97.3),
    (7, 6, 4, 139.9);
INSERT INTO order_service
VALUES
	(1, 3, 1, 1, 100),
    (2, 3, 1, 1, 100),
    (3, 2, 2, 2, 130),
    (4, 3, 1, 1, 100),
    (5, 1, 2, 2, 120),
    (6, 3, 1, 1, 100),
    (7, 3, 2, 3, 130);