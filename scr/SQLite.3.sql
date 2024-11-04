SELECT 
    e.nomeestado, 
    SUM(p.qtdsacasarb) AS producao_total
FROM 
    safra s
JOIN 
    estado e ON s.estadoid = e.estadoid
JOIN 
    (
        SELECT safraid, qtdsacasarb FROM prodmenmg 
        UNION ALL 
        SELECT safraid, qtdsacasarb FROM prodmenes
    ) p ON s.safraid = p.safraid
WHERE 
    s.ano = 2024
GROUP BY 
    e.nomeestado