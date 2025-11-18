-- Atualizar dados de uma pessoa física
UPDATE pessoa_fisica
SET
    nome_completo = 'João da Silva Neto',
    endereco      = 'Rua B, nº 456, Centro',
    telefone      = '(62) 98888-0000',
    email         = 'joao.neto@email.com'
WHERE id = 1;

-- Atualizar dados de uma pessoa jurídica
UPDATE pessoa_juridica
SET
    inscricao_estadual = '987654321',
    termos_aceitos     = TRUE
WHERE cnpj = '12345678000199';

-- Atualizar dados do aluno
UPDATE aluno
SET
    curso    = 'Engenharia de Software',
    semestre = 2,
    turno    = 'Matutino'
WHERE matricula = '20250001';

-- Atualizar dados do professor
UPDATE professor
SET
    titulacao    = 'Mestre em Computação',
    area_atuacao = 'Banco de Dados',
    email        = 'prof.banco@email.com'
WHERE id = 3;

-- Atualizar dados do fornecedor
UPDATE fornecedor
SET
    nome_fornecedor    = 'Editora Universitária Atualizada LTDA',
    prazo_entrega_dias = 15,
    forma_pagamento    = 'Pix à vista'
WHERE id = 2;
