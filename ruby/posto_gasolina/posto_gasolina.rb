require_relative 'persistencia_json.rb'
require_relative 'persistencia_postgresql.rb'


#INÍCIO DO PROGRAMA
def main()
    while true
        
        system "clear" or system "cls"
        puts("Que registro pretende usar\nDigite uma das opcões abaixo")
        puts("1 - JSON")
        puts("2 - POSTGRES")
        puts("3 - Sair")
        print("=> ")
        menu = gets.strip
        
        break if( menu == "3")

        case menu
        when "1"
            file_path = 'db/posto.json'
            clientes = []
            main_json(clientes, file_path)
        when "2"
            main_postgres()
        else
            system "clear" or system "cls"
            puts("Opção inválida")
            sleep(3)
        end
    end
end

main()
