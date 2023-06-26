require 'pg'

class DBPOSTGRES
    def open        
        @conn = PG.connect(
            host: '127.0.0.1',
            port: 5432,
            dbname: 'db_dados',
            user: 'zacarias',
            password: 'zacarias'
        )
    end

    def close
        @conn.close
    end

    def todos()
        self.open
        result = @conn.exec('SELECT * FROM clientes')       
        self.close
        return result
    end

    def salvar (obj)
        self.open
        @conn.exec_params('INSERT INTO clientes (nome, veiculo, valor) VALUES ($1, $2, $3)', [obj["nome"], obj["veiculo"], obj["valor"]])
        self.close
    end

    def pesquisar_registro(obj)        
        self.open
        result = @conn.exec('SELECT * FROM clientes WHERE nome = $1', [obj])       
        self.close
        return result
    end
end