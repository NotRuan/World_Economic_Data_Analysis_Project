# 🌍 World Economic Data Analysis

## 📋 Descrição

Este projeto analisa indicadores econômicos de mais de **110 países** para identificar padrões de investimento, riscos de mercado e oportunidades estratégicas. Utilizando dados de PIB per capita, corrupção, custo de vida, turismo, desemprego e outros indicadores, o objetivo é fornecer insights acionáveis para:

- 💼 **Investidores internacionais** buscando mercados emergentes seguros
- 🏢 **Empresas multinacionais** avaliando expansão geográfica  
- 🏛️ **Governos e organizações** comparando desempenho econômico regional
- 👥 **Profissionais** considerando oportunidades de trabalho no exterior

O projeto combina **SQL** para análise quantitativa e **Power BI** para visualização interativa, transformando dados brutos em inteligência de negócio.

---

## 🗃️ Conjuntos de Dados

Os dados utilizados estão distribuídos em cinco tabelas principais:

| Tabela | Descrição | Registros |
|--------|-----------|-----------|
| `pib` | PIB per capita de cada país | 50 países |
| `corrupcao` | Índice de corrupção e renda média anual | 110 países |
| `custo_de_vida` | Índices de custo de vida e poder de compra | 107 países |
| `desemprego` | Taxa de desemprego por país | 64 países |
| `turismo` | Percentual do turismo sobre o PIB | 41 países |

**Chave de relacionamento:** `country` conecta todas as tabelas

**Cobertura:** 37 países com dados robustos (3+ indicadores) | 16 países com dados completos (4+ indicadores)

---

## 🔄 Metodologia

### **Fase 1: Preparação e Exploração dos Dados**
- ⚙️ **Setup do ambiente:** PostgreSQL com 5 tabelas econômicas
- 🔍 **Data profiling:** Verificação de completude, consistência e qualidade dos dados
- 🗺️ **Mapeamento de relacionamentos:** Identificação de 37 países com dados completos

### **Fase 2: Análise SQL Estruturada**  
- ❓ **Definição de perguntas de negócio:** 12 questões estratégicas
- 💻 **Desenvolvimento de queries:** JOINs, agregações, subconsultas e operações de conjunto
- 🔗 **Criação de views:** Estruturas reutilizáveis para integração com Power BI

### **Fase 3: Visualização e Insights**
- 📊 **Power BI:** Conexão direta com PostgreSQL
- 📈 **Dashboard interativo:** Visualizações para responder às perguntas de negócio
- 📚 **Storytelling:** Narrativa clara dos insights descobertos

### **Fase 4: Entregáveis**
- 📋 **Apresentação executiva:** PDF com metodologia, análises e recomendações
- 📖 **Documentação técnica:** Scripts SQL comentados e reproduzíveis
- 💼 **Portfólio profissional:** Projeto completo para LinkedIn e currículo

---

## 🎯 Perguntas de Negócio & Insights

### **1. Relação entre riqueza (PIB per capita) e corrupção**
**SQL skills:** `JOIN`, `ORDER BY`, `WHERE BETWEEN`

**Insight:** Países mais ricos tendem a ter menor corrupção, mas há exceções.

**Exemplo:**
- 🇨🇭 **Suíça:** PIB $77.324 | renda $90.360 | percentual 116,86%
- 🇳🇴 **Noruega:** PIB $79.201 | renda $84.090 | percentual 106,17%
- 🇹🇷 **Turquia:** PIB $30.472 | renda $9.830 | percentual 32,26%

### **2. Países com alto custo de vida, mas baixo poder de compra**
**SQL skills:** `WHERE`, operadores aritméticos, `ORDER BY`

**Insight:** Mercados de alto risco para expatriados e empresas de realocação.

**Exemplo:**
- 🇳🇨 **New Caledonia:** custo 125,8 | poder compra 14,9
- 🇹🇨 **Turks and Caicos:** custo 124,6 | poder compra 26,9
- 🇧🇧 **Barbados:** custo 121,5 | poder compra 19,5

### **3. Turismo como motor econômico**
**SQL skills:** `JOIN`, `GROUP BY`, `HAVING`

**Insight:** Alguns países dependem fortemente do turismo, tornando-os vulneráveis a crises globais.

