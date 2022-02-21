import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/gender_selection_controller.dart';
import 'package:get/get.dart';

class GenderSelection extends StatelessWidget {
  GenderSelectionController genderSelectionController =
      Get.put(GenderSelectionController());

  GenderSelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            color: Color.fromARGB(255, 9, 70, 121),
          ),
          SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Text(
              "Gender",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 70, 121)),
            ),
          ),
          Row(
            children: [
              Obx(
                () => Radio(
                  value: "Male",
                  groupValue: genderSelectionController.selectedGender.value,
                  onChanged: (Value) {
                    genderSelectionController.onChangeGender(Value);
                  },
                  activeColor: Color.fromARGB(255, 9, 70, 121),
                  fillColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 9, 70, 121)),
                ),
              ),
              const Text(
                "Male",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 70, 121),
                ),
              )
            ],
          ),
          Row(
            children: [
              Obx(() => Radio(
                    value: "Female",
                    groupValue: genderSelectionController.selectedGender.value,
                    onChanged: (Value) {
                      genderSelectionController.onChangeGender(Value);
                    },
                    activeColor: Color.fromARGB(255, 9, 70, 121),
                    fillColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 9, 70, 121)),
                  )),
              const Text(
                "Female",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 70, 121),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
