import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class States with ChangeNotifier
  {
    int currentIndex=0;
    int currentNum=0;
    int? currentSlid;


    static States get(context) => Provider.of(context);
    void changeButton(int index)
    {
      currentIndex=index;
      notifyListeners();
    }
    void changeText(int num)
    {
      currentNum=num;
      notifyListeners();
    }
    void changeSlider(int slid)
    {
      currentSlid=slid;
      notifyListeners();
    }


  }