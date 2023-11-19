import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatusPage extends ConsumerStatefulWidget {
  const StatusPage({super.key});

  @override
  ConsumerState<StatusPage> createState() {
    return _StatusPageState();
  }
}

class _StatusPageState extends ConsumerState<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[500],
          elevation: 5,
          onPressed: () {},
          child: Icon(Icons.camera_alt)),
      body: const Column(children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                 Stack(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage(
                      "assets/balram.jpg",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color.fromARGB(255, 15, 219, 21),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              ],
            )),
      ]),
    );
  }
}
