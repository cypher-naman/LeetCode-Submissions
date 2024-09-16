class Solution {
    // Comparator should be static or a lambda expression can be used instead
    static bool comparator(pair<int, int> t1, pair<int, int> t2) {
        if (t1.first < t2.first) {
            return true;
        } else if (t1.first == t2.first && t1.second < t2.second) {
            return true;
        } else {
            return false;
        }
    }

public:
    int findMinDifference(vector<string>& timePoints) {
        vector<pair<int, int>> timeList;

        for (int i = 0; i < timePoints.size(); i++) {
            // Extracting hours and minutes using substr and converting them using stoi
            int intHr = stoi(timePoints[i].substr(0, 2));
            int intMin = stoi(timePoints[i].substr(3, 2));
            timeList.push_back(make_pair(intHr, intMin));
        }

        // Sorting the timeList using the comparator
        sort(timeList.begin(), timeList.end(), comparator);

        // Calculating the time difference
        int minimumDiff = 1e9;
        for (int i = 1; i < timeList.size(); i++) {
            int hourDiff = 60 * (timeList[i].first - timeList[i - 1].first);
            int minDiff = (timeList[i].second - timeList[i - 1].second);
            int totalDiff = hourDiff + minDiff;
            minimumDiff = min(minimumDiff, totalDiff);
        }

        // Check the circular difference between the first and last time points
        int lastToFirstHourDiff = 60 * (24 + timeList[0].first - timeList[timeList.size() - 1].first);
        int lastToFirstMinDiff = (timeList[0].second - timeList[timeList.size() - 1].second);
        int circularDiff = lastToFirstHourDiff + lastToFirstMinDiff;

        minimumDiff = min(minimumDiff, circularDiff);

        return minimumDiff;
    }
};
