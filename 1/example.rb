# 2019 Matthew Raimondi
# www.mattraimondi.com

# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def isPythagorean(a, b, c)
    if a ** 2 + b ** 2 == c ** 2
        return true
    else
        return false
    end
end

for x in 1..1000
    for y in x..(1000 - x)
        for z in y..(1000 - y)
            if (x + y + z) == 1000
                if isPythagorean(x, y, z)
                    puts (x * y * z)
                end
            end
        end
    end
end
