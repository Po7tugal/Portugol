programa {
  funcao inicio() {
    cadeia nome, localidade, mensagem
    caracter genero
    inteiro idade

    escreva("Informe seu nome: ")
    leia (nome)

    escreva("Informe sua idade: ")
    leia (idade)    

    escreva("Informe sua localidade: ")
    leia (localidade)  

    escreva("Informe seu género com M ( masculino) ou F ( feminino): ")
    leia (genero)    

    se (genero == "M")   
    {  
      mensagem = "Caro Sr."
    }  
    senao  
    {  
      mensagem = "Cara Sra. "
    }  
  
    mensagem = mensagem + nome

    se (idade >= 18)   
    {  
      mensagem = mensagem + " é maior de idade"
    }  
    senao  
    {  
      mensagem = mensagem + " é menor de idade"
    }  

    mensagem = mensagem + " e mora em " + (localidade)

    escreva(mensagem)
  }
}
