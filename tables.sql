-- Aqui você deve colocar os códigos SQL referentes à

-- Criação das tabelas

-- Tabela clientes

-- Tabela endereços

-- Tabela pedidos

-- Tabela produtos

-- Tabela produtos_pedidos


-- CRIACAO DE TABELAS
 
 CREATE TABLE IF NOT EXISTS clientes (
      id BIGSERIAL PRIMARY KEY,
      nome VARCHAR(100) NOT NULL,
      lealdade INTEGER NOT NULL
    );
    
   
 CREATE TABLE IF NOT EXISTS endereços(
      id BIGSERIAL PRIMARY KEY,
      cep VARCHAR(9) NOT NULL,
      rua VARCHAR(50) NOT NULL,
      numero INTEGER NOT NULL,
      bairro VARCHAR(50) NOT NULL,
      complemento VARCHAR(100),
      cliente_id INTEGER UNIQUE NOT NULL,
      
      FOREIGN KEY 
      (cliente_id) 
      REFERENCES 
      clientes(id)
      ON DELETE CASCADE
    );

   
 CREATE TABLE IF NOT EXISTS produtos(
      id BIGSERIAL PRIMARY KEY,
      nome VARCHAR(100) UNIQUE NOT NULL,
      tipo VARCHAR(30) NOT NULL,
      preço FLOAT(8) NOT NULL,
      pts_de_lealdade INTEGER NOT NULL
    );
 
 CREATE TABLE IF NOT EXISTS pedidos(
      id BIGSERIAL PRIMARY KEY,
      status VARCHAR(50) NOT NULL,
      cliente_id INTEGER NOT NULL,
      
      FOREIGN KEY 
      (cliente_id) 
      REFERENCES 
      clientes(id)
      ON DELETE CASCADE  
     ); 

   
 CREATE TABLE IF NOT EXISTS produtos_pedidos (
     id BIGSERIAL PRIMARY KEY,
     pedido_id INTEGER NOT NULL,
     produto_id INTEGER NOT NULL,
     
     FOREIGN KEY 
     (pedido_id) 
     REFERENCES
     pedidos(id)
     ON DELETE CASCADE, 
     
     FOREIGN KEY 
     (produto_id) 
     REFERENCES 
     produtos(id)
     ON DELETE CASCADE    
    );

  
