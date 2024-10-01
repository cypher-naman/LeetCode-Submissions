class Solution {
public:
    int searchInsert(vector<int>& nums, int target) {
        int begin = 0;
        int end = nums.size()-1;
        int returnInt = 0;
        if (target > nums[end]) {
            return nums.size();
        } else if (target < nums[0]) {
            return 0;
        }

        while (end>=begin) {
            int mid = (begin + end)/ 2;
            if (nums[mid] == target) {
                returnInt = mid;
                break;
            } else if (nums[mid] > target) {
                end = mid-1;
                returnInt = min(returnInt, mid-1); 
                if (target != nums[returnInt]) {
                    returnInt++;
                }
            } else {
                begin = mid+1;
                returnInt = max(returnInt, mid+1);
                // if (target != nums[returnInt]) {
                //     returnInt++;
                // }
            }
            // returnInt = mid; 
        }
        return returnInt;
    }
};