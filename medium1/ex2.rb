=begin
Fill out the rest of the Ruby code below so it prints output like that shown in
"Sample Output." You should read the text from a simple text file that you provide.
(We also supply some example text below, but try the program with your text as well.)

Read the text file in the #process method and pass the text to the block provided
in each call. Everything you need to work on is either part of the #process method
or part of the blocks. You need no other additions or changes.

The text you use does not have to produce the same numbers as the sample output
but should have the indicated format.

paragraphs = file_data.count('\n\n') + 1
words = file_data.split.count
lines = file_data.count('\n') => how do I avoid counting the doubles
=end

class TextAnalyzer
  def process
    file = File.open("sample_text.txt")
    yield(file)
    file.close
    # paragraphs = file_data.scan(/(?=#{"\n\n"})/).count + 1
    # words = file_data.split.count
    # lines = File.foreach("sample_text.txt").count
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.read.scan(/(?=#{"\n\n"})/).count + 1} paragraphs"}
analyzer.process { |file| puts "#{file.readlines.size} lines" }
analyzer.process { |file| puts "#{file.read.split.count} words" }

# Sample output
# 3 paragraphs
# 15 lines
# 126 words