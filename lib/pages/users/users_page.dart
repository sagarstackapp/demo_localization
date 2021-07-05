import 'package:demo_localization/common/widget/widget.dart';
import 'package:demo_localization/generated/l10n.dart';
import 'package:demo_localization/model/user_model.dart';
import 'package:demo_localization/pages/user_details/user_details_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Users extends StatefulWidget {
  const Users({Key key}) : super(key: key);

  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List<UserModel> userModelItem = [
    UserModel(
        firstName: 'Sagar',
        lastName: 'Anghan',
        gender: 'Male',
        address: 'Address of user',
        phoneNumber: '1234567890'),
    UserModel(
        firstName: 'Abc',
        lastName: 'Xyz',
        gender: 'Female',
        address: 'Address of user',
        phoneNumber: '4561237890'),
    UserModel(
        firstName: 'Kaushik',
        lastName: 'StackApp',
        gender: 'Male',
        address: 'Address of user',
        phoneNumber: '7894561230'),
    UserModel(
        firstName: 'Parth',
        lastName: 'StackApp',
        gender: 'Male',
        address: 'Address of user',
        phoneNumber: '9632587410'),
    UserModel(
        firstName: 'Deep',
        lastName: 'StackApp',
        gender: 'Male',
        address: 'Address of user',
        phoneNumber: '1478520369'),
    UserModel(
        firstName: 'Xyz',
        lastName: 'ABC',
        gender: 'Female',
        address: 'Address of user',
        phoneNumber: '8523697410'),
    UserModel(
        firstName: 'Urvin',
        lastName: 'StackApp',
        gender: 'Male',
        address: 'Address of user',
        phoneNumber: '1470256389'),
    UserModel(
        firstName: 'Hardik',
        lastName: 'StackApp',
        gender: 'Male',
        address: 'Address of user',
        phoneNumber: '0214563789'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topMenuBar(context, '${S.of(context).userDetails}'),
      body: userModelItem.length == 0
          ? Center(
              child: Text("List is NULL"),
            )
          : userView(),
    );
  }

  Widget userView() {
    return ListView.builder(
      itemCount: userModelItem.length,
      itemBuilder: (context, index) {
        var data = userModelItem[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 8,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetails(
                      userModel: data,
                    ),
                  ),
                );
                Fluttertoast.showToast(
                  msg: data.firstName,
                  backgroundColor: Colors.orange,
                  textColor: Colors.white,
                );
                print(data);
              },
              child: Card(
                child: Center(
                  child: Text(
                    data.firstName,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
