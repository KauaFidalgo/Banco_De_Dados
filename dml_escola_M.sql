--Comando para usar um banco ja criado 
USE db_escola_M;


--Comando para inserir um novo registro
INSERT INTO tb_escola(nome, endereco)
VALUES('Moura Branco', 'Rua Tapajos, 1085 - Barcelona')

SELECT * FROM tb_escola;

--Registro tabela aluno
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) 
VALUES
('Nathalia', '06761021073', '2009/01/30', 'KO5coaRQgJ', 1),
('Maria', '02392938463', '2007/07/02', 'Kosauw12eh', 1);

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) 
VALUES
('Ariel', '96385983013', '2004/02/25', '6732', 1),
('Paulo', '97026769081', '2007/06/08', '1223', 1),
('David', '02635160882', '2002/01/09', '9103', 1);

SELECT * FROM tb_aluno;

--REGISTRO NA TABELA TURMA
INSERT INTO tb_turma (numero_sala, periodo, serie, nome_turma, id_escola)
VALUES
(102,'Tarde', 1, '1 ano B', 1),
(201,'Manhã', 2, '2 ano A', 1),
(202,'Noite', 2, '2 ano C', 1);

SELECT * FROM tb_turma;

--TABELA PROVA
INSERT INTO tb_prova ( nome_professor, materia, duracao, nota, data_prova, id_aluno)
VALUES
('Comedinha','Geografia','01:00:00',10, '2025-05-12', 1),
('Chups','Cartografia','02:40:00',10, '2025-08-20', 2);

SELECT * FROM tb_prova;

--TABELA TURMAPROVA - INTERMEDIARIA

INSERT INTO tb_turma_prova(id_turma, id_prova)
VALUES 
(2, 3),
(2, 4);

SELECT * FROM tb_turma_prova;

--Comando que atualiza o nome de um aluno pelo seu cpf

UPDATE tb_aluno
SET nome = 'Lepdoido'
WHERE cpf = '02635160882';

SELECT * FROM tb_aluno;

--Comando que exclui um registro
DELETE FROM tb_aluno
WHERE matricula = '1223'

SELECT * FROM tb_aluno;