#include <stdio.h>
#include <stdlib.h>

int mySum(int, int);
int main() {
	int i = mySum(1, 2);
	char *myName = (char *)malloc(10 * sizeof(char));
	myName = "Hello";
	printf("%s, %d\n", myName, mySum(1, 2));
}

int mySum(int a, int b) {
	return a + b;
}
