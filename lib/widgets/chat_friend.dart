import 'package:flutter/material.dart';

class ChatFriendWidget extends StatefulWidget {
  const ChatFriendWidget({super.key});

  @override
  _ChatFriendWidgetState createState() => _ChatFriendWidgetState();
}

const Color primary = Color(0xFFFFFFFF);
const Color secondary = Color(0xFF50C000);
const Color tertiary = Color(0xFF78B1E8);
const Color alternate = Color(0xFF2EC4B6);
const Color primaryText = Color(0xFF14181B);
const Color secondaryText = Color(0xFF57636C);
const Color primaryBackground = Color(0xFFF1F4F8);
const Color secondaryBackground = Color(0xFFFFFFFF);
const Color accent1 = Color(0xFF4E73FF);
const Color accent2 = Color(0xFFF5F5F5);
const Color accent3 = Color(0xFF50C000);
const Color accent4 = Color(0xCCCAC9C9);
const Color success = Color(0xFF249689);
const Color warning = Color(0xFFF9CF58);
const Color error = Color(0xFFFF5963);
const Color info = Color(0xFFFFFFFF);

const Color orangePeel = Color(0xFFFF9F1C);
const Color hunyadiYellow = Color(0xFFFFBF69);
const Color white = Color(0xFFFFFFFF);
const Color mintGreen = Color(0xFFCBF3F0);
const Color lightSeaGreen = Color(0xFF2EC4B6);

class _ChatFriendWidgetState extends State<ChatFriendWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: primary,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 15.0),
              child: Text(
                'Hallo sekarang jam 9 malam',
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: tertiary,
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 65.0, 0.0),
                  child: Text('Baca',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 10.0,
                      )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 65.0, 0.0),
                  child: Text('10.13',
                      style:
                          TextStyle(fontFamily: 'Readex Pro', fontSize: 10.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
