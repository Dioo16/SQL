-- Banco de dados sql, delimitador
---GO




Create database VeiculosExerc
go

USE VeiculosExerc
go

CREATE TABLE tblVeiculos (
		ID_VEICULOS INT PRIMARY KEY IDENTITY,
		QUANTIDADE INT,
		ANO INT
)
GO

INSERT INTO tblVeiculos VALUES('10', '2017')
INSERT INTO tblVeiculos VALUES('5', '2019')						
INSERT INTO tblVeiculos VALUES('3', '2014')
INSERT INTO tblVeiculos VALUES('6', '2011')
INSERT INTO tblVeiculos VALUES('2', '2017')
INSERT INTO tblVeiculos VALUES('1', '2017')
INSERT INTO tblVeiculos VALUES('6', '2013')
INSERT INTO tblVeiculos VALUES('7', '2009')
INSERT INTO tblVeiculos VALUES('8', '2010')
INSERT INTO tblVeiculos VALUES('3', '2016')
INSERT INTO tblVeiculos VALUES('2', '2021')
INSERT INTO tblVeiculos VALUES('11', '2030')
INSERT INTO tblVeiculos VALUES('50', '2017')
INSERT INTO tblVeiculos VALUES('90', '2014')
INSERT INTO tblVeiculos VALUES('100', '2018')
INSERT INTO tblVeiculos VALUES('0', '2018')
INSERT INTO tblVeiculos VALUES('38', '2019')
GO


CREATE TABLE tblBens(
			Id_Bens INT PRIMARY KEY IDENTITY,
			tipo varchar(30) NOT NULL,
			tipo_Transação char(1)
)
GO

INSERT INTO tblBens VALUES('Leve', 'C')
INSERT INTO tblBens VALUES('Pesado', 'V')
INSERT INTO tblBens VALUES('Comum', 'T')
INSERT INTO tblBens VALUES('Comum', 'C')
INSERT INTO tblBens VALUES('Leve', 'V')
INSERT INTO tblBens VALUES('Motocicleta', 'V')
INSERT INTO tblBens VALUES('Pesado', 'V')
INSERT INTO tblBens VALUES('Pesado', 'T')
INSERT INTO tblBens VALUES('Comum', 'T')
INSERT INTO tblBens VALUES('Carga', 'V')
INSERT INTO tblBens VALUES('Pesado', 'V')
INSERT INTO tblBens VALUES('Carga', 'C')
INSERT INTO tblBens VALUES('Pesado', 'I')
INSERT INTO tblBens VALUES('Leve', 'C')
INSERT INTO tblBens VALUES('Doméstico', 'C')
INSERT INTO tblBens VALUES('Pesado', 'V')
INSERT INTO tblBens VALUES('Esportivo', 'C')
INSERT INTO tblBens VALUES('Esportivo', 'I')

GO

SELECT VE.QUANTIDADE, VE.ANO, BE.tipo, BE.tipo_Transação 
FROM tblVeiculos VE
INNER JOIN tblBens BE
ON VE.ID_VEICULOS = BE.Id_Bens
WHERE VE.ANO = '2017'
GO

SELECT VE.QUANTIDADE, VE.ANO, BE.tipo, BE.tipo_Transação 
FROM tblVeiculos VE
INNER JOIN tblBens BE
ON VE.ID_VEICULOS = BE.Id_Bens
WHERE VE.ANO = '2019'
GO