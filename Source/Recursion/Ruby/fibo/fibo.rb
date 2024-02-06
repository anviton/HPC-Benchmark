def fibonacci(n)
    return n if n <= 1
    fibonacci(n - 1) + fibonacci(n - 2)
end

n = 45
res = fibonacci(n)
puts  "Le " + n.to_s + "ème terme de la suite de Fibonacci est : " + res.to_s
  