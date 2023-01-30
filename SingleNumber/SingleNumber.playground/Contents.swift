// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        
        for num in nums {
            if dict[num] != nil {
                dict[num]! += 1
            } else {
                dict[num] = 1
            }
        }
        
        return dict.first { $0.value == 1 }!.key
    }
}

// Test:

let solution = Solution()
let nums_1 = [1]
let nums_2 = [2,2,1]
let nums_3 = [4,1,2,1,2]

for nums in [nums_1, nums_2, nums_3] {
    print(solution.singleNumber(nums))
}
