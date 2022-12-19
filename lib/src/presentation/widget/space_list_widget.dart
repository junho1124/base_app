import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_theme.dart';

class SpaceListWidget extends StatelessWidget {
  const SpaceListWidget({
    Key? key,
    required this.files,
    required this.isEdit,
    this.showSpaceEditSheet,
    this.deleteSpace,
    this.selectedImages,
    required this.selectImage,
  }) : super(key: key);

  final RxList<File> files;
  final bool isEdit;
  final RxSet? selectedImages;
  final Future Function()? showSpaceEditSheet;
  final Future Function(List<File>, int)? deleteSpace;
  final void Function(int) selectImage;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        itemCount: isEdit ? files.length : files.length + 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          const itemHeight = 150.0;
          const itemWidth = itemHeight * 2 / 3;
          if (!isEdit && index == files.length) {
            return InkWell(
              onTap: () async {
                await showSpaceEditSheet?.call();
                if (selectedImages == null) {
                  Get.back();
                }
              },
              child: Container(
                width: itemWidth,
                height: itemHeight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: selectedImages != null
                        ? Border.all()
                        : null),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: () {
                  selectImage.call(index);
                  if (selectedImages == null) {
                    Get.back();
                  }
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                        height: isEdit ? itemHeight * 1.5 : itemHeight,
                        width: isEdit ? itemWidth * 1.5 : itemWidth,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(isEdit ? 8 : 5),
                            child: Image.file(
                              files[index],
                              fit: BoxFit.cover,
                            ))),
                    if (isEdit)
                      Positioned(
                          top: 0,
                          right: 16,
                          child: InkWell(
                            onTap: () => deleteSpace?.call(files, index),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.delete_forever_outlined,
                                color: Get.theme.primaryColor,
                              ),
                            ),
                          )),
                    if (selectedImages != null)
                      Obx(() => selectedImages!.contains(index)
                          ? const Icon(
                              Icons.check_circle_outline,
                              color: Colors.white,
                              size: 50,
                            )
                          : Container())
                  ],
                ),
              ),
            );
          }
        }));
  }
}
