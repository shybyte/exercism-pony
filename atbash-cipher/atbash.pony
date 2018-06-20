class Atbash
  fun encode(s: String): String =>
    let result = recover iso String() end
    for c in s.lower().values() do
      if  not (_isLowerAlpha(c) or _isDigit(c)) then
        continue
      end
      if (result.size() % 6) == 5 then
        result.push(' ')
      end
      result.push(if _isLowerAlpha(c) then  _substitute(c) else c end)
    end
    result

  
  fun decode(s: String): String =>
    let result = recover iso String() end
    for c in s.values() do
      if  _isLowerAlpha(c) then
        result.push(_substitute(c))
      elseif _isDigit(c) then
        result.push(c)
      end
    end
    result

  fun _substitute(c: U8): U8 => ('z' - c)  + 'a'
  fun _isDigit(c: U8): Bool => (c >= '0') and (c <= '9')
  fun _isLowerAlpha(c: U8): Bool => (c >= 'a') and (c <= 'z')