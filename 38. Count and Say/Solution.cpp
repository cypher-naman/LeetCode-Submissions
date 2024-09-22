class Solution {

    string countAndSayRec(string s) {
        string op;
        int count = 1; 

        for (int i = 1; i < s.size(); i++) {
            if (s[i] == s[i - 1]) {
                count++; 
            } else {
                op += to_string(count) + s[i - 1];
                count = 1; 
            }
        }

        op += to_string(count) + s.back();
        
        return op;
    }

public:
    string countAndSay(int n) {
        if (n == 1) {
            return "1";
        } else {
            string op = "1"; 
            for (int i = 2; i <= n; i++) {
                op = countAndSayRec(op);
            }
            return op;
        }
    }
};
