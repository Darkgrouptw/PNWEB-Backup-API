module BackupApi
    class Core
        # 不知道為什麼家這條就可以用了
        include Singleton
        
        # 找出所有的 table
        def find_all_tables
            outputArray = []
            
            # 濾掉 rails 5 的 metadata & schema
            ActiveRecord::Base.connection.tables.each do |table|
                if table != "ar_internal_metadata" && table != "schema_migrations"
                    outputArray.push(table)
                end
            end
            return outputArray
        end
        
        # 測試是否可用
        def test123
            return "123"
        end
    end
end
