programa {
  inclua biblioteca Util--> u
  funcao inicio() {
    caracter jogarNovamente
    cadeia nome, item
    inteiro escolha1, escolha2, escolha3, escolha4, escolha5
    inteiro vida=3, divindade=0, fe=0
    faca{
    escreva("Deseja iniciar o jogo? (s/n): ")
    leia(jogarNovamente)
    }
    enquanto(jogarNovamente=="n")
    escreva ("=== O DESPERTAR DIVINO ===\n")
    escreva("\nVocê desperta de um sonho estranho, quando abre os olhos se depara com um grande templo em ruínas ao seu redor.\n")
    escreva("\nUma voz distante ecoa: ")
    escreva("\n'—Acorde, reencarnação... O mundo precisa de Você'\n")

    escreva("Digite seu nome:\n")
    leia(nome)
    limpa()

    escreva("\nAo caminhar pelos longos corredores do templo, um ancião surge das sombras e lhe oferece três objetos mágicos.\n")
    escreva("\n '— Escolha com sabedoria. Esse será seu presente divino'\n")

    escreva("\nObjeto 1. O Amoleto da Vida: Lhe garante uma vida extra.(+1 vida)\n")
    escreva("Objeto 2. A Pedra da Fé: Lhe garante a capacidade de convencer outros jogadores (+1 fé)\n")
    escreva("Objeto 3. O Fragmento Divino: Lhe garante a ampliação de suas habilidades divinas.(+1 divindade)\n")
    escreva("\nInforme o número do objeto desejado: \n")
    leia(escolha1)
    se(escolha1==1){
      vida+1
      item="O Amoleto da Vida"
      escreva("{Você ganhou +1 ponto de vida 🩷}\n")
    }
    senao se(escolha1==2){
    fe+1
    item="A Pedra da Fé"
    escreva("{Você ganhou +1 ponto de fé 🙏}\n")
    }
    senao{
      divindade=divindade+1
      item="O Fragmento Divino"
      escreva("{Você ganhou +1 ponto de divindade ✨}\n")
    }

    escreva("\nApós escolher ",item,", o ancião vai embora...")
    escreva("\nMovido pela curiosidade, você decide explorar os cômodos e corredores do templo...\n")
    u.aguarde(10000)
    limpa()

    escreva("---Desafio 01: O Espiríto Sombrio---\n")
    escreva("\nNa saída do templo, um Espírito Sombrio surge bloqueando a passagem. Você sente medo, que é ofuscado pelo seu poder interior\n")
    escreva("\nO que você faz?\n")
    escreva("\n1. Enfrenta o espírito\n")
    escreva("2. Tenta fugir\n\n")
    leia(escolha2)
    se(escolha2==1){
      se(divindade>=1){
        escreva("\nCom o auxílio do seu poder divino, você obteve uma vitória fácil.\n")
        divindade=divindade+1
        escreva("{Você ganhou +1 ponto de divindade ✨}\n")

      }//fim se2
    senao{
      escreva("Você tenta lutar, mas por falta de poder divino você se fere.\n")
      escreva("{Você perdeu uma vida.💔}\n")
      vida=vida-1
    }
    }//fim se1
    se(escolha2==2){
      escreva("Você decidiu fugir.\n2")
      escreva("{Você perdeu 1 ponto de fé.🙏}\n")
      fe=fe-1
    }//fim se
    
    u.aguarde(10000)
    limpa()


    escreva("---Desafio 02: A Vila Em Chamas---\n")
    escreva("Após conseguir sair do templo, você caminha por uma vasta floresta e encontra uma vila em chamas.\n")
    escreva("\nO que você faz?\n")
    escreva("Opção 1. Salvar os aldeões.\n")
    escreva("Opção 2. Usar sua magia para apagar o fogo e impressionar os aldeões.\n")
    leia(escolha3)
    se(escolha3==1){
      escreva("Você decidiu salvar os aldeões.\n")
      escreva("{Você ganhou +2 pontos em fé. 🙏}\n")
      fe=fe+2
    }//fim se
    senao{
      escreva("Você decidiu usar seu poder e se mostrou como um deus\n")
      escreva("{Você perdeu -1 ponto em fé 🙏, e ganhou +1 ponto em divindade ✨.}\n")
      fe=fe-1
      divindade=divindade+1
    }

     u.aguarde(10000)
    limpa()

    escreva("---Desafio 03: O Artefato Esquecido---\n")
    escreva("No fim da estrada da aldeia há um artefato sagrado flutuando. Uma energia poderosa pulsa de dentro dele e você é atraído.\n")
    escreva("\nO que você faz?\n")
    escreva("Opção 1. Tocar no objeto.\n")
    escreva("Opção 2. Esconder o objeto para que ele não caia em mãos erradas.\n ")
    leia(escolha4)
    se(escolha4==1){
      escreva("Ao tocar no objeto, você tem acesso a um grande poder divino.\n")
       escreva("{Você ganhou +1 ponto de divindade ✨}\n")
       divindade=divindade+1
    }
    senao{
      escreva("Você realizou um ato nobre.\n")
       escreva("{Você ganhou +1 pontos em fé. 🙏}\n")
       fe=fe+1
    }

    u.aguarde(10000)
    limpa()


  escreva("Agora que você sabe que possui esse poder dentro de si, você decide seguir esse destino e se tornar um deus.\n")
  escreva("Para isso acontecer, você precisará enfrentar o Grande Guardião do Templo do Trono.\n")

    u.aguarde(10000)
    limpa()

   escreva("---FINAL: O Templo do Trono---\n")
   escreva("Você entra no Templo... onde o trono dos deuses está vazio aguardando por você.\n")
   escreva("Porém, um Guardião bloqueia o seu caminho.\n")
   se(divindade>=3 e fe>=1){
    escreva("\nFINAL DIVINO: Usando todo o seu poder você vence com facilidade e assume o trono, tornando-se um novo deus justo e poderoso.\n")
    escreva("Durante sua jornada, você conseguiu obter ",divindade," pontos de divindade✨.")
   }
    se(divindade>=3 e fe<=1){
    escreva("\nFINAL CORROMPIDO: Você vence a luta, mas por falta de fé você se torna um deus cruel e temido.\n")
    escreva("Durante sua jornada, você conseguiu obter ",divindade," pontos de divindade✨.")
    escreva("Durante sua jornada, você conseguiu obter ",fe," pontos de fé🙏.")
   }
   se(fe>=3 e divindade<=2){
    escreva("\nFINAL SÁBIO: Você não luta, decide renunciar o trono e se tornar um guia espiritual.\n")
    escreva("Durante sua jornada, você conseguiu obter ",fe," pontos de fé🙏.")
   }
    
  }
}
