import 'graph.dart';

class Pair<T> extends Comparable<Pair<T>> {
  Pair(this.distance, [this.vertex]);
  double distance;
  Vertex<T>? vertex;
  @override
  int compareTo(Pair<T> other) {
    if (distance == other.distance) return 0;
    if (distance > other.distance) return 1;
    return -1;
  }

  @override
  String toString() => '($distance, $vertex)';
}
