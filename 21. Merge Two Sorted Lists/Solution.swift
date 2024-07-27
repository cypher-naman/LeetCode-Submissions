/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // Create a dummy node to act as the start of the merged list
        let dummy = ListNode(0)
        var current = dummy
        
        // Pointers to traverse the two lists
        var l1 = list1
        var l2 = list2
        
        // Traverse both lists
        while let list1Node = l1, let list2Node = l2 {
            if list1Node.val < list2Node.val {
                current.next = list1Node
                l1 = list1Node.next
            } else {
                current.next = list2Node
                l2 = list2Node.next
            }
            current = current.next!
        }
        
        // If there are remaining nodes in either list, append them
        current.next = l1 ?? l2
        
        // Return the merged list, which starts at dummy.next
        return dummy.next
    }
}