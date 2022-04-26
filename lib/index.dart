import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var darMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              child: ClipOval(
                child: Image.network(
                  "https://github.com/treinaweb.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text('Perfil')
          ],
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.miscellaneous_services))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 200,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 100,
                        child: ClipOval(
                          child: Image.network(
                              "https://github.com/arielsardinha.png"),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.edit, size: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  card(title: 'Ariel Sardinha', subtitle: "ariel@hotmail")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Table(
                border: TableBorder.symmetric(
                    inside: const BorderSide(color: Colors.black)),
                children: [
                  TableRow(children: [
                    card(title: '27', subtitle: 'Projetos'),
                    card(title: '259', subtitle: 'Tosks'),
                    card(title: '35', subtitle: 'Groups'),
                  ]),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            listTile(icon: Icons.work, title: 'Workspace'),
            listTile(icon: Icons.person, title: 'Edit Profile'),
            listTile(icon: Icons.notifications, title: 'Notifications'),
            listTile(icon: Icons.security, title: 'Security'),
            SwitchListTile(
              value: darMode,
              onChanged: (value) {
                setState(() {
                  darMode = value;
                });
              },
              secondary: const Icon(
                Icons.dark_mode,
              ),
              title: const Text(
                'Dark Theme',
              ),
            ),
            GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Tem certeza que deseja sair ?'),
                      action: SnackBarAction(
                        label: 'Sair',
                        onPressed: () {},
                      ),
                    ),
                  );
                },
                child: listTile(
                  icon: Icons.logout,
                  title: 'Logout',
                )),
          ],
        ),
      ),
    );
  }
}

Widget listTile({required IconData icon, required String title, Color? color}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
  );
}

Widget card({required String title, required String subtitle}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          title,
        ),
      ),
      Text(
        subtitle,
      )
    ],
  );
}
