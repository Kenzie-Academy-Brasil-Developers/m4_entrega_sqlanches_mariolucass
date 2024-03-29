-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT 
    *
FROM 
    produtos_pedidos
JOIN
    pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN 
    produtos ON produtos.id = produtos_pedidos.produto_id;

-- 2)
SELECT 
    pedidos.id
FROM 
    produtos_pedidos 
JOIN
    pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN 
    produtos ON produtos.id = produtos_pedidos.produto_id
WHERE
    produtos.nome = 'Fritas';


-- 3)
SELECT 
    clientes.nome
FROM 
    produtos_pedidos
JOIN 
    produtos ON produtos.id = produtos_pedidos.produto_id
JOIN 
    pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN 
    clientes ON clientes.id = pedidos.cliente_id
WHERE 
    produtos.nome = 'Fritas';

-- 4)
SELECT 
    SUM(produtos.preço)
FROM 
    produtos_pedidos
JOIN 
    produtos ON produtos.id = produtos_pedidos.produto_id
JOIN 
    pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN 
    clientes ON clientes.id = pedidos.cliente_id
WHERE 
    clientes.nome = 'Laura';

-- 5)
SELECT 
    produtos.nome,
    COUNT (produto_id)  
FROM 
    produtos_pedidos 
JOIN 
    produtos ON produtos.id = produtos_pedidos.produto_id
GROUP BY 
    produtos.nome;
   