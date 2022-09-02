/*
 * @lc app=leetcode.cn id=1094 lang=java
 *
 * [1094] 拼车
 *
 * https://leetcode-cn.com/problems/car-pooling/description/
 *
 * algorithms
 * Medium (55.74%)
 * Likes:    163
 * Dislikes: 0
 * Total Accepted:    43.2K
 * Total Submissions: 77.6K
 * Testcase Example:  '[[2,1,5],[3,3,7]]\n4'
 *
 * 车上最初有 capacity 个空座位。车 只能 向一个方向行驶（也就是说，不允许掉头或改变方向）
 * 
 * 给定整数 capacity 和一个数组 trips ,  trip[i] = [numPassengersi, fromi, toi] 表示第 i
 * 次旅行有 numPassengersi 乘客，接他们和放他们的位置分别是 fromi 和 toi 。这些位置是从汽车的初始位置向东的公里数。
 * 
 * 当且仅当你可以在所有给定的行程中接送所有乘客时，返回 true，否则请返回 false。
 * 
 * 
 * 
 * 示例 1：
 * 
 * 
 * 输入：trips = [[2,1,5],[3,3,7]], capacity = 4
 * 输出：false
 * 
 * 
 * 示例 2：
 * 
 * 
 * 输入：trips = [[2,1,5],[3,3,7]], capacity = 5
 * 输出：true
 * 
 * 
 * 
 * 
 * 提示：
 * 
 * 
 * 1 <= trips.length <= 1000
 * trips[i].length == 3
 * 1 <= numPassengersi <= 100
 * 0 <= fromi < toi <= 1000
 * 1 <= capacity <= 10^5
 * 
 * 
 */

// @lc code=start
class Difference {
    int[] diff;

    public Difference(int[] nums) {
        diff = new int[nums.length];
        diff[0] = nums[0];
        for (int i = 1; i < nums.length; i++) {
            diff[i] = nums[i] - nums[i - 1];
        }
    }

    public void increment(int i, int j, int val) {
        diff[i] += val;
        if (j + 1 < diff.length) {
            diff[j + 1] -= val;
        }
    }

    public int[] result() {
        int[] nums = new int[diff.length];
        nums[0] = diff[0];
        for (int i = 1; i < diff.length; i++) {
            nums[i] = nums[i - 1] + diff[i];
        }
        return nums;
    }
}

class Solution {
    public boolean carPooling(int[][] trips, int capacity) {
        int[] nums = new int[1001];
        for (int i = 0; i <1000; i++) {
            nums[i] = 0;
        }
        Difference df = new Difference(nums);
        for (int k = 0; k < trips.length; k++) {
            int a = trips[k][0];
            int b = trips[k][1];
            int c = trips[k][2];
            df.increment(b, c-1, a);
        }
        int[] res = df.result();
        for (int i = 0; i < res.length; i++) {
            if(capacity<res[i]){
                return false;
            }
        }
        return true;
    }
}
// @lc code=end
