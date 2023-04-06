#include<stdio.h>

int power(int*,int);

int main(){

int num=15;
printf("%d ^4 = %d \n",num,power(&num,4));

}
