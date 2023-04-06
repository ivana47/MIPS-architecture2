#include<stdio.h>

void myabs(int*,int);


int main()
{
int a=-5;
int s=0;
myabs(&s,a);
printf("%d \n",s);
return 0;



}
