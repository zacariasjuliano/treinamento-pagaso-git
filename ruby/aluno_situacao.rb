require 'byebug'
 
alunos = []
alunos_media = []

#CADRATRAR ALUNOS COM NOTAS
def cadastro_alunos(alunos)    
    aluno = {}

    print("Digite o nome do aluno: ")
    aluno["nome"] = gets
    
    #RECEBE AS 3 NOTAS DO ESTUDANTE
    3.times do |i|
        print("Digite o nome da matéria: ")
        materia = gets
        #Verifica se a nota é negativa ou maior que 20
        begin
            print("Digite a nota do estudante: ")
            nota = gets.to_f
        end while nota < 0 || nota > 20

        aluno["disciplina"] ||= []            
        aluno["disciplina"].push({materia: materia, nota: nota})            
    end
    
    alunos.push(aluno)
    
end

#MOSTRA O RELATÓRIO DE ALUNOS
def mostra_relatorio_aluno(alunos)    
    
    alunos.each do |aluno|
        puts("Aluno: #{aluno["nome"]}")
        #PESQUISA PELA NOTAS DO ALUNO
        aluno["disciplina"].each do |disciplina|
            puts("Disciplina: #{disciplina[:materia]}")
            puts("Nota: #{disciplina[:nota]}")
        end
        print("------------------------------------------------------\n")
    end

end

#VERIFICA O ALUNO COM A MAIOR MÉDIA
def verifica_aluno_maior_media(alunos, alunos_media)
    
    media = 0.0
    media_maior = 0.0
    aluno_media = {}

    alunos.each do |aluno|            
        media = aluno["disciplina"].map{|materia_com_nota| materia_com_nota[:nota]}.sum / aluno["disciplina"].length                        
        puts("Aluno: #{aluno["nome"]}")
        puts("Média: #{media}")             
        print("------------------------------------------------------\n")        
        
        if media > media_maior
            media_maior = media
            aluno_media["nome"] = aluno["nome"]
            aluno_media["media"] = media_maior
            
            alunos_media.clear()
            alunos_media.push(aluno_media)
        end
    end

end

#MOSTRA O ALUNO COM A MAIOR MÉDIA
def mostra_aluno_maior_media(alunos, alunos_media)       
    verifica_aluno_maior_media(alunos, alunos_media)
    
    alunos_media.each do |aluno_media|           
        print("------------------------------------------------------\n")
        puts("Aluno: #{aluno_media["nome"]}")
        puts("Maior média: #{aluno_media["media"]}")
    end

end

#FUNÇÃO PRINCIPAL
def main(alunos, alunos_media)
    while true
        system "clear" or system "cls"
        puts("Digite uma das opcões abaixo")
        puts("1 - Cadastrar")
        puts("2 - Relatorio")
        puts("3 - Média")
        puts("4 - Sair")

        menu = gets.strip 
        break if( menu == "4")    

        case menu
        when "1" 
            system "clear" or system "cls"             
            cadastro_alunos(alunos)

        when "2"
            system "clear" or system "cls"
            mostra_relatorio_aluno(alunos)
            sleep(5)

        when "3"
            system "clear" or system "cls"         
            mostra_aluno_maior_media(alunos, alunos_media)            
            sleep(5)

        else
            system "clear" or system "cls"
            puts("Opção inválida")
            sleep(3)

        end

    end

end

#INÍCIO DO PROGRAMA
main(alunos, alunos_media)