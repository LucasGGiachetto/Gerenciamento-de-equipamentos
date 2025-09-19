CREATE DATABASE IF NOT EXISTS gerenciamento_de_equipamentos;
USE gerenciamento_de_equipamentos;

CREATE TABLE perfis (
    id INT PRIMARY KEY,
    perfil VARCHAR(50) NOT NULL
);

INSERT INTO perfis (id, perfil) VALUES
(1, 'Comum'),
(2, 'Administrador'),
(3, 'Tecnico'),
(4, 'Gerente');

CREATE TABLE equipamentos (
    id INT PRIMARY KEY,
    equipamento VARCHAR(255) NOT NULL,
    imagem VARCHAR(255),
    descricao TEXT,
    ativo TINYINT(1),
    data DATETIME
);

INSERT INTO equipamentos (id, equipamento, imagem, descricao, ativo, data) VALUES
(1, 'Torno Mecânico 500mm Modelo BV20L 220V - TTM520 - Tander', 'Torno_Mecanico_500mm.png', 'O Torno Mecânico Tander TTM520 é uma ferramenta utilizada por vários profissionais na confecção e acabamento de inúmeras peças metálicas, tais como: eixos, polias, pinos, roscas, peças cilíndricas internas e externas, cones, esferas, entre outros. \nEste torno vem com motor monofásico de 220V e 550W de potência, o que lhe confere maior torque e vida útil, menor consumo de energia e baixo índice de manutenção. \nPossui interruptor magnético com a função de travagem de emergência, rotação frente/reversa e a função de proteção ao torno e aos componentes elétricos.', 1, '2019-10-01 14:54:20.873'),
(2, 'Processador Intel Core i9-7920X Skylake, Cache 16.5MB, 2.9GHz (4.3GHz Max Turbo), LGA 2066 - BX80673I97920X', 'Intel_Core_i9.png', 'Com esse processador inovador e incrível você desfruta ao máximo o verdadeiro potencial do seu computador e desfruta da mais pura velocidade. Maximize o seu desempenho seja trabalhando, jogando, navegando ou assistindo o seu filme preferido, com esse processador você pode tudo!', 1, '2019-10-01 15:00:20.873'),
(3, 'Monitor, Dell, U2518D, UltraSharp, Preto e Suporte em Alumínio, 25"', 'Monitor_Dell.png', 'Dê vida ao seu trabalho com uma tela de 25 polegadas quase sem bordas que conta com detalhes em cores vívidas e consistentes graças a tecnologia hdr, resolução qhd e ângulo de visão ultra-amplo. Aumente sua performance com os recursos dell display manager, dell easy arrange e trabalhe confortavelmente graça a um suporte totalmente ajustável e recurso confortview.', 0, '2018-10-01 10:00:20.000'),
(4, 'Mouse Gamer Razer Deathadder Essential óptico 5 Botões 4G 6.400 DPI', 'Mouse_Razer.png', 'Nada melhor do que um mouse gamer com tecnologia de ponta para qualificar seus comandos e aprimorar suas jogadas nos games. Com este Mouse Gamer Razer, sua atuação nas batalhas gamers será ainda mais bem-sucedidas, com desempenho acima da média e desenvoltura arrasadora, que vai deixar seus oponentes impressionados. O mouse Razer Deathadder Essential tem sensor óptico de 6400 DPI de 4G, 5 botões, design moderno e ergonômico, especialmente projetado para jogadores destros, e uma empunhadura lateral emborrachada que garante mais firmeza ao manuseio do equipamento, melhorando as respostas obtidas pelos players. O mouse Razer ainda oferece ajuste de sensibilidade, pezinhos Ultraslick silenciosos, cabo ultra resistente de fibra trançada e Modo Always-On, que mantém o mouse ligado mesmo quando o equipamento estiver inativo. É um mouse gamer Razer para ninguém botar defeito, com todas as funções e especificações técnicas que você precisa para ter mais produtividade nos jogos. O Razer Deathadder Essential é realmente essencial e ainda tem o diferencial de estar habilitado para Razer Synapse 3 e de ser compatível com PC e Mac, com porta USB. Conheça o modelo e faça um investimento seguro!', 1, '2017-10-01 09:00:20.000'),
(5, 'All-in-One Media Keyboard', 'Teclado_Microsoft.png', 'O All-in-One Media Keyboard é o dispositivo ideal para sua sala ou home office. Com teclado em tamanho natural e trackpad multitoque integrado, é possível digitar, passar o dedo, arrastar, fazer zoom e clicar facilmente. O teclado com teclas de atalho de mídia personalizáveis permite que a Web e suas músicas, fotos e filmes favoritos estejam a seu alcance. O teclado também tem um design resistente, portanto, não é necessário se preocupar com esbarrões, quedas ou derramamentos comuns. O All-in-One Media Keyboard é tudo o que você precisa para digitar confortavelmente e navegar sem esforço.', 0, '2017-10-01 13:00:00.000');

CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    senha VARCHAR(255) NOT NULL,
    perfil INT,
    FOREIGN KEY (perfil) REFERENCES perfis(id)
);

INSERT INTO usuarios (id, senha, perfil) VALUES
(1, '111111', 1),
(2, '212121', 2),
(3, '414141', 4),
(4, '313131', 3);

CREATE TABLE comentarios (
    id INT PRIMARY KEY,
    comentario TEXT,
    equipamento INT,
    perfil INT,
    data DATETIME,
    FOREIGN KEY (equipamento) REFERENCES equipamentos(id),
    FOREIGN KEY (perfil) REFERENCES perfis(id)
);

INSERT INTO comentarios (id, comentario, equipamento, perfil, data) VALUES
(1, 'Deverá fazer o download do aplicativo da Razer para alterar a cor do mouse.', 2, 4, '2020-09-07 18:00:00.000'),
(2, 'Problema de aquecimento no processador após 1 ano de uso.', 2, 2, '2020-05-04 10:30:00.000'),
(3, 'Problema de aquecimento no processador após 3 anos de uso.', 3, 4, '2021-03-04 15:30:00.000'),
(4, 'Realizada a manutenção preventiva', 3, 1, '2021-06-05 09:30:00.000'),
(5, 'Realizada a manutenção corretiva', 4, 1, '2021-07-10 08:00:00.000'),
(6, 'Realizada a manutenção corretiva', 5, 2, '2021-07-13 09:00:00.000'),
(7, 'Realizada a manutenção corretiva', 3, 2, '2021-08-10 10:00:00.000'),
(8, 'Realizada a manutenção corretiva', 4, 3, '2021-09-18 17:00:00.000'),
(9, 'Realizada a manutenção corretiva', 5, 3, '2021-10-11 11:00:00.000'),
(10, 'Realizada a manutenção corretiva', 3, 4, '2021-11-21 12:00:00.000'),
(11, 'Realizada a manutenção corretiva', 5, 4, '2021-12-22 13:00:00.000');