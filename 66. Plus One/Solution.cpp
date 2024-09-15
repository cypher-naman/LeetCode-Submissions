class Solution {
public:
    vector<int> plusOne(vector<int>& digits) {
        int i = digits.size()-1;
        vector<int> op;
        bool carry = false;
        while(i>=0) {
                if (digits[i] == 9 && (i == digits.size()-1)) {

                    op.push_back(0);
                    // if (digits.size() == 1) {
                    //     op.push_back(1);
                    // }
                    carry = true;
                } else {
                    if (i == digits.size()-1) {
                        op.push_back(digits[i]+1);
                    } else if (i>=0 && carry) {
                        if (digits[i] == 9) {
                            carry = true;
                            op.push_back(0);
                            // if (carry) {
                            //     op.push_back(1);
                            // }
                        } else {
                            op.push_back(digits[i]+1);
                            carry = false;
                        }
                    } else if (i>=0) {
                        op.push_back(digits[i]);
                    } else {
                        op.push_back(1);
                    }
                }
                if (carry && i==0) {
                    op.push_back(1);
                }
            i--;
        }
        reverse(op.begin(), op.end());
    return op;

    }
};