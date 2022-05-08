import 'tree.dart';
import 'binary_node.dart';

void main() {
  final tree = createBinaryTree();
  print(tree);
}

BinaryNode<int> createBinaryTree() {
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
