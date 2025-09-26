 ### **1. Qual a relação entre riqueza (PIB per capita) e corrupção?**

- **SQL skills:** `JOIN`, `ORDER BY`, `WHERE BETWEEN`
- **Insight esperado:** Verificar se países mais ricos tendem a ter menores índices de corrupção

SELECT c.country,
    c.corruption_index,
    p.gdp_per_capita

   FROM corrupcao c
     LEFT JOIN pib p USING (country)

  WHERE p.gdp_per_capita IS NOT NULL

  ORDER BY p.gdp_per_capita DESC;