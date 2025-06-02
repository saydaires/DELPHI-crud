CREATE USER delphi_crud_final IDENTIFIED BY senha123;
GRANT CONNECT, CREATE SESSION TO delphi_crud_final;
ALTER USER delphi_crud_final QUOTA UNLIMITED ON USERS;

CREATE TABLE delphi_crud_final.PRODUTO(
    codigo_de_barras VARCHAR2(13) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(255) NOT NULL,
    preco NUMBER(10, 2) NOT NULL,
    quantidade NUMBER(5)NOT NULL,
    categoria VARCHAR2(50) NOT NULL
);