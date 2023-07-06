#include <stdio.h>

int resta_mult(int a, int b, int c, int d) __atribute__((cdec1));

void main()
{
    int res, a, b, c, d;
    printf("Ingrese el valor de A: ");
    scanf("%d", &a);
    printf("Ingrese el valor de B: ");
    scanf("%d", &b);
    printf("Ingrese el valor de C: ");
    scanf("%d", &c);
    printf("Ingrese el valor de D: ");
    scanf("%d", &d);
    res = det(a, b, c, d);
    printf(" El determinante de la matriz 2x2 M = |[(%d,%d)(%d,%d)]| = %d", a, b, c, d, res);
}