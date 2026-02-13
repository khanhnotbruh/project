#include <bits/stdc++.h>
using namespace std;

bool Doixung(string st) {
	bool kt = true;
	int N = st.length();
	int giua = (int)(N/2);
	for (int i = 0; i<= N/2 ; i++) {
		if (st[i] != st[N - i - 1]) {
			kt = false;
			break;
		}
	}

	return kt;
}

int Tong(string St)
{
	int t = 0;
	for (int i = 0; i < St.length(); i++)	t += (int)St[i] - 48;
	return t;
}

int main() {

	ifstream iFile("Bai3.inp");
	ofstream oFile("Bai3.out");

	if (iFile.is_open() && oFile.is_open()) {
		char S;
		int N;
		iFile >> N;

		int _Max = 0;
		string Smax = "";
		string Sub = "";
		int t = 0;
		while (iFile.get(S))
		{
			if ((S >= '0') && (S <= '9')) Sub += S;
			else
			if (S==' ') 
			{
				if (Doixung(Sub))
				{
					t = Tong(Sub);
					if (t > _Max)
					{
						_Max = t;
						Smax = Sub;
					}
				}
				Sub = "";
				t = 0;
			}
		}
		if (Doixung(Sub))
		{
		    t = Tong(Sub);
			if (t > _Max)
			{
				_Max = t;
				Smax = Sub;
			}
		}
		oFile << Smax << " " << _Max;
		iFile.close();
		oFile.close();
	}
	return 0;
}
