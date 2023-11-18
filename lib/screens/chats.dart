import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassup/widgets/ChatItem.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ChatsScreen extends ConsumerStatefulWidget {
  const ChatsScreen({super.key});

  @override
  ConsumerState<ChatsScreen> createState() {
    return _ChatsScreenState();
  }
}

class _ChatsScreenState extends ConsumerState<ChatsScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obrolan'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble))
        ],
      ),
      body: <Widget>[
        // Chat Page
        InkWell(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
                  return SearchBar(
                    shape: MaterialStateProperty.resolveWith((states) {
                      return LinearBorder();
                    }),
                    elevation: MaterialStateProperty.resolveWith((states) {
                      return 2.0;
                    }),
                    controller: controller,
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      return Color.fromARGB(255, 230, 228, 228);
                    }),
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 2.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                    trailing: <Widget>[
                      Tooltip(
                        message: 'Cari',
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.qrcode_viewfinder),
                        ),
                      )
                    ],
                  );
                }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                }),
              ),

              ChatItem(
                avatar: 'path/to/avatar/image.png',
                title: 'OMAHTI 22/23',
                message: 'aku tunggu sampe tanggal 24 November ya',
                messageDate: 'Kemarin',
              ),
              // Add more ChatItem widgets here
            ],
          ),
        ),
        
      ][currentPageIndex],

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.black,
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
