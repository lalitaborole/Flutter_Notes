//Simple class program in dart:
void main(){
var person = new Person('Rutuja');
person.printName();
}
class Person {
  String firstName = 'null'; 
  Person(this.firstName);
  printName(){
    print(firstName);
  }
}
