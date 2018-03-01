-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ifsp_horarios
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplinas` (
  `iddisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) DEFAULT NULL,
  `sigla` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (1,'Alimentos e Bebidas em Eventos','ABEE2'),(2,'Cerimonial, Protocolo e Etiqueta em Eventos','CPEE2'),(3,'Direito e Legislação Aplicada a Eventos','DLAE3'),(4,'Gestão de Pessoas em Eventos','GPEE3'),(7,'Informática Aplicada a Eventos','IAEE1'),(8,'Inglês Instrumental I','INIE1'),(10,'Cerimonial e Protocolo em Eventos','CPRE2'),(11,'Direito e Legislação Aplicada a Eventos','DLAE3'),(13,'Ética e Postura Profissional','ETPE1'),(14,'Gestão de Pessoas em Eventos','GPEE3'),(15,'Gest Operacional e Log de Eventos I','GOLE1'),(16,'Gest Operacional e Log de Eventos II','GOLE2'),(17,'Gestão Financeira em Eventos','GFEE3'),(18,'Hospitalidade em Eventos','HSPE1'),(19,'Informática Aplicada a Eventos','IAEE1'),(21,'Introdução Ao Turismo','ITUE1'),(22,'Projeto Integrador em Eventos','PIGE3'),(23,'Redação e Comunicação Aplicada','RECE1'),(24,'Téc de Mont e Dec de Amb e Int P Eventos','DECE3'),(25,'Técnicas de Promoção em Eventos','TPPE2'),(26,'Técnicas e Práticas de Lazer em Eventos','TPEE2'),(27,'Cnc e Cim','CNCT4'),(28,'Comandos Elétricos','COET3'),(29,'Controlador Lógico Programável','CLPT4'),(30,'Controle de Processos','COPT4'),(31,'Desenho Técnico Assistido por Computador','DTCT2'),(33,'Eletrônica de Potência','ELPT3'),(34,'Ensaios Mecânicos e Não Destrutivos','ENST2'),(35,'Fundamentos de Soldagem','FUST3'),(36,'Gestão da Qualidade e Empreendedorismo','CQET4'),(37,'Hidráulica e Pneumática','HEPT3'),(38,'Instrumentação Eletrônica','INET4'),(39,'Instrumentação Industrial','INIT4'),(40,'Máquinas Elétricas','MAQT2'),(42,'Mecânica dos Fluidos','MFLT2'),(43,'Microcontroladores I','MICT3'),(44,'Microcontroladores II','MICT4'),(45,'Projeto Integrado','PRIT4'),(46,'Redes Industriais','REIT3'),(47,'Resistência dos Materiais','REST1'),(48,'Robótica Industrial','ROBT4'),(49,'Sistemas de Manutenção','SIMT3'),(50,'Técnicas de Usinagem','TEUT3'),(51,'Elaboração de Projetos Agropecuários','EPAA4'),(52,'Matemática Aplicada','MATA1'),(53,'Sistemas de Informação','STIA4'),(54,'Comercialização e Marketing','CMKA4'),(56,'Gestão da Qualidade','GDQA4'),(57,'Instalações e Construções Rurais','ICRA4'),(58,'Legislação Rural','LRRA4'),(60,'Projeto Integrado Ao Agronegócio I','PI1A3'),(61,'Projeto Integrado Ao Agronegócio II','PI2A4'),(62,'Sistemas de Informação','SIIA4'),(63,'Associativismo e Cooperativismo','ACOI3'),(64,'Empreendedorismo e Ética Profissional','EEPI4'),(66,'Fisiologia e Tecnologia Pós-colheita','FTPI2'),(67,'Gestão Agroindustrial','GATI3'),(68,'Planejamento e Gestão Ambiental','PGAI4'),(69,'Projeto Integrador I','PIII3'),(70,'Projeto Integrador II','PIII4'),(71,'Segurança Alimentar','SALI4'),(73,'Tecnologia de Açucar, Mel e Ovos','TAOI3'),(74,'Tecnologia de Carne e Derivados','TCDI4'),(75,'Tecnologia de Fermentações','TFRI3'),(76,'Tecnologia de Leite e Derivados','TLDI3'),(77,'Tecnologia de Pescado e Derivados','TPDI4'),(79,'Agronegócio e Sustentabilidade','ANSN1'),(80,'Cadeias Produtivas de Animais Não-ruminantes','CNRN1'),(81,'Cadeias Produtivas de Animais Ruminantes','CARN2'),(82,'Cadeias Produtivas de Culturas Anuais','CCAN2'),(83,'Cadeias Produtivas de Olerícolas','CPON1'),(84,'Comunicação e Expressão Empresarial','CEEN1'),(85,'Estatística Aplicada','EAPN2'),(86,'História da Ciência e Tecnologia','HCTN1'),(87,'Inglês para Fins Específicos','INEN2'),(88,'Máquinas e Mecanização Agrícola','MMAN2'),(89,'Manejo e Conservação de Solos','MCSN2'),(90,'Matemática Aplicada','MTAN1'),(91,'Biologia Celular','BCEB2'),(92,'Diversidade Biológica','DIBB1'),(93,'Ecologia Geral e de Populações','EGPB2'),(94,'Estatística Básica','EBAB2'),(95,'Filosofia e Sociologia da Educação','FSEB2'),(96,'Fundamentos da Matemática','FUMB1'),(97,'Fundamentos da Química','FUQB1'),(98,'Fundamentos de Física','FUFB1'),(99,'História da Ciência e Tecnologia','HCTB2'),(100,'História da Educação','HEDB1'),(101,'Invertebrados I','INVB2'),(102,'Leitura e Produção de Texto','LPTB1'),(103,'Química Orgânica','QORB2'),(104,'Alimentos e Bebidas em Eventos','ABE'),(105,'Disciplina de Apoio Curricular em Geografia','ACG'),(108,'Cerimonial, Protocolo e Etiqueta em Eventos','CER'),(112,'Geografia','GEO'),(113,'Gestão Operacional e Produção de Eventos','GOP'),(115,'Língua Estrangeira / Espanhol','LEE'),(119,'Marketing em Eventos','MKT'),(122,'Técnicas de Lazer e Recreação em Eventos','TPE'),(124,'Química Aplicada','ATL'),(125,'Biologia e Programa de Saúde','BPS'),(131,'Língua Estrangeira / Inglês','LEI'),(134,'Planejamento e Gestão Ambiental','PGA'),(135,'Produção Agroindustrial','PIA'),(137,'Segurança Alimentar e do Trabalho','SAT'),(139,'Tecnologia de Carnes e Derivados','TCD'),(140,'Tecnologia de Leite e Derivados','TLD'),(141,'Tecnologia de Produtos Vegetais','TPV'),(142,'Disciplina de Apoio Curricular em Artes','ACA'),(143,'Decoração de Ambientes e Interiores para Even','DEC'),(144,'Gestão Administrativa Financeira','GAF'),(145,'Produção Cultural e Artística','PCA'),(146,'Projeto Integrador em Eventos','PIE'),(148,'Artes','ART'),(155,'Hidráulica e Pneumática','HEP'),(157,'Inglês','ING'),(159,'Língua Portuguesa e Redação','LPR'),(161,'Projeto Integrador I','PR1'),(162,'Projeto Integrador II','PR2'),(164,'Sistemas Analógicos','SAN'),(166,'Tecnologia dos Materiais','TCM'),(167,'Análise de Alimentos','ADL'),(168,'Biologia Aplicada','EMA'),(169,'Fisiologia e Tecnologia Pós-colheita','FTP'),(173,'Tecnologia de Açúcar, Mel e Ovos','TAM'),(174,'Tecnologia de Fermentações','TDF'),(175,'Tecnologia de Produtos Não Alimentícios','TPN'),(186,'Língua Portuguesa e Literaturas','LLI'),(190,'Produção Vegetal e Processos Pós-colheita','PVP'),(191,'Química Aplicada','QUA'),(193,'Sociologia','SOC'),(195,'Desenho Técnico Mecânico e Metrologia','DTM'),(202,'Informática','INF'),(205,'Lógica e Programação','LPG'),(210,'Tecnologia dos Materiais','TMA'),(211,'Bioquímica de Alimentos','BALI1'),(212,'Equipamentos e Instalações Agroindustriais','EIAI1'),(213,'Horticultura','HRTI1'),(214,'Informática Aplicada','IFAI1'),(215,'Introdução Aos Processos Agroindustriais','IPAI1'),(216,'Química Geral e Analítica','QGAI1'),(217,'Cadeias Produtivas de Espécies Florestais','CFLN3'),(218,'Construções e Instalações Rurais','CIRN3'),(219,'Controle Fitossanitário','CFTN3'),(220,'Informática Aplicada','IFAN3'),(221,'Melhoramento Genético','MGTN3'),(222,'Turismo Rural','TURN3'),(223,'Ecologia de Comunidades e Ecossistemas','ECEB3'),(224,'Histologia e Embriologia','HEMB3'),(225,'Invertebrados II','INVB3'),(226,'Metodologia do Trabalho Científico','MTCB3'),(227,'Morfologia e Anatomia Vegetal','MAVB3'),(228,'Psicologia da Educação','PEDB3'),(229,'Cadeias Produtivas de Frutíferas','CPFN3'),(230,'Controladores Lógicos Programáveis','CLP'),(231,'Comandos Numéricos Computadorizados','CNC'),(234,'Inglês','LES'),(236,'Microcontroladores','MIC'),(237,'Sistemas de Controle e Robótica','SCR'),(238,'Usinagem','USI'),(253,'Turismo e Lazer','TUL'),(257,'Educação Física','EFI'),(261,'Sistemas Digitais','SID'),(265,'Microbiologia e Segurança Alimentar','MSA'),(266,'Processamento de Produtos de Panificação','PPP'),(268,'Química Analítica','QAN'),(271,'Administração de Suprimentos','ASUI2'),(272,'Agricultura','AGRI2'),(273,'Análise de Alimentos','ADLI2'),(276,'Cadeias Produtivas de Culturas Forrageiras','CCFN4'),(277,'Cadeias Produtivas de Culturas Perenes','CPPN4'),(278,'Segurança Alimentar','SALN4'),(280,'Tecnologia de Alimentos de Origem Animal','TAAN4'),(281,'Tecnologia de Alimentos de Origem Vegetal','TAVN4'),(282,'Bioquímica','BIQB4'),(283,'Cordados','CORB4'),(284,'Estrutura e Funcionamento do Ensino','EFEB4'),(285,'Genética Clássica','GECB4'),(286,'Microbiologia','MIBB4'),(287,'Sistemática Vegetal','SIVB4'),(288,'Administração de Propriedades Rurais','APRN5'),(289,'Análise de Custos e Investimentos no Agronegócio','ACIN5'),(290,'Economia e Políticas Agrícolas','EPGN5'),(291,'Gestão Ambiental e da Qualidade','GAGN5'),(292,'Metodologia Científica','MCIN5'),(293,'Sanidade Animal e Defesa Sanitária','SDSN5'),(294,'Técnicas de Irrigação e Drenagem','TIDN5'),(295,'Anatomia Geral e Comparada','AGCB5'),(296,'Biofísica','BFIB5'),(297,'Fisiologia Vegetal','FVEB5'),(298,'Geologia e Paleontologia','GPAB5'),(299,'Prática Pedagógica: Didática','PPDB5'),(305,'Optativas 3','OP3'),(310,'Gestão Agroindustrial','GAI'),(321,'Empreendedorismo','EMP'),(323,'Desenho Técnico Mecânico','DTEM1'),(324,'Física Aplicada','FIAM1'),(326,'Matemática Aplicada','MAPM1'),(327,'Mecânica Técnica','MCTM1'),(328,'Metrologia','METM1'),(330,'Desenho Auxiliado por Computador','DACM2'),(331,'Higiene e Segurança do Trabalho','HSTM2'),(332,'Informática Aplicada','INFM2'),(333,'Mecânica dos Fluidos','MFLM2'),(334,'Operações Mecânicas','OMEM2'),(335,'Processos de Fabricação Mecânica','PFMM2'),(336,'Resistência dos Materiais','RESM2'),(337,'Gestão de Pessoas','GDPN6'),(338,'Logística Agroindustrial','LAIN6'),(339,'Marketing e Comercialização Rural','MCRN6'),(340,'Planejamento do Projeto em Agronegocio','PPAN6'),(341,'Recursos Materiais e Patrimoniais','RMPN6'),(342,'Tecnologias de Precisão','TPRN6'),(343,'Biologia Evolutiva','BEVB6'),(344,'Fisiologia Comparada','FCOB6'),(345,'Fisiologia Humana','FHUB6'),(346,'Genética Moderna','GMOB6'),(347,'Libras','LIBB6'),(348,'Prática Pedagógica: Ensino de Ciências','PPCB6'),(349,'Biologia Aplicada','BIA'),(368,'Eletrônica Aplicada','EAP'),(372,'Física','FIS'),(380,'Microcontroladores','MCL'),(381,'Prática de Automação','PAT'),(382,'Projeto Integrador em Mecatrônica','PIM'),(386,'Técnicas de Redação','TRD'),(388,'Análise Instrumental','ANI'),(391,'Projeto Integrador em Agroindústria','PAG'),(392,'Processamento de Bebidas','PBE'),(394,'Processamento de Produtos Fermentados','PPF'),(403,'Resistência dos Materiais e Elementos de Máquinas','REM'),(407,'Iniciação a Pesquisa','INP'),(410,'Processamento de Produtos de Origem Vegetal','PPV'),(416,'Máquinas Ferramentas e Dispositivos','MFD'),(418,'Física Aplicada','FAP'),(419,'Mecânica Aplicada','MCA'),(420,'Elementos de Máquinas','ELMM3'),(421,'Eletricidade','ELEM3'),(422,'Laboratório de Mecânica','LMEM3'),(423,'Metodologia Científica','MTCM3'),(424,'Operações Mecânicas','OMEM3'),(425,'Sistemas Hidraúlicos e Pneumáticos','SHPM3'),(426,'Cooperativismo e Associativismo','CASN7'),(427,'Empreendedorismo e Ética Profissional','EEPN7'),(428,'Execução do Projeto em Agronegocio','EPAN7'),(429,'Legislação Rural','LGRN7'),(430,'Mercados Futuros e Comércio Exterior','MFCN7'),(431,'Sociologia e Extensão Rural','SERN7'),(432,'Imunologia','IMUB7'),(433,'Parasitologia','PARB7'),(434,'Prática Pedagógica: o Currículo e o Professor','PPPB7'),(435,'Sistemática Filogenética e Biogeografia','SFBB7'),(436,'Gestão de Crises em Recreação','GCR'),(437,'Gestão de Empresas','GEE'),(442,'Envasamento e Embalagem','EEE'),(452,'Processos Agroindustriais','PAD'),(453,'Processamento de Produtos Não Alimentares','PPN'),(463,'Gestão de Empresas','GEE'),(466,'Lazer e Inclusão','LAI'),(471,'Química','QUI'),(475,'Ensaios Mecânicos','ENM'),(481,'Instrumentação e Redes Industriais','IRI'),(495,'Biologia','BIO'),(497,'Espanhol','ESP'),(502,'História','HIS'),(508,'Processamento de Produtos de Origem Animal','PPA'),(512,'Tratamento de Àgua e Resíduos Agroindustriais','TAR'),(513,'Atividades de Lazer e Recreação','ALR'),(525,'Matemática','MAT'),(526,'Psicologia e Relacionamento Interpessoal','PRI'),(529,'Análise de Circuitos','ANC'),(532,'Desenho Assistido por Computador','DAC'),(543,'Prática de Usinagem','PUS'),(557,'Língua Estrangeira Moderna - Inglês','LEM'),(564,'Química e Biologia de Alimentos','QBA'),(570,'Filosofia','FIL'),(578,'Manifestações Culturais e Folclóricas','MCF'),(583,'Biologia','BIO'),(600,'Introdução À Linguística','INLL1'),(601,'Língua Espanhola I','LESL1'),(602,'Língua Portuguesa I (morfologia I)','LPOL1'),(603,'Leitura e Produção de Textos I','LPTL1'),(604,'Metodologia da Pesquisa Científica','MPCL1'),(605,'Teoria de Aquisição e Aprendizado de Línguas','TAAL1'),(606,'Teoria Literária','TLIL1'),(607,'Biologia Celular e Molecular','BCME1'),(608,'Cálculo I','CA1E1'),(609,'Comunicação e Expressão','CEXE1'),(611,'Geometria Analítica e Álgebra Linear','GALE1'),(612,'Metodologia Científica e Tecnológica','MCTE1'),(613,'Controle e Automação','COAM4'),(614,'Controle Númerico Computadorizado','CNCM4'),(615,'Gestão Empresarial e Empreendedorismo','GEEM4'),(616,'Manufatura Auxiliada por Computador','MACM4'),(617,'Manutenção Mecânica','MMEM4'),(618,'Projeto Integrador','PRJM4'),(619,'Projetos de Máquinas e Ferramentas','PMFM4'),(620,'Literatura','LIT'),(621,'Gramática','GRA'),(622,'Redação','RED');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios` (
  `idhorario` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(45) DEFAULT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `inicio` varchar(5) DEFAULT NULL,
  `fim` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'NOITE','1ª AULA','19:00','19:50'),(2,'NOITE','2ª AULA','19:50','20:40'),(3,'NOITE','3ª AULA','21:00','21:50'),(4,'NOITE','4ª AULA','21:50','22:40'),(5,'TARDE','1ª AULA','13:30','14:20'),(6,'TARDE','2ª AULA','14:20','15:30'),(7,'TARDE','3ª AULA','15:30','16:20'),(8,'TARDE','4ª AULA','16:20','17:10'),(9,'MANHÃ','1ª AULA','08:00','08:50'),(10,'MANHÃ','2ª AULA','08:50','09:40'),(11,'MANHÃ','3ª AULA','10:00','10:50'),(12,'MANHÃ','4ª AULA','10:50','11:40'),(13,'MANHÃ','5ª AULA','11:40','12:30'),(14,'MANHÃ','6ª AULA','12:30','13:20');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios_disciplinas`
