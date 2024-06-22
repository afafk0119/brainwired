import 'package:brainwired/data/models/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  UserDetailsPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username: ${user.username}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8.h),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8.h),
            Text('Phone: ${user.phone}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8.h),
            Text('Website: ${user.website}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8.h),
            Text('Address:', style: TextStyle(fontSize: 18)),
            Text('${user.address.street}, ${user.address.suite}'),
            Text('${user.address.city}, ${user.address.zipcode}'),
            SizedBox(height: 8.h),
            Text('Company:', style: TextStyle(fontSize: 18)),
            Text('${user.company.name}'),
            Text('${user.company.catchPhrase}'),
            Text('${user.company.bs}'),
          ],
        ),
      ),
    );
  }
}
