class WordHunter
    def self.generate_word(matrix, words)
      # vowels = %w[a e i o u]
      found_words = ''
      matrix.each do |word| 
        if word.join.include?(words)
          found_words += words
        end
      end
      
      matrix.each_with_index do |word, index|
        w = ''
        matrix.each do |letters|
          w += letters[index]
          # found_words += letters[index]
        end
        if w.include?(words)
          found_words += w
        end
      end
      found_words
    end
  end
  