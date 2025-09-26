### **4. Top países com maior desemprego em relação à renda média**

- **SQL skills:** `JOIN`, `WHERE`, `ORDER BY DESC`
- **Insight:** Países onde a renda média é baixa e ainda há desemprego alto → mercados frágeis

 SELECT d.country,
    d.unemployment_rate,
    c.annual_income
   FROM desemprego d
     JOIN corrupcao c USING (country)
  WHERE c.annual_income IS NOT NULL AND d.unemployment_rate IS NOT NULL
  ORDER BY d.unemployment_rate DESC, c.annual_income;