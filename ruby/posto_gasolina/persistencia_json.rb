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
        cliente["nome"] = gets
        print("Digite o nome do veículo: ")
        cliente["veiculo"] = gets
        print("Digite o valor do combustível: ")
        cliente["valor"] = gets.to_i
                    
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