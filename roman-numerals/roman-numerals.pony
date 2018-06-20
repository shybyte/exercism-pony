use "itertools"

type Rule is (String, USize)

class RomanNumerals
  let rules: Array[Rule] val = [
    ("M", 1000); ("CM", 900)
    ("D", 500); ("CD", 400)
    ("C", 100); ("XC", 90)
    ("L", 50); ("XL", 40)
    ("X", 10); ("IX", 9)
    ("V", 5); ("IV", 4)
    ("I", 1)
]

  fun apply(x: USize): String ? =>
    if (x < 0) or (x >= 4000) then 
      error
    end
    try
      let rule = Iter[Rule](rules.values()).find({(rule) => x>= rule._2})?
      rule._1 + apply(x - rule._2)?
    else
      ""
    end
