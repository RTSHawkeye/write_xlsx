# -*- coding: utf-8 -*-

require 'helper'
require 'write_xlsx/package/shared_strings'

class TestWriteSi < Minitest::Test
  def setup
    @obj = Writexlsx::Package::SharedStrings.new
  end

  def test_write_si
    @obj.__send__('write_si', 'neptune')
    result = @obj.instance_variable_get(:@writer).string
    expected = '<si><t>neptune</t></si>'

    assert_equal(expected, result)
  end
end
