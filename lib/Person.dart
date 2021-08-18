import 'HairColor.dart';

class Person {
  //Unterstrich für private Sichtbarkeit
  //final keyword, sodass der Name nicht geändert werden kann
  final String _name;
  String _location;
  int _age;
  var _hair = HairColor.blond;

  //age als optionaler Parameter mit default Wert 18
  //keine Notwendigkeit für mehrere Konstruktoren
  Person(this._name, this._location, [this._age = 18]);

  //mehrere Konstruktoren: Namen vergeben
  Person.onlyName(this._name);
  Person.withHair(this._name, this._location, this._hair, [this._age = 18]);
  //inputAge und inputLocation als named argument
  //stattdessen auch this.location = 'Berlin und this.age = '0' möglich,
  //ABER nur wenn die Sichtbarkeit public (d. h. age statt _age)
  //named Argumente sind optional, in Flutter (nicht aber in Dart) gibt es die Annotation @required
  Person.namedArg(this._name, {String inputLoc = 'Berlin', int inputAge = 0}) {
    _location = inputLoc;
    _age = inputAge;
  }

  //getter & setter Kurzschreibweise
  String get name => _name;
  set location(String loc) => _location = loc;
  set age(int age) => _age = age;
  set hair(HairColor color) => _hair = color;

//Ausgabe der Informationen als Text
  void printInfo() {
    print(
        '$_name aus $_location ist $_age Jahre alt, ${HairColor.values[_hair.index]}.');
  }
}
