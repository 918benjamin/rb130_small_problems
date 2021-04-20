=begin
The following list contains the names of individuals who are pioneers in the
field of computing or that have had a significant influence on the field.
The names are in an encrypted form, though, using a simple (and incredibly weak)
form of encryption called Rot13: https://en.wikipedia.org/wiki/ROT13

Write a program that deciphers and prints each of these names.

Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu

Problem:
- input: Array of strings (scrambled names)
- output: decipher and print each name


- Keep track of the capitalization
- add 13 to current letter index
- if running total is > 26, subtract 26

Algorithm:
- For each name in cipher_names 
  - initialize a result empty array
  - split the name into an array of characters. For each character (with index)
    - push the current character into result if current character == ' '
      - next
    - store t/f in upper by checking the current char ordinal < 97
    - add 13 to the index and subtract 26 if the total is > 26
    - push in the character at the new_index to result (upcased if upper == true)
  - join result and output it
=end

# 'Nqn Ybirynpr' == 'Ada Lovelace'

LETTERS = ('a'..'z').to_a

cipher_names = [
          'Nqn Ybirynpr',
          'Tenpr Ubccre',
          'Nqryr Tbyqfgvar',
          'Nyna Ghevat',
          'Puneyrf Onoontr',
          'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
          'Wbua Ngnanfbss',
          'Ybvf Unvog',
          'Pynhqr Funaaba',
          'Fgrir Wbof',
          'Ovyy Tngrf',
          'Gvz Orearef-Yrr',
          'Fgrir Jbmavnx',
          'Xbaenq Mhfr',
          'Fve Nagbal Ubner',
          'Zneiva Zvafxl',
          'Lhxvuveb Zngfhzbgb',
          'Unllvz Fybavzfxv',
          'Tregehqr Oynapu'
]

# Attempt 1
# def decipher(cipher_names)
#   cipher_names.each do |cipher_name|
#     result = []
#     cipher_name.chars.each do |char|
#       if char == ' ' || char == '-'
#         result << char
#         next
#       end

#       upper = char.ord < 97
#       new_index = LETTERS.index(char.downcase) + 13
#       new_index -= 26 if new_index >= 26
#       new_char = LETTERS[new_index].clone
#       new_char.upcase! if upper
#       result << new_char
#     end
#     puts result.join
#   end
# end


# decipher(cipher_names)

# Attempt 2
def decrypt_rot13(names)
  names.each do |name|
    name = name.chars.map do |char|
      if char =~ /[A-Z]/
        new_char = char.ord + 13
        new_char -= 26 if new_char > 90
        new_char.chr
      elsif char =~ /[a-z]/
        new_char = char.ord + 13
        new_char -= 26 if new_char > 122
        new_char.chr
      else
        char
      end
    end
    puts name.join
  end
end

names = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

names = names.split("\n")

decrypt_rot13(names)