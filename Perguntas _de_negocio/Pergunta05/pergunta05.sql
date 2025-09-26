### **5. Onde a corrupção não acompanha o desemprego?**

- **SQL skills:** `JOIN`, `GROUP BY`, subconsulta com `WHERE`
- **Pergunta:** Em países com desemprego alto, a corrupção também é alta?

SELECT c.country,
    c.corruption_index,
    d.unemployment_rate
   FROM corrupcao c
     JOIN desemprego d USING (country)
  WHERE c.corruption_index IS NOT NULL AND d.unemployment_rate IS NOT NULL
  ORDER BY d.unemployment_rate DESC, c.corruption_index DESC;