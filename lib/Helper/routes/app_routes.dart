import 'package:flutter/material.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:g_tracker/ui/geofence/create/add_geofence_screen.dart';
import 'package:g_tracker/ui/members/locationHistory/member_location_history_screen.dart';
import 'package:g_tracker/ui/setting/accountSetting/account_setting_screen.dart';
import 'package:g_tracker/ui/setting/accountSetting/web_view_screen.dart';
import 'package:g_tracker/ui/setting/changePin/newPin/new_pin.dart';
import 'package:g_tracker/ui/setting/updateProfile/update_profile_screen.dart';
import '../../AppComponents/routes_file.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.userNameScreen:
        return MaterialPageRoute(builder: (context) => const UserNameScreen());
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RouteName.loginPinScreen:
        return MaterialPageRoute(builder: (context) {
          LoginRequest request = settings.arguments as LoginRequest;
          return LoginPinScreen(
            request: request,
          );
        });

      case RouteName.onboardScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());

      case RouteName.setMpinScreen:
        var arg = settings.arguments;
        arg ??= 4;
        int currentStep = arg as int;
        return MaterialPageRoute(
            builder: (context) => SetMpinScreen(currentStep: currentStep));

      case RouteName.forgotMpinScreen:
        return MaterialPageRoute(
          builder: (context) {
            LoginRequest request = settings.arguments as LoginRequest;
            return OtpVerifyScreen(
              loginRequest: request,
              parentPage: OtpParentPage.forgotPin,
            );
          },
        );

      case RouteName.otpVerifyScreen:
        return MaterialPageRoute(
          builder: (context) {
            LoginRequest request = settings.arguments as LoginRequest;
            return OtpVerifyScreen(
              loginRequest: request,
            );
          },
        );

      case RouteName.deviceListScreen:
        var arg = settings.arguments;

        bool showSkip = true;

        if (arg != null) {
          showSkip = arg as bool;
        }

        return MaterialPageRoute(
          builder: (context) => DeviceListScreen(
            showSkip: showSkip,
          ),
        );

      case RouteName.addTrackableDeviceScreen:
        return MaterialPageRoute(
            builder: (context) => const AddTrackableDeviceScreen());


      case RouteName.inviteMemberScreen:
        return MaterialPageRoute(builder: (context) => const InviteMember());


      case RouteName.aboutUsScreen:
        return MaterialPageRoute(builder: (context) => const AboutUs());

      case RouteName.versionScreen:
        return MaterialPageRoute(builder: (context) => const Versions());

      case RouteName.memberListScreen:
        var arg = settings.arguments;

        bool showSkip = true;

        if (arg != null) {
          showSkip = arg as bool;
        }

        return MaterialPageRoute(
            builder: (context) => MemberListScreen(showSkip: showSkip));

      case RouteName.addMemberScreen:

        var arg = settings.arguments;


        if(arg != null){
          Circle? circleValue = arg as Circle;
          return MaterialPageRoute(builder: (context) =>  AddMemberScreen(circleValue: circleValue,));

        }else{
          return MaterialPageRoute(builder: (context) =>  AddMemberScreen());

        }

      case RouteName.changeMobileLoginPinScreen:
        return MaterialPageRoute(
            builder: (context) => const ChangeMobileVerifyLoginPinScreen());

      case RouteName.changeMobileNumberScreen:
        return MaterialPageRoute(
            builder: (context) => const ChangeMobileNumberScreen());

      case RouteName.changeMobileVerifyOtpScreen:
        final arg = settings.arguments as Map;
        String countryCode = arg["countryCode"];
        String mobile = arg["mobile"];
        return MaterialPageRoute(
            builder: (context) => ChangeMobileVerifyOtpScreen(
                  countryCode: countryCode,
                  mobile: mobile,
                ));

      case RouteName.createCircleScreen:

        return MaterialPageRoute(
            builder: (context) =>  const CreateCircleScreen());

      case RouteName.updateCircleScreen:
        final arg = settings.arguments as Map;
        Circle circle = arg["circle"];
        return MaterialPageRoute(
            builder: (context) =>   CreateCircleScreen(
              from: "Update",
              circle: circle,
            ));

      case RouteName.changePinVerifyLoginPinScreen:
        return MaterialPageRoute(
            builder: (context) => const ChangePinVerifyLoginPinScreen());

      case RouteName.changePinScreen:
        final arg = settings.arguments as Map;
        String loginPin = arg["logInPin"];
        return MaterialPageRoute(
            builder: (context) => NewPinScreen(
                  logInMPin: loginPin,
                ));

      case RouteName.confirmChangePinScreen:
        final arg = settings.arguments as Map;
        String loginPin = arg["logInPin"];
        String newPin = arg["newPin"];

        return MaterialPageRoute(
            builder: (context) => ConfirmChangePinScreen(
                  logInPin: loginPin,
                  newPin: newPin,
                ));

      case RouteName.dashBoardScreen:
        return MaterialPageRoute(builder: (context) => const DashBoardScreen());

      case RouteName.peopleScreen:
        return MaterialPageRoute(builder: (context) => const PeopleScreen());

      case RouteName.editProfileScreen:
        return MaterialPageRoute(builder: (context) => const EditProfile());

      case RouteName.termsAndConditionsScreen:
        return MaterialPageRoute(
            builder: (context) => const TermsAndConditions());

      case RouteName.privacyPolicyScreen:
        return MaterialPageRoute(builder: (context) => PrivacyPolicy());

      case RouteName.circleManagementScreen:
        return MaterialPageRoute(
            builder: (context) => const CircleManagement());

      // case RouteName.deviceScreen:
      //   return MaterialPageRoute(builder: (context) => const DevicesScreen());


      case RouteName.notificationsScreen:
        return MaterialPageRoute(
            builder: (context) => const NotificationsScreen());


      case RouteName.settingScreen:
        return MaterialPageRoute(
            builder: (context) => const AccountSettingScreen());

      case RouteName.memberLocationHistoryScreen:
        return MaterialPageRoute(builder: (context) {
          final member = settings.arguments;
          return MemberLocationHistoryScreen(
            member: member as MembersLocations,
          );
        });

      case RouteName.memberProfileScreen:
        return MaterialPageRoute(builder: (context) {
          final member = settings.arguments;
          return MemberProfileScreen(member: member as Member);
        });

      case RouteName.assignPlacesScreen:
        return MaterialPageRoute(builder: (context) {
          final member = settings.arguments;
          return AssignGeofenceScreen(member: member as Member);
        });

      case RouteName.updateProfileScreen:
        return MaterialPageRoute(builder: (context) {
          return const UpdateProfileScreen();
        });
      case RouteName.addGeofenceScreen:
        return MaterialPageRoute(builder: (context) {
          return const AddGeofenceScreen();
        });

      case RouteName.webViewPage:
        final arg = settings.arguments  as Map;
        return MaterialPageRoute(builder: (context) {
          return  WebViewPage(
            url: arg["url"],
            title: arg["title"],
          );
        });




      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
