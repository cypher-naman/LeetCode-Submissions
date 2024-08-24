class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
        int sameCtr = 0;
        for (int i=0; i<strs[0].size(); ++i) {
            bool isSameChar = true;
            for(int j=1; j<strs.size(); ++j) {
                // cout<<strs[0][i]<<strs[j][i]<<endl;
                if (strs[j][i] == strs[0][i]);
                else {
                    isSameChar = false;
                    break;
                }
            }
            if(isSameChar == false) {
                break;
            } else {
                sameCtr++;
            }
        }
        string returnStr;
        cout<<sameCtr<<endl;
        while(sameCtr > 0) {
            --sameCtr;
            returnStr = strs[0][sameCtr] + returnStr;
        }
        return returnStr;
    }
};