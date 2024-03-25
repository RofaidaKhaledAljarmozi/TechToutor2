import '../../Constants/image_constant.dart';

class InProgress{
  String imgPath;
  String title;

  InProgress({required this.imgPath,required this.title});

  static List<InProgress> getCourses() {
    List<InProgress> courses = [];

    courses.add(
        InProgress(imgPath: ImageConstant.imgRectangle36, title: "Python")
    );
    courses.add(
        InProgress(imgPath: ImageConstant.imgRectangle38, title: "Flutter")
    );
    courses.add(
        InProgress(imgPath: ImageConstant.imgRectangle39, title: "C++")
    );
    return courses;
  }
}