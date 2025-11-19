programa {
  funcao inicio() {
    real x,z, resultado
    caracter y

    escreva("Bem vindo a calculadora, escreva sua operação, sendo *, +, -, / os calculos possíveis ")
    leia(x)

    escreva(x)
    leia (y)

    escreva(x, y)
    leia(z)

    se (y == "+")
    {
      resultado = x + z
    }

    se (y == "-")
    {
      resultado = x - z
    }

    se (y == "/")
    {
      resultado = x / z
    }    
    
    se (y == "*")
    {
      resultado = x * z
    }
  
    escreva(resultado)
  }
}
