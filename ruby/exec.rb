
print("Insira o nome do aluno: ")
aluno_nome = gets

print("Insira a nota de Matemática: ")
nota_matematica = gets.chomp.to_f 
print("Insira a nota de Português: ")
nota_portugues = gets.chomp.to_f 
print("Insira a nota de Ciências: ")
nota_ciencias = gets.chomp.to_f 

nota_media = (nota_matematica + nota_portugues + nota_ciencias) / 3

puts("Nome: #{aluno_nome}")
puts("Notas:")
puts("Matématica: #{nota_matematica}")
puts("Português: #{nota_portugues}")
puts("Ciências: #{nota_ciencias}")
puts("Média: #{nota_media}")

if nota_media < 4
    print("Situação: Reprovado.\n")
elsif nota_media >= 5 && nota_media < 6.5
    print("Situação: Recuperação.\n")
else
    print("Situação: Aprovado.\n")
end

