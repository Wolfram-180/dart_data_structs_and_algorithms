import 'linked_list.dart';

void main() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Before: $list');
  final firstNode = list.nodeAt(0);
  final removedValue = list.removeAfter(firstNode!);
  print('After: $list');
  print('Removed value: $removedValue');
}
