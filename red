#include<stdio.h>
#include<stdlib.h>

int main(){
int data[100],n,size,filled=0,temp;
float mint,maxt,p;

printf("Enter the number of packets\n");
scanf("%d",&n);

printf("Enter the size of buffer\n");
scanf("%d",&size);

mint=size*0.5;
maxt=size*0.7;

printf("Enter the packets\n");
for(int i=0;i<n;i++){
	scanf("%d",&data[i]);
}

for(int i=0;i<n;i++){
	temp=0;
	temp+=data[i];
	if(temp>maxt){
		printf("%d packet discarded\n",data[i]);
	}
	else if(temp>mint){
		p=(data[i]-mint)/(maxt-mint);
		printf("Prob %f\t",p);
		if(p<.8){
			printf("%d data sent\n",data[i]);
		}
		else{
			printf("%d discarded\n",data[i]);
		}
		
	}
	else{
		printf("%d data sent\n",data[i]);

	}
}


return 0;
}
