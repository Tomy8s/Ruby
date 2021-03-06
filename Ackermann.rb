#by T. Yates

#Get inputs

m = -1
n = -1
until (m >= 0)
    print("Please, enter a value for 'm': ")
    m = gets().chomp().to_i
end
until (n >= 0)
    print("Please, enter a value for 'n': ")
    n = gets().chomp().to_i
end

#Ackermann function

def ack(m, n)
    #puts("m = #{m}, n = #{n}")
    if m == 0 then return n+1
    elsif n == 0 then return ack(m-1, 1)
    else return ack(m-1, ack(m, n-1))
    end
end

#Program

print("Ackermann \(#{m}, #{n}\) is ")
print("#{ack(m,n)}.")

#by T. Yates