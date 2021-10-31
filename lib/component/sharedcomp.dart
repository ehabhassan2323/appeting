import 'package:flutter/material.dart';

Widget defaultButton({
  required String name ,
  required Function function ,
  required Color color ,



 })=>Container(
    width: 120,
    child: ElevatedButton(
      onPressed: function(),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: color,

      ),
      child: Text(name.toUpperCase(),style: TextStyle(color: Colors.white70),),
    ),
  );