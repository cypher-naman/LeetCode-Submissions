class Solution {
public:
    int maxDepth(string s) {
        int maxLevel = 0;
        int currentLevel = 0;
        for (auto i : s) {
            switch (i) {
                case '(':
                currentLevel++;
                maxLevel =  max(maxLevel, currentLevel);
                break;
                case ')':
                currentLevel--;
                break;
                default:
            }
        }
        return maxLevel;
    }
};