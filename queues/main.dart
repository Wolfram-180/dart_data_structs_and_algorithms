import 'queue.dart';

void main() {
  final queue = QueueLinkedList<String>();
  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  print(queue); // [Ray, Brian, Eric]
  queue.dequeue();
  print(queue); // [Brian, Eric]
  var name = queue.peek;
  print(name);
  print(queue); // [Brian, Eric]
}
