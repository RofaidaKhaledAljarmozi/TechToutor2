import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Constants/ConstantsVariables.dart';
import 'package:project/Presentation/Screens/SettingsPage.dart';
import '../../Data/Models/InProgress.dart';
import '../../Data/Models/Recommended.dart';
import '../../Domain/todo_cubit.dart';
import '../../core/global/theme/DarkTheme/custom_text_style.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import '../Shared/Components/Component.dart';
import 'NotificationPage.dart';

class StartingPage extends StatelessWidget{
  StartingPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<InProgress> progressCourses=InProgress.getCourses();
    List<Recommended> recommendedCourses=Recommended.getCourses();
    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(1, 0.02),
              end: Alignment(0, 1.03),
              colors: [appTheme.gray600, appTheme.gray800])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar(
            title: Column(children: [Text("Welcome !",style:  CustomTextStyles.titleMediumBold_1),Text(username,style:theme.textTheme.bodyLarge,)],) ,
            actions:[
              InkWell(
                child: Icon(Icons.notifications_none_rounded,color:Colors.white,),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
                      create: (context) => TodoCubit(),
                      child:NotificationPage())));
                },
              )
              ,SizedBox(width: 8,)
              ,Container(
                margin:EdgeInsets.only(right:20),
                child: InkWell(
                  child: Icon(Icons.menu_rounded,color: Colors.white,),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>BlocProvider(
                        create: (context) => TodoCubit(),
                        child:SettingsPage())));
                  },
                ),
              )],
          ),
          body:Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(1, 0.02),
                    end: Alignment(0, 1.03),
                    colors: [appTheme.gray600, appTheme.gray800])
            ),
            child: ListView(
                padding: EdgeInsets.only(bottom: 20),
                children: [
                  const SizedBox(height: 10,),
                  searchField(),
                  const SizedBox(height: 40,),
                  ShowCourses(courseTitle: Text('Course in progress'),list:progressCourses,onTap:(){} ),
                  const SizedBox(height: 40,),
                  ShowCourses(courseTitle: Text('Recommended'),list:recommendedCourses,onTap:(){} ),

                ]),
          ),
      ),
    );
  }


  // Column _progressCoursesSelection() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const Padding(
  //         padding: EdgeInsets.only(left:40),
  //         child: Text(
  //           'Course in progress',
  //           style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 15,
  //               fontWeight: FontWeight.bold
  //           ),
  //         ),
  //       ),
  //       const SizedBox(height: 35),
  //       SizedBox(
  //         height: 120,
  //         child: ListView.separated(
  //           itemCount: progressCourses.length,
  //           scrollDirection: Axis.horizontal,
  //           padding: const EdgeInsets.only(left: 50, right: 20),
  //           separatorBuilder: (context, index) => const SizedBox(width: 25,),
  //           itemBuilder: (context, index) {
  //             return Container(
  //               width: 80,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: [
  //                   Container(
  //                     width: 70,
  //                     height: 70,
  //                     child: Image.asset(progressCourses[index].imgPath),
  //                   ),
  //                   SizedBox(height: 10,),
  //                   Text(
  //                     progressCourses[index].title,
  //                     style: const TextStyle(color: Colors.white70, fontSize: 13),
  //                   )
  //                 ],
  //               ),
  //             );
  //           },
  //         ),
  //       )
  //     ],
  //   );
  // }

  // Column _recommendedCoursesSelection() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const Padding(
  //         padding: EdgeInsets.only(left:40),
  //         child: Text(
  //           'Recommended',
  //           style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 15,
  //               fontWeight: FontWeight.bold
  //           ),
  //         ),
  //       ),
  //       const SizedBox(height: 30,),
  //       SizedBox(
  //         height: 150,
  //         child: ListView.separated(
  //           itemCount: progressCourses.length,
  //           scrollDirection: Axis.horizontal,
  //           padding: const EdgeInsets.only(left: 50, right: 20),
  //           separatorBuilder: (context, index) => const SizedBox(width: 25,),
  //           itemBuilder: (context, index) {
  //             return Container(
  //               width: 80,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: [
  //                   Container(
  //                     width: 70,
  //                     height: 70,
  //                     margin: EdgeInsets.only(right: 10),
  //                     child: Image.asset(recommendedCourses[index].imgPath),
  //                   ),
  //                   SizedBox(height: 15),
  //                   Container(
  //                     width: 100,
  //                     height: 40,
  //                     padding: EdgeInsets.only(left: 16),
  //                     child: Text(
  //                       recommendedCourses[index].title,
  //                       style: const TextStyle(color: Colors.white70, fontSize: 13),
  //                     ),
  //                   )
  //
  //                 ],
  //               ),
  //             );
  //           },
  //         ),
  //
  //
  //       )
  //     ],
  //   );
  // }


}

