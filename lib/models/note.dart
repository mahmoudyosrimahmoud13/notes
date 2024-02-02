import 'dart:io';

import 'package:flutter/material.dart';

class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;
  DateTime? alarmDate;
  Color noteColor;
  bool isFavorite;
  String category;
  List<String> objects;
  File? Image;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
    required this.noteColor,
    required this.isFavorite,
    required this.category,
    required this.objects,
    this.Image,
    this.alarmDate,
  });
}
