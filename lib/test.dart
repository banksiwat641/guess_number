import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = new Random();
  var answer = r.nextInt(100);
  var guess;
  var count=0;
  print(answer);
  print("╔═════════════════════════════════════════");
  print("║            GUESS THE NUMBER");
  print("╟─────────────────────────────────────────");
  do {

    stdout.write("║ "+'Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    guess = int.tryParse(input!);
    if(guess==null) {
      print("ข้อมูลผิดพลาด");
    }else {
      if (guess != answer) {
        if (guess < answer) {

          print("║➜ "+input + " TOO LOW Please try again");
          print("╟─────────────────────────────────────────");
        }
        if (guess > answer) {

          print("║➜ "+input + " TOO HIGH! Please try again");
          print("╟─────────────────────────────────────────");
        }

        count++;
      } else {
        count++;
        print("║➜ "+"❤CORRECT!❤ total guesses: " + count.toString() +"❤");
        print("╟─────────────────────────────────────────");
        print("║              THE END");
        print("╚═════════════════════════════════════════");

        break;
      }
    }
  }while(true);

  }