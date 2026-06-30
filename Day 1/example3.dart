// Basic function
int add(int a, int b) {
    return a + b;
}
// Arrow syntax (single expression)
int multiply(int a, int b) => a * b;

// Optional positional parameters
String studentIntro(String name, [String? usn]) {
    if (usn != null) 
        return 'Hello, my name is $name and my usn $usn';
    return 'Hello, my name is  $name';
}
// Named parameters with default values
void describe({String name = 'Unknown', int age = 0}) {
    print('$name is $age years old');
}
void main() {
    print(multiply(2, 3)); // 5
    print(studentIntro('Alice')); // Hello, Alice

    print(studentIntro('Bob','26IS100'));


    describe(name: 'Bob', age: 25); // Bob is 25 years old
}