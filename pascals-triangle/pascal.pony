use "collections"

primitive PascalsTriangle
  fun rows(n: USize): Array[Array[USize]] =>
    if n == 0 then return 
      Array[Array[USize]] 
    end
    let result: Array[Array[USize]] = [[1]]
    for row_index in Range(1, n) do
      let row: Array[USize] = [1]
      for i in Range(1, row_index) do
          try
            let last_row = result(row_index - 1)?
            row.push(last_row(i - 1)? + last_row(i)?)
          end
      end
      row.push(1)
      result.push(row)
    end
    result