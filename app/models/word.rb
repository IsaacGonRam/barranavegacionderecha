class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.list(input_word)
    canonical = input_word.split('').sort.join('')
    Word.where(canonical: canonical)
  end

end
