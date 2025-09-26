### **3. Turismo como motor econômico**

- **SQL skills:** `JOIN`, `GROUP BY`, `HAVING`
- **Pergunta:** Quais países dependem fortemente do turismo (receitas > 20% do PIB)?

 SELECT country,
    percentage_of_gdp
   FROM turismo t
  WHERE percentage_of_gdp > 0.20
  GROUP BY country, percentage_of_gdp
  ORDER BY percentage_of_gdp DESC;