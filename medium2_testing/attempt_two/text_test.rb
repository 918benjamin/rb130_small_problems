require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'text'

class TestText < MiniTest::Test
  def setup
    @file = File.open("sample_text.txt")
    @file_data = @file.read
  end

  def test_swap
    text = Text.new(@file_data)
    correct = <<~CORRECT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    CORRECT
    assert_equal(correct, text.swap('a', 'e'))
  end

  def teardown
    @file.close
  end
end