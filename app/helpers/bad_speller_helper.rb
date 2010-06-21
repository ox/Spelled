module BadSpellerHelper
  def set_word_in_text_area(word)
    page['word'].value = word
  end
end
