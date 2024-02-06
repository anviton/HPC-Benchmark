public class Fibo {

    // Méthode récursive pour calculer le n-ième élément de la suite de Fibonacci
    public static int fibonacci(int n) {
        if (n <= 1) {
            return n;
        } else {
            return fibonacci(n - 1) + fibonacci(n - 2);
        }
    }

    public static void main(String[] args) {
        int n = 45; // Exemple : Calcul du 10ème élément de la suite de Fibonacci
        System.out.println("Le " + n + "ème terme de la suite de Fibonacci est : " + fibonacci(n));
    }
}
