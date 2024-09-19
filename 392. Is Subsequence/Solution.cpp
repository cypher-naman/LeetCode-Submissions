class Solution {

bool subSeq(string &s, string &t, int i, int j, vector<vector<int>> &ds) {
        if (i == s.size()) {
            return true;
        }
    
        if (j == t.size()) {
            return false;
        }
    bool op = false;
    bool next = false;
    if (ds[i][j] != -1) {
        if (ds[i][j] == 1) {
            return true;
        } else {
            return false;
        }
    }

    if (s[i] == t[j]) {
        op = subSeq(s, t, i+1, j+1, ds);
    } else {
        next = subSeq(s, t, i, j+1, ds);
    }
    ds[i][j] = (op || next) ? 1 : 0;
    return ds[i][j] == 1;
}


public:
    bool isSubsequence(string s, string t) {
        vector<vector<int>> matrix(s.size(), vector<int>(t.size(), -1));
        return subSeq(s, t, 0, 0, matrix);
    }
};