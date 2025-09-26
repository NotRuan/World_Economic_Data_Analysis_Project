-- Criar database
CREATE DATABASE world_economic_data;

-- Usar o database
\c world_economic_data;

-- Tabela de corrupção
CREATE TABLE corrupcao (
    country VARCHAR(100),
    annual_income DECIMAL(12,2),
    corruption_index DECIMAL(5,2)
);

-- Tabela de custo de vida
CREATE TABLE custo_de_vida (
    country VARCHAR(100),
    cost_index DECIMAL(8,2),
    monthly_income DECIMAL(12,2),
    purchasing_power_index DECIMAL(8,2)
);

-- Tabela de PIB
CREATE TABLE pib (
    country VARCHAR(100),
    gdp_per_capita DECIMAL(12,2)
);

-- Tabela de turismo
CREATE TABLE turismo (
    country VARCHAR(100),
    tourists_in_millions DECIMAL(8,2),
    receipts_in_billions DECIMAL(10,2),
    receipts_per_tourist DECIMAL(8,2),
    percentage_of_gdp DECIMAL(5,2)
);

-- Tabela de desemprego
CREATE TABLE desemprego (
    country VARCHAR(100),
    unemployment_rate DECIMAL(5,2)
);