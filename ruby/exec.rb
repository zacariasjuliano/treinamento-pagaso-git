
print("Insira o nome do aluno: ")
aluno_nome = gets

print("Insira a nota de Matemática: ")
nota_matematica = gets.chomp.to_f 
#Verifica se a nota de matématica 
if nota_matematica < 0
    print("A nota de matemática não pode ser negativa: ")
    nota_matematica = gets.chomp.to_f 
end

print("Insira a nota de Português: ")
nota_portugues = gets.chomp.to_f 
#Verifica se a nota de português
if nota_portugues < 0
    print("A nota de português não pode ser negativa: ")
    nota_portugues = gets.chomp.to_f 
end

print("Insira a nota de Ciências: ")
nota_ciencias = gets.chomp.to_f
#Verifica se a nota de ciências
if nota_portugues < 0
    print("A nota de ciências não pode ser negativa: ")
    nota_ciencias = gets.chomp.to_f 
end 

nota_media = (nota_matematica + nota_portugues + nota_ciencias) / 3

print("------------------------------------------------------\n")
puts("Nome: #{aluno_nome}")
puts("Notas:")
puts("Matématica: #{nota_matematica}")
puts("Português: #{nota_portugues}")
puts("Ciências: #{nota_ciencias}")
puts("Média: #{nota_media}")
print("------------------------------------------------------\n")

if nota_media < 4
    print("Situação: Reprovado.\n")
elsif nota_media >= 5 && nota_media < 6.5
    print("Situação: Recuperação.\n")
else
    print("Situação: Aprovado.\n")
end

