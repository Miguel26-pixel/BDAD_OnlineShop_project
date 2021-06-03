PRAGMA foreign_keys=on;
.mode columns
.headers on

INSERT INTO Utilizador VALUES ('catarinapires', 'catarinaopires@gmail.com', strftime('%s', '2019-07-12 15:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('catarinapires', 'Catarina Marques Pires', strftime('%s', '2000-03-01'));
INSERT INTO Comprador VALUES ('catarinapires');

INSERT INTO Utilizador VALUES ('miguel37', 'miguel.rods.37@gmail.com', strftime('%s', '2010-01-25 10:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('miguel37', 'Miguel Rodrigues', strftime('%s', '1990-01-25'));
INSERT INTO Comprador VALUES ('miguel37');

INSERT INTO Utilizador VALUES ('pedro1987', 'pedrosepol@hotmail.com', strftime('%s', '2017-03-01 13:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('pedro1987', 'Pedro Lopes', strftime('%s', '1987-03-01'));
INSERT INTO Comprador VALUES ('pedro1987');
INSERT INTO Vendedor (utilizador, telefone) VALUES ('pedro1987', '914238918');

INSERT INTO Utilizador VALUES ('joana_silva', 'joaninha@gmail.com', strftime('%s', '2014-05-15 15:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('joana_silva', 'Joana Silva', strftime('%s', '1994-05-07'));
INSERT INTO Comprador VALUES ('joana_silva');

INSERT INTO Utilizador VALUES ('beatrizLopes', 'beatrizLopes@sapo.pt', strftime('%s', '2008-01-25 15:00:00', 'utc'));
INSERT INTO ContaPessoal VALUES ('beatrizLopes', 'Beatriz Lopes', strftime('%s', '1970-05-25'));
INSERT INTO Vendedor (utilizador, telefone) VALUES ('beatrizLopes', '915782036');

INSERT INTO Utilizador VALUES ('zealves', 'zalves@sapo.pt', strftime('%s', '2021-03-30 18:32:16', 'utc'));
INSERT INTO ContaPessoal VALUES ('zealves', 'José Alves', strftime('%s', '2002-12-01'));
INSERT INTO Comprador VALUES ('zealves');

INSERT INTO Utilizador VALUES ('andreRica', 'andre_ricardo@live.com.pt', strftime('%s', '2016-09-08 08:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('andreRica', 'André Ricardo Araújo', strftime('%s', '1985-09-08'));
INSERT INTO Vendedor (utilizador, telefone) VALUES ('andreRica', '965713025');

INSERT INTO Utilizador VALUES ('nestle', 'support@board.nestle.com', strftime('%s', '2018-03-01 19:34:56', 'utc'));
INSERT INTO ContaEmpresa VALUES ('nestle', 'Nestle', 'Avenida Nestlé 55, 1800 Vevey, Suíça', 'https://www.nestle.com/');
INSERT INTO Vendedor (utilizador, telefone) VALUES ('nestle', '253154752');

INSERT INTO Utilizador VALUES ('nutella', 'nutella@ferrero.com', strftime('%s', '2000-05-20 15:34:56', 'utc'));
INSERT INTO ContaEmpresa VALUES ('nutella', 'Nutella', 'Alba, Itália', 'https://www.nutella.com/');
INSERT INTO Vendedor (utilizador, telefone) VALUES ('nutella', '003145930');

INSERT INTO Utilizador VALUES ('google', 'google@gmail.com', strftime('%s', '2008-01-30 15:34:56', 'utc'));
INSERT INTO ContaEmpresa VALUES ('google', 'Google', 'Mountain View, California, USA', 'https://www.google.com/');
INSERT INTO Vendedor (utilizador, telefone) VALUES ('google', '235879645');

INSERT INTO Utilizador VALUES ('lasa', 'lasa@live.com.pt', strftime('%s', '2020-10-08 15:34:56', 'utc'));
INSERT INTO ContaEmpresa VALUES ('lasa', 'Lasa', 'Vizela, Portugal', 'https://www.lasanet.pt/');
INSERT INTO Comprador VALUES ('lasa');
INSERT INTO Vendedor (utilizador, telefone) VALUES ('lasa', '253445962');

INSERT INTO Utilizador VALUES ('pingodoce', 'pingodoce@live.com.pt', strftime('%s', '2021-01-08 16:15:32', 'utc'));
INSERT INTO ContaEmpresa VALUES ('pingodoce', 'Pingo Doce', 'Rua Actor António Silva n.º7 1649-033 Lisboa, Portugal', 'https://www.pingodoce.pt/');
INSERT INTO Comprador VALUES ('pingodoce');

INSERT INTO Oferta VALUES (1, 'nutella', 'Nutella & GO', strftime('%s', '2001-05-20 11:50:36', 'utc'), 'Nutella & Go', 'Nutella & Go, with nutella and breadsticks', 500, 600, 'R. Conde Arnoso 5, 1700-102 Lisboa, Portugal', 0, 0);
INSERT INTO Oferta (id, vendedor, titulo, data_de_publicacao, produto, descricao, preco_unitario, morada, negociavel, usado) VALUES (2, 'beatrizLopes', 'casaco senhora preto', strftime('%s', '2011-06-30 11:50:16', 'utc'), 'casaco senhora', 'casaco senhora preto com fecho vermelho', 1500, 'R. da Asprela, Porto, Portugal', 1, 1);
INSERT INTO Oferta VALUES (3, 'andreRica', 'televisão LG', strftime('%s', '2017-02-10 15:50:16', 'utc'), 'televisão LG LED HD TV de 32''', 'LED HD TV de 32'', Smart TV webOS e ThinQ AI, Bluetooth 5.0, Wi-Fi, HDMI 1.4 (3) e USB', 35000, 3, 'Porto, Portugal', 0, 0);
INSERT INTO Oferta (id, vendedor, titulo, data_de_publicacao, produto, descricao, morada, negociavel, usado) VALUES (4, 'pedro1987', 'Livro H.P. volume 3 ''Harry Potter e o Prisioneiro de Azkaban''', strftime('%s', '2017-03-01 13:42:18', 'utc'), 'J.K. Rowling, ''Harry Potter e o Prisioneiro de Azkaban''', 'Terceiro livro da saga Harry Potter, de J.K. Rowling.', 'Rua Luís de Camões 1000-059, Lisboa, Portugal', 1, 1);
INSERT INTO Oferta VALUES (5, 'google', 'Pixel 4', strftime('%s', '2018-03-22 11:50:16', 'utc'), 'Pixel 4', 'Telemóvel Pixel 4 branco, 5.7pol, 6GB RAM, 64GB armazenamento', 90000, 15, 'Avenida da Liberdade, nº 110, 1269-046 Lisboa, Portugal', 1, 0);
INSERT INTO Oferta (id, vendedor, titulo, data_de_publicacao, produto, descricao, morada, negociavel, usado) VALUES (6, 'pedro1987', 'As Dez Figuras Negras, de Agatha Christie', strftime('%s', '2018-04-05 11:50:02', 'utc'), 'Agatha Christie, ''As Dez Figuras Negras''', 'Um clássico romance de mistério de Agatha Christie.', 'Rua Luís de Camões 1000-059, Lisboa, Portugal', 1, 1);
INSERT INTO Oferta VALUES (7, 'nestle', 'nestum', strftime('%s', '2019-12-10 10:10:10', 'utc'), 'Nestum Mel', 'Nestum mel com 8 vitaminas, ferro e cálcio', 300, 100, 'R. da Nestlé 99, 3860-071 Aveiro, Portugal', 0, 0);
INSERT INTO Oferta VALUES (8, 'beatrizLopes', 'Manual Escolar Matemática 8º ano', strftime('%s', '2020-08-16 19:43:28', 'utc'), 'Manual Escolar ''Matemática - 8.º Ano'', Porto Editora', 'Manual de matemática para alunos do 8º ano. Não riscado.', 1300, 1, 'Rua das Lagoas, Guimarães, Portugal', 1, 1);
INSERT INTO Oferta VALUES (9, 'lasa', 'Edredão', strftime('%s', '2020-12-09 23:30:06', 'utc'), 'Edredão azul', 'Edredão azul 240x220 cm', 2000, 3, 'Estrada Nacional 105, Nº3344, 4835-517 Guimarães, Portugal', 1, 0);
INSERT INTO Oferta VALUES (10, 'nutella', 'Nutella B-ready', strftime('%s', '2021-02-20 08:05:31', 'utc'), 'Nutella B-ready', 'Gostas de Nutella num frasco? Experimenta numa barra.', 265, 1200, 'R. Conde Arnoso 5, 1700-102 Lisboa, Portugal', 0, 0);

INSERT INTO Categoria VALUES ('roupa');
INSERT INTO Categoria VALUES ('brinquedos');
INSERT INTO Categoria VALUES ('comida');
INSERT INTO Categoria VALUES ('tecnologia');
INSERT INTO Categoria VALUES ('casa');
INSERT INTO Categoria VALUES ('jardim');
INSERT INTO Categoria VALUES ('livros');
INSERT INTO Categoria VALUES ('educação');

INSERT INTO CategoriaOferta VALUES (1, 'comida');
INSERT INTO CategoriaOferta VALUES (2, 'roupa');
INSERT INTO CategoriaOferta VALUES (3, 'tecnologia');
INSERT INTO CategoriaOferta VALUES (4, 'livros');
INSERT INTO CategoriaOferta VALUES (5, 'tecnologia');
INSERT INTO CategoriaOferta VALUES (6, 'livros');
INSERT INTO CategoriaOferta VALUES (7, 'comida');
INSERT INTO CategoriaOferta VALUES (8, 'livros');
INSERT INTO CategoriaOferta VALUES (8, 'educação');
INSERT INTO CategoriaOferta VALUES (9, 'casa');
INSERT INTO CategoriaOferta VALUES (10, 'comida');

INSERT INTO Reportar (utilizador, oferta, motivo) VALUES ('joana_silva', 6, 'Vendedor com muita falta de profissionalismo, insultou-me e ofendeu-me durante uma chamada telefónica.');
INSERT INTO Reportar (utilizador, oferta, motivo) VALUES ('zealves', 9, 'fotografia inapropriada');
INSERT INTO Reportar (utilizador, oferta, motivo) VALUES ('beatrizLopes', 9, 'imagem imprópria');
INSERT INTO Reportar VALUES ('zealves', 7, 'plagiaram a receita da minha avó', 1);

INSERT INTO Conversa VALUES ('joana_silva', 4);
INSERT INTO Mensagem VALUES (1, 'joana_silva', 4, strftime('%s', '2017-04-14 20:53:49', 'utc'), 0, 'Bom dia, precisava desse livro para completar a minha coleção. Seria possível negociar o preço?');
INSERT INTO Mensagem VALUES (2, 'joana_silva', 4, strftime('%s', '2017-04-14 21:15:19', 'utc'), 1, 'Sim');
INSERT INTO Mensagem VALUES (3, 'joana_silva', 4, strftime('%s', '2017-04-16 20:09:59', 'utc'), 0, 'Não sei bem que preço está disposto a vender. 15 euros parece-lhe bem?');
INSERT INTO Mensagem VALUES (4, 'joana_silva', 4, strftime('%s', '2017-04-16 23:51:56', 'utc'), 1, 'Isso é muito pouco. Pelo menos 30');
INSERT INTO Mensagem VALUES (5, 'joana_silva', 4, strftime('%s', '2017-04-17 08:29:39', 'utc'), 0, 'Por esse preço mais valia eu comprar um livro não usado na loja. O que me diz de 27.99?');
INSERT INTO Mensagem VALUES (6, 'joana_silva', 4, strftime('%s', '2017-04-17 10:50:06', 'utc'), 1, 'OK');
INSERT INTO Conversa VALUES ('miguel37', 4);
INSERT INTO Mensagem VALUES (7, 'miguel37', 4, strftime('%s', '2017-04-20 14:11:14', 'utc'), 0, 'Boa tarde, a oferta já não está disponível? Tinha a intenção de comprar por 35 euros.');
INSERT INTO Mensagem VALUES (8, 'miguel37', 4, strftime('%s', '2017-04-20 15:23:27', 'utc'), 1, 'Não, devia ter falado mais cedo.');
INSERT INTO Conversa VALUES ('joana_silva', 6);
INSERT INTO Mensagem VALUES (9, 'joana_silva', 6, strftime('%s', '2018-04-06 11:24:26', 'utc'), 0, 'Bom dia, estava interessada nesse livro.');
INSERT INTO Mensagem VALUES (10, 'joana_silva', 6, strftime('%s', '2018-04-06 11:25:39', 'utc'), 0, 'No entanto, tenho alguns receios. Poderia por favor fornecer fotografias do livro aberto em diversas páginas?');
INSERT INTO Mensagem VALUES (11, 'joana_silva', 6, strftime('%s', '2018-04-06 17:04:47', 'utc'), 1, 'Veja...');
INSERT INTO Mensagem VALUES (12, 'joana_silva', 6, strftime('%s', '2018-04-09 09:05:25', 'utc'), 0, 'Muito obrigada. Gostaria de continuar a negociação por telemóvel. Não tem atendido as minhas chamadas.');
INSERT INTO Conversa VALUES ('pedro1987', 5);
INSERT INTO Mensagem VALUES (13, 'pedro1987', 5, strftime('%s', '2019-04-03 16:50:06', 'utc'), 0, 'Pode baixar o preço da oferta para 800 euros?');
INSERT INTO Mensagem VALUES (14, 'pedro1987', 5, strftime('%s', '2019-04-05 14:49:07', 'utc'), 1, 'Sim pode ser.');
INSERT INTO Conversa VALUES ('catarinapires', 3);
INSERT INTO Mensagem VALUES (15, 'catarinapires', 3, strftime('%s', '2019-07-12 19:10:57', 'utc'), 0, 'Estou interessada na oferta.');
INSERT INTO Conversa VALUES ('zealves', 7);
INSERT INTO Mensagem VALUES (16, 'zealves', 7, strftime('%s', '2021-03-30 19:00:02', 'utc'), 0, 'É preciso terem vergonha na cara.');
INSERT INTO Mensagem VALUES (17, 'zealves', 7, strftime('%s', '2021-03-30 19:05:48', 'utc'), 1, 'Boa noite, José! Lamentamos que possa estar insatisfeito com algo. Poderá contactar o nosso serviço de apoio ao cliente ligando para 253154752. Tentaremos resolver o seu problema o mais brevemente possível.');

INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20010520/nutella.jpg', 1);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20110630/vestido_frente.jpg', 2);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20110630/vestido_costas.jpg', 2);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20170210/televisao.jpg', 3);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20180322/google_pixel_4.jpg', 5);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20180405/livro.jpg', 6);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20191210/nestle_nestum.jpg', 7);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20200816/manual_mat8.jpg', 8);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20201209/azul_erdredao.jpg', 9);
INSERT INTO Imagem (path_ficheiro, oferta) VALUES ('server/onlinemarketplace/db/imgs/20210220/nut_bready.jpg', 10);
INSERT INTO Imagem (path_ficheiro, mensagem) VALUES ('server/onlinemarketplace/db/imgs/20180406/livro.jpg', 11);
INSERT INTO Imagem (path_ficheiro, mensagem) VALUES ('server/onlinemarketplace/db/imgs/20180406/livro (2).jpg', 11);
INSERT INTO Imagem (path_ficheiro, mensagem) VALUES ('server/onlinemarketplace/db/imgs/20180406/livro (3).jpg', 11);
INSERT INTO Imagem (path_ficheiro, mensagem) VALUES ('server/onlinemarketplace/db/imgs/20210330/nestle_contact_info.png', 17);

INSERT INTO Subscricao VALUES ('joana_silva', 'roupa', 20000, 1);
INSERT INTO Subscricao (comprador, categoria) VALUES ('joana_silva', 'livros');
INSERT INTO Subscricao VALUES ('miguel37', 'tecnologia', 90000, 0);
INSERT INTO Subscricao (comprador, categoria) VALUES ('zealves', 'casa');
INSERT INTO Subscricao (comprador, categoria, preco_max) VALUES ('zealves', 'livros', 1500);
INSERT INTO Subscricao (comprador, categoria, incluir_usados) VALUES ('pedro1987', 'casa', 1);
INSERT INTO Subscricao VALUES ('pedro1987', 'tecnologia', 180000, 0);
INSERT INTO Subscricao (comprador, categoria, preco_max) VALUES ('pedro1987', 'livros', 4000);

INSERT INTO Compra (id, comprador, oferta, data_da_compra, preco_unitario_final, preco_total) VALUES (1, 'miguel37', 2, strftime('%s', '2012-09-17 15:30:06', 'utc'), 1500, 1500);
INSERT INTO Compra (id, comprador, oferta, data_da_compra, preco_unitario_final, preco_total) VALUES (2, 'miguel37', 1, strftime('%s', '2012-09-17 16:11:28', 'utc'), 500, 500);
INSERT INTO Compra (id, comprador, oferta, data_da_compra, preco_unitario_final, preco_total) VALUES (3, 'joana_silva', 4, strftime('%s', '2017-04-17 15:30:06', 'utc'), 2799, 2799);
INSERT INTO Compra VALUES (4, 'pedro1987', 1, strftime('%s', '2018-08-29 14:31:06', 'utc'), 500, 5, 2500);
INSERT INTO Compra VALUES (5, 'miguel37', 1, strftime('%s', '2018-09-10 10:39:50', 'utc'), 500, 2, 1000);
INSERT INTO Compra (id, comprador, oferta, data_da_compra, preco_unitario_final, preco_total) VALUES (6, 'joana_silva', 5, strftime('%s', '2018-09-17 17:18:17', 'utc'), 79900, 79900);
INSERT INTO Compra (id, comprador, oferta, data_da_compra, preco_unitario_final, preco_total) VALUES (7, 'catarinapires', 3, strftime('%s', '2019-07-13 22:50:33', 'utc'), 35000, 35000);
INSERT INTO Compra VALUES (8, 'miguel37', 1, strftime('%s', '2019-10-10 10:12:14', 'utc'), 500, 1, 500);
INSERT INTO Compra VALUES (9, 'pedro1987', 1, strftime('%s', '2021-03-09 22:16:43', 'utc'), 265, 1, 265);

INSERT INTO Avaliacao VALUES (1, 4, 'Em ótimo estado.');
INSERT INTO Avaliacao VALUES (2, 5, 'Ninguém supera a qualidade da Nutella.');
INSERT INTO Avaliacao VALUES (3, 1, 'Algumas folhas estavam vincadas.');
INSERT INTO Avaliacao (compra, classificacao) VALUES (4, 4);
INSERT INTO Avaliacao VALUES (5, 5, 'Ao longo dos anos tem sempre mantido a qualidade consistente.');
INSERT INTO Avaliacao VALUES (6, 2, 'Não era bem o desejado.');
INSERT INTO Avaliacao (compra, classificacao) VALUES (8, 5);
INSERT INTO Avaliacao VALUES (9, 3, 'Não sabe tão bem quanto Nutella & GO.');