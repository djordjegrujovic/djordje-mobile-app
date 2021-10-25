import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(child: UsersView(
            didSelectUser: (user) {
              setState(() => _selectedUser = user);
            },
          )),
          if (_selectedUser != null)
            MaterialPage(child: UsersDetailView(user: _selectedUser))
        ],
        onPopPage: (route, result) {
          _selectedUser = '';
          return route.didPop(result);
        },
      ),
    );
  }
}

class UsersView extends StatelessWidget {
  final ValueChanged didSelectUser;

  const UsersView({Key? key, required this.didSelectUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _users = ["Pera", "Mika", "Zika", "Laza"];

    return Scaffold(
      appBar: AppBar(
        title: const Text('User list'),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: ListView.builder(
            itemCount: _users.length,
            itemBuilder: (context, index) {
              final user = _users[index];

              return Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListTile(
                      title: Text(user),
                      onTap: () => didSelectUser(user),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class UsersDetailView extends StatelessWidget {
  final String user;

  const UsersDetailView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User details'),
      ),
      body: Center(
        child: Text('Hello, $user'),
      ),
    );
  }
}
