primitive ToRNA
  fun apply(dna: String): String ? =>
    let rna = recover String() end
    for c in dna.values() do
      rna.push(_convert(c)?)
    end
    rna

  fun _convert(dnaChar: U8): U8 ? =>
    match dnaChar
    | 'C' => 'G'
    | 'G' => 'C'
    | 'T' => 'A'
    | 'A' => 'U'
    else
      error
    end

   