use "collections"
use "itertools"

primitive Anagram
  fun apply(word: String, candidates: Array[String]): Array[String] =>
    let lower_case_word: String = word.lower()
    let sorted_chars = _sorted_chars(lower_case_word)
    Iter[String](candidates.values())
      .filter({(s) => 
          (Anagram._sorted_chars(s) == sorted_chars) and (s != lower_case_word)
        })
      .collect(Array[String])
  
  fun _sorted_chars(s: String): String =>
    String.from_array(
      recover val
        Sort[Array[U8], U8]((s.array().clone()))
      end
    )