import 'priority_queue.dart';
import 'person.dart';
import 'priority_queue_list.dart';

void main() {
  var priorityQueue = PriorityQueue(
    elements: [1, 12, 3, 4, 1, 6, 8, 7],
  );
  while (!priorityQueue.isEmpty) {
    print(priorityQueue.dequeue()!);
  }

  final p1 = Person(name: 'Josh', age: 21, isMilitary: true);
  final p2 = Person(name: 'Jake', age: 22, isMilitary: true);
  final p3 = Person(name: 'Clay', age: 28, isMilitary: false);
  final p4 = Person(name: 'Cindy', age: 28, isMilitary: false);
  final p5 = Person(name: 'Sabrina', age: 30, isMilitary: false);
  final waitlist = [p1, p2, p3, p4, p5];
  var priorityQueue2 = PriorityQueue(elements: waitlist);
  while (!priorityQueue2.isEmpty) {
    print(priorityQueue2.dequeue());
  }

  final priorityQueue3 = PriorityQueueList(
    elements: [1, 12, 3, 4, 1, 6, 8, 7],
  );
  print(priorityQueue3);
  priorityQueue3.enqueue(5);
  priorityQueue3.enqueue(0);
  priorityQueue3.enqueue(10);
  print(priorityQueue3);
  while (!priorityQueue3.isEmpty) {
    print(priorityQueue3.dequeue());
  }
}
