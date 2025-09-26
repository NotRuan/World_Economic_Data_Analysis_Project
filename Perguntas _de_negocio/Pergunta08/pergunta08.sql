### **8. Onde o custo de vida não justifica os salários?**

- **SQL skills:** Operadores aritméticos (`monthly_income / cost_index`), `ORDER BY`
- **Insight esperado:** Ranking de países onde o poder de compra é mais baixo

 SELECT country,
    cost_index,
    monthly_income,
    round(monthly_income / cost_index, 2) AS poder_compra_real
   FROM custo_de_vida
  ORDER BY (round(monthly_income / cost_index, 2));