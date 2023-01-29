# -*- coding: utf-8 -*-

require 'helper'

class TestRegressionHyperlink12 < Minitest::Test
  def setup
    setup_dir_var
  end

  def teardown
    @tempfile.close(true)
  end

  def test_hyperlink12
    @xlsx = 'hyperlink12.xlsx'
    workbook  = WriteXLSX.new(@io)
    worksheet = workbook.add_worksheet
    format    = workbook.add_format(color: 'blue', underline: 1)

    # Turn off default URL format for testing.
    worksheet.instance_variable_set(:@default_url_format, nil)

    worksheet.write_url('A1', 'mailto:jmcnamara@cpan.org', format)
    worksheet.write_url('A3', 'ftp://perl.org/', format)

    workbook.close
    compare_for_regression
  end
end
