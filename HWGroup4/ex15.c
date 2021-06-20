#include <stdio.h>
#include <stdlib.h>
/*Задача 15.
Ще копираме стрингове. Дефинирайте и инизиалицирайте два стринга:
string 1: "A string to be copied."
string3: "I am very good in strings coping!"
Дефинирайте и два празни стринга, в които ще копираме string 2,
string4. Дефинирайте функция, която през пойнтери ще извърши
копирането от стринг към стринг. Използвайте while и факта, че
*pointer++ отива към следващия символ.
Помислете за терминиращия символ. Принтирайте двата изкопирани
стринга.
Извикайте функцията и копирайте от string1 в string4.*/

void copy(char *from, char *to)
{
    while (*from)
    {
        *to = *from;
        *from++;
        *to++;
    }
    *to = '\0';
}

int main(int argc, char* argv[])
{  
    char *string2=(char*)malloc(sizeof(char) * 64);
    char *string4=(char*)malloc(sizeof(char) * 32);
    copy(argv[1], string4);
    copy(argv[2], string2);
    printf("%s\n", string4);
    printf("%s\n", string2);
    return 0;
}
