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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        let dummyHead = ListNode(0)
        var current = dummyHead
        var carry = 0

        while list1 != nil || list2 != nil || carry != 0 {
            let val1 = list1?.val ?? 0
            let val2 = list2?.val ?? 0
            let sum = val1 + val2 + carry
            carry = sum / 10

            current.next = ListNode(sum % 10)
            current = current.next!

            list1 = list1?.next
            list2 = list2?.next
        }

        return dummyHead.next
    }
}