Algoritmo "Regisrto de detentos em sistema penitenci�rio"
tipo
   detento=registro //Estrutura de dados como detento como registro
      nome: caractere // Defini��o do tipo de dado a serem registrado
      idade: inteiro // Idade do topo inteiro
      peso: real // Peso do tipo real
      altura: real // Altura do tipo real
      cor: caractere // Cor do tipo caractere
      sexo: caractere // Sexo do tipo caractere
      nacionalidade: caractere // Nacionalidade do tipo caractere

   fimregistro //Finaliza a fun��o registro
Var
   preso: vetor[1..3] de detento // Vetor usado para percorrer a variavel preso
   opcao: caractere // Variavel para escolher a op��o desejada no MENU
   i: inteiro // La�o de intera��o
   nome_aux: caractere // Variavel auxiliar para armazenar temporariamente um nome
   idade: inteiro // Variavel para informar a idade
   peso, altura: real // Variavel para informar o peso e altura
   cor: caractere // Variavel para informar a cor
   sexo: caractere // Variavel para informar a sexo
   nacionalidade: caractere // Variavel para informar a nacionalidade
   usuarios_cadastrados: inteiro //Vari�vel para buscar detentos cadastrados
procedimento logo (UFSC: caractere) // Procedimento para exibir logo do sistema penitenciario
inicio
   escreval("############################################") //Exibe um cabe�alho
   escreval(" Sistema penitenci�rio da UFSC ") // Logo do Sistema penitenci�rio
   escreval("############################################") //Exibe um cabe�alho
fimprocedimento // Fim do procedimento da "logo"

procedimento cadastrar () // Procedimento para cadastrar detentos
var
   contador : inteiro //Variavel para contar detentos cadastrados
inicio
   contador <- 0 //Vari�vel recebe valor zero para cadastrar detentos
   para i de 1 ate 3 faca //Loop para cadastrar detentos
      se preso[i].nome = "" entao //Instru��o a ser executada
         escreval("Digite o nome do(a) detento(a) a ser cadastrado: ") //impress�o na tela dos dados nome a ser cadastrado
         leia(preso[i].nome) //Leitura da variavel nome
         escreval("Informe a idade do(a) detento(a) ",preso[i].nome,": ") //impress�o na tela dos dados idade a ser cadastrado
         leia(preso[i].idade) //Leitura da variavel idade
         escreval("Informe o peso e altura do(a) detento(a) ",preso[i].nome,".") //impress�o na tela dos dados peso e altura a ser cadastrado
         escreval("Peso: ") //impress�o na tela dos dados peso a ser cadastrado
         leia(preso[i].peso) //Leitura da variavel peso
         escreval("Altura: ") //impress�o na tela dos dados altura a ser cadastrado
         leia(preso[i].altura) //Leitura da variavel altura
         escreval("Informe a cor do(a) detento(a) ",preso[i].nome,": ") //impress�o na tela dos dados cor a ser cadastrado
         leia(preso[i].cor) //Leitura da variavel cor
         escreval("Informe o sexo do(a) detento(a) ",preso[i].nome,": ") //impress�o na tela dos dados sexo a ser cadastrado
         leia(preso[i].sexo) //Leitura da variavel sexo
         escreval("Informe a nacionalidade do(a) detento(a) ",preso[i].nome,": ") //impress�o na tela dos dados nacionalidade a ser cadastrado
         leia(preso[i].nacionalidade) //Leitura da variavel nacionalidade
         contador <- contador + 1 //Incrementa mais 1 detetnto cadastrado
         interrompa //Interromper o la�o de repeti��o
      fimse //fim da instru��o se
   fimpara //Fim da sequencia de comandos a serem repetidos
   se contador <= 0 entao //Instru��o a ser executada se n�o tiver mais espa�o para cadastrar
      escreval("Sem espa�o para cadastrar mais detentos.") //Mensagem caso n�o tenha espa�o para cadastrar mais detentos
   fimse //fim da instru��o se
fimprocedimento // Fim do procedimento cadastrar

