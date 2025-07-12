import java.util.Arrays;

class Solution {
    public int[] solution(int money) {
                    
        int cqy = money / 5500;
        int money1 = money % 5500; 

        return new int[]{cqy, money1};
    }
}