require 'test_helper'
require 'active_support'
#todo

class TestWords < Test::Unit::TestCase
  must "have wrong word and right word" do
    word = Word.new(:right => "word", :wrong => "wrod")
    assert "word", word.right
    assert "wrod", word.wrong
  end
end