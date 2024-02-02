import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File? _selectedImage;
  bool _isSelected = false;

  Future pickGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedImage = File(image!.path);
    });
  }

  Future pickCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _isSelected = true;
      _selectedImage = File(image!.path);
    });
  }

  // final File image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _isSelected
              ? Image.file(
                  _selectedImage!,
                  fit: BoxFit.scaleDown,
                )
              : SizedBox.shrink(),
          InkWell(
            onTap: () {
              pickCamera();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.camera),
                  Text(
                    'Take an image.',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              pickGallery();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.image),
                  Text(
                    'Pick from gallery.',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.view_in_ar),
                  Text(
                    'AI object detection.',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
