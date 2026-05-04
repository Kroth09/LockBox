-- ============================================
-- BookWise - Seed do Banco de Dados
-- ============================================

USE bookwise;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE avaliacoes;
TRUNCATE TABLE livros;
TRUNCATE TABLE usuarios;

SET FOREIGN_KEY_CHECKS = 1;

-- ============================================
-- USUÁRIOS (senhas = password_hash de '123456')
-- ============================================
INSERT INTO usuarios (id, nome, email, senha) VALUES
                                                  (1, 'Eduardo Silva',   'eduardo@email.com',  '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
                                                  (2, 'Ana Souza',       'ana@email.com',      '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
                                                  (3, 'Carlos Mendes',   'carlos@email.com',   '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
                                                  (4, 'Beatriz Lima',    'beatriz@email.com',  '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
                                                  (5, 'Rafael Costa',    'rafael@email.com',   '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- ============================================
-- LIVROS
-- ============================================
INSERT INTO livros (id, titulo, autor, descricao, ano_de_lancamento, usuario_id, imagem) VALUES
                                                                                             (1,  'Dom Casmurro',                   'Machado de Assis',      'Bentinho, narrador da história, conta sua vida desde a infância até a velhice, com foco em seu amor por Capitu e a dúvida sobre sua fidelidade.',                          1899, 1, NULL),
                                                                                             (2,  'O Cortiço',                      'Aluísio Azevedo',       'Retrato naturalista da vida em um cortiço no Rio de Janeiro do século XIX, explorando as relações humanas e sociais em um ambiente de pobreza.',                           1890, 2, NULL),
                                                                                             (3,  'Grande Sertão: Veredas',         'João Guimarães Rosa',   'Riobaldo, um ex-jagunço, narra sua vida no sertão mineiro em um monólogo filosófico que mistura aventura, amor e questões existenciais.',                                  1956, 1, NULL),
                                                                                             (4,  'Memórias Póstumas de Brás Cubas','Machado de Assis',      'Um defunto-autor narra sua própria vida de forma irreverente e crítica, explorando a sociedade brasileira do século XIX com ironia e pessimismo.',                        1881, 3, NULL),
                                                                                             (5,  'A Moreninha',                    'Joaquim Manuel de Macedo','Considerado o primeiro romance brasileiro, conta o romance entre estudantes de medicina no Rio de Janeiro do século XIX.',                                              1844, 2, NULL),
                                                                                             (6,  'Capitães da Areia',              'Jorge Amado',           'Retrata a vida de um grupo de meninos abandonados que vivem nas ruas de Salvador, liderados por Pedro Bala, em uma Salvador dos anos 1930.',                              1937, 4, NULL),
                                                                                             (7,  'Vidas Secas',                    'Graciliano Ramos',      'A saga de Fabiano, sua família e sua cachorra Baleia fugindo da seca no sertão nordestino, em uma obra de denúncia social e riqueza estilística.',                        1938, 1, NULL),
                                                                                             (8,  'O Alienista',                    'Machado de Assis',      'O doutor Simão Bacamarte decide internar todos os loucos de Itaguaí em sua Casa Verde, em uma sátira filosófica sobre razão, loucura e poder.',                          1882, 5, NULL),
                                                                                             (9,  'Iracema',                        'José de Alencar',       'A lenda do Ceará narrada através do amor entre a índia Iracema e o guerreiro branco Martim, com uma bela prosa poética que evoca a natureza brasileira.',               1865, 3, NULL),
                                                                                             (10, 'Quincas Borba',                  'Machado de Assis',      'Rubião herda a fortuna de Quincas Borba e a filosofia do Humanitismo, mas se deixa levar pela ambição e pelos falsos amigos em sua ascensão e queda.',                   1891, 2, NULL),
                                                                                             (11, 'A Hora da Estrela',              'Clarice Lispector',     'Macabéa, uma jovem nordestina ingênua vivendo no Rio de Janeiro, é narrada por Rodrigo S.M. em uma reflexão sobre a existência, a pobreza e a identidade feminina.',    1977, 4, NULL),
                                                                                             (12, 'O Guarani',                      'José de Alencar',       'A história de amor entre Peri, um índio goitacá, e Ceci, filha de um fidalgo português, ambientada no Brasil colonial do século XVII.',                                  1857, 5, NULL);

-- ============================================
-- AVALIAÇÕES
-- ============================================
INSERT INTO avaliacoes (id, usuario_id, livro_id, avaliacao, nota) VALUES
                                                                       (1,  2, 1,  'Um clássico absoluto! A dúvida sobre Capitu me perseguiu por dias.',           5),
                                                                       (2,  3, 1,  'Machado escreve de forma brilhante, mas o ritmo pode cansar alguns leitores.', 4),
                                                                       (3,  4, 1,  'Releitura incrível. Cada vez que leio descubro algo novo.',                    5),
                                                                       (4,  1, 2,  'Retrato cru e poderoso da sociedade brasileira. Essencial.',                   4),
                                                                       (5,  5, 2,  'Naturalismo pesado, mas necessário para entender o Brasil do século XIX.',     3),
                                                                       (6,  1, 3,  'Difícil de ler, mas recompensador. Uma das maiores obras da literatura mundial.', 5),
                                                                       (7,  4, 3,  'Tentei três vezes antes de conseguir terminar. Vale o esforço.',               4),
                                                                       (8,  2, 4,  'A ironia do defunto-autor é genial. Adorei cada página.',                     5),
                                                                       (9,  5, 4,  'Machado de Assis em seu melhor momento. Atemporal.',                          5),
                                                                       (10, 1, 5,  'Charmoso para a época, um pouco ingênuo para os padrões atuais.',             3),
                                                                       (11, 3, 6,  'Jorge Amado consegue fazer você amar e sofrer com os personagens.',           5),
                                                                       (12, 2, 6,  'Uma denúncia social disfarçada de romance. Impactante.',                      4),
                                                                       (13, 5, 7,  'A seca como personagem. Graciliano Ramos é um gênio da contenção.',          5),
                                                                       (14, 4, 7,  'Leitura densa e emocionante. A Baleia é inesquecível.',                      5),
                                                                       (15, 1, 8,  'Sátira perfeita sobre o poder e a loucura. Curto e certeiro.',               4),
                                                                       (16, 3, 8,  'Machado antecipou discussões que ainda são relevantes hoje.',                 5),
                                                                       (17, 2, 9,  'A prosa poética de Alencar é deslumbrante. Um romance fundador.',            4),
                                                                       (18, 5, 9,  'Romântico e épico ao mesmo tempo. Um prazer de ler.',                        4),
                                                                       (19, 1, 10, 'O Humanitismo é uma crítica genial ao positivismo. Obra subestimada.',       4),
                                                                       (20, 4, 11, 'Clarice em estado puro. Uma leitura que transforma.',                        5),
                                                                       (21, 3, 11, 'Pequena em páginas, enorme em significado.',                                 5),
                                                                       (22, 2, 12, 'Aventureiro e romântico. Ótima porta de entrada para o romantismo brasileiro.', 3),
                                                                       (23, 5, 12, 'Peri é um herói inesquecível. Alencar sabia criar personagens.',             4);