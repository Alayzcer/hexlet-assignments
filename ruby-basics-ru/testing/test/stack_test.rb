# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @st = Stack.new
    @data = '51515'
  end

  def test_add_item
    @st.push! @date
    assert { @st.size == 1 }
    assert { @data == @st.to_a.first }
  end

  def test_remove_item
    @st.push! @data
    item = @st.pop!
    assert { @data == item }
    assert { @st.size.empty? }
  end

  def test_clear_stack
    @st.push! @data
    @st.clear!
    assert { @st.size.empty? }
    assert { @st.to_a == [] }
  end

  def test_check_empty_stack
    assert { @st.empty? }
    @st.push! @data
    @st.clear!
    assert { @st.empty? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?