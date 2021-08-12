import 'HairColor.dart';

class Person {
  //Unterstrich für protected Sichtbarkeit
  //final sodass der Name nicht geändert werden kann
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
