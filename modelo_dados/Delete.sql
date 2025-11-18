-- Remover uma pessoa física específica
DELETE FROM pessoa_fisica
WHERE id = 1;

-- Remover uma pessoa jurídica
DELETE FROM pessoa_juridica
WHERE cnpj = '12345678000199';

-- Remover um aluno pela matrícula
DELETE FROM aluno
WHERE matricula = '20250001';

--Remover um professor
DELETE FROM professor
WHERE id = 3;

-- Remover um fornecedor
DELETE FROM fornecedor
WHERE id = 2;
