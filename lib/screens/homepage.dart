import 'package:flutter/material.dart';
import 'package:responsive_template/responsive/desktop_body.dart';
import 'package:responsive_template/responsive/mobile_body.dart';
import 'package:responsive_template/responsive/responsive_layout.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          desktopBody: DesktopBody(), mobileBody: MobileBody()),
    );
  }
}
