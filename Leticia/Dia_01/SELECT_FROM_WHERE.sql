-- Databricks notebook source
SELECT * 
FROM silver. olist.pedido
WHERE date(dtEntregue) > date(dtEstimativaEntrega)

-- COMMAND ----------

SELECT * 
FROM silver. olist.pedido
WHERE date(dtEntregue) < date(dtEstimativaEntrega)

-- COMMAND ----------

SELECT *

FROM silver.olist.produto

WHERE (descCategoria = 'bebes'
OR descCategoria = 'perfumaria'
OR descCategoria = 'artes')
AND vlComprimentoCm * vlAlturaCm * vlLarguraCm >= 1000


-- COMMAND ----------

SELECT *

FROM silver.olist.produto

WHERE descCategoria IN ('bebes','perfumaria','artes')
AND vlComprimentoCm * vlAlturaCm * vlLarguraCm >= 1000

-- COMMAND ----------

SELECT *
FROM silver.olist.produto
WHERE descCategoria = 'ferramentas'

-- COMMAND ----------

SELECT *
FROM silver.olist.produto
WHERE descCategoria LIKE 'ferramentas%'

-- COMMAND ----------

SELECT *
FROM silver.olist.produto
WHERE descCategoria LIKE '%ferramentas%'
