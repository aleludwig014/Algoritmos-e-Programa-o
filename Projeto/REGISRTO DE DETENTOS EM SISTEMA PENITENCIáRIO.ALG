Algoritmo "Regisrto de detentos em sistema penitenciário"
tipo
   detento=registro //Estrutura de dados como detento como registro
      nome: caractere // Definição do tipo de dado a serem registrado
      idade: inteiro // Idade do topo inteiro
      peso: real // Peso do tipo real
      altura: real // Altura do tipo real
      cor: caractere // Cor do tipo caractere
      sexo: caractere // Sexo do tipo caractere
      nacionalidade: caractere // Nacionalidade do tipo caractere

   fimregistro //Finaliza a função registro
Var
   preso: vetor[1..3] de detento // Vetor usado para percorrer a variavel preso
   opcao: caractere // Variavel para escolher a opção desejada no MENU
   i: inteiro // Laço de interação
   nome_aux: caractere // Variavel auxiliar para armazenar temporariamente um nome
   idade: inteiro // Variavel para informar a idade
   peso, altura: real // Variavel para informar o peso e altura
   cor: caractere // Variavel para informar a cor
   sexo: caractere // Variavel para informar a sexo
   nacionalidade: caractere // Variavel para informar a nacionalidade
   usuarios_cadastrados: inteiro //Variável para buscar detentos cadastrados
procedimento logo (UFSC: caractere) // Procedimento para exibir logo do sistema penitenciario
inicio
   escreval("############################################") //Exibe um cabeçalho
   escreval(" Sistema penitenciário da UFSC ") // Logo do Sistema penitenciário
   escreval("############################################") //Exibe um cabeçalho
fimprocedimento // Fim do procedimento da "logo"

procedimento cadastrar () // Procedimento para cadastrar detentos
var
   contador : inteiro //Variavel para contar detentos cadastrados
inicio
   contador <- 0 //Variável recebe valor zero para cadastrar detentos
   para i de 1 ate 3 faca //Loop para cadastrar detentos
      se preso[i].nome = "" entao //Instrução a ser executada
         escreval("Digite o nome do(a) detento(a) a ser cadastrado: ") //impressão na tela dos dados nome a ser cadastrado
         leia(preso[i].nome) //Leitura da variavel nome
         escreval("Informe a idade do(a) detento(a) ",preso[i].nome,": ") //impressão na tela dos dados idade a ser cadastrado
         leia(preso[i].idade) //Leitura da variavel idade
         escreval("Informe o peso e altura do(a) detento(a) ",preso[i].nome,".") //impressão na tela dos dados peso e altura a ser cadastrado
         escreval("Peso: ") //impressão na tela dos dados peso a ser cadastrado
         leia(preso[i].peso) //Leitura da variavel peso
         escreval("Altura: ") //impressão na tela dos dados altura a ser cadastrado
         leia(preso[i].altura) //Leitura da variavel altura
         escreval("Informe a cor do(a) detento(a) ",preso[i].nome,": ") //impressão na tela dos dados cor a ser cadastrado
         leia(preso[i].cor) //Leitura da variavel cor
         escreval("Informe o sexo do(a) detento(a) ",preso[i].nome,": ") //impressão na tela dos dados sexo a ser cadastrado
         leia(preso[i].sexo) //Leitura da variavel sexo
         escreval("Informe a nacionalidade do(a) detento(a) ",preso[i].nome,": ") //impressão na tela dos dados nacionalidade a ser cadastrado
         leia(preso[i].nacionalidade) //Leitura da variavel nacionalidade
         contador <- contador + 1 //Incrementa mais 1 detetnto cadastrado
         interrompa //Interromper o laço de repetição
      fimse //fim da instrução se
   fimpara //Fim da sequencia de comandos a serem repetidos
   se contador <= 0 entao //Instrução a ser executada se não tiver mais espaço para cadastrar
      escreval("Sem espaço para cadastrar mais detentos.") //Mensagem caso não tenha espaço para cadastrar mais detentos
   fimse //fim da instrução se
