class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int first = nums[0];
        int count = 1;
        for (int i = 1; i<nums.size(); i++) {
            if (nums[i-1] == nums[i]) {
            } else {
                nums[count] = nums[i];
                count++;
            }
        }
        return count;
    }
};