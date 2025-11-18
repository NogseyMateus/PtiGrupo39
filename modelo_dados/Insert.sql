--Inserir registro pessoa física.
INSERT INTO pessoa_fisica (
    nome_completo, cpf, endereco, telefone, email, termos_aceitos
) VALUES (
    'João da Silva',
    '12345678901',
    'Rua A, 123, Centro',
    '(62) 99999-0000',
    'joao.silva@email.com',
    TRUE
)
RETURNING id;

--Inserir registro do aluno.
INSERT INTO aluno (
    pessoa_fisica_id, matricula, curso, semestre, turno, termos_aceitos
) VALUES (
    1, -- id da pessoa_fisica
    '20250001',
    'Sistemas de Informação',
    1,
    'Noturno',
    TRUE
);

--Inserir registro de professor.
INSERT INTO professor (
    pessoa_fisica_id, titulacao, area_atuacao, email, termos_aceitos
) VALUES (
    1, -- mesma pessoa_fisica, se for o caso
    'Doutor em Computação',
    'Engenharia de Software',
    'joao.professor@email.com',
    TRUE
);

--Inserir registro de pessoa juridica.
INSERT INTO pessoa_juridica (
    cnpj, inscricao_estadual, termos_aceitos
) VALUES (
    '12345678000199',
    '123456789',
    TRUE
)
RETURNING id;


--Inserir registro de fornecedor.
INSERT INTO fornecedor (
    pessoa_juridica_id, nome_fornecedor, prazo_entrega_dias, forma_pagamento, termos_aceitos
) VALUES (
    1, -- id da pessoa_juridica
    'Editora Universitária LTDA',
    10,
    'Boleto 30 dias',
    TRUE
);
