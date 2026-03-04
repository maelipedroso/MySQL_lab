-- Primeiro devemos inserir os registros na ordem correta:
--categorias
--produtos
--clientes
--pedidos
--itens_pedido

-- Inserção de categorias
INSERT INTO categorias (nome) VALUES
('Aneis'),
('Colares'),
('Brincos'),
('Relogios'),
('Pulseiras');

-- Inserção de produtos
INSERT INTO produtos (nome, descricao, preco, estoque, id_categoria) VALUES

-- ANEIS (1)
('Anel de Ouro 18k', 'Anel classico em ouro 18k', 2500.00, 10, 1),
('Anel de Prata', 'Anel simples em prata 925', 180.00, 25, 1),
('Anel com Diamante', 'Anel sofisticado com diamante central', 5200.00, 3, 1),
('Anel Solitario', 'Anel solitario elegante para noivado', 3200.00, 5, 1),
('Anel Ajustavel Simples', 'Anel ajustavel modelo casual', 75.00, 40, 1),

-- COLARES (2)
('Colar de Ouro', 'Colar feminino em ouro 18k', 1800.00, 8, 2),
('Colar de Prata', 'Colar delicado em prata', 150.00, 30, 2),
('Colar com Pingente de Coracao', 'Colar romantico com pingente', 220.00, 15, 2),
('Colar Luxo com Diamantes', 'Colar premium cravejado de diamantes', 6800.00, 2, 2),
('Colar Minimalista', 'Colar fino e discreto', 95.00, 50, 2),

-- BRINCOS (3)
('Brinco de Ouro Pequeno', 'Brinco pequeno em ouro 18k', 950.00, 12, 3),
('Brinco de Prata Argola', 'Argola classica em prata', 120.00, 28, 3),
('Brinco Infantil', 'Brinco delicado para criancas', 60.00, 35, 3),
('Brinco Luxo com Pedras', 'Brinco sofisticado com pedras nobres', 3400.00, 4, 3),
('Brinco Ponto de Luz', 'Modelo elegante ponto de luz', 300.00, 18, 3),

-- RELOGIOS (4)
('Relogio Feminino Dourado', 'Relogio elegante feminino dourado', 1200.00, 9, 4),
('Relogio Masculino Prata', 'Relogio classico masculino prata', 1350.00, 6, 4),
('Relogio Infantil', 'Relogio colorido para criancas', 280.00, 14, 4),
('Relogio Smart Premium', 'Relogio inteligente modelo premium', 3500.00, 5, 4),
('Relogio Edicao Limitada', 'Relogio exclusivo edicao limitada', 8900.00, 0, 4),

-- PULSEIRAS (5)
('Pulseira de Ouro', 'Pulseira feminina em ouro', 2100.00, 7, 5),
('Pulseira de Prata', 'Pulseira delicada em prata', 170.00, 20, 5),
('Pulseira Charm', 'Pulseira para charms personalizada', 250.00, 16, 5),
('Pulseira Luxo Cravejada', 'Modelo premium cravejado de pedras', 4800.00, 1, 5),
('Pulseira Masculina Couro', 'Pulseira masculina em couro e aço', 190.00, 22, 5);

-- Inserção de clientes
INSERT INTO clientes (nome, email, telefone, data_nascimento, rua, numero, bairro, cidade, estado) VALUES

-- Clientes completos
('Ana Souza', 'ana.souza@email.com', '(14)99999-1111', '1995-03-10', 'Rua das Flores', '123', 'Centro', 'Ourinhos', 'SP'),

('Carlos Mendes', 'carlos.m@email.com', '(11)98888-2222', '1988-07-22', 'Av. Brasil', '450', 'Vila Nova', 'São Paulo', 'SP'),

-- Sem telefone
('Juliana Lima', 'juliana.l@email.com', NULL, '2001-11-05', 'Rua A', '78', 'Jardim América', 'Ourinhos', 'SP'),

-- Sem bairro
('Ricardo Alves', 'ricardo.a@email.com', '(14)97777-3333', '1992-01-15', 'Rua B', '200', NULL, 'Bauru', 'SP'),

-- Sem estado
('Fernanda Rocha', 'fernanda.r@email.com', '(18)96666-4444', '1985-09-30', 'Av. Central', '900', 'Centro', 'Presidente Prudente', NULL),

-- Sem telefone e sem bairro
('Marcos Pereira', 'marcos.p@email.com', NULL, '1999-12-18', 'Rua C', '15', NULL, 'Ourinhos', 'SP'),

-- Cliente mais velho
('José Martins', 'jose.m@email.com', '(14)95555-5555', '1970-05-02', 'Rua D', '321', 'Centro', 'Marília', 'SP'),

-- Cliente mais jovem
('Larissa Gomes', 'larissa.g@email.com', '(14)94444-6666', '2005-08-14', 'Rua E', '88', 'Vila Esperança', 'Ourinhos', 'SP');
