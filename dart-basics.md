# Dart

### Fundamentals
- Dart is static type, object oriented programing language. 
- Dart support two types of compilation i.e. JIT and AOT
```
import 'dart:io';

stdout.writeln("What is your name");
String? name = stdin.readLineSync();
print("My name is $name"); //$name string interpolation 
```
### Data Types
- Strongly typed data type: int, double, String, bool, 
- Dynamic typed data type: dynamic
```
void main() {
  int amount = 100;
  var amount2 = 100;

  print("amount: $amount | amount2: $amount2");

  // similarly for String, double, bool

  // dynamic
  dynamic weakVariable = 100;
  print("Weak variable 1: $weakVariable \n");

  weakVariable = "Dart Programming";
  print("Weak variable 2: $weakVariable");

}
```
### String
```
void main() {
  var s1 = 'Single quotes work';
  var s2 = 'Double quotes work as well';
  var s3 = 'It\'s easy to escpte the string delimiter';
  var s4 = "It's even easier";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  // Raw String
  var s = r'In a raw string, not even \n gets special treatment';
  print(s);

  // String interpolation
  var number = 35;
  var str = "Current number is $number";
  print(str);
}

```

### Type Conversion
void main() {
  
  // String -> int
  var one = int.parse('1'); // not safe, if 'str' is passed, it will fail
  assert(one ==1); // testing that parsed correctly

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14150.toStringAsFixed(2); // 2 floating point
  assert(piAsString == '3.14');
}


### Constant
use `const` keyword to make a variable const.

### Null
if you will to set null, you will get linting error (disable it before testing).
```
class Num {
  int num = 10;
}

main() {
  var n; // n is null
  // var n = New(); // creating new object of class
  int number = n?.num ?? 0; // if n is null or n.num is 0 then assign 0
  print(number);
}

```

### Operators
All the standard operators will here, like we have in C#.

### if-elese & Loop
similaraly we have in C#.

### Function
// old school
```
<return_type> / void <function_name>(param_type param1, param_type param1 ){
  return / nothing in case of void
}

dynamic square(var num) {
  return num * num;
}

int square2(int num) {
  return num * num;
}

```
// Arrow Function => // '=>' is also known as fat arrow function;
```
dynamic square(var num) => num * num;
```
// nameless function also known as anonymous function
```
main() {
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach(printF); // old school
}

void printF(item) {
  print(item);
}


// anonymous type
 var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print(item);
  });
}
```

Positional & Named Parameter
```
// Positional parameter
main() {
  print(sum(2, 2));
}

dynamic sum(var num1, var num2) => num1 + num2;
--------
// Named Parameter
main() {
  print(sum(num2: 5, num1: 8));
}

dynamic sum({var num1, var num2}) => num1 + num2;
--------
Combined together
// Combined together
main() {
  print(sum(5, num2: 8));
}

dynamic sum(var num1, {var num2}) => num1 + num2;
```
Note: 
By default named parameters are optional parameter, 
but you need to handle the null situation
updated code
```
main() {
  print(sum(5));
}

dynamic sum(var num1, {var num2}) => num1 + (num2 ?? 0); // manually handling
// dynamic sum(var num1, {var num2 = 0}) => num1 + num2; // default value
```
similarly for Positional parameter
```
dynamic sum(var num1, [var num2]) => num1 + (num2 ?? 0); // manually handling
```

### Class
```

class Person {
  String name;
  int age;

  // Shortcut
  Person(this.name, [this.age = 18]); // [] optional parameter, in this case age

  // Named Constructor
  Person.Guest([this.name = "Guest", this.age = 18]) {} // optional parameter
  Person.Guest2({this.name = "Guest", this.age = 18}) {} // positional parameter

  void showOutput() {
    print(name + ' ' + age.toString());
  }
}

class X {
  final name; // won't change after assigning first time // runtime
  static const int age = 10; // compile time

  X(this.name);
}
--------
// Inheritance & overriding
class Vehical {
  String model;
  int year;

  // Shortcut
  Vehical(this.model, this.year);

  void showOutput() {
    print(model + ' ' + year.toString());
  }
}

// inheritance
class Car extends Vehical {  
  double price;

  Car(String model, int year, this.price) : super(model, year);

  // void showOutpu() {
  //   super.showOutput();
  //   print(this.price);
  // }

  @override
  void showOutput() {
    print(this.price);
    print(this.price);
  }
}


```

Collection[List, Set, Map]:
```
main() {
  List<String> names = ['name1', 'name2'];
  // List names = ['name1', 'name2']; // List<dynamic>
  // var names = ['name1', 'name2']; // List<String>
  print(names[0]);
}

  // Mutable
  List<String> names = ['name1', 'name2'];
  names[1] = "new name";

  // Immutable
  List<String> names2 = const ['name1', 'name2'];
  names2[1] = "updated"; // while running, this will break;

```

// Set
// Set is an unordered collection of unique item.
```
var halogens = {'fluorine', 'chlorine', 'fluorine'}; // as you can see, I am trying to add 'fluorine' again, this will throw linting error

// this will work
Set<String> halogens = {'fluorine', 'chlorine'};
```
// Map
// Map is basically a collection of key-value items, similar to Dictionary in C#
```
  // Map
  Map<String, String> halogens = {'first': 'fluorine', 'second': 'chlorine'};
  var halogens2 = {'first': 'fluorine', 'second': 'chlorine'};
  var halogens3 = {1: 'fluorine', 2: 'chlorine'}; 
  Map<int, String> x = {1: 'fluorine', 2: 'chlorine'};
  var halogens4 = Map();
}
```

### Exception Handling:
```
 try {


  } on CustomException { // handle custom errors, if the error is of type CustomException


  }  on DomException { // handle Dom Exception

    
  }catch (e) { // handle all error except above CustomException

  } finally {

    
  }
```


### Future, Async, Await
```
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return "Your order is: $order";
}

Future<String> fetchUserOrder() => Future.delayed(
  const Duration(seconds: 2),
  () => "Some product",
);

Future<void> main() async {
  print("Fetching user order...");
  print(await createOrderMessage());
}
```
