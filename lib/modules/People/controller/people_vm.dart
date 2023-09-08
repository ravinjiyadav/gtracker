import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/GlobalService/circle_service.dart';
import 'package:g_tracker/modules/People/model/Member_list_modelP.dart';
import '../../../GlobalModel/circle_model.dart';
import '../service/remote_service.dart';
import '../../../AppComponents/static_components.dart';

class PeopleScreenVm extends BaseViewModel {
  BuildContext context;
  PeopleScreenVm({required this.context}) {
    fetchMembers(context);
    fetchCircle(context);
  }
  GlobalKey<ScaffoldState> peopleKey = GlobalKey<ScaffoldState>();
  bool isArriveOn = false;
  bool isLeavingOn = false;

  var selectedEnter = -1;

  //Circle API
  CircleList circleList = CircleList();
  String circleValue = "Family";
  bool isCircleLoaded = false;

  //Member API
  MemberList memberList = MemberList();
  bool isVisible = false;
  bool isMemberLoaded = false;

  final List user = [];
  final circle = ['Friends', 'Family', 'Relations'];
  String dropdownValue2 = "Family";

  Future fetchMembers(BuildContext context) async {
    var members = await RemoteServicesPeople.fetchMembers(context);
    isMemberLoaded = true;

    print("member is $members");
    if (members != null) {
      memberList = members;
    } else {
      print("device is null");
    }
  }

  // Using Circle Services
  Future fetchCircle(BuildContext context) async {
    isCircleLoaded = false;
    var circle = await CircleService.getCircleList(
        context, UserCredentials.userId.toString());

    isCircleLoaded = true;

    print("Circle is  $circle");
    if (circle != null) {
      circleList = circle;
      print(circleList.runtimeType);
    } else {
      print("Circle");
    }
  }
}
