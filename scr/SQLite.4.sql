SELECT 
    e.nomeestado, 
    AVG(p.qtdsacasarb) AS produtividade_media
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
ORDER BY 
    produtividade_media DESC
LIMIT 5