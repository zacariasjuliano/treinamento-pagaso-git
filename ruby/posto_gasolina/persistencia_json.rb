require 'json'
require_relative 'db/json.rb'

class PresistenciaJSON
        
    def carregar_dados_json(file_path)    
        return DBJSON.new.carregar_dados(file_path)  
    end

    #CADRATRAR clientes
    def cadastro_clientes(clientes, file_path)    
        cliente = {}    

        print("Digite o nome do cliente: ")
        cliente["nome"] = gets.chomp
        print("Digite o nome do veículo: ")
        cliente["veiculo"] = gets.chomp
        print("Digite o valor do combustível: ")
        cliente["valor"] = gets.chomp.to_i
                    
        clientes << cliente
        cadastro = DBJSON.new.salvar(clientes, file_path)
        puts cadastro = 1 ? "Registro salvo" : "Registro não salvo"
        
    end

    #MOSTRA O RELATÓRIO DE clientes
    def mostra_relatorio_cliente(file_path) 
        clientes_lista = DBJSON.new.listar(file_path)

        if clientes_lista.empty?
            puts "Sem registro ..."
        else    
            clientes_lista.each do |cliente|
                puts("Cliente: #{cliente["nome"]}")
                puts("Veículo: #{cliente["veiculo"]}")
                listros = cliente["valor"].to_i / 300
                puts("Litros: #{listros} litros")
                puts("Valor: #{cliente["valor"]}")
                print("------------------------------------------------------\n")
                sleep(1)
            end
        end

    end

    #LIMPAR REGISTRO DO ARQUIVO
    def limpar_dados(file_path)
        dados = DBJSON.new.limpar(file_path)
        puts dados == 1 ? "Limpeza concluida ..." : "Erro na limpeza"
    end

end


#FUNÇÃO PRINCIPAL
def main_json(clientes, file_path)
    clientes = PresistenciaJSON.new.carregar_dados_json(file_path)
    
    while true
        system "clear" or system "cls"
        puts("Digite uma das opcões abaixo")
        puts("1 - Cadastrar")
        puts("2 - Relatorio")
        puts("3 - Limpar")
        puts("4 - Sair")
        print("=> ")

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