import java.math.BigInteger;

public class Factorial {
    public static void main(String[] args) {
        int n = 10000;
        long startTime = System.currentTimeMillis();

        // Llamada a la función que calcula el factorial
        factorial(n);

        long endTime = System.currentTimeMillis();
        System.out.println("Tiempo de ejecución: " + (endTime - startTime) + " ms");
    }

    public static void factorial(int n) {
        BigInteger result = BigInteger.ONE;
        for (int i = 2; i <= n; i++) {
            result = result.multiply(BigInteger.valueOf(i));
        }
    }
}
