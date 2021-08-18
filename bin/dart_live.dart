import 'package:dart_live/HairColor.dart';
import 'package:dart_live/Person.dart';

void main(List<String> arguments) {
  //ausführen mit "dart run" Befehl
  var p = Person('Max Mustermann', 'Berlin', 42);
  p.age = 43; //via set das Alter ändern
  p.location = 'Nirvana';
  p.printInfo();
  print(p.name); //via get den Namen bekommen

  //Aufruf des Konstruktors "withHair" statt default Konstruktor
  var q = Person.withHair('Rik', 'Mannheim', HairColor.braun);
  q.printInfo();

  var r =
      Person.namedArg('Erika Mustermann', inputLoc: 'Nirvana', inputAge: 40);
  r.hair = HairColor.schwarz;
  r.printInfo();
}
