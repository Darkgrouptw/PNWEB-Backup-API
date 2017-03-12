module BackupApi
    class Core
        # 不知道為什麼家這條就可以用了
        include Singleton
        
        # 把資料存成 CSV
        def copyTableToCSV(tables)
            #ActiveRecord::Base.connection.execute("select * from test_1s")
            #tables.e
            #return tables[0].classify.all
            
            outputStr = "Date:" + DateTime.now.strftime("%Y-%d-%m") + "\n"
            # 備份每一個 table
            tables.each do |table|
                # Table 名稱
                outputStr += "Table: " + table + "\n"
                outputStr += "  Type:\n"
                
                # 裡面每一個欄位的 name & Type 
                ActiveRecord::Base.connection.columns(table).each do |tableInfo|
                    outputStr += "    " + tableInfo.name + " => " + tableInfo.type.to_s + "\n"
                end
                
                # 把裡面每一筆直撈出來
                outputStr += "  Values:\n"
                valueRows = ActiveRecord::Base.connection.execute("select * from " + table).values
                valueRows.each do |valueCols|
                    outputStr += "    "
                    valueCols.each do |value|
                        outputStr += value.to_s + ","
                    end
                    outputStr += "\n"
                end
            end
            
            return outputStr
        end
        
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
