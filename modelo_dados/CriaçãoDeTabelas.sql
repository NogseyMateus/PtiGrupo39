-- Tabela de PessoaFisica
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

-- Tabela de PessoaJuridica
CREATE TABLE pessoa_juridica (
    id                   SERIAL PRIMARY KEY,
    cnpj                 CHAR(14)   NOT NULL UNIQUE,
    inscricao_estadual   VARCHAR(30),
    termos_aceitos       BOOLEAN    NOT NULL DEFAULT FALSE,
    data_cadastro        TIMESTAMP  NOT NULL DEFAULT NOW()
);


-- Tabela de Aluno
CREATE TABLE aluno (
    id              SERIAL PRIMARY KEY,
    matricula       VARCHAR(30) NOT NULL UNIQUE,
    curso           VARCHAR(150) NOT NULL,
    semestre        INTEGER      NOT NULL,
    turno           VARCHAR(50)  NOT NULL,
    termos_aceitos  BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro   TIMESTAMP    NOT NULL DEFAULT NOW()
);

-- Tabela de Professor
CREATE TABLE professor (
    id              SERIAL PRIMARY KEY,
    nome            VARCHAR(200) NOT NULL,
    cpf             CHAR(11)     NOT NULL UNIQUE,
    titulacao       VARCHAR(150) NOT NULL,
    area_atuacao    VARCHAR(150) NOT NULL,
    email           VARCHAR(200),
    termos_aceitos  BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro   TIMESTAMP    NOT NULL DEFAULT NOW()
);

-- Tabela de Fornecedor
CREATE TABLE fornecedor (
    id                  SERIAL PRIMARY KEY,
    cnpj                CHAR(14)   NOT NULL UNIQUE,
    nome_fornecedor     VARCHAR(200) NOT NULL,
    prazo_entrega_dias  INTEGER,
    forma_pagamento     VARCHAR(150),
    termos_aceitos      BOOLEAN      NOT NULL DEFAULT FALSE,
    data_cadastro       TIMESTAMP    NOT NULL DEFAULT NOW()
);
