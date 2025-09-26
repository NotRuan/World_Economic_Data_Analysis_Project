### **10.*Qual a correlação entre poder de compra e taxa de desemprego?**

- **SQL skills:** `JOIN`, `WHERE`, operadores aritméticos, `ORDER BY`
- **Insight esperado:** Países onde mesmo com emprego, o poder de compra é baixo


 SELECT c.country,
    c.purchasing_power_index,
    d.unemployment_rate
   FROM custo_de_vida c
     JOIN desemprego d USING (country)
  ORDER BY d.unemployment_rate, c.purchasing_power_index DESC;