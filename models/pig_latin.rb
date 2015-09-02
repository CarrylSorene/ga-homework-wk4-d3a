class PigLatin

  def self.pig word
    if word.start_with?('a', 'e', 'i', 'o', 'u')
    word.concat "ay"
    else first_letter = word.slice!(0)
    word + first_letter + "ay"
    end
  end

end