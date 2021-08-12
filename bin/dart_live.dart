import 'package:dart_live/HairColor.dart';
import 'package:dart_live/Person.dart';

void main(List<String> arguments) {
  var p = Person('Max Mustermann', 'Berlin', 42);
  p.age = 43;
  p.location = 'Nirvana';
  p.printInfo();

  var q = Person.withHair('Rik', 'Mannheim', HairColor.braun);
  q.printInfo();

  var r =
      Person.namedArg('Erika Mustermann', inputLoc: 'Nirvana', inputAge: 40);
  r.hair = HairColor.schwarz;
  r.printInfo();
}
