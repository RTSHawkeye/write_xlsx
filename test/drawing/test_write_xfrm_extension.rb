# -*- coding: utf-8 -*-

require 'helper'
require 'write_xlsx/drawing'

class TestWriteXfrmExtension < Minitest::Test
  def setup
    @drawing = Writexlsx::Drawings.new
  end

  def test_write_xfrm_extension
    expected = '<a:ext cx="0" cy="0"/>'

    @drawing.__send__(:write_xfrm_extension)
    result = @drawing.instance_variable_get(:@writer).string

    assert_equal(expected, result)
  end
end
