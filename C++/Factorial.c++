#include <iostream>
#include <vector>
#include <chrono>

using namespace std;
using namespace chrono;

void factorial(int n) {
    vector<int> result = {1}; // Inicializa con 1

    for (int i = 2; i <= n; i++) {
        int carry = 0;
        for (size_t j = 0; j < result.size(); j++) {
            int prod = result[j] * i + carry;
            result[j] = prod % 10;
            carry = prod / 10;
        }
        while (carry) {
            result.push_back(carry % 10);
            carry /= 10;
        }
    }

    
}

int main() {
    int n = 10000;
    auto start = high_resolution_clock::now();

    factorial(n);

    auto end = high_resolution_clock::now();
    cout << "Tiempo de ejecución: "
         << duration_cast<milliseconds>(end - start).count()
         << " ms" << endl;

    return 0;
}

