class Solution {

int noOfWays(int n, vector<int> &ways) {
        if (n<=1) {
            return 1;
        }
        if (ways[n] != -1) {
            return ways[n];
        }

        //taking only 1
        int oneStep = noOfWays(n-1, ways);
        //taking only 2
        int twoStep = noOfWays(n-2, ways);

        ways[n] = oneStep + twoStep;

        return ways[n];
}

public:
    int climbStairs(int n) {
        vector<int> ways(n+1,-1);
        return noOfWays(n, ways);
    }
};