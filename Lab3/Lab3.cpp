#include <iostream>
using namespace std;
int sum(int a, int b){
	int sum=0;
	for(int i=a;i<=b;i++){
		sum+=i;
	}
	return sum;
}
double prod(int a, int b){
	double product=1;
	for(int i=a;i<=b;i++){
		product*=i;
	}
	return product;
}


int main() {
	cout << sum(5, 8) << '\n'; // compute sum from a to b inclusive 5+6+7+8
	cout << sum(9, 72) << '\n'; // compute sum from a to b inclusive 9+10+11+...+71+72
	cout << prod(6, 8) << '\n'; // compute product 6*7*8
	cout << prod(50, 68) << '\n'; //  compute 50*51*52*... * 68
}
