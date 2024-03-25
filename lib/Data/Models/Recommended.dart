import '../../Constants/image_constant.dart';

class Recommended{
  String imgPath;
  String title;

  Recommended({required this.imgPath,required this.title});

  static List<Recommended> getCourses() {
    List<Recommended> courses = [];
    courses.add(
        Recommended(imgPath: ImageConstant.imgRectangle40, title: "Data Analytics")
    );
    courses.add(
        Recommended(imgPath:ImageConstant.imgRectangle41, title: "Cloud Computing")
    );
    courses.add(
        Recommended(imgPath: ImageConstant.imgRectangle42, title: "Machine Leaning")
    );
    return courses;
  }

}