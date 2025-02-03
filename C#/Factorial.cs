using System;
using System.Diagnostics;
using System.Numerics;

class Program {
    static void Main() {
        int n = 10000;
        Stopwatch stopwatch = Stopwatch.StartNew();

        BigInteger result = 1;
        for (int i = 2; i <= n; i++) {
            result *= i;
        }

        stopwatch.Stop();
        Console.WriteLine($"Dígitos en {n}! : {result.ToString().Length}");
        Console.WriteLine($"Tiempo de ejecución: {stopwatch.ElapsedMilliseconds} ms");
    }
}