**Exemplo:**
- 🇲🇴 **Macao:** 31,6% do PIB
- 🇻🇮 **Virgin Islands:** 16,3% do PIB
- 🇭🇰 **Hong Kong:** 8,9% do PIB

### **4. Top países com maior desemprego em relação à renda média**
**SQL skills:** `JOIN`, `ORDER BY DESC`

**Insight:** Países com alta taxa de desemprego e baixa renda indicam mercados frágeis.

**Exemplo:**
- 🇿🇦 **África do Sul:** desemprego 33,6% | renda $6.440
- 🇩🇯 **Djibouti:** desemprego 28,4% | renda $3.300
- 🇬🇷 **Grécia:** desemprego 14,8% | renda $20.140

### **5. Onde a corrupção não acompanha o desemprego**
**SQL skills:** `JOIN`, `GROUP BY`

**Insight:** Alguns países têm baixa corrupção apesar do desemprego elevado, sugerindo políticas públicas eficazes.

**Exemplo:**
- 🇸🇪 **Suécia:** corrupção 15 | desemprego 8,7%
- 🇫🇷 **França:** corrupção 29 | desemprego 8,1%
- 🇧🇷 **Brasil:** corrupção 62 | desemprego 14,4%

### **6. Países ACIMA vs ABAIXO da mediana de PIB**
**SQL skills:** `IN`, `NOT IN`, `INTERSECT`, subconsulta

**Insight:** Países de renda média podem superar países ricos em certos indicadores.

**Exemplo:**
- **Acima da mediana:** Luxemburgo, Suíça, Irlanda, Noruega
- **Abaixo da mediana:** Grécia, Turquia, Polônia, Rússia

### **7-12. Outras Análises Estratégicas**

<details>
<summary>Clique para ver análises completas</summary>

**7. Países com turismo acima da média, mas alto desemprego**
- França: turismo 117,1% | desemprego 8,1%
- Itália: turismo 38,4% | desemprego 9,8%

**8. Onde o custo de vida não justifica os salários**
- Haiti: custo 60,1 | renda 118 | relação 1,96
- Nepal: custo 28,1 | renda 103 | relação 3,67

**9-12. Correlações e Resumo Estratégico**
- Correlação riqueza nacional vs renda individual
- Poder de compra vs taxa de desemprego
- Comparação integrada de indicadores
- Mapeamento de mercados por risco/oportunidade

</details>

---

## 📊 Resumo Estratégico

**Cruzando PIB, desemprego, poder de compra, corrupção e turismo, foi possível mapear:**

| Categoria | Países | Características |
|-----------|---------|----------------|
| 🔴 **Alto Risco** | Turquia, Grécia, África do Sul | Alta corrupção, desemprego elevado |
| 🟢 **Estáveis e Ricos** | Suíça, Noruega, Luxemburgo | Baixa corrupção, alto PIB, baixo desemprego |
| 🟡 **Oportunidades Emergentes** | Países de renda média | Turismo crescente ou poder de compra elevado |

---

## 🛠️ Ferramentas Utilizadas

| Ferramenta | Uso |
|------------|-----|
| ![PostgreSQL](https://img.shields.io/badge/-PostgreSQL-4169E1?style=flat&logo=postgresql&logoColor=white) | Extração, transformação e consultas avançadas |
| ![Power BI](https://img.shields.io/badge/-Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black) | Dashboards interativos e visualizações |
| ![Python](https://img.shields.io/badge/-Python-3776AB?style=flat&logo=python&logoColor=white) | Conexão com PostgreSQL e tratamento de dados |
| ![PowerPoint](https://img.shields.io/badge/-PowerPoint-B7472A?style=flat&logo=microsoftpowerpoint&logoColor=white) | Apresentação executiva dos insights |

---

## 📈 Resultados

- **37 países** analisados com dados robustos
- **12 perguntas de negócio** respondidas com SQL avançado
- **Dashboard interativo** no Power BI
- **Insights acionáveis** para tomada de decisão estratégica
- **Identificação de mercados** por risco/oportunidade

---

## 👤 Autor

**Seu Nome**
- LinkedIn: [Ruan Gabriel](www.linkedin.com/in/ruan-gabriel-gomes-da-silva-b4519b20a)
- GitHub: [Ruan Gabriel]((https://github.com/NotRuan)]
- E-mail: gomesruangabriel@gmail.com
---

⭐ **Se este projeto foi útil, considere dar uma estrela!**
