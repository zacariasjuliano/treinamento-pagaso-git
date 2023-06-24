require_relative 'persistencia_json.rb'


file_path = 'db/posto.json'
clientes = []

#FUNÇÃO PRINCIPAL
def main(clientes, file_path)
    clientes = PresistenciaJSON.new.carregar_dados_json(file_path)
    
    while true
        system "clear" or system "cls"
        puts("Digite uma das opcões abaixo")
        puts("1 - Cadastrar")
        puts("2 - Relatorio")
        puts("3 - Limpar")
        puts("4 - Sair")

        menu = gets.strip 
        break if( menu == "4")    

        case menu
        when "1" 
            system "clear" or system "cls"             
            PresistenciaJSON.new.cadastro_clientes(clientes, file_path)
            sleep(2)
        when "2"            
            system "clear" or system "cls"
            if clientes.empty?
                puts("Sem registro...")
            else
                PresistenciaJSON.new.mostra_relatorio_cliente(file_path)
            end
            sleep(2)
        when "3"
            system "clear" or system "cls"
            clientes = []
            PresistenciaJSON.new.limpar_dados(file_path)
            sleep(1)
        else
            system "clear" or system "cls"
            puts("Opção inválida")
            sleep(3)
        end

    end

end

#INÍCIO DO PROGRAMA
main(clientes, file_path)