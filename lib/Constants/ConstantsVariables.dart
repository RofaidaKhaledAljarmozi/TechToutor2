import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../Presentation/Screens/Account.dart';
import '../Presentation/Screens/EbookPage.dart';
import '../Presentation/Screens/StartingPage.dart';

bool userNameErrored=false;
late final  Box hiveRef;
int currentIndex=0;
List<Widget> pageScreens=[StartingPage(),Ebook(),Account()];
String username= "";




