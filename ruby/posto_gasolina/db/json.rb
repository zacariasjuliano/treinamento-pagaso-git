class DBJSON

    def carregar_dados(file_path)
        if File.exist?(file_path)
            file = File.read(file_path)
            return File.empty?(file_path) ? [] : JSON.parse(file)
        end
        
        return []
    end

    def listar(file_path)
        if File.exist?(file_path)
            file = File.read(file_path)
            return File.empty?(file_path) ? [] : JSON.parse(file)                      
        end
        return []
    end

    def salvar(obj, file_path)
        if File.exist?(file_path)
            json_dados = JSON.generate(obj)
            File.write(file_path, json_dados)

            #SALVOU
            return 1
        end 

        #NÃO SALVOU
        return 0
    end

    def limpar(file_path)
        if File.exist?(file_path)
            File.write(file_path, "")
            return 1
        end
        return 0
    end

end