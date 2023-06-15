
print("Insira o nome do aluno: ")
aluno_nome = gets

begin
    print("Insira a nota de matemática: ")
    nota_matematica = gets.to_f 
#Verifica se a nota de matématica é positiva ou maior que 20
end while nota_matematica < 0 || nota_matematica > 20

begin
    print("Insira a nota de português: ")
    nota_portugues = gets.to_f 
#Verifica se a nota de português é positiva ou maior que 20
end while nota_portugues < 0 || nota_portugues > 20

begin
    print("Insira a nota de ciências: ")
    nota_ciencias = gets.to_f 
#Verifica se a nota de ciências é positiva ou maior que 20
end while nota_ciencias < 0 || nota_ciencias > 20

nota_media = (nota_matematica + nota_portugues + nota_ciencias) / 3

print("------------------------------------------------------\n")
puts("Nome: #{aluno_nome}")
puts("Notas:")
puts(" Matématica: #{nota_matematica}")
puts(" Português: #{nota_portugues}")
puts(" Ciências: #{nota_ciencias}")
puts("Média: #{nota_media}")
print("------------------------------------------------------\n")

if nota_media < 4
    print("Situação: Reprovado.\n")
elsif nota_media >= 5 && nota_media < 6.9
    print("Situação: Recuperação.\n")
else
    if nota_media >= 6.9
        print("Situação: Aprovado.\n")
    else
        print("Situação: \n")
    end
end

