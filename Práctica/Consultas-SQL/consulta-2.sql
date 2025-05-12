-- 2 --

SELECT f.ANO, f.mes, f.DIA_DE_LA_SEMANA, count(*)
FROM MATCHES m JOIN FECHA f ON m.ID_FECHA = f.ID_FECHA
GROUP BY CUBE(f.ANO, (f.mes, f.MES_ANO), f.DIA_DE_LA_SEMANA)
ORDER BY f.ANO, f.mes_ano;

