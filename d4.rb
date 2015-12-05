require "digest"

input = "bgvyzdsv"

def find_index(input, result_beginning)
  index = 1

  while !Digest::MD5.hexdigest(input + index.to_s).start_with?(result_beginning)
    index += 1
  end

  index
end

puts find_index(input, "00000")
puts find_index(input, "000000")
