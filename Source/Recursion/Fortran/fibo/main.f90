! program MonProgramme
!   use MonModule

!   type(MaClasse) :: objet
!   real :: valeur_initiale = 12

!   ! Initialisation de l'objet en utilisant la méthode Initialiser
!   call objet%Initialiser(valeur_initiale)

!   ! Utilisation de l'objet
!   print *, "La valeur de l'objet est :", objet%donnee

! end program MonProgramme

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

    res = fibonacci(50)
    ! Calculer et afficher les nombres de Fibonacci de 0 à 100
    print *, 'Fibonacci(50) = ', res
end program fibonacci_recursive

