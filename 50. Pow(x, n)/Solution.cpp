class Solution {
public:
    double myPow(double x, int n) {
        // Handle the edge case when n is INT_MIN to prevent overflow
        if (n == INT_MIN) {
            x = 1 / x;
            n = -(n + 1);  // We can't negate INT_MIN directly, so we adjust n to INT_MAX and compensate later.
            return x * myPow(x, n);
        }
        
        // If n is negative, invert x and make n positive
        if (n < 0) {
            x = 1 / x;
            n = -n;
        }

        double result = 1.0;
        double current_product = x;

        // Exponentiation by squaring
        while (n > 0) {
            if (n % 2 == 1) {
                result *= current_product;  // Multiply the result by current_product when n is odd
            }
            current_product *= current_product;  // Square the current product
            n /= 2;  // Divide n by 2 (shift right)
        }

        return result;
    }
};