fimprocedimento // Fim do procedimento cadastrar

procedimento remover (nomebusca: caractere) // Procedimento para remover detentos cadastrados
var
   i: inteiro // Laço de interação
inicio
   para i de 1 ate 3 faca //Loop para remover detentos
      se preso[i].nome = nomebusca entao //Instrução a ser executada
         preso[i].nome <- "" // Nome recebe vazio
         preso[i].idade <- 0 // Idade recebe valor 0
         preso[i].peso <- 0 // Peso recebe valor 0
         preso[i].altura <- 0 // Altura recebe valor 0
         preso[i].cor <- "" // Cor recebe vazio
         preso[i].sexo <- "" // Sexo recebe vazio
         preso[i].nacionalidade <- "" // Nacionalidade recebe vazio
         escreval("Detento removido com sucesso!") //Mensagem informando que os dados foram removidos com sucesso
         interrompa //Interromper o laço de repetição
      fimse //fim da instrução se
   fimpara //Fim da sequencia de comandos a serem repetidos
fimprocedimento // Fim do procedimento remover

procedimento buscar (nomebusca: caractere) // Procedimento para busca de tentos cadastrado
var
   i: inteiro // Laço de interação
   contador: inteiro //Variável que sera usada para encontrar nome buscado
inicio
   contador <-0 //Variável recebe valor zero para buscar detentos
   para i de 1 ate 3 faca //Loop para buscar detentos
      se preso[i].nome = nomebusca entao //Instrução a ser executada se o nome buscado é igual ao nome informado
         escreval("===========Informações do detento=========") //Informações gerais do detento
         escreval("Detento: ",preso[i].nome," ") // nome do detento
         escreval("Idede: ",preso[i].idade,"") // idade do detento
         escreval("Peso: ",preso[i].peso,"") // peso do detento
         escreval("Altura: ",preso[i].altura,"") // altura do detento
         escreval("Cor: ",preso[i].cor,"") // cor do detento
         escreval("Sexo: ",preso[i].sexo,"") // sexo do detento
         escreval("Nacionalidade: ",preso[i].nacionalidade,"") // País que nasceu
         contador <- contador + 1 //Incrementa o contador de detentos encontrados
         interrompa //Interromper o loop depois de buscar detento
      fimse //fim da instrução se
   fimpara //Fim da sequencia de comandos a serem repetidos
   se contador <= 0 entao //Verifica se nenhum detento corresponde á busca
      escreval("Detento não encontrado.") //Mensagem dada ao não encontrar detento cadastrado
   fimse //Fim da instrução se
fimprocedimento // Fim do procedimento buscar

procedimento listados(nome: caractere) // Procedimento para listar detentos cadastrados
var
   i: inteiro // Laço de interação
inicio
   para i de 1 ate 3 faca //Loop para listar detentos
      se preso[i].nome = nome entao //Instrução a ser executada
         interrompa //Interromper o laço de repetição
      fimse //fim da instrução se
      para i de 1 ate 3 faca //Loop para buscar detentos cadastrados
         escreval(preso[i].nome) //Lista o nome dos detentos ja cadastrados
      fimpara //Fim da sequencia de comandos a serem repetidos
      interrompa //Interromper o loop depois de buscar detento
   fimpara //Fim da sequencia de comandos a serem repetidos
fimprocedimento // Fim do procedimento listar

procedimento alterar(nomebusca: caractere)  //procedimento para alterar dados
var
   i: inteiro // laço de interação

