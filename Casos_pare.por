programa {
  funcao inicio() {
    real x, y, resultado
    inteiro op

    escreva("Bem vindos a calcuadora, para começarmos, indique qual operação é a desejada \n 1 - somar \n 2 - subtrair \n 3 - multiplicar \n 4 - dividir \n Indique então qual a operação desejada: ")
    leia(op)

    escreva("Indique o primeiro número para o cálculo: ")
    leia(x)
    escreva("Indique o segundo número para o cálculo: ")
    leia(y)

    escolha(op)
    {
      caso 1:
        resultado = x + y
        pare 
      caso 2:
        resultado = x - y
        pare 
      caso 3:
        resultado = x * y
        pare 
      caso 4:
        resultado = x / y
        pare                   
    }
    escreva("O resultado é ", resultado)
  }
}
