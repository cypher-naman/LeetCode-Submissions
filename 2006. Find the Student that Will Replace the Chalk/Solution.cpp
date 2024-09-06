class Solution {
public:
    int chalkReplacer(vector<int>& chalk, int k) {

        long long consumption = 0;
        int students = chalk.size()-1;
        map<int,int> mp;
        for(int i=0; i<chalk.size(); i++) {
            consumption+=chalk[i];
            mp[i] = consumption;
        }
        int newK = k;
        if (k > consumption) {
            newK = k%consumption;
        } 
        int returnIndex = 0;
        for(int i=0; i<chalk.size(); i++) {
            // cout<<mp[i]<<endl;
            if (newK == 0) {
                returnIndex = 0;
                break;
            } else if (mp[i] > newK) {
                returnIndex = i;
                break;
            }
        }
        return returnIndex;
    }
};