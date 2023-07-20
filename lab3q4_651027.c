#include <stdio.h>

int main(){
	int input, count = 0;
	double sum = 0;
	printf("input : ");
	scanf("%d",&input);
	while(input > 0){
		sum += input;
		count++;
		printf("input : ");
		scanf("%d",&input);
	}
	if(count == 0){
		count++;
	}
	printf("Sum : %d\nAverage : %f\n",(int)sum,sum/count);
	return 0;
}
