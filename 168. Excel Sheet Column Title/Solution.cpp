class Solution {

    void getChar(int number, string &s) {
        if (number == 0) {
            return;
        }

        if (number >= 26) { 
            getChar((number-1)/26, s);
            char charForNo;
            if (number % 26 == 0) {
                char ip = (number % 26) + 'A' + 25 ;
                s.push_back(ip);
                // s.push_back('A');
                // charForNo = ((number % 26) - 1) + 'A' + 1;
            } else {
                charForNo = (number % 26) + 'A' - 1;
                s.push_back(charForNo);
            }
            
        } else if (number < 26) {
            char charForNo;
            if (number % 25 == 0) {
                // s.push_back('A');
                // s.push_back('Z');
                charForNo = (number % 26) + 'A'- 1 ;
                s.push_back(charForNo);
            } else {
                charForNo = (number) + 'A' - 1 ;
                s.push_back(charForNo);
            }
            
        } 
        return;
    }

public:
    string convertToTitle(int columnNumber) {
        int number = columnNumber;
        string s = "";
        getChar(number, s);
        return s;
    }
};