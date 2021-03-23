require 'minitest/autorun'

require_relative 'test'

class TestTest < MiniTest::Test
  def setup
    @file = File.open("sample_text.txt")
    @sample_text = Text.new(@file.read)
  end
  
  def test_swap_letter
    expected_text = <<~TEXT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT

    assert_equal(expected_text, @sample_text.swap('a', 'e'))
  end

  def test_count_words
    assert_equal(72, @sample_text.word_count)
  end

  def teardown
    @file.close
  end
end