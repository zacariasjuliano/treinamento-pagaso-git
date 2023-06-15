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

#Verifiva a operação a ser efetuada
case operador
when "+"
    resultado = primeiro_numero + segundo_numero
    puts("Resultado: #{resultado}")
when "/"
    if segundo_numero == 0
        print("A operação não pode ser realizada, porque o dividendo é zero.\n")
    else
        resultado = primeiro_numero / segundo_numero
        puts("Resultado: #{resultado}")
    end
when "-"
    resultado = primeiro_numero - segundo_numero
    puts("Resultado: #{resultado}")
when "*"
    resultado = primeiro_numero * segundo_numero
    puts("Resultado: #{resultado}")
else
    puts("Operador escolhido é inválido.")
end

