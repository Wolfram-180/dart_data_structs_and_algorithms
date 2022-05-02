import 'stack.dart';

// working on

// O(n) - linear
int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// O(1) - constant time
int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

void compareOs() {
// O(n) - linear
  var start = DateTime.now();
  var sum = sumFromOneTo(1000000000);
  var end = DateTime.now();
  var time = end.difference(start);
  print(sum);
  print(time);

// O(1) - constant time
  start = DateTime.now();
  sum = betterSumFromOneTo(1000000000);
  end = DateTime.now();
  time = end.difference(start);
  print(sum);
  print(time);
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');
}
