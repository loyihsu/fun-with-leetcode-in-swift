// Problem: https://leetcode.com/problems/account-balance-after-rounded-purchase/

class Solution {
    func accountBalanceAfterPurchase(_ purchaseAmount: Int) -> Int {
        100 - nearestMultipleOfTen(from: purchaseAmount)
    }

    private func nearestMultipleOfTen(from number: Int) -> Int {
        guard number % 10 != 0 else { return number }

        let mid = (number / 10) * 10
        let min = mid - 10
        let max = mid + 10

        let output = [min, mid, max]
            .filter { $0 >= 0 }
            .map {
                ($0, abs(number - $0))
            }
            .reduce(into: [(Int, Int)]()) { accu, next in
                // When there are two with same diff,
                // use the bigger one.
                if accu.last?.1 == next.1 {
                    accu[accu.count - 1] = next
                } else {
                    accu.append(next)
                }
            }
            .min {
                $0.1 < $1.1
            }

        return output?.0 ?? mid
    }
}
