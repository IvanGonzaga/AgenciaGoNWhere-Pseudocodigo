Algoritmo "AGENCIA_GONWHERE"

Var

clientes: vetor [0..1] de caracter
clienteExiste: logico
cliente: caracter
destino: vetor [0..2] de caracter
opcao: inteiro
i, j: inteiro
enter: logico

procedimento inicializa ()

inicio

enquanto opcao <> 5 faca

         escreval ("****** Agência GoNWhere ******")
         escreval ("**** Cadastro de clientes ****")
         escreval ()
         escreval ("Digite (1) para iniciar o cadastro")
         escreval ("Digite (2) para iniciar a pesquisa")
         escreval ("Digite (3) para listar os clientes já cadastrados")
         escreval ("Digite (4) para listar os destinos disponíveis")
         escreval ("Digite (5) para sair")
         escreval ()
         
         leia(opcao)
         
                    se opcao = 1 entao
                    limpatela
                             cadastrar_cliente ()
                    fimse
                    
                    se opcao = 2 entao
                    limpatela
                             pesquisar_cliente ()
                    fimse
                    
                    se opcao = 3 entao
                             listar_clientes ()
                    fimse
                    
                    se opcao = 4 entao
                             listar_destinos ()
                    fimse
                    
                    se opcao = 5 entao
                             para i de 0 ate 1 faca
                                  clientes[i] <- "x"
                             fimpara
                             escreval ()
                             escreval ("Saindo...")
                             leia(enter)
                             limpatela
                    fimse
                    
                    se opcao > 5 entao
                             escreval ()
                             escreval ("Opção inválida")
                             escreval ("Aperte enter para voltar")
                             leia(enter)
                             limpatela
                    fimse
            fimenquanto
         fimprocedimento
         
procedimento cadastrar_cliente ()
inicio

      escreval ("Cadastro do cliente")
      escreva ()
      
      para i de 0 ate 1 faca
           se(clientes[i]="") entao
                              escreva ("Nome do(a) cliente: ")
                              leia (clientes[i])
                              i <- i+1
                              escreval ()
                              escreval ("*** Cadasto completo ***")
                              escreval ()
                              escreval ("Aperte enter para voltar")
                              leia (enter)
                              limpatela
                              inicializa ()
           fimse
      fimpara
      escreval ()
      escreval ("Sem vagas disponíveis, aperte enter para voltar")
      escreval ()
      leia(enter)
      limpatela
      inicializa ()
      
fimprocedimento

procedimento listar_clientes ()
inicio

se clientes[i] = "" entao
   escreval ()
   escreval ("Nenhum cliente cadastrado!")
   escreval ()
senao
     escreval ("Clientes cadastrados: ")
     escreval ()
     para i de 0 ate 1 faca
     escreval ()
     escreval ("Nome do(a) cliente: ", clientes[i])
     escreval ("Destino escolhido: ", destino[i])
     escreval ()
     fimpara
fimse
escreval ("Aperte enter para voltar")
leia(enter)
limpatela
inicializa ()
limpatela
fimprocedimento

procedimento pesquisar_cliente ()
inicio

escreva ("Digite o nome do cliente para iniciar a pesquisa: ")
leia (cliente)
clienteExiste <- falso
para i de 0 ate 1 faca
se cliente=clientes[i] entao
clienteExiste <- verdadeiro
escreval("*** Resultado da pesquisa ***")
escreval("Nome do(a) cliente: ", clientes[i])
escreval("Destino escolhido: ", destino[i])
escreval()
i <-1
escreval ("Aperte enter para voltar")
leia(enter)
fimse
fimpara
se clienteExiste = falso entao
escreval()
escreval("Cliente não encontrado")
escreval()
escreval("Aperte enter para voltar")
leia(enter)
fimse
limpatela
inicializa()
fimprocedimento

procedimento listar_destinos ()
inicio

escreva ("Digite o nome do cliente: ")
escreval ()
leia (cliente)
para i de 0 ate 1 faca
     se cliente=clientes[i] entao
        escreval ("*** Nome do(a) cliente: ", clientes[i], " ***")
        escreval()
        escreval ("*** Escolha o destino para o cliente selecionado ***")
        escreval ("(1) Rio Grande do Sul")
        escreval ("(2) Minas Gerais")
        escreval ("(3) Bahia")       '
        escreval ()
                 leia (destino[j])
                 i <- i+j
        limpatela
        escreval ()
        escreval ("Destino selecionado")
        escreval ()
        escreval ("Aperte enter para voltar")
        leia(enter)
        limpatela
        inicializa ()
     senao
     escreval()
     escreval("Cliente não encontrao")
     escreval("Aperte enter para voltar")
     leia(enter)
     limpatela
fimse
limpatela
inicializa()

fimpara
limpatela
fimprocedimento

         
inicio

inicializa ()
         
fimalgoritmo
