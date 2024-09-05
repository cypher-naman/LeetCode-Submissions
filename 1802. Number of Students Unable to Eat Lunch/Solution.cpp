class Solution {
public:
    int countStudents(vector<int>& students, vector<int>& sandwiches) {
        vector<int> student(students);
        int i=0;
        int j;
        while (i<sandwiches.size()) {
            int beforeStudents = student.size();
            // cout<<"before student"<<beforeStudents<<endl;
            j=0;
            while (j<student.size()) {
                // cout<<sandwiches[i]<<student[j]<<endl;
                if (sandwiches[i] == student[j]) {
                    i++;
                    student.erase(student.begin()+j);
                } else {
                    j++;        
                }
            }
            if(beforeStudents == student.size()) {
                // cout<<"breaking due to student match"<<beforeStudents<<student.size()<<endl;
                break;
            }
        }
        return student.size();
    }
};