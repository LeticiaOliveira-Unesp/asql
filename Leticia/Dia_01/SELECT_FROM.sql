-- Databricks notebook source
SELECT * 
FROM silver.olist.pedido

-- Selecione todas as colinas da tabela silver.olist.pedido

-- COMMAND ----------

SELECT
        idPedido,
        idCliente,
        dtEntregue

FROM silver.olist.pedido

-- Selecione as três colunas (idPedido, idCliente, dtEntregue) da tabela silver.olist.pedido

-- COMMAND ----------

SELECT
        idPedido,
        dtEntregue,
        idCliente

FROM silver.olist.pedido

-- COMMAND ----------

SELECT *,
      dtEntregue > dtEstimativaEntrega AS flAtraso
FROM silver.olist.pedido

-- Criou uma coluna nova com a informação de se a dtEntrega é maior que a dtEstimativaEntrega (true, false e null), renomeando a coluna como flAtraso

-- COMMAND ----------

SELECT
        idPedido,
        idCliente,
        dtEntregue,
        dtEstimativaEntrega,
        date(dtEntregue) AS dataEntrega, 
        date(dtEstimativaEntrega) AS  dataEstimativa,
        dtEntregue > dtEstimativaEntrega AS flAtraso,
        date(dtEntregue) > date(dtEstimativaEntrega) AS flDataAtraso

FROM silver.olist.pedido

-- COMMAND ----------

SELECT
        idPedido,
        idCliente,
        dtEntregue,
        dtEstimativaEntrega,
        date(dtEntregue) AS dataEntrega, 
        date(dtEstimativaEntrega) AS  dataEstimativa,
        dtEntregue > dtEstimativaEntrega AS flAtraso,
        date(dtEntregue) > date(dtEstimativaEntrega) AS flDataAtraso,
        date_diff(dtEntregue, dtEstimativaEntrega) AS nrDiasEntrega

FROM silver.olist.pedido

-- COMMAND ----------

SELECT *,
        vlComprimentoCm * vlAlturaCm * vlLarguraCm AS volCm3

FROM silver.olist.produto
