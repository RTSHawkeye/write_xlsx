# -*- coding: utf-8 -*-

require 'helper'

class TestRegressionObjectPosition19 < Minitest::Test
  def setup
    setup_dir_var
  end

  def teardown
    @tempfile.close(true)
  end

  def test_object_position19
    @xlsx = 'object_position19.xlsx'
    workbook  = WriteXLSX.new(@io)
    worksheet = workbook.add_worksheet

    worksheet.set_column(1, 1, nil, nil, 1)

    # Same as testcase test_object_position13 except with an offset.
    worksheet.insert_image(
      'B9', 'test/regression/images/red.png',
      x_offset: 128
    )

    workbook.close
    compare_for_regression
  end
end
