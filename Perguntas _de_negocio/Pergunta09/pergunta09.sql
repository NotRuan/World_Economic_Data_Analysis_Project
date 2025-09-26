### **9. Correlação entre riqueza nacional e renda individual: existe distribuição equilibrada?**

- **SQL skills:** `JOIN`, operadores aritméticos, subconsultas com `AVG`, `ORDER BY`
- **Insight descoberto:** Países ricos nacionalmente também garantem boa renda individual - correlação positiva

 SELECT p.country,
    p.gdp_per_capita,
    c.annual_income,
    round(c.annual_income / p.gdp_per_capita * 100::numeric, 2) AS percentual_distribuicao
   FROM pib p
     JOIN corrupcao c USING (country)
  ORDER BY (round(c.annual_income / p.gdp_per_capita * 100::numeric, 2)) DESC;