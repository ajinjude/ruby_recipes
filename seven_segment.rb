# https://en.wikipedia.org/wiki/Seven-segment_display
class SevenSegment
  @keys = {
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

  def self.to_numbers(segment)
    lines = segment.split(/\n/).map{|line| line.scan(/.../)}
    lines.transpose.map{|n| @keys[n.join]}.join.to_i
  end

  def self.to_segment(number)
    segment = number.to_s.chars.map { |n| @keys.key(n).scan(/.../) }
    segment.transpose.map { |s| s.join }.join("\n")
  end
end