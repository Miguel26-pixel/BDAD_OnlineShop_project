PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

-- NOTES about some data types
-- booleans are stored as INTEGER, with a restriction so that they can only have values in {0, 1}
-- dates are stored as INTEGER, as the number of seconds since the Unix Epoch
-- prices are stored as INTEGER, in cents

DROP TABLE IF EXISTS Avaliacao;
DROP TABLE IF EXISTS Compra;
DROP TABLE IF EXISTS Subscricao;
DROP TABLE IF EXISTS CategoriaOferta;
DROP TABLE IF EXISTS Categoria;
DROP TABLE IF EXISTS Imagem;
DROP TABLE IF EXISTS Mensagem;
DROP TABLE IF EXISTS Conversa;
DROP TABLE IF EXISTS Reportar;
DROP TABLE IF EXISTS Oferta;
DROP TABLE IF EXISTS Vendedor;
DROP TABLE IF EXISTS Comprador;
DROP TABLE IF EXISTS ContaEmpresa;
DROP TABLE IF EXISTS ContaPessoal;
DROP TABLE IF EXISTS Utilizador;

CREATE TABLE Utilizador (
  nome_de_utilizador TEXT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  data_de_registo INTEGER NOT NULL DEFAULT (strftime('%s', 'now')) CONSTRAINT registo_data_nao_futura CHECK (data_de_registo <= strftime('%s'))
);

CREATE TABLE ContaPessoal (
  utilizador TEXT PRIMARY KEY REFERENCES Utilizador
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  nome_proprio TEXT NOT NULL,
  data_de_nascimento INTEGER NOT NULL
);

CREATE TABLE ContaEmpresa (
  utilizador TEXT PRIMARY KEY REFERENCES Utilizador
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  nome_empresa TEXT NOT NULL,
  morada TEXT,
  dominio_website TEXT UNIQUE
);

CREATE TABLE Comprador (
  utilizador TEXT PRIMARY KEY REFERENCES Utilizador
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Vendedor (
  utilizador TEXT PRIMARY KEY REFERENCES Utilizador
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  classificacao_media REAL CONSTRAINT limites_classificacao_media CHECK (classificacao_media >= 1 AND classificacao_media <= 5),
  telefone TEXT NOT NULL
);

CREATE TABLE Oferta (
  id INTEGER PRIMARY KEY,
  vendedor TEXT NOT NULL REFERENCES Vendedor
    ON UPDATE CASCADE,
  titulo TEXT NOT NULL,
  data_de_publicacao INTEGER NOT NULL DEFAULT (strftime('%s', 'now')),
  produto TEXT NOT NULL,
  descricao TEXT NOT NULL,
  preco_unitario INTEGER CONSTRAINT preco_unitario_positivo CHECK (preco_unitario > 0),
  stock INTEGER NOT NULL DEFAULT 1 CONSTRAINT stock_nao_negativo CHECK (stock >= 0),
  morada TEXT NOT NULL,
  negociavel INTEGER NOT NULL CONSTRAINT negociavel_bool CHECK (negociavel = 0 OR negociavel = 1),
  usado INTEGER NOT NULL CONSTRAINT usado_bool CHECK (usado = 0 OR usado = 1),
  CONSTRAINT indicar_preco_unitario_ou_negociavel CHECK (negociavel = 1 OR preco_unitario IS NOT NULL)
);

CREATE TABLE Reportar (
  utilizador TEXT REFERENCES Utilizador
    ON UPDATE CASCADE,
  oferta INTEGER REFERENCES Oferta
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  motivo TEXT NOT NULL,
  resolvido INTEGER NOT NULL DEFAULT 0 CONSTRAINT resolvido_bool CHECK (resolvido = 0 OR resolvido = 1),
  PRIMARY KEY (utilizador, oferta)
);

CREATE TABLE Conversa (
  comprador TEXT REFERENCES Comprador
    ON UPDATE CASCADE,
  oferta INTEGER REFERENCES Oferta
    ON UPDATE CASCADE,
  PRIMARY KEY (comprador, oferta)
);

CREATE TABLE Mensagem (
  id INTEGER PRIMARY KEY,
  comprador TEXT NOT NULL,
  oferta INTEGER NOT NULL,
  data_de_envio INTEGER NOT NULL DEFAULT (strftime('%s', 'now')),
  resposta INTEGER NOT NULL CONSTRAINT resposta_bool CHECK (resposta = 0 OR resposta = 1),
  conteudo TEXT NOT NULL,
  FOREIGN KEY (comprador, oferta) REFERENCES Conversa
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Imagem (
  path_ficheiro TEXT PRIMARY KEY,
  mensagem INTEGER REFERENCES Mensagem
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  oferta INTEGER REFERENCES Oferta
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT imagem_mensagem_xor_oferta CHECK ((mensagem IS NULL OR oferta IS NULL) AND (mensagem IS NOT NULL OR oferta IS NOT NULL))
);

CREATE TABLE Categoria (
  nome TEXT PRIMARY KEY
);

CREATE TABLE CategoriaOferta (
  oferta INTEGER REFERENCES Oferta
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  categoria TEXT REFERENCES Categoria
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  PRIMARY KEY (oferta, categoria)
);

CREATE TABLE Subscricao (
  comprador TEXT REFERENCES Comprador
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  categoria TEXT REFERENCES Categoria
    ON UPDATE CASCADE,
  preco_max INTEGER CONSTRAINT preco_max_positivo CHECK (preco_max > 0),
  incluir_usados INTEGER NOT NULL DEFAULT 1 CONSTRAINT incluir_usados_bool CHECK (incluir_usados = 0 OR incluir_usados = 1),
  PRIMARY KEY (comprador, categoria)
);

CREATE TABLE Compra (
  id INTEGER PRIMARY KEY,
  comprador TEXT NOT NULL REFERENCES Comprador
    ON UPDATE CASCADE,
  oferta INTEGER NOT NULL REFERENCES Oferta
    ON UPDATE CASCADE,
  data_da_compra INTEGER NOT NULL DEFAULT (strftime('%s', 'now')),
  preco_unitario_final INTEGER NOT NULL CONSTRAINT preco_unitario_final_positivo CHECK (preco_unitario_final > 0),
  quantidade INTEGER NOT NULL DEFAULT 1 CONSTRAINT quantidade_positiva CHECK (quantidade > 0),
  preco_total INTEGER NOT NULL,
  CONSTRAINT preco_total_correto CHECK (preco_total = preco_unitario_final * quantidade)
);

CREATE TABLE Avaliacao (
  compra INTEGER PRIMARY KEY REFERENCES Compra
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  classificacao INTEGER NOT NULL CONSTRAINT limites_classificacao CHECK (classificacao >= 1 AND classificacao <= 5),
  comentario TEXT
);
