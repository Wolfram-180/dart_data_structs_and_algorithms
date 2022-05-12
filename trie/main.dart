import 'trie_node.dart';
import 'string_trie.dart';

void main() {
  final trie = StringTrie();
  trie.insert("ascutevv");
  if (trie.contains("cute")) {
    print("cute is in the trie");
  } else {
    print('noooo');
  }
}
