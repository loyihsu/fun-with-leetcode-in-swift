// Problem: https://leetcode.com/problems/all-elements-in-two-binary-search-trees/

class Solution {
    func treeTo(list: inout [Int], from tree: TreeNode?) {
        guard let node = tree else { return }
        treeTo(list: &list, from: node.left)
        list.append(node.val)
        treeTo(list: &list, from: node.right)
    }
    
    func merge(list: [Int], with list2: [Int]) -> [Int] {
        var output = [Int](repeating: 0, count: list.count + list2.count)
        var index = 0, listIndex = 0, list2Index = 0
        
        while index < output.count {
            if listIndex < list.count && list2Index < list2.count {
                if list[listIndex] < list2[list2Index] {
                    output[index] = list[listIndex]
                    listIndex += 1
                } else {
                    output[index] = list2[list2Index]
                    list2Index += 1
                }
            } else if listIndex < list.count {
                output[index] = list[listIndex]
                listIndex += 1
            } else if list2Index < list2.count {
                output[index] = list2[list2Index]
                list2Index += 1
            }
            
            index += 1
        }
        
        return output
    }
    
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var leftTree = [Int](), rightTree = [Int]()
        treeTo(list: &leftTree, from: root1)
        treeTo(list: &rightTree, from: root2)
        
        guard leftTree.isEmpty == false else { return rightTree }
        guard rightTree.isEmpty == false else { return leftTree }
        
        return merge(list: leftTree, with: rightTree)
    }
}
