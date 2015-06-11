require "pry"

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet = alphabet.split("").collect.with_object({}) do |letter, hash|
    hash[letter] = alphabet.index(letter)
  end


  arr.sort do |a, b| 
    i = 0
    if a[i] != b[i]
      alphabet[a[i]] <=> alphabet[b[i]]
    elsif a[i] == b[i]
      until a[i] != b[i]
        i += 1
      end
      alphabet[a[i]] <=> alphabet[b[i]]
    end
  end

end