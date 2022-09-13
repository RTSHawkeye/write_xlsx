# -*- coding: utf-8 -*-

require 'helper'

class TestRegressionSharedStrings01 < Minitest::Test
  def setup
    setup_dir_var
  end

  def teardown
    @tempfile.close(true)
  end

  def test_shared_strings01
    @xlsx = 'shared_strings01.xlsx'
    workbook    = WriteXLSX.new(@io)
    worksheet   = workbook.add_worksheet

    # Test that control characters and any other single byte characters are
    # handled correctly by the SharedStrings module. We skip chr 34 = " in
    # this test since it isn't encode by Excel as &quot;.
    256.times do |i|
      next if i == 34

      worksheet.write_string(i, 0, i.chr)
    end

    workbook.close
    compare_for_regression(
      nil,
      { 'xl/workbook.xml' => ['<workbookView'] }
    )
  end
end
