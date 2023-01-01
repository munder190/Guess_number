import 'dart:math';
import 'dart:io';

int max = 10;
void main() {
  int rand = randomNum();
  List<int> list = [1, 4, 5, 9, rand];
  int ind = 0;
  do {
    Map<String, bool> res = compareRes(list[ind], rand);
    ind++;
    print(res);
  } while (rand != list[ind - 1]);
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
