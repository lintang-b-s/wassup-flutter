import 'package:flutter/material.dart';

class ChatOwnWidget extends StatefulWidget {
  const ChatOwnWidget({super.key});

  @override
  _ChatOwnWidgetState createState() => _ChatOwnWidgetState();
}

final Color primary = const Color(0xFFFFFFFF);
final Color secondary = const Color(0xFF50C000);
final Color tertiary = const Color(0xFF78B1E8);
final Color alternate = const Color(0xFF2EC4B6);
final Color primaryText = const Color(0xFF14181B);
final Color secondaryText = const Color(0xFF57636C);
final Color primaryBackground = const Color(0xFFF1F4F8);
final Color secondaryBackground = const Color(0xFFFFFFFF);
final Color accent1 = const Color(0xFF4E73FF);
final Color accent2 = const Color(0xFFF5F5F5);
final Color accent3 = const Color(0xFF50C000);
final Color accent4 = const Color(0xCCCAC9C9);
final Color success = const Color(0xFF249689);
final Color warning = const Color(0xFFF9CF58);
final Color error = const Color(0xFFFF5963);
final Color info = const Color(0xFFFFFFFF);

final Color orangePeel = Color(0xFFFF9F1C);
final Color hunyadiYellow = Color(0xFFFFBF69);
final Color white = Color(0xFFFFFFFF);
final Color mintGreen = Color(0xFFCBF3F0);
final Color lightSeaGreen = Color(0xFF2EC4B6);

class _ChatOwnWidgetState extends State<ChatOwnWidget> {
  @override
  Widget build(BuildContext contet) {
    return Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: tertiary,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(65.0, 60.0, 0.0, 0.0),
                    child: Text('Baca',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 10.0,
                        )

                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(65.0, 0.0, 0.0, 0.0),
                    child: Text('10.13',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 10.0,
                        )),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 10,
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: secondary,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 15.0),
                    child: Text(
                      'Hello Line Indoneseia Sekarang jam Berapa',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
