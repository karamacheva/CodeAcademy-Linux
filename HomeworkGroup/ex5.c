#include <stdio.h>
#include <stdlib.h>

int obarniBitNa( int number, int position){
	int mask = (1 << position);
	return (number ^ mask);
}

int main(int argc, char* argv[]){
	int number = atoi(argv[1]);
	int position = atoi(argv[2]);
	if(position < 0){
		exit(1);
	}
	else{
	printf("%d\n",obarniBitNa(number,position));
	}
	return 0;
}
