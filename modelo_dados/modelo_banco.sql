-- Modelo de banco de dados
-- PTI Grupo 39

-- Tabela de pessoa física
CREATE TABLE pessoa_fisica (
    id               SERIAL PRIMARY KEY,
    nome_completo    VARCHAR(200) NOT NULL,
    cpf              CHAR(11)     NOT NULL UNIQUE,
    endereco         VARCHAR(255),
    telefone         VARCHAR(20),
    email            VARCHAR(200),
    termos_aceitos   BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro    TIMESTAMP    NOT NULL DEFAULT NOW()
);

-- Tabela de pessoa jurídica
CREATE TABLE pessoa_juridica (
    id                  SERIAL PRIMARY KEY,
    cnpj                CHAR(14)    NOT NULL UNIQUE,
    inscricao_estadual  VARCHAR(30),
    termos_aceitos      BOOLEAN     NOT NULL DEFAULT FALSE,
    data_cadastro       TIMESTAMP   NOT NULL DEFAULT NOW()
);

-- Tabela de aluno (ligado a pessoa física)
CREATE TABLE aluno (
    id               SERIAL       PRIMARY KEY,
    pessoa_fisica_id INT          NOT NULL,
    matricula        VARCHAR(30)  NOT NULL UNIQUE,
    curso            VARCHAR(150) NOT NULL,
    semestre         INTEGER      NOT NULL,
    turno            VARCHAR(50)  NOT NULL,
    termos_aceitos   BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro    TIMESTAMP    NOT NULL DEFAULT NOW(),

    FOREIGN KEY (pessoa_fisica_id)
        REFERENCES pessoa_fisica (id)
);

-- Tabela de professor (ligado a pessoa física)
CREATE TABLE professor (
    id               SERIAL       PRIMARY KEY,
    pessoa_fisica_id INT          NOT NULL,
    titulacao        VARCHAR(150) NOT NULL,
    area_atuacao     VARCHAR(150) NOT NULL,
    email            VARCHAR(200),
    termos_aceitos   BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro    TIMESTAMP    NOT NULL DEFAULT NOW(),

    FOREIGN KEY (pessoa_fisica_id)
        REFERENCES pessoa_fisica (id)
);

-- Tabela de fornecedor (ligado a pessoa jurídica)
CREATE TABLE fornecedor (
    id                  SERIAL       PRIMARY KEY,
    pessoa_juridica_id  INT          NOT NULL,
    nome_fornecedor     VARCHAR(200) NOT NULL,
    prazo_entrega_dias  INTEGER,
    forma_pagamento     VARCHAR(150),
    termos_aceitos      BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro       TIMESTAMP    NOT NULL DEFAULT NOW(),

    FOREIGN KEY (pessoa_juridica_id)
        REFERENCES pessoa_juridica (id)
);
