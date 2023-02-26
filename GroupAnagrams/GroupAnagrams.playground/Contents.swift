// Given an array of strings strs, group the anagrams together. You can return the answer in any order.
// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard !strs.isEmpty else { return [] }
        
        var dict = [String: [String]]()
        for str in strs {
            let sortedStr = String(str.sorted())
            let values = dict[sortedStr] ?? []
            
            dict[sortedStr] = values + [str]
        }
        
        var result = [[String]]()
        dict.values.forEach { v in
            result.append(v)
        }
    
        return result
    }
}

// Test:
let solution = Solution()
let strs_1 = ["eat","tea","tan","ate","nat","bat"]
let strs_2 = [""]
let strs_3 = ["a"]

for strs in [strs_1, strs_2, strs_3] {
    print(solution.groupAnagrams(strs))
}
