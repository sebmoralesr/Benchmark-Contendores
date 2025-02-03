import time

def factorial(n):
    result = 1
    for i in range(2, n + 1):
        result *= i
    return result

n = 10000
start_time = time.time()



end_time = time.time()

print(f"Tiempo de ejecución: {(end_time - start_time) * 1000:.2f} ms")