inicio
   para i de 1 ate 3 faca //Loop para alterar detentos
      se preso[i].nome = nomebusca entao  //Instrução a ser executada
         escreval("Detendo encontrado. Informe os novos dados. ")  //mensagem para alterar dados
         escreval("Informe o nome do(a) detento(a): ") //Nome a ser alterado
         leia(preso[i].nome) //leitura davariavel nome
         escreval("Informe a nova idade do(a) detento(a) ", preso[i].nome, ": ") //impressão na tela dos dados idade a ser alterado
         leia(preso[i].idade) //leitura davariavel idade
         escreval("Informe o novo peso e altura do(a) detento(a) ", preso[i].nome, ".") //impressão na tela dos dados peso a ser alterado
         escreval("Peso: ") //impressão na tela dos dados peso a ser alterado
         leia(preso[i].peso)  //leitura davariavel peso
         escreval("Altura: ") //impressão na tela dos dados altura a ser alterado
         leia(preso[i].altura) //leitura davariavel altura
         escreval("Informe a cor do(a) detento(a) ", preso[i].nome, ": ") //impressão na tela dos dados cor a ser alterado
         leia(preso[i].cor)  //leitura davariavel cor
         escreval("Informe o sexo do(a) detento(a) ", preso[i].nome, ": ") //impressão na tela dos dados sexo a ser alterado
         leia(preso[i].sexo)  //leitura davariavel sexo
         escreval("Informe a nacionalidade do(a) detento(a) ", preso[i].nome, ": ") //impressão na tela dos dados nacionalidade a ser alterado
         leia(preso[i].nacionalidade) //leitura davariavel nacionalidade
         escreval("Detento alterado com sucesso!") // Mensagem informando alteração dos dados
         interrompa // Interromper o loop depois de alterar detento
      fimse
   fimpara

   escreval("Detento não encontrado.") //Mensagem dada ao não encontrar detento cadastrado
fimprocedimento // fim do procedimento alterar dados

inicio //Inicio do programa inicial
   logo("") //Chama o procedimento "logo"
   usuarios_cadastrados <- 0 //Inicia a variável "usuarios_cadastrados" como zero
   repita // repete uma sequência de comandos
      escreval("============================================") //Exibe um cabeçalho
      escreval("====================MENU====================") //Exibe a opção MENU para interração
      escreval("============================================") //Exibe um cabeçalho
      escreval("Tecle C para cadastrar novo detento.") //Exibe a opção para cadastrar detentos
      escreval("Tecle B para buscar informações do detento.") //Exibe a opção para buscar detetnto cadastrado
      escreval("Tecle L para listar detentos já cadastrados.") //Exibe a opção para listar todos os detentos cadastrados
      escreval("Tecle R para remover detento.") //Exibe a opção para remover detento cadastrado
      escreval("Tecle A para alterar os dados do detendo(a).")
      escreval("Tecle S para sair do MENU.") //Exibe a opção para sair do menu
      escreval("============================================") //Exibe um cabeçalho
      escreval("Informe sua escolha: ") // Informar a escolha do usuario
      leia(opcao) // leitura da opção desejada

      se opcao = "A" entao // Opção para alterar
         escreval("Informe o nome do(a) detento(a) para alterar seus dados: ")
         leia(nome_aux)

         alterar(nome_aux) // Chama o procedimento alterar
      fimse // Fim da opção alterar

      se opcao = "C" entao //opção para cadastrar
         cadastrar() //Chama o procedimento cadastrar
      fimse //Fim da opção cadastrar

      se opcao = "R" entao //Opção para remover cadastrados
         escreval("Informe o nome do(a) detento(a) a ser removido: ") //Solicita o nome a ser removido
         leia(nome_aux) //Lê o nome informado pelo usuário

         remover(nome_aux) //Chama o procedimento "remover"
      fimse //Fim da opção remover

      se opcao = "B" entao // opção para para buscar cadastrados
         escreval("Informe o nome do(a) detento(a) a ser buscado no sistema penitenciario: ") //Solicita o nome a ser buscado
         leia(nome_aux) //Lê o nome informado pelo usuário

         buscar(nome_aux) //Chama o procedimento busca
      fimse //Fim da opção buscar

      se opcao = "L" entao //Opção para acesso a listar
         escreval("Detentos já cadastrados: ") //Lista os detentos ja cadastrados

         listados(nome_aux) //Chama o procedimento listados
      fimse //Fim da opção listar
   ate opcao = "S" //Sair do do menu de interção

fimalgoritmo