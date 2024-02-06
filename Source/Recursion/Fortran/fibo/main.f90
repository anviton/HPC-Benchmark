module fibonacci_mod
  implicit none
contains
  recursive function fibonacci(n) result(fib)
    integer, intent(in) :: n
    integer(kind = 8) :: fib

    if (n <= 1) then
       fib = n
    else
       fib = fibonacci(n-1) + fibonacci(n-2)
    endif
  end function fibonacci
end module fibonacci_mod

program fibonacci_recursive
    use fibonacci_mod
    implicit none
    integer(kind = 8) :: res
    integer :: n = 45
    res = fibonacci(45)
    print *,  'Le ', n ,"ème terme de la suite de Fibonacci est : ", res
end program fibonacci_recursive

