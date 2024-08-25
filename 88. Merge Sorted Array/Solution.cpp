class Solution {
public:
    void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {
        vector<int> dup(nums1.begin(), nums1.begin() + m); 

        int i = 0;  
        int j = 0;

        for(int it = 0; it < m + n; it++) {
            if (i < m && (j >= n || dup[i] <= nums2[j])) {
                nums1[it] = dup[i];
                i++;
            } else if (j < n) {
                nums1[it] = nums2[j];
                j++;
            }
        }
    }
};
