class Bob

  def hey(s)
    if empty?(s)
      'Fine. Be that way!'
    elsif upcase(s) && no_downcase(s)
      'Whoa, chill out!'
    elsif last_question_mark?(s)
      'Sure.'
    else
      'Whatever.'
    end
  end

  def empty?(s)
    s.strip.empty?
  end

  def upcase(s)
    s == s.upcase
  end

  def no_downcase(s)
    s.downcase != s
  end

  def last_question_mark?(s)
    s[-1] == ('?')
  end
end
