primitive Leap
  fun apply(year: USize): Bool =>
    let isEvenlyDivisibleBy = {(d: USize): Bool => (year % d) == 0}
    (isEvenlyDivisibleBy(4) and not isEvenlyDivisibleBy(100)) 
      or isEvenlyDivisibleBy(400)
