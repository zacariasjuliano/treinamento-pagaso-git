
require_relative 'db/postgresql.rb'

class PresistenciaPGSQL
        
    def carregar_dados_db()   
        db_dados = DBPOSTGRES.new.todos() 
        return db_dados
    end

    #CADRATRAR clientes
    def cadastro_clientes()    
        cliente_novo = {}   
        clientes = []

        print("Digite o nome do cliente: ")
        cliente_novo["nome"] = gets.chomp
        print("Digite o nome do veículo: ")
        cliente_novo["veiculo"] = gets.chomp
        print("Digite o valor do combustível: ")
        cliente_novo["valor"] = gets.chomp.to_i
                    
        clientes << cliente_novo
        DBPOSTGRES.new.salvar(cliente_novo)        
    end

    #MOSTRA O RELATÓRIO DE clientes
    def mostra_relatorio_cliente()           
        carregar_dados_db.each do |cliente|
            puts("Cliente: #{cliente["nome"]}")
            puts("Veículo: #{cliente["veiculo"]}")
            listros = cliente["valor"].to_i / 300
            puts("Litros: #{listros} litros")
            puts("Valor: #{cliente["valor"]}")
            print("------------------------------------------------------\n")
            sleep(1)
        end 
    end

    #LISTAR DADOS
    def listagem(cliente_nome)
        pesquisa = DBPOSTGRES.new.pesquisar_registro(cliente_nome)
        pesquisa.each do |cliente|
            puts("Cliente: #{cliente["nome"]}")
            puts("Veículo: #{cliente["veiculo"]}")
            listros = cliente["valor"].to_i / 300
            puts("Litros: #{listros} litros")
            puts("Valor: #{cliente["valor"]}")
            print("------------------------------------------------------\n")
            sleep(2)
        end 
    end

end


def main_postgres()    
    while true
        clientes = PresistenciaPGSQL.new.carregar_dados_db()
        
        system "clear" or system "cls"
        puts("Digite uma das opcões abaixo")
        puts("1 - Cadastrar")
        puts("2 - Relatorio")
        puts("3 - Pesquisar")
        puts("4 - Sair")
        print("=> ")
        menu = gets.strip 

        break if( menu == "4")            

        case menu          
        when "1" 
            system "clear" or system "cls"      
            PresistenciaPGSQL.new.cadastro_clientes()
            sleep(2)
        when "2"            
            system "clear" or system "cls"
            PresistenciaPGSQL.new.mostra_relatorio_cliente()
            sleep(2)
        when "3"
            system "clear" or system "cls" 
            print("Informa o nome: ")
            cliente_nome = gets.chomp
            pesquisa = PresistenciaPGSQL.new.listagem(cliente_nome)
        else
            system "clear" or system "cls"
            puts("Opção inválida")
            sleep(3)
        end

    end
end