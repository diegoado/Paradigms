#include <bitset>

#define MAX_N 100000

using namespace std;

bitset<MAX_N> primes;

void sieve() {
    primes.set();
    primes[0] = primes[1] = 0;

    for (long i = 2; i < MAX_N; i++) {
        if (primes[i]) {
            for (long j = i * i; j < MAX_N; j+= i) {
                primes[j] = 0;
            }
        }
    }
}

int main() {
    int n;

    sieve();
    scanf("%d", &n);

    if (primes[n] && primes[n+2])
        printf("PRIMO CASADO!");
    else if (primes[n])
        printf("PRIMO!");
    else
        printf("NAO PRIMO!");

    return 0;
}
