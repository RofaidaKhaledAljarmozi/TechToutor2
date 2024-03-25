import 'package:flutter/material.dart';
import 'package:project/Domain/todo_cubit.dart';
import 'Presentation/Screens/Splash.dart';
import 'core/global/theme/DarkTheme/theme_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("User");
  ThemeHelper().changeTheme('primary');
  runApp(
      SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home:Splash(),
          ),
      ),
  );
}