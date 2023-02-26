// You are given an integer array prices where prices[i] is the price of a given stock on the ith day.
// On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.
// Find and return the maximum profit you can achieve.

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var prev = prices[0]
        var profit = 0
        
        for i in 1..<prices.count {
            if prices[i] > prev {
                profit += prices[i] - prev
            }
            
            prev = prices[i]
        }
        
        return profit
    }
}

// Test:
let solution = Solution()
let nums_1 = [7,1,5,3,6,4]
let nums_2 = [1,2,3,4,5]
let nums_3 = [7,6,4,3,1]

for nums in [nums_1, nums_2, nums_3] {
    print(solution.maxProfit(nums))
}
