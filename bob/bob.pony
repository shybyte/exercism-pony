primitive Bob
  fun apply(input: String): String =>
    let input': String = input.clone().>strip() 
    if input' == "" then // silence
      "Fine. Be that way!"
    elseif _isUpperCaseAndHasAlphabeticChars(input') then // shouted
      "Whoa, chill out!"
    elseif _endsWith(input', "?") then // question
      "Sure."
    else  
      "Whatever."
    end

  fun _endsWith(s: String, substring: String): Bool =>
    s.at(substring, s.size().isize() - substring.size().isize())

  fun _isUpperCaseAndHasAlphabeticChars(s: String): Bool =>
    (s.upper() == s) and (s != s.lower())