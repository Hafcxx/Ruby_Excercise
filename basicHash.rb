def hash (a)
    arrAlpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789@#".chars
    hashed = ""
    a.chars.each do |b|
        arrAlpha.each_with_index do |c, i|
             if b == c 
                hashed+="#{i}"
             end
        end
    end 
    return hashed
end

puts "Introduce una contraseña"
a = gets.chomp

puts "tu contraseña hasheada es #{hash(a)}"