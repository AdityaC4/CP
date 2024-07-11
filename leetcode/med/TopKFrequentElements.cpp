#include <bits/stdc++.h>

using namespace std;

vector<int> topKFrequent(vector<int>& nums, int k) {
    unordered_map<int, int> hashmap;
    vector<vector<int>> counts(nums.size()+1);
    vector<int> res;
    for (int i : nums) {
        hashmap[i]++;
    }
    for (const auto& [key, value] : hashmap) {
        counts[value].push_back(key);
    }
    for (int i = counts.size() - 1; i >= 0; i--) {
        for (int j : counts[i]) {
            res.push_back(j);
            if (res.size() == k) return res;
        }
    }
    return res;
}

int main(){
    vector<int> vec = {1, 1, 1, 1, 2, 2, 3};
    int k = 2;
    vector<int> res = topKFrequent(vec, k);
    for (int i : res){
        cout << i << endl;
    }
    return 0;
}
