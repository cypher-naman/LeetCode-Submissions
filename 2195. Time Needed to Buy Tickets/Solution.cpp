class Solution {
public:
    int timeRequiredToBuy(vector<int>& tickets, int k) {
        int timeCount = 0;
        vector<int> ticket(tickets);
        while(ticket[k]>0) {
            for(int i = 0; i < ticket.size(); i++) {
                if (ticket[i] > 0) {
                    timeCount++;
                    ticket[i]--;
                }
                if (ticket[k] == 0) {
                    break;
                }
            }
        }
        return timeCount;
    }
};