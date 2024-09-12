class Solution {
public:
    int singleNumber(vector<int>& nums) {
        int op = nums[0];
        for(int i=1; i<nums.size(); i++) {
            op = op^nums[i];
        }
        return op;
    }
};