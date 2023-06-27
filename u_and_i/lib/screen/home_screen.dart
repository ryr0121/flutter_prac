import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      )
    );
  }
}

class _TopPart extends StatefulWidget {
  @override
  State<_TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<_TopPart> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('U & I', style: TextStyle(
              fontFamily: 'parisienne',
              fontSize: 80
          ),
          ),
          Column(
            children: [
              Text('우리 처음 만난 날', style: TextStyle(
                  fontFamily: 'sunflower',
                  fontSize: 30
              ),
              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
                style: TextStyle(
                  fontFamily: 'sunflower',
                  fontSize: 20
              ),
              ),
            ],
          ),
          IconButton(
              iconSize: 60,
              onPressed: (){
                showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.white,
                          height: 300,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            onDateTimeChanged: (DateTime date){
                              setState(() {
                                selectedDate = date;
                              });
                            },
                          ),
                        ),
                      );
                    },
                );
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )
          ),
          Text('D + ${
              DateTime(
                  now.year,
                  now.month,
                  now.day
              ).difference(selectedDate).inDays
          }', style: TextStyle(
              fontFamily: 'sunflower',
              fontSize: 50,
              fontWeight:FontWeight.w700

          ),
          )
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('asset/img/images.jpeg'),
    );
  }
}
