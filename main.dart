import 'dart:io';
import 'dart:math';

void main() {
  var myName = 'Seshie Dorcas';
  print(myName);

//VARIABLES
  int age = 25;
  double height = 6.6;
  String name = 'Ama Gyamfua';
  bool lilThief = false;

  print('Age : $age');
  print('Height: $height');
  print('Full Name : $name');
  print('Are you a thief? : $lilThief');

//LISTS
  List<String> myList = ['Angela', 'Dorcas', 'Mariama', 'Katie'];
  print(myList);
  print(myList[3]);
  print(myList.indexOf('Dorcas'));

  myList.add('Maxwell');
  print(myList);

//MAPS
  Map<String, int> phoneBook = {
    'Dorcas': 0202019179,
    'Makafui': 0202019172,
    'Mummy': 0597017755,
  };

  print(phoneBook);
  print(phoneBook['Makafui']);
  print(phoneBook.length);
  print(phoneBook.keys);
  print(phoneBook.values);

  phoneBook['Angela'] = 123456789;

  print(phoneBook);
  print(phoneBook['Angela']);

//NUMBER TO STRING
  int a = 666;
  print(a.toString());

//CONCATENATION
  String wordPack = 'Coding is';
  int n = 666;
  print('$wordPack $n');

  String PersonToGreet = 'Anita Jenkins';
  print(PersonToGreet);

//LOOPS
  var x = 20;
  if (x < 18) {
    print('No smoking under 18');
  } else {
    print('You can smoke');
  }

  int y = 30;

  if (y > 0) {
    print('$y is positive');
  } else if (y < 0) {
    print('$y is negative');
  } else {
    print('$y is zero');
  }

  //FOR LOOP
  for (int z = 10; z <= 20; z++) {
    print('Count: $z');
  }

  //WHILE LOOP
  int f = 20;
  while (f > 0) {
    print('Down : $f');
    f--;
  }

  print('Welcome to my guessing game!!!!!!!');
  print('So I have picked a number between 1 and 100 . Try guessing it.');

  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;
  int attempts = 0;
  bool correctGuess = false;

  while (!correctGuess) {
    stdout.write('Enter your number:');
    String? input = stdin.readLineSync();

    if (input != null) {
      int guess = int.tryParse(input) ?? 0;
      attempts++;

      if (guess == randomNumber) {
        print('Congratulations! You guessed it right in $attempts attempts.');
        correctGuess = true;
      } else if (guess < randomNumber) {
        print('Too low! Try again!');
      } else {
        print('Too high! Try again.');
      }
    } else {
      print('Invalid input. Enter another number.');
    }
  }
}
