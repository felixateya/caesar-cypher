def caesar_cypher(string, factor)
    result = ""
    
    string.each_char do |char|
        if char.match(/[a-zA-z]/)
            base = char.downcase == char ? 'a'.ord : 'A'.ord
            result += ((char.ord - base + factor) % 26 + base).chr
        else
            result += char
        end
    end
    result
end

p caesar_cypher("What a string!", 5) # => "Bmfy f xywnsl!"