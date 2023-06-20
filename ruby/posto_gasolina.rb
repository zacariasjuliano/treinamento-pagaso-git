require 'json'
 
clientes = []

def carregar_dados_json
    file_path = 'db/posoto.json'
  
    if File.exist?(file_path)
      file = File.read(file_path)
      clientes = JSON.parse(file)
    end
  
    []
  end

#CADRATRAR clientes
def cadastro_clientes(clientes)    
    cliente = {}    

    #clientes = carregar_dados_json

    print("Digite o nome do cliente: ")
    cliente["nome"] = gets
    print("Digite o nome do veiculo: ")
    cliente["veiculo"] = gets
    print("Digite o valor do combustível: ")
    cliente["valor"] = gets
    
    clientes.push(cliente) 
    file_path = 'db/posto.json'
    #clientes << cliente
    json_clientes = JSON.generate(clientes)
    File.write(file_path, json_clientes)
    
end

#MOSTRA O RELATÓRIO DE clientes
def mostra_relatorio_cliente(clientes) 

    file_path = 'db/posto.json'

    if File.exist?(file_path)
        file = File.read(file_path)
        clientes_lista = JSON.parse(file)
        clientes_lista.each do |cliente|
            puts("Cliente: #{cliente["nome"]}")
            puts("Veiculo: #{cliente["veiculo"]}")
            listros = cliente["valor"].to_i / 300
            puts("Litros: #{listros} litros")
            puts("Valor: #{cliente["valor"]}")
            print("------------------------------------------------------\n")
        end
    end

    []

end


#FUNÇÃO PRINCIPAL
def main(clientes)
    while true
        system "clear" or system "cls"
        puts("Digite uma das opcões abaixo")
        puts("1 - Cadastrar")
        puts("2 - Relatorio")
        puts("3 - Sair")

        menu = gets.strip 
        break if( menu == "3")    

        case menu
        when "1" 
            system "clear" or system "cls"             
            cadastro_clientes(clientes)

        when "2"            
            system "clear" or system "cls"
            if clientes.empty?
                puts("Sem registro...")
            else
                mostra_relatorio_cliente(clientes)
            end
            sleep(5)

        else
            system "clear" or system "cls"
            puts("Opção inválida")
            sleep(3)

        end

    end

end

#INÍCIO DO PROGRAMA
main(clientes)