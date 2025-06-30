-- Total vendido por produto
SELECT p.nome, SUM(v.quantidade) AS total_vendido
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC;