procedimento remover (nomebusca: caractere) // Procedimento para remover detentos cadastrados
var
   i: inteiro // La�o de intera��o
inicio
   para i de 1 ate 3 faca //Loop para remover detentos
      se preso[i].nome = nomebusca entao //Instru��o a ser executada
         preso[i].nome <- "" // Nome recebe vazio
         preso[i].idade <- 0 // Idade recebe valor 0
         preso[i].peso <- 0 // Peso recebe valor 0
         preso[i].altura <- 0 // Altura recebe valor 0
         preso[i].cor <- "" // Cor recebe vazio
         preso[i].sexo <- "" // Sexo recebe vazio
         preso[i].nacionalidade <- "" // Nacionalidade recebe vazio
         escreval("Detento removido com sucesso!") //Mensagem informando que os dados foram removidos com sucesso
         interrompa //Interromper o la�o de repeti��o
      fimse //fim da instru��o se
   fimpara //Fim da sequencia de comandos a serem repetidos
fimprocedimento // Fim do procedimento remover

procedimento buscar (nomebusca: caractere) // Procedimento para busca de tentos cadastrado
var
   i: inteiro // La�o de intera��o
   contador: inteiro //Vari�vel que sera usada para encontrar nome buscado
inicio
   contador <-0 //Vari�vel recebe valor zero para buscar detentos
   para i de 1 ate 3 faca //Loop para buscar detentos
      se preso[i].nome = nomebusca entao //Instru��o a ser executada se o nome buscado � igual ao nome informado
         escreval("===========Informa��es do detento=========") //Informa��es gerais do detento
         escreval("Detento: ",preso[i].nome," ") // nome do detento
         escreval("Idede: ",preso[i].idade,"") // idade do detento
         escreval("Peso: ",preso[i].peso,"") // peso do detento
         escreval("Altura: ",preso[i].altura,"") // altura do detento
         escreval("Cor: ",preso[i].cor,"") // cor do detento
         escreval("Sexo: ",preso[i].sexo,"") // sexo do detento
         escreval("Nacionalidade: ",preso[i].nacionalidade,"") // Pa�s que nasceu
         contador <- contador + 1 //Incrementa o contador de detentos encontrados
         interrompa //Interromper o loop depois de buscar detento
      fimse //fim da instru��o se
   fimpara //Fim da sequencia de comandos a serem repetidos
   se contador <= 0 entao //Verifica se nenhum detento corresponde � busca
      escreval("Detento n�o encontrado.") //Mensagem dada ao n�o encontrar detento cadastrado
   fimse //Fim da instru��o se
fimprocedimento // Fim do procedimento buscar

procedimento listados(nome: caractere) // Procedimento para listar detentos cadastrados
var
   i: inteiro // La�o de intera��o
inicio
   para i de 1 ate 3 faca //Loop para listar detentos
      se preso[i].nome = nome entao //Instru��o a ser executada
         interrompa //Interromper o la�o de repeti��o
      fimse //fim da instru��o se
      para i de 1 ate 3 faca //Loop para buscar detentos cadastrados
         escreval(preso[i].nome) //Lista o nome dos detentos ja cadastrados
      fimpara //Fim da sequencia de comandos a serem repetidos
      interrompa //Interromper o loop depois de buscar detento
   fimpara //Fim da sequencia de comandos a serem repetidos
fimprocedimento // Fim do procedimento listar

procedimento alterar(nomebusca: caractere)  //procedimento para alterar dados
var
   i: inteiro // la�o de intera��o

