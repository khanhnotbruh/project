#include <bits/stdc++.h>
#include <string>
#include <iostream>
using namespace std;
string st1,st2;
int main() {
    #define task"bai1"
    freopen(task".inp", "r", stdin);
    freopen(task".out", "w", stdout);
    int kq1 = 0;
    int kq2 = 0;
    getline(cin, st1);
    getline(cin, st2);
    for (int i=0;i<st1.length(); i++)
        if ((st1.substr(i, 1) >="0") & (st1.substr(i, 1) <="9")) kq1++;
    for (int i=0;i<st2.length(); i++)
        if ((st2.substr(i, 1) >="0") & (st2.substr(i, 1) <="9")) kq2++; 
	if (kq1==kq2) cout << "Yes "<< kq1;
	else  cout << "No " << kq1 << " " << kq2; 
//    while (fgetc(stdin) != EOF)
//    {
//    	string input_line;
//        getline(cin, st);
//        for (int i=0;i<st.length(); i++)
//        if ((st.substr(i, 1) >="0") & (st.substr(i, 1) <="9")) kq++;
//    }
    return 0;
}
