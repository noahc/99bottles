class Bottles

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).map {|i| verse(i)}.join("\n")
  end

  def song
    verses(99, 0)
  end

  def verse(number)
    "#{first_line(number)}\n#{second_line(number)}\n"
  end

  private

  def first_line(number)
    return "No more bottles of beer on the wall, no more bottles of beer." if number == 0
    "#{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer."
  end

  def second_line(number)
    return "Go to the store and buy some more, 99 bottles of beer on the wall." if number == 0
    return "Take it down and pass it around, no more bottles of beer on the wall." if number == 1
    "Take one down and pass it around, #{number - 1} #{container(number - 1)} of beer on the wall."
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
  end
end
