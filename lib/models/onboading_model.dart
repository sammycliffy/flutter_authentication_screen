List<OnboardingModel> onBoardingModelList = [
  const OnboardingModel(
      description: "No more interruptions from \n unwanted ads",
      title: "Block Intrusive And Annoying Ads"),
  const OnboardingModel(
    description: "Keep your online activity safe and\n secure",
    title: "Enhanced Online Privacy Protection",
  ),
  const OnboardingModel(
      description:
          "Stay protected from harmful \n software and phishing attempts",
      title: "Block Malware and Phishing"),
  const OnboardingModel(
      description:
          "Speed up your browsing experience \n and reduce page loading times",
      title: "Improve Browsing Performance"),
];

class OnboardingModel {
  final String title;

  final String description;

  const OnboardingModel({
    required this.description,
    required this.title,
  });
}
