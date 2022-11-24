enum BottomNavigatorBarItemKeys { home, profile, setting }

enum IconSizes { small, medium, large }

extension IconSizesExtension on IconSizes {
  double getSize() {
    switch (name) {
      case "small":
        return 10;
      case "medium":
        return 12;
      case "large":
        return 16;
      default:
        return 12;
    }
  }
}
