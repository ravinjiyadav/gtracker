import 'package:dcbase/dcbase.dart';
import 'package:dio/dio.dart';
import 'package:g_tracker/network/api/member_api.dart';
import 'package:g_tracker/network/end_points.dart';
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

class MemberRepository extends BaseRepository implements MemberApi {
  MemberRepository({required HttpService httpService}) : super(httpService);

  @override
//  Future<MemberResponse> addMember({
  Future<BasicResponse> addMember({
    required AddMemberRequest request,
    XFile? image,
  }) async {
    MultipartFile? photo;
    if (image != null) {
      photo = await MultipartFile.fromFile(image.path, filename: image.name);
    }

    FormData formData = FormData.fromMap({"photo": photo, ...request.toJson()});

    return httpService
        .post(Endpoints.member.addMember, data: formData)
        .then((value) => BasicResponse.fromJson(value));
  }

  @override
  Future<BasicResponse> deleteMember({required int memberId}) {
    return httpService
        .delete(Endpoints.member.deleteMember(memberId))
        .then((value) => BasicResponse.fromJson(value));
  }

  @override
  Future<BasicResponse> memberRemoveFromCircle(
      {required MemberRemoveFromCircleRequest request}) {
    return httpService
        .post(Endpoints.member.memberRemoveFromCircle, data: request.toJson())
        .then((value) => BasicResponse.fromJson(value));
  }

  @override
  Future<Member> memberDetail({required int memberId}) {
    return httpService
        .get(Endpoints.member.memberDetail(memberId))
        .then((value) => Member.fromJson(value['member']));
  }

  @override
  Future<List<Member>> members() {
    return httpService.get(Endpoints.member.members).then((value) =>
        (value['members'] as List).map((e) => Member.fromJson(e)).toList());
  }

  @override
  Future<List<MemberRequests>> getMemberRequest() {
    return httpService.get(Endpoints.member.getMemberRequests).then((value) =>
        (value['member'] as List)
            .map((e) => MemberRequests.fromJson(e))
            .toList());
  }

  @override
  Future<List<MembersLocations>> circleMembers({required int circleId}) {
    return httpService.get(Endpoints.member.circleMembers(circleId)).then(
        (value) => (value['locations'] as List)
            .map((e) => MembersLocations.fromJson(e))
            .toList());
  }

  @override
  Future<MemberResponse> updateMember() {
    // TODO: implement updateMember
    throw UnimplementedError();
  }

  @override
  Future<List<MemberAssignedLocations>> memberAssignedLocation(
      {required int memberId}) {
    return httpService
        .get(Endpoints.member.membersAssignedLocation(memberId))
        .then((value) => (value['locations'] as List)
            .map((e) => MemberAssignedLocations.fromJson(e))
            .toList());
  }

  @override
  Future<List<MemberLocationHistory>> memberLocationHistory(
      {required MemberLocationHistoryRequest request}) {
    return httpService
        .get(Endpoints.member.memberLocationHistory,
            queryParameters: request.toJson())
        .then((value) => (value['locations'] as List)
            .map((e) => MemberLocationHistory.fromJson(e))
            .toList());
  }

  @override
  Future<BasicResponse> acceptDeclineMemberRequest(
      {required AcceptDeclineMemberRequest acceptDeclineMemberRequest}) {
    return httpService
        .post(Endpoints.member.acceptOrDeclineMemberRequest,
            data: acceptDeclineMemberRequest.toJson())
        .then((value) => BasicResponse.fromJson(value));
  }
}
