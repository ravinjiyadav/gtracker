import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/modules/CircleManagement/model/member_model_circle.dart';

import '../../../GlobalModel/circle_model.dart';

class CircleManageScreenVm extends BaseViewModel {
  GlobalKey<ScaffoldState> cirlceKey = GlobalKey<ScaffoldState>();

  final circle = ['Friends', 'Family', 'Relations'];
  final dropdownValue = "Family";

  final List user = [];

  //Circle API
  CircleList circleList = CircleList();
  var isCircleLoaded = false;
  String circleValue = "Family";

  //Member API
  MemberList memberList = MemberList();
  var isVisible = false;
  var isMemberLoaded = false;
}
