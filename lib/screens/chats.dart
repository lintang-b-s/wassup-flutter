import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wassup/pages/StatusPage.dart';
import 'package:wassup/screens/chat_individual.dart';
import 'package:wassup/widgets/ChatItem.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:wassup/widgets/button_widget.dart';
import 'package:wassup/widgets/chats_widget.dart';

class ChatsScreen extends ConsumerStatefulWidget {
  const ChatsScreen({super.key});

  @override
  ConsumerState<ChatsScreen> createState() {
    return _ChatsScreenState();
  }
}

class _ChatsScreenState extends ConsumerState<ChatsScreen> {
  late Color primary = const Color(0xFFFFFFFF);
  late Color secondary = const Color(0xFF50C000);
  late Color tertiary = const Color(0xFF78B1E8);
  late Color alternate = const Color(0xFF2EC4B6);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF4E73FF);
  late Color accent2 = const Color(0xFFF5F5F5);
  late Color accent3 = const Color(0xFF50C000);
  late Color accent4 = const Color(0xCCCAC9C9);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color orangePeel = Color(0xFFFF9F1C);
  late Color hunyadiYellow = Color(0xFFFFBF69);
  late Color white = Color(0xFFFFFFFF);
  late Color mintGreen = Color(0xFFCBF3F0);
  late Color lightSeaGreen = Color(0xFF2EC4B6);
  int currentPageIndex = 1;
  String textBar = 'Obrolan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentPageIndex != 2
          ? PreferredSize(
              preferredSize: Size.fromHeight(55.0),
              child: AppBar(
                backgroundColor: primary,
                iconTheme: IconThemeData(color: primaryText),
                automaticallyImplyLeading: true,
                title: const Align(
                  alignment: AlignmentDirectional(-1.00, -1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: Text('Obrolan',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontFamily: 'Outfit', fontSize: 34.0)
                        // style: headlineLarge.override(
                        //       fontFamily: 'Outfit',
                        //       fontSize: 34.0,
                        //     ),
                        ),
                  ),
                ),
                actions: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Button',
                        icon: Icon(
                          Icons.wechat_sharp,
                          color: primaryText,
                          size: 35.0,
                        ),
                        options: FFButtonOptions(
                          width: 50.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: primary,
                          textStyle: const TextStyle(
                              color: Colors.white, fontFamily: 'Readex Pro'),
                          // titleSmall.override(
                          //       fontFamily: 'Readex Pro',
                          //       color: Colors.white,
                          //     ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: ButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Button',
                            icon: Icon(
                              Icons.settings_sharp,
                              color: primaryText,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 50.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: primary,
                              textStyle: const TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                              // titleSmall.override(
                              //       fontFamily: 'Readex Pro',
                              //       color: Colors.white,
                              //     ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                centerTitle: false,
                toolbarHeight: 55.0,
                elevation: 2.0,
              ),
            )
          : AppBar(
              backgroundColor: tertiary,
              iconTheme: IconThemeData(color: primaryText),
              automaticallyImplyLeading: true,
              leading: IconButton(
                iconSize: 40.0,
                color: tertiary,
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              title: const Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Text('Line Indonesia',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800)),
              ),
              actions: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 50.0,
                      minHeight: 50.0,
                      maxWidth: 150.0,
                      maxHeight: 50.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: ButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Button',
                                icon: Icon(
                                  Icons.phone_outlined,
                                  color: primaryText,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  height: 0.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: primary,
                                  textStyle: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: ButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Button',
                                icon: Icon(
                                  Icons.search_sharp,
                                  color: primaryText,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  height: 0.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: primary,
                                  textStyle: TextStyle(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Readex Pro',
                                  ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: ButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Button',
                              icon: FaIcon(
                                FontAwesomeIcons.bars,
                                color: primaryText,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                height: 0.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: primary,
                                textStyle: const TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 2.0,
            ),
      body: <Widget>[
        StatusPage(),
        ChatsPageWidget(),
        // Chat Page
        // InkWell(
        //   onTap: () {
        //     FocusManager.instance.primaryFocus?.unfocus();
        //   },
        //   child: ListView(
        //     children: <Widget>[
        //       Container(
        //         padding: EdgeInsets.symmetric(horizontal: 12.0),
        //         child: SearchAnchor(builder:
        //             (BuildContext context, SearchController controller) {
        //           return SearchBar(
        //             shape: MaterialStateProperty.resolveWith((states) {
        //               return LinearBorder();
        //             }),
        //             elevation: MaterialStateProperty.resolveWith((states) {
        //               return 2.0;
        //             }),
        //             controller: controller,
        //             backgroundColor:
        //                 MaterialStateProperty.resolveWith((states) {
        //               return Color.fromARGB(255, 230, 228, 228);
        //             }),
        //             padding: const MaterialStatePropertyAll<EdgeInsets>(
        //                 EdgeInsets.symmetric(horizontal: 2.0)),
        //             onTap: () {
        //               controller.openView();
        //             },
        //             onChanged: (_) {
        //               controller.openView();
        //             },
        //             leading: const Icon(Icons.search),
        //             trailing: <Widget>[
        //               Tooltip(
        //                 message: 'Cari',
        //                 child: IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(CupertinoIcons.qrcode_viewfinder),
        //                 ),
        //               )
        //             ],
        //           );
        //         }, suggestionsBuilder:
        //             (BuildContext context, SearchController controller) {
        //           return List<ListTile>.generate(5, (int index) {
        //             final String item = 'item $index';
        //             return ListTile(
        //               title: Text(item),
        //               onTap: () {
        //                 setState(() {
        //                   controller.closeView(item);
        //                 });
        //               },
        //             );
        //           });
        //         }),
        //       ),

        //       const ChatItem(
        //         avatar: 'path/to/avatar/image.png',
        //         title: 'OMAHTI 22/23',
        //         message: 'aku tunggu sampe tanggal 24 November ya',
        //         messageDate: 'Kemarin',
        //       ),
        //       // Add more ChatItem widgets here
        //     ],
        //   ),
        // ),
        const ChatBubbleWidget(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 0) {
              textBar = 'Status';
            } else if (index == 1) {
              textBar = 'Obrolan';
            } else if (index == 2) {
              textBar = 'Panggilan';
            }
          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: const Color.fromARGB(255, 206, 205, 205),
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.group_outlined),
            selectedIcon: Icon(Icons.group),
            label: 'Status',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(Icons.chat),
            label: 'Obrolan',
          ),
          NavigationDestination(
            icon: Icon(Icons.call_outlined),
            selectedIcon: Icon(Icons.call),
            label: 'Panggilan',
          ),
        ],
      ),
    );
  }
}
