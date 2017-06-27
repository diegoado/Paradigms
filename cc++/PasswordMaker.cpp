#include <string>
#include <iostream>

#define POSITIONS_AMOUNT 4

using namespace std;

int main() {
    string word;
    int  position[POSITIONS_AMOUNT];
    char password[POSITIONS_AMOUNT];

    for (int i = 0; i < POSITIONS_AMOUNT; i++) {
        scanf("%d", &position[i]);
    }
    for (int i = 0; i < POSITIONS_AMOUNT; i++) {
        cin >> word;
        password[i] = word[position[i]];
    }
    printf("%s\n", password);
    return 0;
}

