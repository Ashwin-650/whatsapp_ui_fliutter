import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var arrData = [
    {
      'name': 'Fasil💯',
      'mssg': 'enthakka sugalle',
      'read': '1',
      'dp': 'asset/fasil.jpg'
    },
    {
      'name': 'Musafir🤍',
      'mssg': 'macha classin verindo',
      'read': '1',
      'dp': 'asset/musafir.jpg'
    },
    {
      'name': 'Rabin sir💻',
      'mssg': 'project submit chey tto',
      'read': '1',
      'dp': 'asset/sir.jpg'
    },
    {
      'name': 'hanii🍯',
      'mssg': '🎤 0:10',
      'read': '1',
      'dp': 'asset/hanii.jpg'
    },
    {
      'name': 'Flutter 3rd and 4th Batch',
      'mssg': 'Fasilka: ok',
      'read': '1',
      'dp': 'asset/flutter.jpg'
    },
    {
      'name': 'Spotify',
      'mssg': '836282 is your verification code.',
      'read': '1',
      'dp': 'asset/spotify.png'
    },
    {
      'name': 'HC Arag Party💪👾',
      'mssg': 'Arun: nale set',
      'read': '1',
      'dp': 'asset/fasil.jpg'
    },
    {'name': 'Ashik', 'mssg': 'Eda', 'read': '1', 'dp': 'asset/download.jpeg'},
    {'name': 'Nidhal', 'mssg': 'evide?', 'read': '1', 'dp': 'asset/dhoni.jpeg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.green[700]),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.qr_code_scanner_sharp)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_sharp)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
          children: arrData
              .map(
                (value) => ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(value['dp'].toString()),
                  ),
                  title: Text(
                    value['name'].toString(),
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(value['mssg'].toString()),
                  trailing: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green[400],
                    child: Text(
                      value['read'].toString(),
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              )
              .toList()),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls')
        ],
      ),
    );
  }
}