inicio
   para i de 1 ate 3 faca //Loop para alterar detentos
      se preso[i].nome = nomebusca entao  //Instru��o a ser executada
         escreval("Detendo encontrado. Informe os novos dados. ")  //mensagem para alterar dados
         escreval("Informe o nome do(a) detento(a): ") //Nome a ser alterado
         leia(preso[i].nome) //leitura davariavel nome
         escreval("Informe a nova idade do(a) detento(a) ", preso[i].nome, ": ") //impress�o na tela dos dados idade a ser alterado
         leia(preso[i].idade) //leitura davariavel idade
         escreval("Informe o novo peso e altura do(a) detento(a) ", preso[i].nome, ".") //impress�o na tela dos dados peso a ser alterado
         escreval("Peso: ") //impress�o na tela dos dados peso a ser alterado
         leia(preso[i].peso)  //leitura davariavel peso
         escreval("Altura: ") //impress�o na tela dos dados altura a ser alterado
         leia(preso[i].altura) //leitura davariavel altura
         escreval("Informe a cor do(a) detento(a) ", preso[i].nome, ": ") //impress�o na tela dos dados cor a ser alterado
         leia(preso[i].cor)  //leitura davariavel cor
         escreval("Informe o sexo do(a) detento(a) ", preso[i].nome, ": ") //impress�o na tela dos dados sexo a ser alterado
         leia(preso[i].sexo)  //leitura davariavel sexo
         escreval("Informe a nacionalidade do(a) detento(a) ", preso[i].nome, ": ") //impress�o na tela dos dados nacionalidade a ser alterado
         leia(preso[i].nacionalidade) //leitura davariavel nacionalidade
         escreval("Detento alterado com sucesso!") // Mensagem informando altera��o dos dados
         interrompa // Interromper o loop depois de alterar detento
      fimse
   fimpara

   escreval("Detento n�o encontrado.") //Mensagem dada ao n�o encontrar detento cadastrado
fimprocedimento // fim do procedimento alterar dados

inicio //Inicio do programa inicial
   logo("") //Chama o procedimento "logo"
   usuarios_cadastrados <- 0 //Inicia a vari�vel "usuarios_cadastrados" como zero
   repita // repete uma sequ�ncia de comandos
      escreval("============================================") //Exibe um cabe�alho
      escreval("====================MENU====================") //Exibe a op��o MENU para interra��o
      escreval("============================================") //Exibe um cabe�alho
      escreval("Tecle C para cadastrar novo detento.") //Exibe a op��o para cadastrar detentos
      escreval("Tecle B para buscar informa��es do detento.") //Exibe a op��o para buscar detetnto cadastrado
      escreval("Tecle L para listar detentos j� cadastrados.") //Exibe a op��o para listar todos os detentos cadastrados
      escreval("Tecle R para remover detento.") //Exibe a op��o para remover detento cadastrado
      escreval("Tecle A para alterar os dados do detendo(a).")
      escreval("Tecle S para sair do MENU.") //Exibe a op��o para sair do menu
      escreval("============================================") //Exibe um cabe�alho
      escreval("Informe sua escolha: ") // Informar a escolha do usuario
      leia(opcao) // leitura da op��o desejada

      se opcao = "A" entao // Op��o para alterar
         escreval("Informe o nome do(a) detento(a) para alterar seus dados: ")
         leia(nome_aux)

         alterar(nome_aux) // Chama o procedimento alterar
      fimse // Fim da op��o alterar

      se opcao = "C" entao //op��o para cadastrar
         cadastrar() //Chama o procedimento cadastrar
      fimse //Fim da op��o cadastrar

      se opcao = "R" entao //Op��o para remover cadastrados
         escreval("Informe o nome do(a) detento(a) a ser removido: ") //Solicita o nome a ser removido
         leia(nome_aux) //L� o nome informado pelo usu�rio

         remover(nome_aux) //Chama o procedimento "remover"
      fimse //Fim da op��o remover

      se opcao = "B" entao // op��o para para buscar cadastrados
         escreval("Informe o nome do(a) detento(a) a ser buscado no sistema penitenciario: ") //Solicita o nome a ser buscado
         leia(nome_aux) //L� o nome informado pelo usu�rio

         buscar(nome_aux) //Chama o procedimento busca
      fimse //Fim da op��o buscar

      se opcao = "L" entao //Op��o para acesso a listar
         escreval("Detentos j� cadastrados: ") //Lista os detentos ja cadastrados

         listados(nome_aux) //Chama o procedimento listados
      fimse //Fim da op��o listar
   ate opcao = "S" //Sair do do menu de inter��o

fimalgoritmo