#include <iostream>
#include <vector>
#include <string>
#include <sstream>
/**
 * Generates a geometric pattern on an n x n grid.
 *
 * Args:
 *     n:     Grid size (n x n, always odd for diamond)
 *     shape: Either "checkerboard" or "diamond"
 *
 * Returns:
 *     A 2D vector of integers (0 or 1).
 */
std::vector<std::vector<int>> generate_shape(int n, const std::string& shape) {
  int s=shape.size();
std::vector<std::vector<int>> ans(n,std::vector<int>(n,0));
  if(s>7&&shape=="checkerboard"){
    bool h=0;
    for(int i=0;i<n;i++){
      ans[i][0]=h;
      h=!h;
    }
    for(int i=0;i<n;i++){
      h=ans[i][0];
      for(int j=1+h;j<n;j+=2){
        ans[i][j]=1;
      }
    }
  }else if(shape=="diamond"){
    int m=n/2;
    for(int i=0;i<=m;i++){
      for(int j=m-i;j<=m+i;j++){
        ans[i][j]=1;
      }
    }
    for(int i=1;i<=m;i++){
      for(int j=i;j<n-i;j++){
        ans[i+m][j]=1;
      }
    }
  }
  return ans;
}


// --- Main execution block. DO NOT MODIFY ---
int main() {
    try {
        std::string line;
        std::getline(std::cin, line);
        int n = std::stoi(line);

        std::string shape;
        std::getline(std::cin, shape);

        auto result = generate_shape(n, shape);
        for (int i = 0; i < (int)result.size(); i++) {
            for (int j = 0; j < (int)result[i].size(); j++) {
                if (j > 0) std::cout << " ";
                std::cout << result[i][j];
            }
            std::cout << "\n";
        }

    } catch (const std::exception& e) {
        std::cerr << "An unexpected error occurred: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}
