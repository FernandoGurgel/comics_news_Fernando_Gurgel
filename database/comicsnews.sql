-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/04/2017 às 22:57
-- Versão do servidor: 5.6.30-1
-- Versão do PHP: 7.0.12-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `comicsnews`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticia`
--

CREATE TABLE `noticia` (
  `ID` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `noticia`
--

INSERT INTO `noticia` (`ID`, `titulo`, `descricao`, `img`, `data`, `autor`) VALUES
(20, 'Engrenagem', 'Engrenagem que movem o mundo.', '1.jpg', '2017-04-03 07:34:35', 'Fernando Gurgel'),
(21, 'Hoje vou dormir após entrega esses desafio!', 'Os efeitos de uma noite mal dormida ou mesmo em claro ficam, literalmente, estampados na cara. Além das olheiras, o ar cansado de quem está com os pensamentos inquietos é apenas algumas das consequências do martírio noturno. A insônia, contudo, tem efeitos menos aparentes e bem mais perigosos do que apenas cansaço no dia seguinte. Segundo especialistas, quem sofre com a dificuldade para dormir está mais propenso a desenvolver diversos problemas de saúde, como distúrbios respiratórios, fibromialgia e doenças ligadas à tireoide. Não dormir também está associado a questões econômicas e mesmo de segurança pública. O insone produz menos no trabalho e os motoristas sonolentos representam um perigo nas estradas e nas vias urbanas.\r\nMuitas vezes menosprezada, a insônia costuma ser encarada como simples consequência de dias difíceis ou resultado de preocupações futuras. Acreditar nisso, porém, é minimizar a questão, que merece mais cuidado. O problema virou foco da atenção de médicos e especialistas e está no centro das rodas de discussão científica atuais. Em junho deste ano, cientistas e pesquisadores do mundo inteiro reuniram-se em Boston, nos Estados Unidos, para a Sleep 2012, conferência mais importante e respeitada sobre o tema.\r\nA preocupação não é injustificada. Segundo dados da Associated Professional Sleep Societies (Associação Profissional das Sociedades do Sono), entidade que realiza pesquisas relacionadas ao sono em todo o mundo, a insônia faz parte da rotina de 10,2% a 40% da população mundial. A mesma pesquisa reforça que o ritmo frenético de cidades movimentadas, como São Paulo, se reflete nos hábitos noturnos dos moradores. Na capital paulista, por exemplo, a taxa de insones atinge cerca de 45% das pessoas.\r\nO sinal de alerta, de acordo com os critérios adotados pela Associação Brasileira do Sono (ABS), é dado quando a dificuldade para pregar os olhos à noite persiste por pelo menos três vezes por semana, durante o período de um mês. Como resultado, toda e qualquer atividade fica comprometida, inclusive, as tarefas profissionais. Luciano Ribeiro Pinto Junior, neurologista do Instituto do Sono de São Paulo, explica que isso acontece porque o sono, em quantidade e qualidade insuficientes, reduz a capacidade de manter a atenção durante o dia. “Para cada 24 horas que a pessoa passa sem dormir, há um declínio linear, de cerca de 25%, no desempenho de tarefas que requerem atenção.”\r\nO médico salienta ainda que a insônia não tem apenas uma causa. É preciso levar em consideração fatores psicológicos, cognitivos, sociais, biológicos, comportamentais e até mesmo genéticos que podem desencadear o quadro. “O indivíduo que não dorme pode estar sofrendo por causa de uma briga com o namorado(a), mas também porque toma medicações que interferem no sono ou porque tem problemas psiquiátricos”, exemplifica. Há ainda a predisposição genética ou costumes que atrapalham as horas de descanso, como assistir à televisão momentos antes de ir para a cama. “Jovens têm mais dificuldades de dormir por causa do contexto em que vivem, especialmente por causa da tecnologia,” considera. Asma, doenças pulmonares, tabagismo e hipertensão também funcionam como um despertador pessoal.\r\nNoite sem dormir significa dia seguinte difícil na certa. “Quem dorme pouco ou mal adoece, emburrece, envelhece e não emagrece”, lista Luciano Ribeiro. Os que convivem com a insônia ainda enfrentam mais problemas no ambiente de trabalho do que os bocejos ocasionais. Alterações sensoriais, como diminuição do campo visual e ilusões de ótica; fala lentificada e com pouca entonação; além de uma capacidade questionável para tomar decisões são consequências, no mínimo, suficientes para transformar o expediente em um inferno. O médico explica que funções cerebrais que envolvem flexibilidade, originalidade do pensamento, planejamento e fluência verbal se deterioram com a privação de sono. Em outras palavras, é como se o cérebro esquecesse de algumas palavras momentaneamente, o que exigiria mais esforço e o aumento na entonação da voz para articulá-las.\r\n', 'lampada.jpg', '2017-04-03 07:45:18', 'Fernando Gurgel'),
(22, 'STJ prorroga prisão de conselheiros do TCE acusados de corrupção', 'BRASÍLIA — O ministro Felix Fisher, do Superior Tribunal de Justiça (STJ), determinou a prorrogação da prisão provisória dos cinco conselheiros do Tribunal de Contas do Rio de Janeiro presos na última quarta-feira, acusados de receber suborno para fazer vistas grossas em obras e contratos de empreiteiras com o governo estadual. A prorrogação da prisão foi pedida pelo vice-procurador-geral da República, José Bonifácio de Andrada, que está à frente do caso. Para o vice-procurador-geral, a permanência dos conselheiros na cadeia é essencial para o avanço das investigações.\r\n\r\nO prazo da primeira prisão temporária decretada por Fisher termina amanhã (domingo). Com a nova ordem, os conselheiros podem ficar presos até a próxima sexta. Não está descartada, no entanto, a conversão da prisão temporária em preventiva dada a gravidade e a complexidade das acusações de corrupção que pesam contra os conselheiros. As informações sobre os desvios tornadas públicas até o momento atingem também o governador Luiz Fernando Pezão, o presidente da Assembleia Legislativa, Jorge Picciani , ambos do PMDB, os dois políticos mais poderosos do estado.\r\n\r\nMas, segundo investigadores, o caso está apenas no começo e outras estruturas da corrupção, ainda não reveladas, precisam ser devidamente esclarecidas. Foram presos na chamada Operação Quinto do Ouro o presidente do TCE, Aloysio Neves, e os conselheiros Domingos Brazão, José Gomes Graciosa, Marco Antônio Alencar, José Nolasco e Aluisio Gama. A estrutura de corrupção, que tem quase duas décadas de funcionamento, foi delatada pelo conselheiro Jonas Lopes e pelo filho dele Jonas Lopes de Carvalho Neto.', 'Unknown-300x300.jpeg', '2017-04-03 16:04:23', 'Fernando Gurgel'),
(24, 'carlos news', 'alguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisaalguma noticia sobvre algumna coisa', '62d79539cc5af6f8ba5372c1f8046c21.jpg', '2017-04-03 20:08:34', 'carlos'),
(25, 'Noticia 1', 'Corpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticiav\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia', 'LOVE BEER.png', '2017-04-03 20:13:14', 'Noticia 1'),
(26, 'Noticia 2', 'Corpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticiav\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia', 'Unknown-300x300.jpeg', '2017-04-03 20:14:50', 'Noticia =2'),
(27, 'Notcicia 3', 'Corpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticiav\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia', 'LOVE BEER.png', '2017-04-03 20:15:44', 'Noticia 3'),
(28, 'Noticica 4', 'Corpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticia\r\nCorpo Noticiav\r\n\r\n\r\nCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo NoticiaCorpo Noticia\r\nCorpo Noticia', 'Unknown-300x300.jpeg', '2017-04-03 20:16:12', 'Noticia 444'),
(29, 'fer', 'frfre\r\n\r\n\r\nfer\r\n\r\n\r\nfeer', '1.jpg', '2017-04-04 02:45:31', 'fer'),
(30, 'dsds', 'Um defeito comum que vemos em vários frameworks é a falta de suporte para textos realmente responsivos. Enquanto os elementos na tela respondem fluidamente, o texto ainda se redimensiona em uma base fixa. Para melhorar este problema, em páginas carregadas de texto, nós criamos uma classe que redimensiona fluidamente o tamanho do texto e a altura da linha para otimizar a leitura do usuário. O tamanho da linha está entre 45-80 caracteres e a altura da linha se redimensiona para ser maior em telas menores.\r\n<br>\r\nPara ver o Fluxo de Texto em ação, redimensione seu navegador lentamente e observe o tamanho do texto mudar. Use o botão acima para trocar entre ligado/desligado o fluxo de texto e veja a diferença!', 'Unknown-300x300.jpeg', '2017-04-04 02:50:27', 'sdsd');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
