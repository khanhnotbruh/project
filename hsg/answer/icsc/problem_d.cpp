#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

/**
 * @param events Vector of {player, frame, attack_value}
 * @param H      Starting HP for both players
 * @return vector {hp1, hp2} each clamped to min 0
 */
vector<int> processGame(vector<vector<int>> events, int H) {
  std::sort(events.begin(),events.end(),[](vector<int>&a,vector<int>&b){
      return a[1]<b[1];
  });
  int cur=events[0][1];
  vector<int>lost(2,0);
  for(vector<int>&e:events){
    if(e[1]!=cur){
      cur=e[1];
      lost[0]=min(H,lost[0]);
      lost[1]=min(H,lost[1]);
    }
    lost[e[0]]+=e[2];
  }
  lost[0]=min(H,lost[0]);
  lost[1]=min(H,lost[1]);
  return {H-lost[0],H-lost[1]};
}


// --- Main execution block. DO NOT MODIFY ---
int main() {
    try {
        int H, n;
        cin >> H >> n;
        vector<vector<int>> events(n, vector<int>(3));
        for (int i = 0; i < n; i++) {
            cin >> events[i][0] >> events[i][1] >> events[i][2];
        }

        vector<int> result = processGame(events, H);
        cout << result[0] << " " << result[1] << endl;

    } catch (const exception& e) {
        cerr << "Error: " << e.what() << endl;
        return 1;
    }
    return 0;
}
