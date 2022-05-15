import 'bubble_sort.dart';
import 'selection_sort.dart';
import 'insertion_sort.dart';
import 'merge_sort.dart';
import 'radix_sort.dart';
import 'heapsort.dart';
import 'quicksort.dart';

void main() {
  var list = [9, 4, 10, 3];
  print('Original: $list');
  bubbleSort(list);
  print('Bubble sorted: $list');

  list = [9, 4, 10, 3];
  print('Original: $list');
  selectionSort(list);
  print('Selection sorted: $list');

  list = [9, 4, 10, 3];
  print('Original: $list');
  insertionSort(list);
  print('Insertion sorted: $list');

  list = [7, 2, 6, 3, 9];
  final sorted = mergeSort(list);
  print('Original: $list');
  print('Merge sorted: $sorted');

  list = [88, 410, 1772, 20];
  print("Original list: $list");
  list.radixSort(); // least-significant-digit (LSD)
  print("Radix sorted: $list");

  print(13.digits()); // 2
  print(999.digits()); // 3
  print(1345.digits()); // 4

  print(1345.digitAt(0)); // 1
  print(1345.digitAt(1)); // 3
  print(1345.digitAt(2)); // 4
  print(1345.digitAt(3)); // 5
  print(1345.digitAt(4)); // null
  print(1345.digitAt(5)); // null

  list = [46, 500, 459, 1345, 13, 999];
  print(list.maxDigits()); // 4

  list = [46, 500, 459, 1345, 13, 999];
  list.lexicographicalSort(); // most-significant-digit (MSD)
  print(list);

  final heapsorted = heapsort([6, 12, 2, 26, 8, 18, 21, 9, 5]);
  print('heapsorted:');
  print(heapsorted);

  print('');
  print('NON sorted:');
  list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
  print(list);
  print('heapsortInPlace:');
  list.heapsortInPlace();
  print(list);

  print('quicksortNaive:');
  list = [8, 2, 10, 0, 9, 18, 9, -1, 5];
  var quicksortNaivesorted = quicksortNaive(list);
  print(quicksortNaivesorted);

  print('quicksortLomuto:');
  list = [8, 2, 10, 0, 9, 18, 9, -1, 5];
  quicksortLomuto(list, 0, list.length - 1);
  print(list);

  print('quicksortHoare:');
  list = [8, 2, 10, 0, 9, 18, 9, -1, 5];
  quicksortHoare(list, 0, list.length - 1);
  print(list);

  print('quicksortMedian:');
  list = [8, 7, 6, 5, 4, 3, 2, 1];
  quicksortMedian(list, 0, list.length - 1);
  print(list);

  print('quicksortDutchFlag:');
  list = [8, 2, 2, 8, 9, 5, 9, 2, 8];
  print(list);
  quicksortDutchFlag(list, 0, list.length - 1);
  print(list);
}
