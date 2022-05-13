import 'queue.dart';

enum Priority { max, min }

class PriorityQueueList<E extends Comparable<dynamic>> implements Queue<E> {
  PriorityQueueList({List<E>? elements, Priority priority = Priority.max}) {
    _priority = priority;
    _elements = elements ?? [];
    _elements.sort((a, b) => _compareByPriority(a, b));
  }
  int _compareByPriority(E a, E b) {
    if (_priority == Priority.max) {
      return a.compareTo(b);
    }
    return b.compareTo(a);
  }

  late List<E> _elements;
  late Priority _priority;

  bool get isEmpty => _elements.isEmpty;
  @override
  E? get peek => (isEmpty) ? null : _elements.last;

  @override
  bool enqueue(E element) {
    for (int i = 0; i < _elements.length; i++) {
      if (_compareByPriority(element, _elements[i]) < 0) {
        _elements.insert(i, element);
        return true;
      }
    }

    _elements.add(element);
    return true;
  }

  @override
  E? dequeue() => isEmpty ? null : _elements.removeLast();

  @override
  String toString() => _elements.toString();
}
