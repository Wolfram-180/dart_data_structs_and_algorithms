import 'avl_tree.dart';

void main() {
  final tree1 = AvlTree<int>();
  for (var i = 0; i < 15; i++) {
    tree1.insert(i);
  }
  print(tree1);

  final tree2 = AvlTree<int>();
  tree2.insert(15);
  tree2.insert(10);
  tree2.insert(16);
  tree2.insert(18);
  print(tree2);
  tree2.remove(10);
  print(tree2);

  final tree3 = AvlTree<int>();
  for (var i = 0; i < 15; i++) {
    tree3.insert(i);
  }
  tree3.root?.traverseInOrder(print);
}
