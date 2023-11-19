import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wassup/widgets/button_widget.dart';
import 'package:wassup/widgets/chat_friend.dart';
import 'package:wassup/widgets/chat_own.dart';

class ChatBubbleWidget extends StatefulWidget {
  const ChatBubbleWidget({super.key});

  @override
  _ChatBubbleWidgetState createState() => _ChatBubbleWidgetState();
}

class _ChatBubbleWidgetState extends State<ChatBubbleWidget> {
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

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final unfocusNode = FocusNode();

  TextEditingController textController = TextEditingController();
  FocusNode textFieldFocusNode = FocusNode();
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
            key: scaffoldKey,
            backgroundColor: primaryBackground,
            body: SafeArea(
                top: true,
                child: Stack(
                  children: [
                    Container(
                      width: 555.0,
                      height: 816.0,
                      decoration: BoxDecoration(
                        color: tertiary,
                      ),
                    ),
                    Column(mainAxisSize: MainAxisSize.max, children: [
                      Expanded(
                          child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: const [
                            ChatOwnWidget(),
                            ChatFriendWidget(),
                            ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                             ChatOwnWidget(),
                            ChatFriendWidget(),
                            
                          ])),
                      Container(
                          width: 394.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 6, 0, 6),
                                child: Container(
                                  width: 304,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: secondaryBackground,
                                  ),
                                  child: TextFormField(
                                    controller: textController,
                                    focusNode: textFieldFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'ketik disini...',
                                      // labelStyle: labelMedium,
                                      // hintStyle: labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: accent2,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xF6F2EFEF),
                                      suffixIcon: Icon(
                                        Icons.emoji_emotions,
                                        color: accent4,
                                      ),
                                    ),
                                    // style: bodyMedium,
                                    // validator: _model.textControllerValidator.asValidator(context),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: primary,
                                  border: Border.all(
                                    color: primary,
                                  ),
                                ),
                                child: ButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: '',
                                  icon: Icon(
                                    Icons.send,
                                    color: accent1,
                                    size: 24,
                                  ),
                                  options: FFButtonOptions(
                                    height: 0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: primary,
                                    // textStyle: titleSmall,
                                    elevation: 0,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ]),
                  ],
                ))));
  }
}
