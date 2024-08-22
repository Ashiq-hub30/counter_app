import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void addcount() {
    setState(() {
      count++;
    });
  }

  void minimize() {
    setState(() {
      count--;
    });
  }

  void clear() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 158, 158, 158),
      appBar: AppBar(
        title: Text('Counter Ui'),
      ),
      body: Center(
        child: Container(
          width: 270,
          height: 270,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 120, 182, 135),
              borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Positioned(
                  left: 100,
                  top: 9,
                  child: Text('Counter',
                      style: TextStyle(
                        fontSize: 20,
                      ))),
              Positioned(
                top: 40,
                left: 45,
                child: Container(
                  height: 90,
                  width: 180,
                ),
              ),
              Positioned(
                top: 50,
                left: 60,
                child: Container(
                  height: 70,
                  width: 150,
                  child: Center(
                      child: Text(
                    '${count}',
                    style: TextStyle(fontSize: 40),
                  )),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 60,
                child: Container(
                  height: 70,
                  width: 70,
                  child: IconButton(
                      onPressed: () {
                        addcount();
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.red,
                      )),
                ),
              ),
              Positioned(
                bottom: 40,
                right: 60,
                child: Container(
                  height: 50,
                  width: 50,
                  child: IconButton(
                      onPressed: () {
                        minimize();
                      },
                      icon: Icon(
                        Icons.minimize,
                        color: Colors.red,
                      )),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  height: 30,
                  width: 30,
                  child: IconButton(
                      onPressed: () {
                        clear();
                      },
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.black,
                        size: 20,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
