require 'test_helper'

class BackupApi::Test < ActiveSupport::TestCase
    
    # 測試 123
    def test123
        assert_equal "123", BackupApi::Core.instance.test
    end
    
    
    # 測試找到的 table
    def test_find_all_tables
        assert_equal ["test_1s", "test_2s"], BackupApi::Core.instance.find_all_tables
    end
    
    def test_copyTableToCSV
        assert_equal 2, BackupApi::Core.instance.copyTableToCSV(BackupApi::Core.instance.find_all_tables)
    end
end
