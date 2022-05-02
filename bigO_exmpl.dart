int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

void main() {
  var start = DateTime.now();
  var sum = sumFromOneTo(1000000000);
  var end = DateTime.now();
  var time = end.difference(start);
  print(sum);
  print(time);
  start = DateTime.now();
  sum = betterSumFromOneTo(1000000000);
  end = DateTime.now();
  time = end.difference(start);
  print(sum);
  print(time);
}
