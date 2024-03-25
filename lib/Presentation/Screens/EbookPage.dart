import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Presentation/Screens/Home.dart';
import 'package:project/Presentation/Shared/Components/Component.dart';
import '../../Data/Models/EBooks.dart';
import '../../Domain/todo_cubit.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';

class Ebook extends StatelessWidget {
  const Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    List<EBooks> books=EBooks.getBooks();
    TodoCubit cubit = BlocProvider.of<TodoCubit>(context);
    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(1, 0.02),
              end: Alignment(0, 1.03),
              colors: [appTheme.gray600, appTheme.gray800])
      ),
           child: Scaffold(
             backgroundColor: Colors.transparent,
             appBar: appBar(title: Text("eBooks",style:theme.textTheme.bodyLarge,),leading:InkWell(
               child: Icon(Icons.keyboard_backspace_outlined,color: Colors.white,),
               onTap: (){
                 cubit.onTap(0);
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
                     create: (context) => TodoCubit(),
                     child:Home())));
               },
             ) ),
             body:eBooks( list: books),
                  ),
    );}

}
