// The API isBadVersion is defined for you.
// bool isBadVersion(int version);

class Solution {
public:
    int firstBadVersion(int n) {
        unsigned int i = 1;
        unsigned int j = n;
        unsigned int mid;
        while (i<=j) {
            mid = (i+j)/2;
            bool isBad = isBadVersion(mid);
            if (isBad) {
                j = mid-1;
            } else {
                i = mid+1;
            }
        }
        return i;
    }
};