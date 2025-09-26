### **2. Países com alto custo de vida, mas baixo poder de compra**

- **SQL skills:** `WHERE`, `AND`, operadores aritméticos, `ORDER BY`
- **Insight esperado:** Identificar países onde morar é caro, mas a renda não compensa

 SELECT country,
    cost_index AS custo_de_vida,
    purchasing_power_index AS poder_de_compra
   FROM custo_de_vida c
  WHERE cost_index > (( SELECT round(avg(custo_de_vida.cost_index), 2) AS round
           FROM custo_de_vida)) AND purchasing_power_index < (( SELECT round(avg(custo_de_vida.purchasing_power_index), 2) AS round
           FROM custo_de_vida))
  ORDER BY cost_index DESC;