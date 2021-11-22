require "pry"

def decrypt(string, &algo)
  new_string = ""
  string.chars.each do |char|
    new_string << algo.call(char)
  end
  new_string.titleize
end

LOWERCASE = ("a".."z").to_a*2

rot13 = Proc.new do |char|
  char.downcase!
  if LOWERCASE.include?(char)
    i = LOWERCASE.find_index(char)
    char = LOWERCASE[i + 13]
  end
  char
end

class String
  def titleize
    self.split.map {|word| word.capitalize}.join(" ")
  end
end

p ("to get to the other side").titleize

# str1 = "Why did the chicken cross the road?"
# str2 = "Gb trg gb gur bgure fvqr!"
# p str1
# p str2

# p decrypt(str1,rot13).capitalize
# p decrypt(str2,rot13).capitalize


p decrypt("T", rot13)
p decrypt("g", rot13)

p decrypt("Nqn Ybirynpr", rot13)
p decrypt("Tenpr Ubccre", rot13)
p decrypt("Nqryr Tbyqfgvar", rot13)
p decrypt("Nyna Ghevat", rot13)
p decrypt("Puneyrf Onoontr", rot13)
p decrypt("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv", rot13)
p decrypt("Wbua Ngnanfbss", rot13)
p decrypt("Ybvf Unvog", rot13)
p decrypt("Pynhqr Funaaba", rot13)
p decrypt("Fgrir Wbof", rot13)
p decrypt("Ovyy Tngrf", rot13)
p decrypt("Gvz Orearef-Yrr", rot13)
p decrypt("Fgrir Jbmavnx", rot13)
p decrypt("Xbaenq Mhfr", rot13)
p decrypt("Fve Nagbal Ubner", rot13)
p decrypt("Zneiva Zvafxl", rot13)
p decrypt("Lhxvuveb Zngfhzbgb", rot13)
p decrypt("Unllvz Fybavzfxv", rot13)
p decrypt("Tregehqr Oynapu", rot13)