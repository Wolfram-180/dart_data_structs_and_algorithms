import 'trie_node.dart';
import 'string_trie.dart';
import 'trie.dart';

void main() {
  final trie = StringTrie();
  trie.insert('car');
  trie.insert('card');
  trie.insert('care');
  trie.insert('cared');
  trie.insert('cars');
  trie.insert('carbs');
  trie.insert('carapace');
  trie.insert('cargo');
  print('Collections starting with "car"');
  final prefixedWithCar = trie.matchPrefix('car');
  print(prefixedWithCar);
  print('\nCollections starting with "care"');
  final prefixedWithCare = trie.matchPrefix('care');
  print(prefixedWithCare);

  final trie2 = Trie<int, List<int>>();
  trie2.insert('cut'.codeUnits);
  trie2.insert('cute'.codeUnits);
  if (trie2.contains('cute'.codeUnits)) {
    print('cute is in the trie');
  }
  trie2.remove('cut'.codeUnits);
  assert(!trie2.contains('cut'.codeUnits));
}
