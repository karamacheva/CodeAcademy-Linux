#include <stdio.h>
#include<string.h>
#include <stdlib.h>

/*Напишете обединение от три стойности: цяло число, число с
плаваща запетая и низ. Инициализирайте отделните членове и ги
изведете на екрана.*/

union myUnion
{
    int value1;
    float value2;
    char* value3;
};

int main(int argc,char * argv[])
{
	int size = sizeof(argv[3]);
	union myUnion u1;
	u1.value1 = atoi(argv[1]);
	printf("%d\n",u1.value1); 
    u1.value2=atof(argv[2]);
    printf("%f\n",u1.value2);
    u1.value3=(char *) malloc (sizeof(char) * size);
    if (u1.value3 == NULL)
    {
    	exit(1);
    }
    strcpy(u1.value3,argv[3]);
    printf("%s\n",u1.value3);
    free(u1.value3);
    return 0;
}
