import java.util.Arrays;

class Solution {
    public int solution(int[] array) {
        
        Arrays.sort(array);  // sorting
                
        return array[array.length/2];
        
    }
}