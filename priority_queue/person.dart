class Person extends Comparable<Person> {
  Person({
    required this.name,
    required this.age,
    required this.isMilitary,
  });
  final String name;
  final int age;
  final bool isMilitary;

  @override
  int compareTo(other) {
    if (isMilitary == other.isMilitary) {
      return age.compareTo(other.age);
    }
    return isMilitary ? 1 : -1;
  }

  @override
  String toString() {
    final military = (isMilitary) ? ', (military)' : '';
    return '$name, age $age$military';
  }
}
