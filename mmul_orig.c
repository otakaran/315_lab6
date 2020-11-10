#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int SIZE = 0;
    if (argc != 2) {
        printf("Specify an array size (./mmul <SIZE>)\n");
        exit(EXIT_FAILURE);
    }
    else { SIZE = atoi(argv[1]); }

    /* Init matricies */
    int m_1[SIZE][SIZE];
    int m_2[SIZE][SIZE];
    int result[SIZE][SIZE];
    int i = 0, j = 0, k = 0;

    /* Zero the matricies */
    memset(m_1, 0, sizeof(m_1));
    memset(m_2, 0, sizeof(m_2));
    memset(result, 0, sizeof(result));

    /* Preform matrix multiplication */
    for (i = 0; i < SIZE; i++) {
        for (j = 0; j < SIZE; j++) {
            for (k = 0; k < SIZE; k++) {
                result[i][j] += m_1[i][k] * m_2[k][j];
            }
        }
    }

    /* Print the resulting matrix */
    printf("Result matrix is \n");
    for (i = 0; i < SIZE; i++) {
        for (j = 0; j < SIZE; j++)
            printf("%d ", result[i][j]);
        printf("\n");
    }

    return 0;
}