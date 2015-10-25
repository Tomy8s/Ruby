#by T. Yates

m = -1
n = -1
o = -1
until (m >= 0)
    print("Please, enter a value for 'm': ")
    m = gets().chomp().to_i
end
until (n >= 0)
    print("Please, enter a lowest value for 'n': ")
    n = gets().chomp().to_i
end
until (o >= n)
    print("Please, enter a highesr value for 'n': ")
    o = gets().chomp().to_i
end


def ack(m, n)
    #puts("m = #{m}, n = #{n}")
    if m == 0 then return n+1
    elsif n == 0 then return ack(m-1, 1)
    else return ack(m-1, ack(m, n-1))
    end
end
until n > o
    print("Ackermann \(#{m}, #{n}\) = ")
    puts("#{ack(m,n)}.")
    n += 1
end

#by T. Yates