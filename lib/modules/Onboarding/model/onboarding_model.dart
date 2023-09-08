class OnbordingModel {
  final String imageUrl;
  final String backgroundImageUrl;
  final String title;
  final String subtitle;

  OnbordingModel({
    required this.imageUrl,
    required this.backgroundImageUrl,
    required this.title,
    required this.subtitle,
  });
}

class OnboardingData {
  static List<OnbordingModel> onbaording = [
    OnbordingModel(
      imageUrl: "assets/images/maskg.png",
      title: "Location History",
      subtitle:
          "Get full location history of family's \n whereabouts (up to 2 months)",
      backgroundImageUrl: "assets/images/background.png",
    ),
    OnbordingModel(
      imageUrl: "assets/images/notification.png",
      title: "Places",
      subtitle:
          """Add "Places" and get notified when \n  members arrive or leave """,
      backgroundImageUrl: "assets/images/backgroundp.png",
    ),
    OnbordingModel(
      imageUrl: "assets/images/frame.png",
      title: "Circles",
      subtitle:
          """Use "Circles" to add more \n private group (up to 10 members)""",
      backgroundImageUrl: "assets/images/backgroundc.png",
    ),
    OnbordingModel(
      imageUrl: "assets/images/frame4.png",
      title: "Get Notification",
      subtitle:
          """It is a long established fact that a reader \n will be distracted by the readable.""",
      backgroundImageUrl: "assets/images/backgroundn.png",
    ),
  ];
}
