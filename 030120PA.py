# Exercise 1

# Question 1

# (a)

# Ryan’s Tutorials [Linux Tutorial] read

# (b)

# skipped

# (c)

# Rico’s cheatsheets [Bash scripting cheatsheet] read
# Rico’s cheatsheets [Python cheatsheet] read

# Question 2

# (a)

# In Python,

def mutiples_of_3_and_5():
    sum = 0
    for i in range(1, 1001):
        if i % 3 == 0 or i % 5 == 0:
            sum += i
    print(sum)

mutiples_of_3_and_5()

# The answer is 234168.

def smallest_multiple():
    product = 1
    for i in range(1, 21):
        product = product * i
    for i in range(1, product + 1):
        a = 0
        for j in range(1, 21):
            if i % j == 0:
                a += 1
        if a == 20:
            break
    print(i)

smallest_multiple()

# The answer is 232792560.

def is_prime(num):
    if num == 2:
        return True
    elif num > 2:
        for i in range(2, num):
            if num % i == 0:
                return False
        return True

def summation_of_primes():
    num = 2
    summation = 0
    while num < 2000000:
        if is_prime(num) == True:
            summation += num
            num += 1
        num += 1
    print(summation)

summation_of_primes()

# The answer is 142913828922.

# These methods run very slowly.

# (b)

# In Python,

def mutiples_of_3_and_5_b():
    
    # Refer to https://stackoverflow.com/a/5930338.
    
    result = sum([i for i in range(1000) if i % 3 == 0 or i % 5 == 0])
    print(result)

mutiples_of_3_and_5_b()

# The answer is 234168.

from fractions import gcd
from functools import reduce

def smallest_multiple_b():
    
    # Refer to https://stackoverflow.com/a/31841538.
    
    result = int(reduce(lambda a, b: a * b / gcd(a, b), range(1, 21)))
    print(result)

smallest_multiple_b()

# The answer is 232792560.

import math

def summation_of_primes_b():
    
    # Refer to https://spaces.ac.cn/archives/2612.
    # Use the sieve of Eratosthenes.
    
    n = 2000000
    prime = [i for i in range(1, n + 1)]
    r = int(math.sqrt(n))
    for j in range(2, r + 1):
        if prime[j - 1] != 0:
            s = j * j
            while s <= n:
                prime[s - 1] = 0
                s = s + j
    print(sum(prime) - 1)

summation_of_primes_b()

# The answer is 142913828922.

# These methods are much faster and in less codes.