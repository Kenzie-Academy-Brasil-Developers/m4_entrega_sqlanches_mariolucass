-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)
INSERT INTO clientes
     (nome, lealdade)
VALUES 
    ('Georgia', 0);



-- 2)
INSERT INTO pedidos 
    (id, status, cliente_id)
VALUES 
    (6,'Recebido', (
SELECT 
     id 
FROM 
     clientes 
WHERE 
     nome = 'Georgia')
    );



-- 3)



-- Leitura

-- 1)  
SELECT 
    *
FROM 
    produtos_pedidos
JOIN 
    produtos ON produtos.id = produtos_pedidos.produto_id
JOIN 
    pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN 
    clientes ON clientes.id = pedidos.cliente_id
WHERE
    clientes.nome ='Georgia';
;
  



-- Atualização

-- 1)



-- Deleção

-- 1)


