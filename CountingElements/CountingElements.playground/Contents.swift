// Given an integer array, count how many elements x there are, such that x + 1 is also in arr.
// If there're duplicates, count them seperately.

class Solution {
    func countElements(_ arr: [Int]) -> Int {
        let set = Set(arr)
        var result = 0
        
        for v in arr {
            if set.contains(v + 1) {
                result += 1
            }
        }
        
        return result
    }
}

// Test:
let solution = Solution()
let nums_1 = [1,2,3]
let nums_2 = [1, 1, 3, 3, 5, 5, 7, 7]
let nums_3 = [1,3,2,3,5,0]

for nums in [nums_1, nums_2, nums_3] {
    print(solution.countElements(nums))
}
