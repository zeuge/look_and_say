module Extensions
  module Integer
    # Public: Generate sequence of numbers
    #
    # Examples
    #   1.look_and_say.each.take(5)   # => [1, 11, 21, 1211, 111221]
    #   10.look_and_say.each.take(3)) # => [10, 1110, 3110]
    #
    # Returns Enumerator
    def look_and_say
      Enumerator.new do |enum|
        number = self
        sign = number < 0 ? -1 : 1

        loop do
          enum << number
          number = sign * number.next_sequence_number
        end
      end
    end

    protected

    # Internal: Get next number of the sequence
    #
    # Returns Integer
    def next_sequence_number
      abs.
        to_s.
        chars.
        chunk { |char| char }.
        map { |number, ary| [ary.length, number] }.
        join.
        to_i
    end
  end
end
