import 'package:brainwired/data/models/productmodel.dart';
import 'package:brainwired/screen/inner_screen.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.email),
        leading: CircleAvatar(child: Text(user.name[0])),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UserDetailsPage(user: user)),
          );
        },
      ),
    );
  }
}
