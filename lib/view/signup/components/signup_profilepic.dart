import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/signup_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpProfilePicture extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  SignUpController signUpController = Get.find();

  SignUpProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Obx(() => CircleAvatar(
              backgroundImage:
                  signUpController.isProfilePicPathSet.value == true
                      ? FileImage(File(signUpController.profilePicPath.value))
                          as ImageProvider
                      : AssetImage("assets/images/undraw_Balloons.png"),
              radius: 80,
            )),
        Positioned(
          child: InkWell(
            child: Icon(Icons.camera),
            onTap: () {
              print("hello");
              showModalBottomSheet(
                  context: context, builder: (context) => bottomSheet(context));
            },
          ),
          bottom: 0,
        ),
      ],
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image),
                    Text(
                      "Gallery",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
              ),
              SizedBox(
                width: 50,
              ),
              InkWell(
                child: Column(
                  children: [
                    Icon(Icons.camera),
                    Text(
                      "Camera",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    signUpController.setProfileImagePath(pickedFile!.path);

    Get.back();

    // print(pickedFile);
  }
}
