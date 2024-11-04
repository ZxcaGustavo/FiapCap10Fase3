SELECT 
    e.nomeestado, 
    AVG(p.rendmedarb) AS rendimento_medio
FROM 
    safra s
JOIN 
    estado e ON s.estadoid = e.estadoid
JOIN 
    (
        SELECT safraid, rendmedarb FROM prodmenmg 
        UNION ALL 
        SELECT safraid, rendmedarb FROM prodmenes
    ) p ON s.safraid = p.safraid
WHERE 
    s.ano = 2024 AND 
    e.nomeestado IN ('Minas Gerais', 'Espírito Santo')
GROUP BY 
    e.nomeestado