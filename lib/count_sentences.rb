require 'pry'

class String
  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    punctuation = ['.', '?', '!']
    split_string = split(Regexp.union(punctuation))
    split_string.delete('')
    split_string.length
  end
end
