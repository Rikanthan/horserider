import 'package:flutter/material.dart';
import 'position.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String a='';
  int value1,value2,value3,value4,value5,value6,value7,value8,value9;
  int count=0;

  bool b=true;
  position p=position();

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
               // child: RaisedButton.icon(onPressed: null, icon: null, label: null),


                onPressed: ()
                {

                  setState(() {
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
                      a='x';
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
                    a='x';
                    count++;
                    //index == -1;
                  }



                  });

                },
                child: Text(
                     value9==index?'X':' '
                ),
                color: value9==index || value1==index || value2==index || value3==index || value4==index || value5==index || value6==index || value7==index || value8==index ?Colors.lightGreen : Colors.blueGrey,

              ),

            );
          }),
        ),
      ),
    );
  }
}

