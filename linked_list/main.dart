import 'linked_list.dart';

void printListInReverse<E>(LinkedList<E> list) {
  printNodesRecursively(list.head);
}

void printNodesRecursively<T>(Node<T>? node) {
  if (node == null) return;
  printNodesRecursively(node.next);
  print(node.value);
}

Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;

  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }

  return slow;
}

extension ReversibleLinkedList<E> on LinkedList<E> {
  void reverse() {
    tail = head;
    var previous = head;
    var current = head?.next;
    previous?.next = null;

    while (current != null) {
      final next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }

    head = previous;
  }
}

extension RemovableLinkedList<E> on LinkedList {
  void removeAll(E value) {
    while (head != null && head!.value == value) {
      head = head!.next;
    }
    var previous = head;
    var current = head?.next;
    while (current != null) {
      if (current.value == value) {
        previous?.next = current.next;
        current = previous?.next;
        continue;
      }
      previous = current;
      current = current.next;
    }
    tail = previous;
  }
}

void main() {
  var list = LinkedList<int>();
  list.push(9);
  list.push(8);
  list.push(7);
  list.push(6);
  list.push(5);
  list.push(4);
  list.push(3);
  list.push(3);
  list.push(3);
  list.push(2);
  list.push(1);

  print('Original list: $list');
  print("Printing in reverse:");
  printListInReverse(list);

  final middleNode = getMiddle(list);
  print('Middle: ${middleNode?.value}');

  print('Original list: $list');
  list.reverse();
  print('Reversed list: $list');

  list.removeAll(3);
  print(list);
}
