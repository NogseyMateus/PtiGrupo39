-- Listar todos os alunos com dados da pessoa física
SELECT
    a.id                AS aluno_id,
    pf.nome_completo,
    pf.cpf,
    a.matricula,
    a.curso,
    a.semestre,
    a.turno,
    pf.email
FROM aluno a
JOIN pessoa_fisica pf ON pf.id = a.pessoa_fisica_id
ORDER BY pf.nome_completo;

--Listar todos os professores com dados da pessoa física
SELECT
    pr.id               AS professor_id,
    pf.nome_completo,
    pf.cpf,
    pr.titulacao,
    pr.area_atuacao,
    COALESCE(pr.email, pf.email) AS email
FROM professor pr
JOIN pessoa_fisica pf ON pf.id = pr.pessoa_fisica_id
ORDER BY pf.nome_completo;

-- Pessoas físicas cadastradas que ainda não são aluno nem professor
SELECT
    pf.id,
    pf.nome_completo,
    pf.cpf,
    pf.email
FROM pessoa_fisica pf
LEFT JOIN aluno a        ON a.pessoa_fisica_id = pf.id
LEFT JOIN professor pr   ON pr.pessoa_fisica_id = pf.id
WHERE a.id IS NULL
  AND pr.id IS NULL;

-- Fornecedores com dados da pessoa jurídica
SELECT
    f.id                 AS fornecedor_id,
    f.nome_fornecedor,
    pj.cnpj,
    pj.inscricao_estadual,
    f.prazo_entrega_dias,
    f.forma_pagamento
FROM fornecedor f
JOIN pessoa_juridica pj ON pj.id = f.pessoa_juridica_id
ORDER BY f.nome_fornecedor;
