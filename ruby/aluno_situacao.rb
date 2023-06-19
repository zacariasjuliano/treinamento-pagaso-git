require 'byebug'
 
alunos = []
alunos_media = []

#debugger

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
        aluno = {}

        print("Digite o nome do aluno: ")
        aluno["nome"] = gets
        
        #RECEBE AS 3 NOTAS DO ESTUDANTE
        3.times do |i|
            print("Digite o nome da matéria: ")
            materia = gets
            print("Digite a nota do estudante: ")
            nota = gets.to_f
            aluno["disciplina"] ||= []            
            aluno["disciplina"].push({materia: materia, nota: nota})            
        end
        
        alunos.push(aluno)

    when "2"
        system "clear" or system "cls"
        
        #PESQUISA POR TODOS OS ALUNOS
        alunos.each do |aluno|
            puts("Aluno: #{aluno["nome"]}")
            #PESQUISA PELA NOTAS DO ALUNO
            aluno["disciplina"].each do |disciplina|
                puts("Disciplina: #{disciplina[:materia]}")
                puts("Nota: #{disciplina[:nota]}")
            end
            print("------------------------------------------------------\n")
        end

        sleep(5)
    when "3"
        system "clear" or system "cls"
        media = 0.0
        media_maior = 0.0
        aluno_media = {}

        alunos.each do |aluno|            
            media = aluno["disciplina"].map{|materia_com_nota| materia_com_nota[:nota]}.sum / aluno["disciplina"].length                        
            puts("Aluno: #{aluno["nome"]}")
            puts("Média: #{media}")             
            print("------------------------------------------------------\n")
            
            #VERIFICA A MAIOR MÉDIA
            if media > media_maior
                media_maior = media
                aluno_media["nome"] = aluno["nome"]
                aluno_media["media"] = media_maior
                
                alunos_media.clear()
                alunos_media.push(aluno_media)
            end
        end

        #MOSTRA A MAIOR MÉDIA
        alunos_media.each do |aluno_media|           
            print("------------------------------------------------------\n")
            puts("Aluno: #{aluno_media["nome"]}")
            puts("Maior média: #{aluno_media["media"]}")
        end
        
        sleep(5)
    else
        system "clear" or system "cls"
        puts("Opção inválida")
        sleep(3)
    end

end