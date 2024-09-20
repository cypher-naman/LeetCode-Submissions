class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int maxCurrent = nums[0];  
        int maxGlobal = nums[0];  
        for (int i = 1; i < nums.size(); i++) { 
            maxCurrent = max(nums[i], maxCurrent + nums[i]);
            if (maxCurrent > maxGlobal) {
                maxGlobal = maxCurrent;
            }
        }
        
        return maxGlobal;
    }
};
