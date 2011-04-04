#include <unistd.h>

int main(){
	void *brkpt = sbrk(0);
	printf("%f\n", brkpt);
	printf("%d\n", getpagesize());
}
