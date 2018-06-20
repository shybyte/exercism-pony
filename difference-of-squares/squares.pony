use "collections"
use "itertools"

primitive Squares
  fun square(x: USize): USize => 
     x * x

  fun sum_of_iter(iter: Iter[USize]): USize => 
     iter.fold[USize](0, {(acc, x) => acc + x })

  fun square_of_sums(n: USize): USize => 
     square((n * (n + 1)) / 2)

  fun sum_of_squares(n: USize): USize => 
    sum_of_iter(
      Iter[USize](Range(1, n + 1))
        .map[USize](this~square())
    )

  fun difference(n: USize): USize => 
    square_of_sums(n) - sum_of_squares(n)
