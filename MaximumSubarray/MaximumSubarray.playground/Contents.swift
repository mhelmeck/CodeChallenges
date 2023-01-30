// Given an integer array nums, find the subarray with the largest sum, and return its sum.

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums.first! }
        
        var localMax = nums[0]
        var result = localMax
        
        for i in 1..<nums.count {
            localMax = max(nums[i], nums[i] + localMax)
            result = max(localMax, result)
        }
        
        return result
    }
}

// Test:
let solution = Solution()
let nums_1 = [-2,1,-3,4,-1,2,1,-5,4]
let nums_2 = [1]
let nums_3 = [5,4,-1,7,8]

for nums in [nums_1, nums_2, nums_3] {
    print(solution.maxSubArray(nums))
}

