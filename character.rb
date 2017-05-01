def commonCharacterCount(s1, s2)
    s1 = s1.split('')
    s2 = s2.split('')

    arr = []

    s1.each do |c|
       if s2.any? {|s| s == c}
          arr.push(s2.slice!(s2.find_index(c), 1))
       end
    end
    arr.length
end
