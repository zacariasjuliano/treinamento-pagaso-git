require "byebug"

lista = []

lista.push(5)
lista.push(5)
lista.push(5)

print(lista.methods)

debugger

begin
    print("Informa a sua idade: ")
    idade = gets.to_i

    #mensagem = idade >= 18 ? "Você é maior de idade." : "Você é menor de idade."
    mensagem = idade >= 18 ? "Você é maior de idade." : idade == 0 ? "Você só tem messes de vida" : idade < 0 ? "": "Você é menor de idade."
    puts(mensagem)

end while idade >= 0

#print("Você é maior de idade\n") if idade >= 18
