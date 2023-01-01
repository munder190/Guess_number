import 'dart:math';
import 'dart:io';

int max = 10;

void main() {
  int rand = randomNum();
  int num;
  int ind = 0;

  do {
    print("enter your number guess: ");
    num = int.parse(stdin.readLineSync()!);
    Map<String, bool> res = compareRes(num, rand);
    ind++;
    print(res);
  } while (rand != num);
  
}

Map<String, bool> compareRes(int User_num, int num_of_play) {
  if (User_num > num_of_play) {
    return {"very high": false};
  } else if (User_num < num_of_play) {
    return {"very low": false};
  } else if (User_num == num_of_play) {
    return {"true you win (": true};
  } else {
    return {"null": true};
  }
}

int randomNum() {
  Random ran = Random();
  return ran.nextInt(max);
}
