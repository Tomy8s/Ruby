print("m")
m = gets().chomp().to_i
print("n")
n = gets().chomp().to_i

def ack(m, n)
    puts("m = #{m}, n = #{n}")
    if m == 0 then
        n =+ 1
    elsif n == 0 then
        ack(m =- 1, 1)
    else
        ack(m =- 1, ack(m, n =- 1))
    end
end

#NUM = 9
ack(m, n)