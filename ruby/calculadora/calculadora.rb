#Declaração de funções
def operacao (primeiro, operador, segundo)
    #Verifiva a operação a ser efetuada
    case operador
    when "+"
        resultado = primeiro + segundo
        puts("Resultado: #{resultado}")
    when "/"
        if segundo_numero == 0
            print("A operação não pode ser realizada, porque o dividendo é zero.\n")
        else
            resultado = primeiro / segundo
            puts("Resultado: #{resultado}")
        end
    when "-"
        resultado = primeiro - segundo
        puts("Resultado: #{resultado}")
    when "*"
        resultado = primeiro * segundo
        puts("Resultado: #{resultado}")
    else
        puts("Operador escolhido é inválido.")
    end
end


print("CALCULADORA BASICA - RUBY\n")

print("Insira o primeiro número: ")
primeiro_numero = gets.chomp.to_f

print("Escolha o operador:\n")
print("Para soma          ->    + \n")
print("Para divisão       ->    / \n")
print("Para subtração     ->    - \n")
print("Para multiplicação ->    * \n")
print("Informa o operador: ")
operador = gets.chomp.to_s

print("Insira o segundo número: ")
segundo_numero = gets.chomp.to_f

operacao(primeiro_numero, operador, segundo_numero)

