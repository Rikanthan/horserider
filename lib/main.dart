import 'package:flutter/material.dart';
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

  var arr = new List();
  Color curcolor;
  Color updatecolor(int index,List arr,int count)
  {

    if(arr.contains(index)==false && value9==index || arr.contains(value1)==false && value1==index || arr.contains(value2)==false && value2==index ||arr.contains(value3)==false && value3==index ||arr.contains(value3)==false && value4==index ||arr.contains(value5)==false && value5==index || arr.contains(value6)==false && value6==index || arr.contains(value7)==false && value7==index ||arr.contains(value8)==false&& value8==index )

    {
      return kclickcolor;
    }
    else if(arr.contains(index) )
    {
      for(var i=0;i<count;i++){
        return klastcolor;
      }

    }

    else
    {
      return kopencolor;
    }
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

    else if(count>0 && index==value1 || value2==index || value3==index || value4==index || value5==index || value6==index || value7==index || value8==index) {
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
      print(arr);
      print(count);


      //index == -1;
    }
  }



  position p = position();
  color_method c=color_method();




  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Horse rider',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horse rider'),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 8,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(64, (index) {
            return Container(
              //color: Colors.blue,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),

              child: RaisedButton(
               //child: RaisedButton.icon(onPressed: null, icon: null, label: null),



                onPressed: ()
                {

                  setState(() {
                  check(index);




                  });

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

