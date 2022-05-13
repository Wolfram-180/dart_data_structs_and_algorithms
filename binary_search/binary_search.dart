extension SortedList<E extends Comparable<dynamic>> on List<E> {
  int? binarySearch(E value, [int? start, int? end]) {
    final startIndex = start ?? 0;
    final endIndex = end ?? length;

    if (startIndex >= endIndex) {
      return null;
    }

    final size = endIndex - startIndex;
    final middle = startIndex + size ~/ 2;

    if (this[middle] == value) {
      return middle;
    } else if (value.compareTo(this[middle]) < 0) {
      return binarySearch(value, startIndex, middle);
    } else {
      return binarySearch(value, middle + 1, endIndex);
    }
  }
}

// only major difference from the extension - need to pass the list in as a parameter.
int? binarySearch<E extends Comparable<dynamic>>(
  List<E> list,
  E value, [
  int? start,
  int? end,
]) {
  final startIndex = start ?? 0;
  final endIndex = end ?? list.length;
  if (startIndex >= endIndex) {
    return null;
  }
  final size = endIndex - startIndex;
  final middle = startIndex + size ~/ 2;
  if (list[middle] == value) {
    return middle;
  } else if (value.compareTo(list[middle]) < 0) {
    return binarySearch(list, value, startIndex, middle);
  } else {
    return binarySearch(list, value, middle + 1, endIndex);
  }
}

// binarySearch as a non-recursive function:cmd
int? binarySearchNonRecursive<E extends Comparable<dynamic>>(
  List<E> list,
  E value,
) {
  var start = 0;
  var end = list.length;
  while (start < end) {
    final middle = start + (end - start) ~/ 2;
    if (value == list[middle]) {
      return middle;
    } else if (value.compareTo(list[middle]) < 0) {
      end = middle;
    } else {
      start = middle + 1;
    }
  }
  return null;
}
