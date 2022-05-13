enum Priority { max, min }

class Heap<E extends Comparable<dynamic>> {
  Heap({List<E>? elements, this.priority = Priority.max}) {
    this.elements = (elements == null) ? [] : elements;
  }
  late final List<E> elements;
  final Priority priority;

  bool get isEmpty => elements.isEmpty;
  int get size => elements.length;
  E? get peek => (isEmpty) ? null : elements.first;
}
