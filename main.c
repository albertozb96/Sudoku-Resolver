#include <stdio.h>

void printSudoku();

int main()
{
    printSudoku();
    printf("Press Any Key to Continue.");
    getchar();
    return 0;
}

void printSudoku()
{
	int i,j;
	printf("\n\t       |       |       \n");
	for(i=0; i<9; i++)
	{
		printf("\t");
		for(j=0; j<9; j++)
		{
			printf(" x");
			if((j==2) || (j==5))
				printf(" |");
		}
		if((i==2) || (i==5))
			printf("\n\t-----------------------");
		printf("\n");
	}
	printf("\t       |       |       \n\n");
}
