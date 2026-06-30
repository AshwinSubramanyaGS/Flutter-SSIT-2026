void main() {
// Explicitly typed
String name = 'Flutter Workshop';
int year = 2026;
double version = 4.0;bool isAwesome = true; 
print('Name: $name');
print('Year: $year');
print('Version: $version');
print('Is Awesome: $isAwesome');
// Type inference with var
var message = 'Hello Dart'; // inferred as String
var count = 42; // inferred as int
print('Message: $message');
print('Count: $count');
// dynamic (can change type)
dynamic anything = 'text';
print('Anything (initial): $anything');
anything = 100;
print('Anything (changed): $anything');
// final and const
final now = DateTime.now(); // set once at runtime
const pi = 3.1416; // compile-time constant
print('Current Time (final): $now');
print('Pi (const): $pi');
}