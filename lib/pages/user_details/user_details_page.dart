import 'package:demo_localization/common/const/color.dart';
import 'package:demo_localization/common/const/image.dart';
import 'package:demo_localization/common/widget/widget.dart';
import 'package:demo_localization/model/user_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserDetails extends StatefulWidget {
  UserModel userModel;

  UserDetails({this.userModel});

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topMenuBar(context, 'User Detail'),
      body: widget.userModel == null
          ? Center(
              child: Text("List is NULL"),
            )
          : userDetailsView(),
    );
  }

  Widget userDetailsView() {
    return SizedBox(
      height: double.infinity,
      child: Card(
        elevation: 20,
        shadowColor: ColorResource.White,
        color: ColorResource.Grey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              CircleAvatar(
                backgroundColor: ColorResource.White,
                radius: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    widget.userModel.gender == 'Male'
                        ? ImageResource.Avatar
                        : ImageResource.Avatar1,
                  ),
                  radius: 60,
                ), //CircleAvatar
              ),
              SizedBox(height: 20),
              Text(
                '${widget.userModel.address}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: ColorResource.Black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '- ${widget.userModel.gender == 'Male' ? 'Mr.' : 'Mrs.'} ${widget.userModel.firstName} ${widget.userModel.lastName}',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 30,
                  color: ColorResource.White,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${widget.userModel.phoneNumber}',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15,
                  color: ColorResource.Black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
