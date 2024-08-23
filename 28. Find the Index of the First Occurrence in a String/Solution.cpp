class Solution {
public:
    int strStr(string haystack, string needle) {
        if (needle.empty()) return 0; // Special case: needle is empty
        if (haystack.size() < needle.size()) return -1; // If haystack is smaller than needle, return -1

        for (int i = 0; i <= haystack.size() - needle.size(); i++) {
            int j = 0;
            // Check if needle matches haystack starting from position i
            while (j < needle.size() && haystack[i + j] == needle[j]) {
                j++;
            }
            // If we've checked the entire needle
            if (j == needle.size()) {
                return i; // Return the starting index
            }
        }
        return -1; // If no match is found
    }
};