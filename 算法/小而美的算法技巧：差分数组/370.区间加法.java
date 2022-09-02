// 题目描述:
// 假设你有一个长度为 n 的数组，初始情况下所有的数字均为 0，你将会被给出 k 个更新的操作。

// 其中，每个操作会被表示为一个三元组：[startIndex, endIndex, inc]，你需要将子数组 A[startIndex ... endIndex]（包括 startIndex 和 endIndex）增加 inc。

// 请你返回 k 次操作后的数组。

// 示例:
// 示例:

// 输入: length = 5, updates = [[1,3,2],[2,4,3],[0,2,-2]]
// 输出: [-2,0,3,5,3]
// 解释:

// 初始状态:
// [0,0,0,0,0]

// 进行了操作 [1,3,2] 后的状态:
// [0,2,2,2,0]

// 进行了操作 [2,4,3] 后的状态:
// [0,2,5,5,3]

// 进行了操作 [0,2,-2] 后的状态:
// [-2,0,3,5,3]
class Difference {
    int[] diff;

    public Difference(int[] nums) {
        diff = new int[nums.length];
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
            nums[i] = diff[i] + nums[i - 1];
        }
        return nums;
    }

}
class Solution {
public int[] getModifiedArray(int length, int[][] updates) {
    int[] nums = new int[length];
    Difference df = new Difference(nums);
    for (int[]update:updates) {
        int i = update[0];
        int j = update[1];
        int val = update[2];
        df.increment(i, j, val);
    }
    return df.result();
}
}