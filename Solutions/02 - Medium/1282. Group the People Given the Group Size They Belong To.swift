// Problem: https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to/
// O5

class Solution {
    struct Group {
        var members: [Int]
        var count: Int
        var limit: Int
    }

    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var i = 0
        var groups = [Group]()
        var found = false

        var output = [[Int]]()

        var constructed = [Int]()

        var groupTemplate = Group(members: [Int](), count: 0, limit: 0)

        for g in groupSizes {
            if constructed.contains(g) == false {
                groupTemplate.limit = g
                groups.append(groupTemplate)
                constructed.append(g)
            }
        }

        while i < groupSizes.count {
            for g in 0..<groups.count where groups[g].limit == groupSizes[i] && groups[g].count < groups[g].limit {
                found = true
                groups[g].members.append(i)
                groups[g].count += 1

                if groups[g].count == groups[g].limit {
                    output.append(groups[g].members)
                    groups[g].members.removeAll()
                    groups[g].count = 0
                }

                break
            }
            i += 1
        }

        for g in 0..<groups.count where groups[g].count != 0 {
            output.append(groups[g].members)
        }

        return output
    }
}
