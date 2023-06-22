
print("Insira o nome do aluno: ")
aluno_nome = gets

#Verifica se a nota de matématica é positiva ou maior que 20
def verifica_nota (disciplina)
    begin
        print("Insira a nota de #{disciplina}: ")
        nota = gets.to_f 
    end while nota < 0 || nota > 20
        
    return nota
end

#Verifica a situação do estudante
def verifica_situacao (media)
    if media < 4
        print("Situação: Reprovado.\n")
    elsif media >= 5 && media < 6.9
        print("Situação: Recuperação.\n")
    else
        if media >= 6.9
            print("Situação: Aprovado.\n")
        else
            print("Situação: \n")
        end
    end
end

nota_matematica = verifica_nota("matemática")
nota_portugues = verifica_nota("português")
nota_ciencias = verifica_nota("ciências")

nota_media = (nota_matematica + nota_portugues + nota_ciencias) / 3

print("------------------------------------------------------\n")
puts("Nome: #{aluno_nome}")
puts("Notas:")
puts(" Matématica: #{nota_matematica}")
puts(" Português: #{nota_portugues}")
puts(" Ciências: #{nota_ciencias}")
puts("Média: #{nota_media}")
print("------------------------------------------------------\n")

verifica_situacao(nota_media)


