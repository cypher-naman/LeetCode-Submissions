class Solution {

private:

int transform(int number) {
    int sum = 0; 
    int no = number;
    while(no>0) {
        int lastDigit = no%10;
        sum += lastDigit;
        no = no / 10;

    }
    return sum;
}

public:
    int getLucky(string s, int k) {
        int sum = 0;
        for(int i = 0; i<s.size(); i++) {
            int diff = (s[i]-'a')+1;
            // cout<<diff<<"-"<<endl;
            if (diff>9) {
                while(diff>0) {
                    int last = diff%10;
                    sum += last;
                    diff/=10;
                }
            } else {
                sum += int(diff);
            }
        }
        // cout<<sum<<endl;
        int transforms = k-1;
        // cout<<transforms<<endl;
        while(transforms>0) {
            sum = transform(sum);
            transforms--;
        }
        return sum;
    }
};