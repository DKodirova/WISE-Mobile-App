import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/presentation/screens/main/main_view.dart';
import 'package:wise_app/presentation/screensParent/chat/chat.dart';
 import 'package:wise_app/presentation/screensParent/attendance/attendance_binding.dart';
import 'package:wise_app/presentation/screensParent/attendance/attendance_view.dart';
import 'package:wise_app/presentation/screensParent/auth/login/login_binding.dart';
import 'package:wise_app/presentation/screensParent/auth/login/login_view.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_binding.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_view.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_binding.dart';
import 'package:wise_app/presentation/screensParent/contacts/contacts_view.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_binding.dart';
import 'package:wise_app/presentation/screensParent/courses/courses_view.dart';
import 'package:wise_app/presentation/screensParent/gallery/gallery_view.dart';
import 'package:wise_app/presentation/screensParent/home/home_binding.dart';
import 'package:wise_app/presentation/screensParent/home/home_view.dart';
import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_binding.dart';
import 'package:wise_app/presentation/screensParent/manageCourses/manage_courses_view.dart';
import 'package:wise_app/presentation/screensParent/modules/modules_binding.dart';
import 'package:wise_app/presentation/screensParent/modules/modules_view.dart';
import 'package:wise_app/presentation/screensParent/pickChild/pick_child_binding.dart';
import 'package:wise_app/presentation/screensParent/pickChild/pick_child_view.dart';
import 'package:wise_app/presentation/screensParent/syllabus/syllabus.dart';
import 'package:wise_app/presentation/screensTeacher/attendance/attendance_binding.dart';
import 'package:wise_app/presentation/screensTeacher/attendance/attendance_view.dart';
import 'package:wise_app/presentation/screensTeacher/auth/login/login_binding.dart';
import 'package:wise_app/presentation/screensTeacher/auth/login/login_view.dart';
import 'package:wise_app/presentation/screensTeacher/calendar/calendar_binding.dart';
import 'package:wise_app/presentation/screensTeacher/calendar/calendar_view.dart';
import 'package:wise_app/presentation/screensTeacher/chat/chat.dart';
import 'package:wise_app/presentation/screensTeacher/contacts/contacts_binding.dart';
import 'package:wise_app/presentation/screensTeacher/contacts/contacts_view.dart';
import 'package:wise_app/presentation/screensTeacher/courses/courses_binding.dart';
import 'package:wise_app/presentation/screensTeacher/courses/courses_view.dart';
import 'package:wise_app/presentation/screensTeacher/gallery/gallery.dart';
import 'package:wise_app/presentation/screensTeacher/home/home_binding.dart';
import 'package:wise_app/presentation/screensTeacher/home/home_view.dart';
import 'package:wise_app/presentation/screensTeacher/manageCourses/manage_courses_binding.dart';
import 'package:wise_app/presentation/screensTeacher/manageCourses/manage_courses_view.dart';
import 'package:wise_app/presentation/screensTeacher/modules/modules_binding.dart';
import 'package:wise_app/presentation/screensTeacher/modules/modules_view.dart';

import '../../presentation/screens/main/main_binding.dart';

class AppRouter {
  static GetPageRoute<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainPage:
        return GetPageRoute(
          page: () => MainPage(),
          binding: MainBinding(),
        );

      case loginP:
        return GetPageRoute(
          page: () => LoginPageP(),
          binding: LoginBindingP(),
        );
      case attendancePageP:
        return GetPageRoute(
          page: () => AttendancePageP(),
          binding: AttendanceBindingP(),
        );
      case coursesPageP:
        return GetPageRoute(
          page: () => CoursesPageP(),
          binding: CoursesBindingP(),
        );
      case calendarPageP:
        return GetPageRoute(
          page: () => CalendarPageP(),
          binding: CalendarBindingP(),
        );
      case contactsPageP:
        return GetPageRoute(
          page: () => ContactsPageP(),
          binding: ContactsBindingP(),
        );
      case homePageP:
        return GetPageRoute(
          page: () => HomePageP(),
          binding: HomeBindingP(),
        );
      case galleryPageP:
        return GetPageRoute(
          page: () => GalleryPageP(),
          // binding: HomeBinding(),
        );
      case chatPageP:
        return GetPageRoute(
          page: () => ChatScreenP(),
          // binding: HomeBinding(),
        );
      case modulesPageP:
        return GetPageRoute(
          page: () => ModulesPageP(),
          binding: ModulesBindingP(),
        );
      case manageCoursesPageP:
        return GetPageRoute(
          page: () => ManageCoursePageP(),
          binding: ManageCoursesBindingP(),
        );
      case pickChildPageP:
        return GetPageRoute(
          page: () => PickChildPageP(),
          binding: PickChildBindingP(),
        );
      case syllabusPageP:
        return GetPageRoute(
          page: () => SyllabusPageP(),
        );

      case loginT:
        return GetPageRoute(
          page: () => LoginPageT(),
          binding: LoginBindingT(),
        );
      case attendancePageT:
        return GetPageRoute(
          page: () => AttendancePageT(),
          binding: AttendanceBindingT(),
        );
      case coursesPageT:
        return GetPageRoute(
          page: () => CoursesPageT(),
          binding: CoursesBindingT(),
        );
      case calendarPageT:
        return GetPageRoute(
          page: () => CalendarPageT(),
          binding: CalendarBindingT(),
        );
      case contactsPageT:
        return GetPageRoute(
          page: () => ContactsPageT(),
          binding: ContactsBindingT(),
        );
      case homePageT:
        return GetPageRoute(
          page: () => HomePageT(),
          binding: HomeBindingT(),
        );
      case galleryPageT:
        return GetPageRoute(
          page: () => GalleryPageT(),
          // binding: HomeBinding(),
        );
      case chatPageT:
        return GetPageRoute(
          page: () => ChatScreenT(),
          // binding: HomeBinding(),
        );
      case modulesPageT:
        return GetPageRoute(
          page: () => ModulesPageT(),
          binding: ModulesBindingT(),
        );
      case manageCoursesPageT:
        return GetPageRoute(
          page: () => ManageCoursePageT(),
          binding: ManageCoursesBindingT(),
        );

      default:
        return GetPageRoute(
            page: () => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
