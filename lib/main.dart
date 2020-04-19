import 'package:flutter/material.dart';
import 'package:horse_rider/finish.dart';
import 'position.dart';
import 'method.dart';


const kopencolor=Colors.blueGrey;
const kclickcolor=Colors.greenAccent;
const klastcolor=Colors.blue;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override


  int value1, value2, value3, value4, value5, value6, value7, value8, value9;
  int count = 0;
  String s='';
  var arr = new List();
  Color curcolor;

  Color updatecolor(int index,List arr,int count)
  {
    bool a=false;
    bool b=false;
    bool c=false;

    if(arr.contains(index)==false && value9==index || arr.contains(value1)==false && value1==index || arr.contains(value2)==false && value2==index ||arr.contains(value3)==false && value3==index ||arr.contains(value4)==false && value4==index ||arr.contains(value5)==false && value5==index || arr.contains(value6)==false && value6==index || arr.contains(value7)==false && value7==index ||arr.contains(value8)==false&& value8==index )

    {
      a=true;
      //print('a:');
     // print(a);
      return kclickcolor;


    }
    else if(arr.contains(index) )
    {
      b=true;
      a=false;
      //print('b:');
     // print(b);

      for(var i=0;i<count;i++){
        return klastcolor;
      }

    }

    else
    {
      c=true;
      a=false;
    //  print('c:');
      //print(c);
      return kopencolor;
    }
//    print(value1);
//    print(value2);
//    print(value3);
//    print(value4);
//    print(value5);
//    print(value6);
//    print(value7);
//    print(value8);


  }







  void check(int index)
  {
    if(count==0)
    {
      value1 = p.check01(index);
      value2 = p.check02(index);
      value3 = p.check03(index);
      value4 = p.check04(index);
      value5 = p.check05(index);
      value6 = p.check06(index);
      value7 = p.check07(index);
      value8 = p.check08(index);
      value9=index;
      arr.add(value9);
      value9=-1;

      count++;
    }

    else if(count>0 && arr.contains(value1)==false && value1==index || arr.contains(value2)==false && value2==index ||arr.contains(value3)==false && value3==index ||arr.contains(value4)==false && value4==index ||arr.contains(value5)==false && value5==index || arr.contains(value6)==false && value6==index || arr.contains(value7)==false && value7==index ||arr.contains(value8)==false&& value8==index )
    {
      value1 = p.check01(index);
      value2 = p.check02(index);
      value3 = p.check03(index);
      value4 = p.check04(index);
      value5 = p.check05(index);
      value6 = p.check06(index);
      value7 = p.check07(index);
      value8 = p.check08(index);

      value9=index;
      arr.add(value9);
      count++;
//      print(value1);
//      print(value2);
//      print(value3);
//      print(value4);
//      print(value5);
//      print(value6);
//      print(value7);
//      print(value8);

      if(arr.contains(value1)==true && arr.contains(value2)==true && arr.contains(value3)==true && arr.contains(value4)==true && arr.contains(value5)==true && arr.contains(value6)==true )//&& arr.contains(value7)==true && arr.contains(value8)==true  )
        {
          //gameover();
          s=" game over";
        }
      print(arr);
      print(count);



      //index == -1;
    }


  }

  void gameovercheck(int  index,List arr)
  {
    int g1=f.possible01(index, arr);
    int g2=f.possible02(index, arr);
    int g3=f.possible03(index, arr);
    int g4=f.possible04(index, arr);
    int g5=f.possible05(index, arr);
    int g6=f.possible06(index, arr);
    int g7=f.possible07(index, arr);
    int g8=f.possible08(index, arr);

    if(g1==-1 && g2==-1 && g3==-1 &&  g4==-1 && g5==-1 && g6==-1 && g7==-1 && g8==-1)
      {
    s=" Game over";

      }
   // s=" ";


  }










  position p = position();
  finish f=finish();
  color_method c=color_method();




  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Horse rider',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Moves ' +count.toString()+s),
        ),

        body: GridView.count(

          crossAxisCount: 8,

          children: List.generate(64, (index) {
            return Container(


              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),

              child: RaisedButton(

                onPressed: ()
                {

                  setState(() {
                  check(index);


                    });
                  gameovercheck(index, arr);

                  },



        //color: checkcolor(index),
                color:  updatecolor(index,arr,count),// value9==index || value1==index || value2==index || value3==index || value4==index || value5==index || value6==index || value7==index || value8==index ?Colors.lightGreen : Colors.blueGrey,
//                child: Text(
//                  count.toString()
//                ),
              ),

            );
          }),
        ),



      ),
    );
  }
}

