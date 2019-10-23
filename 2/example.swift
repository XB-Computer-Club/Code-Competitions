// 2018 Matthew Raimondi
// mattraimondi.com

// Problem 10
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
// Find the sum of all the primes below two million.

var primeNumbers = [2, 3]

for number in Range(5...2000000) {
    if (number % 2) == 0 {
        continue
    }
    for _ in primeNumbers {
        if (number * number) < number && (number % primeNumbers[-1]) == 0 {
            continue
        }
    }
    primeNumbers.append(number)
}

var sum : Int = primeNumbers.reduce(0, +)

print(sum)
