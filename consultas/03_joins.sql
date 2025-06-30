-- Vendas com nome do cliente e do produto
SELECT v.id, c.nome AS cliente, p.nome AS produto, v.quantidade, v.data
FROM vendas v
JOIN clientes c ON v.cliente_id = c.id
JOIN produtos p ON v.produto_id = p.id;
