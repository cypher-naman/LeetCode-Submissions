class Solution {
public:
    string reversePrefix(string word, char ch) {
        string returnString;
        auto ptr = word.find(ch);
        if (ptr != word.size()) {
            for(int i=ptr; i>=0; i--) {
                returnString.push_back(word[i]);
            }
            for(int i = ptr+1; i<word.size(); i++) {
                returnString.push_back(word[i]);
            }
        } else {
            returnString = word;
        }
        return returnString;
    }
};