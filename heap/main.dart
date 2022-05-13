import 'heap.dart';

void main() {
  /*
  final heap = Heap<int>();
  heap.insert(8);
  heap.insert(6);
  heap.insert(5);
  heap.insert(4);
  heap.insert(3);
  heap.insert(2);
  heap.insert(1);
  print(heap);
  heap.insert(7);
  print(heap);
  */
  /*
  final heap = Heap<int>();
  heap.insert(10);
  heap.insert(8);
  heap.insert(5);
  heap.insert(4);
  heap.insert(6);
  heap.insert(2);
  heap.insert(1);
  heap.insert(3);
  final root = heap.remove();
  print(root);
  print(heap);
  */
/*
  final heap = Heap<int>();
  heap.insert(10);
  heap.insert(7); // remove this
  heap.insert(2);
  heap.insert(5);
  heap.insert(1);
  final index = 1;
  heap.removeAt(index);
  print(heap);
*/
/*
  final heap = Heap<int>();
  heap.insert(10);
  heap.insert(7);
  heap.insert(2);
  heap.insert(5);
  heap.insert(1);
  print(heap);
  final index = heap.indexOf(7);
  print(index);
  */
  var heap = Heap(elements: [1, 12, 3, 4, 1, 6, 8, 7]);
  print(heap);
  while (!heap.isEmpty) {
    print(heap.remove());
  }

  heap = Heap(
    elements: [1, 12, 3, 4, 1, 6, 8, 7],
    priority: Priority.min,
  );
  print(heap);
  while (!heap.isEmpty) {
    print(heap.remove());
  }
}
