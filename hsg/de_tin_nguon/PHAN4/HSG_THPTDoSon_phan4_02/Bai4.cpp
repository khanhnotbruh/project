#include <bits/stdc++.h>
using namespace std;
const long long asize = 100001;

int main() {
	ios_base::sync_with_stdio(false);
    cin.tie(nullptr);  
	cout.tie(nullptr);
	long long N;
	long long A[asize];
	long long C[asize];
	//fill(A, A + asize, 0);
	//fill(C, C + asize, 0);
	ifstream ifile("Bai4.inp");
	ofstream ofile("Bai4.out");
	if (ifile.is_open() && ofile.is_open()) {
		ifile >> N;
		for (long long i = 0; i < N; i++)	ifile >> A[i];
		sort(A, A + N);
		long long dc = 0;
		long long dl = 0;
		for (long long i = 0; i < N; i++)
			if (A[i] % 2 == 0)
			{
				dc++;
				C[dc * 2 - 2] = A[i];
			}
			else
			{
				dl++;
				C[dl * 2 - 1] = A[i];
			}
		long long dem = 0;
		for (long long i = 0; i < N * 2 ; i++)
		{
			if (C[i] != 0)
			{
				if (dem<N) ofile << C[i] << " ";
				else ofile << C[i];
				dem++;
			}
				
		}
		ifile.close();
		ofile.close();
	}
	return 0;
}