### **7. Países com turismo acima da média, mas alto desemprego**

- **SQL skills:** `JOIN`, `WHERE`, `HAVING`
- **Insight:** Paradoxos econômicos → o turismo gera riqueza, mas não necessariamente emprego

 SELECT t.country,
    t.tourists_in_millions,
    d.unemployment_rate
   FROM turismo t
     JOIN desemprego d USING (country)
  WHERE t.tourists_in_millions > (( SELECT avg(turismo.tourists_in_millions) AS avg
           FROM turismo)) AND d.unemployment_rate > (( SELECT avg(desemprego.unemployment_rate) AS avg
           FROM desemprego))
  ORDER BY t.tourists_in_millions DESC, d.unemployment_rate DESC;