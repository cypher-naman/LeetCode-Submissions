class Solution {
public:
    bool canJump(vector<int>& nums) {
        int reachable = 0;
        for (int i = 0; i < nums.size(); i++) {
            // If the current index is not reachable, return false
            if (i > reachable) {
                return false;
            }
            // Update the farthest reachable index
            reachable = max(reachable, i + nums[i]);
            // If we can already reach the last index, return true
            if (reachable >= nums.size() - 1) {
                return true;
            }
        }
        return false;
    }
};
