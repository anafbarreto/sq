create database VendasNot

use VendasNot

CREATE TABLE Fornecedor(
	codFornecedor int PRIMARY KEY, --Este campo ser� chave prim�ria
	RazaoSocial varchar(50),
	CNPJ varchar(14),
	Fone varchar(9)
)

CREATE TABLE Marca(
	codMarca int,
	NomeMarca varchar(30)
)

-- Torna obrigat�rio
ALTER TABLE Marca
alter column codMarca int NOT NULL

-- Transforma um campo em uma Primary Key. Necess�rio ser OBRIGAT�RIO (NOT NULL)
ALTER TABLE Marca
add PRIMARY KEY (codMarca)


--Seleciona dados especificos tabela
SELECT RazaoSocial, fone
from Fornecedor

-- Inserir dados na tabela
INSERT into Marca
values(200, 'PEPSI')

SELECT * from Fornecedor

insert into Fornecedor
values (1, 'Atacad�o', '123456789', '123456789')

-- Cria lista de campos que ser�o preenchidos
insert into Fornecedor(RazaoSocial, codFornecedor)
values ('Sup. Tonim', 2)

-- Seleciona todas as colunas, melhor evitar
select * from Fornecedor

-- Seleciona colunas escolhidas, melhor op��o
select RazaoSocial, fone from Fornecedor

-- Atualizar dados de uma tabela da forma ERRADA. Isso atualiza TODOS
UPDATE Fornecedor SET fone = '154879654'
WHERE codFornecedor = 2

-- Excluir dados de uma tabela. A tabela ainda existe, mas os dados n�o
DELETE Fornecedor
where codFornecedor > 50 AND Cidade = 'Franca' --Pode combinar. AND, OR e NOT