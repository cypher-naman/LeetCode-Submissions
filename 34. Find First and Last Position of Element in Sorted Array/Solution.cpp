class Solution {

int firstIndex(int target, vector<int> &nums) {

    int starting = 0;
    int ending = nums.size()-1;
    int mid = -1;
    int startingIndex = nums.size();

    while(starting<=ending) {
        mid = (starting + ending)/2;
        // cout<<nums[mid]<<" "<<"starting"<<endl;
        if (nums[mid] == target) {
            mid = mid;
            ending--;
            startingIndex = min(startingIndex, mid);
        } else if (nums[mid] < target) {
            starting = mid+1;
        } else {
            ending = mid-1;
        }
    }

    if (startingIndex == nums.size()) {
        return -1;
    } else {
        return startingIndex;
    }
}

int lastIndex(int target, vector<int> &nums) {

    int starting = 0;
    int ending = nums.size()-1;
    int mid = -1;
    int endingIndex = -1;

    while(starting<=ending) {
        mid = (starting + ending)/2;
        // cout<<nums[mid]<<" "<<"ending"<<endl;
        if (nums[mid] == target) {
            mid = mid;
            starting++;
            endingIndex = max(endingIndex, mid);
        } else if (nums[mid] < target) {
            starting = mid+1;
        } else {
            ending = mid-1;
        }
    }

    if (endingIndex == -1) {
        return -1;
    } else {
        return endingIndex;
    }
}

public:
    vector<int> searchRange(vector<int>& nums, int target) {
        int first = firstIndex(target, nums);
        // cout<<first<<" this is first index "<<endl;
        if (first == -1) {
            vector<int> op = {-1,-1};
            return op;
        } 

        int last = lastIndex(target, nums);
        // cout<<last<<" this is last index "<<endl;
        vector<int> op = {first,last};
        return op;

    }
};