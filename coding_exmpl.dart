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

bool checkParentheses(String text) {
  var stack = Stack<int>();

  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}

void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

void main() {
  var start = DateTime.now();
  var sum = sumFromOneTo(10000000);
  var end = DateTime.now();
  var time = end.difference(start);
  print(sum);
  print(time);

  start = DateTime.now();
  sum = betterSumFromOneTo(1000000);
  end = DateTime.now();
  time = end.difference(start);
  print(sum);
  print(time);

  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');

  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  smokeStack.pop();
  print(smokeStack);

  print(checkParentheses('h((e))llo(world)()'));
  print(checkParentheses('(hello world'));
  print(checkParentheses('hello)(world'));

  const list_rvrs = ['d', 'r', 'a', 'w', 'e', 'r'];
  printInReverse(list_rvrs);
  print(list_rvrs.reversed);
}
