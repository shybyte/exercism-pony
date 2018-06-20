use "itertools"
use "collections"

primitive BeerSong
  fun verse(n: USize): String =>
    if n > 0 then
      _n_bottles(n) + " of beer on the wall, " + _n_bottles(n) + " of beer.\n" +
        "Take " + _one_or_it(n) +" down and pass it around, " + _n_bottles(n - 1) + " of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  
  fun sing(beerMax: USize, beerMin: USize): String =>
    "\n".join(Iter[USize](Reverse(beerMax, beerMin)).map[String](BeerSong~verse()))

  fun _n_bottles(n: USize): String =>
    match n
    |  0 => "no more bottles"
    |  1 => "1 bottle"
    else
      n.string() + " bottles"
    end

  fun _one_or_it(n: USize): String =>
    if n == 1 then  "it"  else  "one" end