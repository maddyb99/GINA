
class Info {
  static List<String> connections = <String>["Wifi", "Bluetooth", "RF"];
  String News='Sample News';
  String connection = connections.elementAt(0);

  Map<String, bool> toppings = new Map<String,bool>();

  Info() {
    toppings.putIfAbsent('Receiver A', () => true);
    toppings.putIfAbsent('Receiver B', () => true);
    toppings.putIfAbsent('Receiver C', () => true);
    toppings.putIfAbsent('Receiver D', () => true);
    toppings.putIfAbsent('Receiver E', () => true);
    toppings.putIfAbsent('Receiver F', () => true);
  }
}