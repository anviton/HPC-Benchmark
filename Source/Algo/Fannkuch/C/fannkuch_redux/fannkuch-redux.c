#include <stdio.h>
#include <stdlib.h>

// Ajoutez un paramètre de pointeur pour le checksum
int fannkuch(int n, int *checksum) {
    int *perm  = malloc(n * sizeof(int));
    int *perm1 = malloc(n * sizeof(int));
    int *count = malloc(n * sizeof(int));
    int maxFlips = 0, permCount = 0;
    *checksum = 0; // Initialisez le checksum

    // Initialize perm1 with 1 to n
    for (int i = 0; i < n; i++) {
        perm1[i] = i;
    }

    int r = n;

    while (1) {
        while (r != 1) {
            count[r-1] = r;
            r--;
        }

        // Copy perm1 to perm
        for (int i = 0; i < n; i++) {
            perm[i] = perm1[i];
        }

        int flipsCount = 0;
        int k;

        while ((k = perm[0]) != 0) {
            int k2 = (k + 1) >> 1;
            for (int i = 0; i < k2; i++) {
                int temp = perm[i];
                perm[i] = perm[k - i];
                perm[k - i] = temp;
            }
            flipsCount++;
        }

        maxFlips = flipsCount > maxFlips ? flipsCount : maxFlips;
        permCount++;

        if (permCount % 2 == 0) {
            *checksum -= flipsCount;
        } else {
            *checksum += flipsCount;
        }

        // Generate next permutation
        while (1) {
            if (r == n) {
                free(perm);
                free(perm1);
                free(count);
                return maxFlips; // Retourne maxFlips comme avant
            }

            int perm0 = perm1[0];
            int i = 0;
            while (i < r) {
                int j = i + 1;
                perm1[i] = perm1[j];
                i = j;
            }
            perm1[r] = perm0;

            count[r] = count[r] - 1;
            if (count[r] > 0) break;
            r++;
        }
    }
}

int main(int argc, char *argv[]){
    int n = atoi(argv[1]);
    int checksum;
    int maxFlips = fannkuch(n, &checksum); // Passez l'adresse de checksum
    printf("%d\n", checksum); // Affichez le checksum
    printf("Pfannkuchen(%d) = %d\n", n, maxFlips);
    return 0;
}

