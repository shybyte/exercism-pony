use "itertools"

primitive HammingDistance
  fun apply(s1: String, s2: String): USize ? =>
    if s1.size() != s2.size() then
      error
    end
    let pairs = Iter[U8](s1.values()).zip[U8](s2.values())
    pairs
      .filter({(p) => p._1 != p._2})
      .count()