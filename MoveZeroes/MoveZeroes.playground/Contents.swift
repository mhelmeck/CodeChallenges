// Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
// Note that you must do this in-place without making a copy of the array.

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.isEmpty || nums.count == 1 { return }
        
        var i = 0
        var j = 0
        while i < nums.count && j < nums.count {
            if nums[i] == 0 {
                nums.remove(at: i)
                nums.append(0)
            } else {
                i += 1
            }
            
            j += 1
        }
    }
}

// Test:

let solution = Solution()
var nums_1 = [0,1,0,3,12]
var nums_2 = [0]

solution.moveZeroes(&nums_1)
solution.moveZeroes(&nums_2)

print(nums_1)
print(nums_2)
