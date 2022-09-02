/*
 * @lc app=leetcode.cn id=560 lang=java
 *
 * [560] 和为 K 的子数组
 *
 * https://leetcode-cn.com/problems/subarray-sum-equals-k/description/
 *
 * algorithms
 * Medium (45.02%)
 * Likes:    1445
 * Dislikes: 0
 * Total Accepted:    215.8K
 * Total Submissions: 479.3K
 * Testcase Example:  '[1,1,1]\n2'
 *
 * 给你一个整数数组 nums 和一个整数 k ，请你统计并返回 该数组中和为 k 的子数组的个数 。
 * 
 * 
 * 
 * 示例 1：
 * 
 * 
 * 输入：nums = [1,1,1], k = 2
 * 输出：2
 * 
 * 
 * 示例 2：
 * 
 * 
 * 输入：nums = [1,2,3], k = 3
 * 输出：2
 * 
 * 
 * 
 * 
 * 提示：
 * 
 * 
 * 1 <= nums.length <= 2 * 10^4
 * -1000 <= nums[i] <= 1000
 * -10^7 <= k <= 10^7
 * 
 * 
 */

// @lc code=start
class Solution {
    public int subarraySum(int[] nums, int k) {
        int count=0;
        int[] prenums = new int[nums.length+1];
        prenums[0]=0;
        for (int i = 1; i < prenums.length; i++) {
            prenums[i]=prenums[i-1]+nums[i-1];
            for (int j = 0; j <i; j++) {
                if(k==prenums[i]-prenums[j]){
                    count++;
                }
            }
          
        }
        return count;
    }
}
// @lc code=end
//  最优解
// int subarraySum(int[] nums, int k) {
//     int n = nums.length;
//     // map：前缀和 -> 该前缀和出现的次数
//     HashMap<Integer, Integer> 
//         preSum = new HashMap<>();
//     // base case
//     preSum.put(0, 1);

//     int res = 0, sum0_i = 0;
//     for (int i = 0; i < n; i++) {
//         sum0_i += nums[i];
//         // 这是我们想找的前缀和 nums[0..j]
//         int sum0_j = sum0_i - k;
//         // 如果前面有这个前缀和，则直接更新答案
//         if (preSum.containsKey(sum0_j))
//             res += preSum.get(sum0_j);
//         // 把前缀和 nums[0..i] 加入并记录出现次数
//         preSum.put(sum0_i, 
//             preSum.getOrDefault(sum0_i, 0) + 1);
//     }
//     return res;
// }