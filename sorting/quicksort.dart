List<E> quicksortNaive<E extends Comparable<dynamic>>(
  List<E> list,
) {
  if (list.length < 2) return list;

  final pivot = list[0];

  final less = list.where(
    (value) => value.compareTo(pivot) < 0,
  );
  final equal = list.where(
    (value) => value.compareTo(pivot) == 0,
  );
  final greater = list.where(
    (value) => value.compareTo(pivot) > 0,
  );

  return [
    ...quicksortNaive(less.toList()),
    ...equal,
    ...quicksortNaive(greater.toList()),
  ];
}

extension Swappable<E> on List<E> {
  void swap(int indexA, int indexB) {
    if (indexA == indexB) return;
    final temp = this[indexA];
    this[indexA] = this[indexB];
    this[indexB] = temp;
  }
}

int _partitionLomuto<T extends Comparable<dynamic>>(
  List<T> list,
  int low,
  int high,
) {
  final pivot = list[high];

  var pivotIndex = low;
  for (int i = low; i < high; i++) {
    if (list[i].compareTo(pivot) <= 0) {
      list.swap(pivotIndex, i);
      pivotIndex += 1;
    }
  }

  list.swap(pivotIndex, high);
  return pivotIndex;
}

void quicksortLomuto<E extends Comparable<dynamic>>(
  List<E> list,
  int low,
  int high,
) {
  if (low >= high) return;
  final pivotIndex = _partitionLomuto(list, low, high);
  quicksortLomuto(list, low, pivotIndex - 1);
  quicksortLomuto(list, pivotIndex + 1, high);
}
