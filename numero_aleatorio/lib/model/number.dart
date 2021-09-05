import 'dart:math';

class Number {

  static int generateRandomNumber({int maxNumber = 100}) {
    Random random = Random();
    return random.nextInt(maxNumber);
  }

}

