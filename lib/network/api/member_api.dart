import 'package:g_tracker/network/models/request/member/acceptDeclineMember/accept_decline_member_request.dart';
import 'package:g_tracker/network/models/request/member/add_member_request.dart';
import 'package:g_tracker/network/models/request/member/memberRemoveFromCircle/member_remove_from_circle_request.dart';
import 'package:g_tracker/network/models/request/member/member_location_history/member_location_history_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/members/member.dart';
import 'package:g_tracker/network/models/response/members/memberLocationHistory/member_location_history_response.dart';
import 'package:g_tracker/network/models/response/members/memberRequestList/member_request_list_response.dart';
import 'package:g_tracker/network/models/response/members/member_assigned_location/member_assigned_location_response.dart';
import 'package:g_tracker/network/models/response/members/member_response.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:image_picker/image_picker.dart';

abstract class MemberApi {
  Future<BasicResponse> addMember({
    required AddMemberRequest request,
    XFile? image,
  });

  Future<MemberResponse> updateMember();

  Future<Member> memberDetail({required int memberId});

  Future<List<Member>> members();

  Future<List<MembersLocations>> circleMembers(
      {required int circleId});

  Future<BasicResponse> deleteMember({required int memberId});

  Future<BasicResponse> acceptDeclineMemberRequest({required AcceptDeclineMemberRequest acceptDeclineMemberRequest});



  Future<BasicResponse> memberRemoveFromCircle({required MemberRemoveFromCircleRequest request});


  Future<List<MemberAssignedLocations>> memberAssignedLocation(
      {required int memberId});

  Future<List<MemberLocationHistory>> memberLocationHistory({
    required MemberLocationHistoryRequest request,
  });

  Future<List<MemberRequests>> getMemberRequest();





}
