# -*- coding: utf-8 -*-

require 'helper'
require 'write_xlsx/drawing'

class TestWriteXdrExt < Minitest::Test
  def setup
    @drawing = Writexlsx::Drawings.new
  end

  def test_write_ext
    expected = '<xdr:ext cx="9308969" cy="6078325"/>'

    @drawing.__send__(:write_xdr_ext, 9308969, 6078325)
    result = @drawing.instance_variable_get(:@writer).string

    assert_equal(expected, result)
  end
end
