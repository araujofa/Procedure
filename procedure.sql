--COMANDOS DDL

create procedure CriarTabela
as
create table TestProcedure (
	IdProcedure int primary key identity,
	Descricao varchar (255)
	);

EXECUTE CriarTabela
Select * from TestProcedure
DROP TABLE TestProcedure
DROP PROCEDURE CriarTabela

--COMANDOS DML

create procedure InserirArtista
as
Insert into Artistas
Values ('Pac')

execute InserirArtista

drop procedure InserirArtista

create procedure InserirArtista
@NomeArtista VARCHAR(255)
as
Insert into Artistas
Values (@NomeArtista)

alter procedure InserirArtista
@NomeArtista VARCHAR(255),
@Test varchar(255)
as
Insert into Artistas
Values (@NomeArtista + @Test)

execute InserirArtista 'Vitao','Legal'

select * from Artistas


--COMANDOS DQL

create procedure MaisVisualizacao
as
select * from Albuns
order by Albuns.Visualizacao;

Execute MaisVisualizacao

CREATE PROCEDURE Busca 
@CampoBusca VARCHAR (20) 
AS
SELECT * 
FROM Albuns
WHERE Albuns.NomeAlbum like '%' + @CampoBusca + '%' 

execute Busca  'f'