--

DROP TABLE IF EXISTS `horarios_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios_disciplinas` (
  `idhorario_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `iddisciplina` int(11) DEFAULT NULL,
  `idturma` int(11) DEFAULT NULL,
  `idhorario` int(11) DEFAULT NULL,
  `idprofessor` int(11) DEFAULT NULL,
  `diasemana` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhorario_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios_disciplinas`
--

LOCK TABLES `horarios_disciplinas` WRITE;
/*!40000 ALTER TABLE `horarios_disciplinas` DISABLE KEYS */;
INSERT INTO `horarios_disciplinas` VALUES (1,372,1,9,1192,0),(2,372,1,10,1192,0),(3,495,1,11,503,0),(4,495,1,12,503,0),(5,570,1,9,1193,1),(6,570,1,10,1193,1),(7,193,1,11,480,1),(8,193,1,12,480,1),(9,525,1,13,671,1),(10,620,1,9,1626,2),(11,620,1,10,1626,2),(12,525,1,11,671,2),(13,525,1,12,671,2),(14,497,1,13,1191,2),(15,497,1,14,1191,2),(16,502,1,9,666,3),(17,502,1,10,666,3),(18,112,1,11,1234,3),(19,112,1,12,1234,3),(20,525,1,13,671,3),(21,620,1,9,1626,4),(22,620,1,10,1626,4),(23,416,1,11,1182,4),(24,416,1,12,1182,4),(25,195,1,5,1627,0),(26,195,1,6,1627,0),(27,157,1,7,1625,0),(28,157,1,8,1625,0),(29,210,1,5,1628,1),(30,210,1,6,1628,1),(31,471,1,5,1629,3),(32,471,1,6,1629,3),(33,205,1,7,1630,3),(34,205,1,8,1630,3),(35,157,2,9,1625,0),(36,157,2,10,1625,0),(37,261,2,11,1631,0),(38,261,2,12,1631,0),(39,570,2,13,1193,0),(40,620,2,9,1191,1),(41,620,2,10,1191,1),(42,529,2,11,1631,1),(43,529,2,12,1631,1),(44,372,2,13,842,1),(45,193,2,9,492,2),(46,193,2,10,492,2),(47,621,2,11,1626,2),(48,622,2,12,1626,2),(49,497,2,13,1626,2),(50,497,2,14,1626,2),(51,525,2,9,1230,3),(52,525,2,10,1230,3),(53,570,2,11,1193,3),(54,0,0,0,0,0);
/*!40000 ALTER TABLE `horarios_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professores` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=1632 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (425,'Adriana de Menezes Tavares'),(427,'Alex Mauricio Mazo'),(430,'Angela Teresa Rochetti'),(434,'Bendito Germano de F. Costa'),(438,'Daniele Souza de Carvalho'),(439,'Elias Franco'),(440,'Fernanda Pereira Liguori'),(441,'Fernando Portella R. de Arruda'),(442,'Gabriela de Godoy C. Arduino'),(448,'João Henrique A. G. Molina'),(454,'Luciana Manoel de Oliveira'),(459,'Maria Cristina Marques'),(460,'Mariana Camargo Schmidt'),(461,'Matheus Manoel T. de Menezes'),(463,'Newton Tamassia Pegolo'),(466,'Paulo Cesar Chagas Rodrigues'),(472,'Renato Antonio Cruz'),(475,'Salatir Rodrigues Junior'),(479,'Adria de Sousa Bentes'),(480,'Anderson Gomes de Paiva'),(481,'Arejacy Antonio Sobral Silva'),(483,'Eduardo Antonio Bolla Junior'),(485,'Jairo Giacomini Junior'),(486,'Lívia Cristina dos Santos'),(487,'Lucas Clarindo Pereira'),(488,'Luis Carlos Scalon Cunha'),(491,'Maressa de Freitas Vieira'),(492,'Maria Caroline Trovo'),(496,'Rodrigo Eduardo Predolin'),(497,'Camila Aparecida da Silva'),(498,'Elaine Aparecida C. Hoyos'),(499,'Julio Cesar Pissuti Damalio'),(500,'Luciane de Fatima R. de Souza'),(501,'Paulo Renato de P. Frederico'),(502,'Rafael Cedric Moller Meneghini'),(503,'Raissa Maria Mattos Gonçalves'),(504,'Raquel Ribeiro de Souza Silva'),(505,'Tarsila Ferraz Frezza'),(507,'Alexandre Menezes de Camargo'),(508,'Rafael Aparecido Ferreira'),(666,'Daniel Trevisan Samways'),(667,'Vanessa Mota Andrade de Castro'),(669,'Alexandre Indriunas'),(670,'Estela Aparecida F. Soares'),(671,'Fabio Crivelli de Avila'),(672,'Fabio Henrique Busquim Pereira'),(673,'Juliano Ricciardi Floriano'),(674,'Marcelo Cavaguti'),(675,'Maria Glalcy Fequetia Dalcim'),(680,'Hugo Antonio Lima de Souza'),(812,'Raquel Marrafon Nicolosi'),(816,'Marcus Vinicius Maia Rodrigues'),(824,'Demetrio Zacarias'),(825,'Luciana Pereira de M. Carneiro'),(835,'Wellington Henrique Cassinelli'),(837,'Alexandre Jose Romagnoli'),(839,'Eva Cristina Francisco'),(840,'Marcela Pavan Bagagli'),(841,'Percia Helena Sabbag Mazo'),(842,'Fernando Homem de Mello Medeir'),(844,'Vanda dos Santos Silva'),(895,'Gustavo Pio M. Krall Ciniciato'),(913,'Anderson Ribeiro Andriati'),(947,'Allan Braune Reis'),(1182,'Marcelo Santos Damiao'),(1183,'Ronald Ribeiro Alves'),(1190,'André Giovanini de O. Sartori'),(1191,'Elida Cristina de Carvalho C.'),(1192,'Emerson Aparecido Ferreira F.'),(1193,'Fernando Lopes de Aquino'),(1194,'Flavia Hatsumi Izumida Andrade'),(1195,'Isabel Freitas Cunha'),(1196,'Larissa Santos Silva'),(1197,'Geza Thais Rangel e Souza'),(1222,'Tamyris Proença Bonilha G.'),(1223,'Wellington da Silva'),(1224,'Renata Ferreira de Souza'),(1230,'Franklin Emanuel B Soukeff'),(1231,'Jean Carlos da Silva Roveri'),(1232,'Leandro Henrique da Silva'),(1233,'Osvaldo Cunha Neto'),(1234,'Andre Luis Mattos Silva'),(1616,'Everton Aparecido da Costa'),(1617,'Fabiano Souza de A. Castro'),(1621,'Danuza Américo Felipe de Lima'),(1622,'Juliana Zara Brondi Mendes'),(1623,'Monique Priscila de Abreu Reis'),(1624,'Sabrina Afonso'),(1625,'Sthefanie Kalil Kairallah'),(1626,'Luan'),(1627,'Everton/Wellorzzon'),(1628,'Wellorzzon'),(1629,'Larissa/Sabrina'),(1630,'Angela/Alex'),(1631,'Marcus/Alexandre C.');
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turmas` (
  `idturma` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idturma`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'MECATRONICA 1'),(2,'MECATRONICA 2'),(3,'MECATRONICA 3'),(4,'LAZER 1'),(5,'LAZER 2'),(6,'LAZER 3'),(7,'AGROINDUSTRIA 1'),(8,'AGROINDUSTRIA 2'),(9,'AGROINDUSTRIA 3'),(10,'EVENTOS 1'),(11,'EVENTOS 2'),(12,'EVENTOS 3'),(13,'MECANICA 1'),(14,'MECANICA 2'),(15,'MECANICA 3'),(16,'MECANICA 4'),(17,'LETRAS 1'),(18,'LETRAS 2'),(19,'LETRAS 3'),(20,'LETRAS 4'),(21,'LETRAS 5'),(22,'LETRAS 6'),(23,'LETRAS 7'),(24,'LETRAS 8'),(25,'AGRONEGOCIO 1'),(26,'AGRONEGOCIO 2'),(27,'AGRONEGOCIO 3'),(28,'AGRONEGOCIO 4'),(29,'AGRONEGOCIO 5'),(30,'AGRONEGOCIO 6'),(31,'AGRONEGOCIO 7'),(32,'BIOLOGIA 1'),(33,'BIOLOGIA 2'),(34,'BIOLOGIA 3'),(35,'BIOLOGIA 4'),(36,'BIOLOGIA 5'),(37,'BIOLOGIA 6'),(38,'BIOLOGIA 7'),(39,'BIOLOGIA 8'),(40,'BIOSSISTEMAS 1'),(41,'BIOSSISTEMAS 2'),(42,'BIOSSISTEMAS 3'),(43,'BIOSSISTEMAS 4'),(44,'BIOSSISTEMAS 5'),(45,'BIOSSISTEMAS 6'),(46,'BIOSSISTEMAS 7'),(47,'BIOSSISTEMAS 8'),(48,'GASTRONOMIA 1'),(49,'GASTRONOMIA 2'),(50,'GASTRONOMIA 3'),(51,'GASTRONOMIA 4');
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01 13:52:21
