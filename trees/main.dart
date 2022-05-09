import 'tree.dart';
import 'binary_node.dart';
import 'binary_search_tree.dart';

void main() {
  ///* containsSubtree
  final tree1 = binarySearchTree_1();
  final tree2 = binarySearchTree_2();
  print(tree1.containsSubtree(tree2));
  //*/

  /* treesEqual
  final tree1 = binarySearchTree_1();
  final tree2 = binarySearchTree_2();
  print(treesEqual(tree1, tree2));
  */

  /* isBinarySearchTree
  final tree = createBinaryTree_2();
  print(tree.isBinarySearchTree());
  */

  /* node remove
  print('Tree before removal:');
  print(tree);
  tree.remove(3);
  print('Tree after removing root:');
  print(tree);
  */

  /*
  final tree1 = createBinaryTree_1();
  tree1.traverseInOrder(print);
  sprt();
  tree1.traversePreOrder(print);
  sprt();
  tree1.traversePostOrder(print);
  sprt();
  final tree2 = createBinaryTree_2();
  print(tree2.height(tree2));
  print(tree2);
  final list = serialize(tree2);
  final newTree = deserializeHelper(list);
  print(newTree);
  */
}

extension Subtree<E> on BinarySearchTree {
  bool containsSubtree(BinarySearchTree subtree) {
    Set set = <E>{};
    root?.traverseInOrder((value) {
      set.add(value);
    });

    var isEqual = true;

    subtree.root?.traverseInOrder((value) {
      isEqual = isEqual && set.contains(value);
    });
    return isEqual;
  }
}

bool treesEqual(BinarySearchTree first, BinarySearchTree second) {
  return _isEqual(first.root, second.root);
}

bool _isEqual(BinaryNode? first, BinaryNode? second) {
  if (first == null || second == null) {
    return first == null && second == null;
  }
  return first.value == second.value &&
      _isEqual(first.leftChild, second.leftChild) &&
      _isEqual(first.rightChild, second.rightChild);
}

BinarySearchTree<int> buildExampleTree() {
  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(1);
  tree.insert(4);
  tree.insert(0);
  tree.insert(2);
  tree.insert(5);
  return tree;
}

BinarySearchTree<int> binarySearchTree_1() {
  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(1);
  tree.insert(4);
  tree.insert(0);
  tree.insert(2);
  tree.insert(5);
  return tree;
}

BinarySearchTree<int> binarySearchTree_2() {
  //var tree = binarySearchTree_1();

  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(2);
  tree.insert(1);
  tree.insert(0);
  tree.insert(4);
  tree.insert(5);
  //tree.insert(6);

  return tree;
}

extension Serializable<T> on BinaryNode<T> {
  void traversePreOrderWithNull(void Function(T? value) action) {
    action(value);
    if (leftChild == null) {
      action(null);
    } else {
      leftChild!.traversePreOrderWithNull(action);
    }
    if (rightChild == null) {
      action(null);
    } else {
      rightChild!.traversePreOrderWithNull(action);
    }
  }
}

List<T?> serialize<T>(BinaryNode<T> node) {
  final list = <T?>[];
  node.traversePreOrderWithNull((value) => list.add(value));
  return list;
}

BinaryNode<T>? deserialize<T>(List<T?> list) {
  if (list.isEmpty) return null;
  final value = list.removeLast();
  if (value == null) return null;

  final node = BinaryNode<T>(value);
  node.leftChild = deserialize(list);
  node.rightChild = deserialize(list);
  return node;
}

BinaryNode<T>? deserializeHelper<T>(List<T?> list) {
  return deserialize(list.reversed.toList());
}

BinaryNode<int> createBinaryTree_2() {
  final n15 = BinaryNode(15);
  final n10 = BinaryNode(10);
  final n5 = BinaryNode(5);
  final n12 = BinaryNode(12);
  final n25 = BinaryNode(25);
  final n17 = BinaryNode(17);
  n15.leftChild = n10;
  n10.leftChild = n5;
  n10.rightChild = n12;
  n15.rightChild = n25;
  n25.leftChild = n17;
  return n15;
}

BinaryNode<int> createBinaryTree_1() {
  final zero = BinaryNode(0);
  final one = BinaryNode(1);
  final five = BinaryNode(5);
  final seven = BinaryNode(7);
  final eight = BinaryNode(8);
  final nine = BinaryNode(9);
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

void main_non_binary() {
  final tree = makeBeverageTree();

  final searchResult1 = tree.search('ginger ale');
  print(searchResult1?.value); // ginger ale
  final searchResult2 = tree.search('water');
  print(searchResult2?.value); // null

  print("======"); // separator

  tree.printEachLevel(tree);

  final components_tree = Column(
    children: [
      Padding(
        value: 8.0,
        child: Text('This'),
      ),
      Padding(
        value: 8.0,
        child: Text('is'),
      ),
      Column(
        children: [
          Text('my'),
          Text('widget'),
          Text('tree!'),
        ],
      ),
    ],
  );
}

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  final tea = TreeNode('tea');
  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('cocoa');
  final blackTea = TreeNode('black');
  final greenTea = TreeNode('green');
  final chaiTea = TreeNode('chai');
  final soda = TreeNode('soda');
  final milk = TreeNode('milk');
  final gingerAle = TreeNode('ginger ale');
  final bitterLemon = TreeNode('bitter lemon');
  tree.add(hot);
  tree.add(cold);
  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);
  cold.add(soda);
  cold.add(milk);
  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);
  soda.add(gingerAle);
  soda.add(bitterLemon);
  return tree;
}

void sprt() {
  print("=== separator ===");
}

extension Checker<E extends Comparable<dynamic>> on BinaryNode<E> {
  bool isBinarySearchTree() {
    return _isBST(this, min: null, max: null);
  }

  bool _isBST(BinaryNode<E>? tree, {E? min, E? max}) {
    if (tree == null) return true;

    if (min != null && tree.value.compareTo(min) < 0) {
      return false;
    } else if (max != null && tree.value.compareTo(max) >= 0) {
      return false;
    }

    return _isBST(tree.leftChild, min: min, max: tree.value) &&
        _isBST(tree.rightChild, min: tree.value, max: max);
  }
}
