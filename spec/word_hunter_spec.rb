require 'spec_helper'

describe 'WordHunter' do
  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = 'BUG'

    result = WordHunter.generate_word(matrix, words)

    expect(result).to include(words)
  end

  it 'Recebe uma matriz e lista, e retorna palavra na horizontal' do
    matrix = [['B', 'S', 'Z'],
              ['U', 'O', 'S'],
              ['G', 'L', 'S']]
    words = 'BUG'
    
    result = WordHunter.generate_word(matrix, words)

    expect(result).to include(words)
  end
end
