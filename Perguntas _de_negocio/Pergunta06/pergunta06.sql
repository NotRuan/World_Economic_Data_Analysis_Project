### **6. Países ACIMA vs ABAIXO da mediana de PIB: como diferem nos outros indicadores?** *(Melhorada)*

- **SQL skills:** `IN`, `NOT IN`, `INTERSECT`, subconsulta para mediana
- **Insight esperado:** Comparar grupos acima e abaixo da mediana de PIB vs outros indicadores

# Abaixo:
 SELECT p.country AS pais,
    p.gdp_per_capita AS pib,
    d.unemployment_rate AS tx_desemprego,
    cdv.cost_index AS custo_de_vida,
    cdv.monthly_income AS renda_mensal,
    c.corruption_index AS tx_de_corrupcao
   FROM pib p
     JOIN desemprego d USING (country)
     JOIN custo_de_vida cdv USING (country)
     JOIN corrupcao c USING (country)
  WHERE p.gdp_per_capita::double precision <= (( SELECT percentile_cont(0.5::double precision) WITHIN GROUP (ORDER BY (pib.gdp_per_capita::double precision)) AS percentile_cont
           FROM pib))
  ORDER BY p.gdp_per_capita DESC, d.unemployment_rate DESC;

# Acima:
 SELECT p.country AS "país",
    p.gdp_per_capita AS pib,
    d.unemployment_rate AS tx_dedesemprego,
    cdv.cost_index AS custo_de_vida,
    cdv.monthly_income AS renda_mensal,
    c.corruption_index AS tx_de_corrupcao
   FROM pib p
     JOIN desemprego d USING (country)
     JOIN custo_de_vida cdv USING (country)
     JOIN corrupcao c USING (country)
  WHERE p.gdp_per_capita::double precision > (( SELECT percentile_cont(0.5::double precision) WITHIN GROUP (ORDER BY (pib.gdp_per_capita::double precision)) AS percentile_cont
           FROM pib))
  ORDER BY p.gdp_per_capita DESC, d.unemployment_rate DESC;