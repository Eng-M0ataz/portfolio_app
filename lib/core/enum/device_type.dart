enum DeviceType {
  mobile(500),
  tablet(900),
  smallDesktop(1200),
  desktop(1200),
  largeDesktop(1920);

  final int deviceWidth;
  const DeviceType(this.deviceWidth);
}
