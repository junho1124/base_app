import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MyBottomSheets {
  static final ImagePicker _imagePicker = ImagePicker();

  static Future<XFile> pickImage(BuildContext context) async {
    XFile result = XFile("");
    return await Get.bottomSheet(Container(
      width: context.width,
      height: 100,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async => await _getImage(isCamera: true).then((value) {
              if(value != null) {
                result = value;
              }
            }),
            child: SizedBox(
                width: context.width,
                height: 40,
                child: const Center(child: Text("카메라에서 가져오기"))),
          ),
          const Divider(
            height: 0,
            color: Colors.black,
          ),
          InkWell(
            onTap: () async => await _getImage(isCamera: false).then((value) {
              if(value != null) {
                result = value;
              }
            }),
            child: SizedBox(
                width: context.width,
                height: 40,
                child: const Center(child: Text("겔러리에서 가져오기"))),
          )
        ],
      ),
    )).then((value) => result);
  }

  static Future<XFile?> _getImage({required bool isCamera}) async {
    return await _imagePicker.pickImage(source: isCamera ? ImageSource.camera : ImageSource.gallery).then((value) {
      Get.back();
      return value;
    });
  }
}