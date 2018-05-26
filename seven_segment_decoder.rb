# https://en.wikipedia.org/wiki/Seven-segment_display
class SevenSegmentDecoder
  def self.to_numbers(segment)
    keys = {
      " _ | ||_|" => "0",
      "     |  |" => "1",
      " _  _||_ " => "2",
      " _  _| _|" => "3",
      "   |_|  |" => "4",
      " _ |_  _|" => "5",
      " _ |_ |_|" => "6",
      " _   |  |" => "7",
      " _ |_||_|" => "8",
      " _ |_| _|" => "9"
    }

    lines = segment.split(/\n/).map{|line| line.scan(/.../)}
    numbers = lines[0].zip(lines[1],lines[2]).map{|n| keys[n.join]}.join
    numbers.to_i
  end
end