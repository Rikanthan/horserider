import 'package:flutter/material.dart';
import 'position.dart';
import 'finish.dart';
import 'method.dart';
const kopencolor=Colors.blueGrey;
const kclickcolor=Colors.greenAccent;
const klastcolor=Colors.blue;
class checkmethod
{
  int value1, value2, value3, value4, value5, value6, value7, value8, value9,count=0;
  List arr;
  BuildContext context;

  checkmethod({this.value1, this.value2, this.value3, this.value4, this.value5, this.value6, this.value7, this.value8, this.value9,this.count,this.arr});
  Color updatecolor(int index, List arr, int count) {


    if (arr.contains(index) == false && value9 == index ||
        arr.contains(value1) == false && value1 == index ||
        arr.contains(value2) == false && value2 == index ||
        arr.contains(value3) == false && value3 == index ||
        arr.contains(value4) == false && value4 == index ||
        arr.contains(value5) == false && value5 == index ||
        arr.contains(value6) == false && value6 == index ||
        arr.contains(value7) == false && value7 == index ||
        arr.contains(value8) == false && value8 == index) {
      return kclickcolor;
    }
    else if (arr.contains(index)) {
      for (var i = 0; i < count; i++) {
        return klastcolor;
      }
    }

    else {
      return kopencolor;
    }
  }


  void check(int index) {
    if (count == 0) {
      value1 = p.check01(index);
      value2 = p.check02(index);
      value3 = p.check03(index);
      value4 = p.check04(index);
      value5 = p.check05(index);
      value6 = p.check06(index);
      value7 = p.check07(index);
      value8 = p.check08(index);
      value9 = index;
      arr.add(value9);
      value9 = -1;

      count++;
    }

    else if (count > 0 && arr.contains(value1) == false && value1 == index ||
        arr.contains(value2) == false && value2 == index ||
        arr.contains(value3) == false && value3 == index ||
        arr.contains(value4) == false && value4 == index ||
        arr.contains(value5) == false && value5 == index ||
        arr.contains(value6) == false && value6 == index ||
        arr.contains(value7) == false && value7 == index ||
        arr.contains(value8) == false && value8 == index) {
      value1 = p.check01(index);
      value2 = p.check02(index);
      value3 = p.check03(index);
      value4 = p.check04(index);
      value5 = p.check05(index);
      value6 = p.check06(index);
      value7 = p.check07(index);
      value8 = p.check08(index);

      value9 = index;
      arr.add(value9);
      count++;

    }
  }

  void gameovercheck(int index, List arr, int count) {
    int g1 = f.possible01(index, arr);
    int g2 = f.possible02(index, arr);
    int g3 = f.possible03(index, arr);
    int g4 = f.possible04(index, arr);
    int g5 = f.possible05(index, arr);
    int g6 = f.possible06(index, arr);
    int g7 = f.possible07(index, arr);
    int g8 = f.possible08(index, arr);
    if (count == 25) {
      d.showWonDialog(context);
    }

    else
    if (g1 == -1 && g2 == -1 && g3 == -1 && g4 == -1 && g5 == -1 && g6 == -1 &&
        g7 == -1 && g8 == -1) {
      d.showAlertDialog(context);
    }
  }

  position p = position(5);
  finish f = finish(5);
  dialog d = dialog();

}