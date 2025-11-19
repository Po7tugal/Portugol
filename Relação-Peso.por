programa {
  funcao inicio() {
    real pesoT, pesoF, pesoLocalEscolhido
    real fgTerra=9.8, fgMarte=3.72, fgLua=1.6, fgVenus=8.887, fgSaturno=10.44
    caracter op
    //declaração de variaveis
    escreva("FgTerra = ", fgTerra, "\n")

    /*
    Formula : Plocalesolcido = (pesoT / fgTerra) * fglocal final
    terra : 9.8
    lua : 1.6
    marte : 3.72
    venus : 8.87
    saturno : 10.44
    */

    escreva("Qual o teu peso em Kg na Terra? ")
    leia(pesoT)

    escreva("Queres saber o teu peso em: \n\t M - Marte \n\t L - Lua \n\t V - Venus \n\t S - Saturno \nA tua escolha (M / L / V / S) : ")
    leia(op)

    se (op == 'L')
    {
      pesoLocalEscolhido = (pesoT / fgTerra) * fgLua
      escreva("O seu peso de ", pesoT, "Kg na Terra equivale na Lua a ", pesoLocalEscolhido)
    }
    senao se (op == 'V')
    {
      pesoLocalEscolhido = (pesoT / fgTerra) * fgVenus
      escreva("O seu peso de ", pesoT, "Kg na Terra equivale em Venus a ", pesoLocalEscolhido)
    }
    senao se (op == 'M')
    {
      pesoLocalEscolhido = (pesoT / fgTerra) * fgMarte
      escreva("O seu peso de ", pesoT, "Kg na Terra equivale em Marte a ", pesoLocalEscolhido)
    }
    senao se (op == 'S')
    {
      pesoLocalEscolhido = (pesoT / fgTerra) * fgSaturno
      escreva("O seu peso de ", pesoT, "Kg na Terra equivale em Saturno a ", pesoLocalEscolhido)
    }
  }
}
