-- Criação de restrições adicionais para garantir a integridade dos dados

-- Tabela clientes

-- TRIGGER para impedir INSERT de clientes com data de nascimento futura

DELIMITER //

CREATE TRIGGER trg_clientes_valida_data_insert
BEFORE INSERT ON clientes
FOR EACH ROW
BEGIN
    IF NEW.data_nascimento >= CURRENT_DATE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Data inválida.';
    END IF;
END//

DELIMITER ;

-- TRIGGER para impedir UPDATE de clientes com data de nascimento futura

DELIMITER //

CREATE TRIGGER trg_clientes_valida_data_update
BEFORE UPDATE ON clientes
FOR EACH ROW
BEGIN
    IF NEW.data_nascimento >= CURRENT_DATE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Data inválida.';
    END IF;
END//

DELIMITER ;

-- Tabela produtos
-- BEFORE INSERT validando preço e estoque

DELIMITER //

CREATE TRIGGER trg_produtos_valida_insert
BEFORE INSERT ON produtos
FOR EACH ROW
BEGIN
-------------------- Validar preço -----------------------
    IF NEW.preco <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Preço deve ser maior que zero.';
    END IF;
-------------------- Validar estoque -----------------------
    IF NEW.estoque < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Estoque não pode ser negativo.';
    END IF;
END//

DELIMITER ;

-- BEFORE UPDATE validando preço e estoque

DELIMITER //

CREATE TRIGGER trg_produtos_valida_update
BEFORE UPDATE ON produtos
FOR EACH ROW
BEGIN
---------------------- Validar preço ----------------------
    IF NEW.preco <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Preço deve ser maior que zero.';
    END IF; 
    ----------------- Validar estoque -----------------
    IF NEW.estoque < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Estoque não pode ser negativo.';
    END IF;
END//

DELIMITER ;

-- Tabela itens_pedido

-- TRIGGER para impedir INSERT de itens de pedido com quantidade ou preço unitário inválidos

DELIMITER //

CREATE TRIGGER trg_itens_pedido_valida_insert
BEFORE INSERT ON itens_pedido
FOR EACH ROW
BEGIN
-------------- Validar quantidade ----------------
    IF NEW.quantidade <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Quantidade deve ser maior que zero.';
    END IF;
    -------------- Validar preço unitário ----------------
    IF NEW.preco_unitario <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Preço unitário deve ser maior que zero.';
    END IF;
END//

DELIMITER ;

-- TRIGGER para impedir UPDATE de itens de pedido com quantidade ou preço unitário inválidos

DELIMITER //

CREATE TRIGGER trg_itens_pedido_valida_update
BEFORE UPDATE ON itens_pedido
FOR EACH ROW
BEGIN
    IF NEW.quantidade <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Quantidade deve ser maior que zero.';
    END IF;
    IF NEW.preco_unitario <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Preço unitário deve ser maior que zero.';
    END IF;
END//

DELIMITER ;