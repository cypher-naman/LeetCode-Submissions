class Solution {
public:
    int mySqrt(int x) {
        int sqrt = 0;
        for (long long i=0; i*i<=x; i++) {
            sqrt = i;
        }
        return sqrt;
    }
};