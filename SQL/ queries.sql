/* Buscar os nomes de todos os alunos que frequentam alguma turma do professor 'JOAO PEDRO'. */  

SELECT 
   	aluno.nome 
	FROM aluno
inner JOIN turma
    ON aluno.id = turma.aluno_id 
inner JOIN professor
    ON professor.id = turma.professor_id
WHERE
    professor.nome like 'joao pedro';

/*Buscar os dias da semana que tenham aulas da disciplina 'MATEMATICA'.*/

SELECT 
	dia_da_semana
	FROM turma
inner JOIN disciplina
	on turma.disciplina_id = disciplina.id
WHERE 
	disciplina.nome like 'matematica';

/*Buscar todos os alunos que frequentem aulas de 'MATEMATICA' e também 'FISICA'.*/

SELECT 
	aluno.nome 
	FROM aluno
inner JOIN turma
	on aluno.id = turma.aluno_id 
inner JOIN disciplina
	on turma.disciplina_id = disciplina.id 
WHERE 
	disciplina.nome like 'fisica' and disciplina.nome like 'matematica';

/*Buscar as disciplinas que não tenham nenhuma turma.*/

SELECT 
	nome
	FROM disciplina
left JOIN turma
	on turma.disciplina_id = disciplina.id
WHERE 
	turma.disciplina_id is null
;

/* Buscar os alunos que frequentem aulas de 'MATEMATICA' exceto os que frequentem 'QUIMICA'.*/

SELECT
	aluno.nome 
	FROM aluno
inner JOIN turma
	on aluno.id = turma.aluno_id 
inner JOIN disciplina
	on turma.disciplina_id = disciplina.id 
WHERE 
	disciplina.nome like 'matematica'
	and not disciplina.nome like 'quimica';