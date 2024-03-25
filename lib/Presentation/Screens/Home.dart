import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Domain/todo_cubit.dart';
import '../../Constants/ConstantsVariables.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import '../Shared/Components/Component.dart';

class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    TodoCubit cubit = BlocProvider.of<TodoCubit>(context);
    return BlocConsumer<TodoCubit, TodoState>(
        listener: (context, state) {},
        builder: (context, state) {
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment(1, 0.02),
          end: Alignment(0, 1.03),
          colors: [appTheme.gray600, appTheme.gray800])
          ),
          child:Scaffold(
        backgroundColor: Colors.transparent,
        body:pageScreens[currentIndex] ,
      bottomNavigationBar: bottomNavigationBar(cubit) ,
          ) );
    });
  }

}
