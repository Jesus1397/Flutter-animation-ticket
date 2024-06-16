import 'package:flutter/material.dart';
import 'package:flutter_animation_ticket/clippers/clipper.dart';
import 'package:flutter_animation_ticket/widgets/background_widget.dart';
import 'package:flutter_animation_ticket/widgets/filter_widget.dart';
import 'package:flutter_animation_ticket/widgets/main_content_widget.dart';
import 'package:flutter_animation_ticket/widgets/qr_content_widget.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: Colors.red,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const BackgroundWidget(),
              FilterWidget(size: size),
              // if (!isCollapsed)
              Opacity(
                opacity: isCollapsed ? 0 : 1,
                child: MainContentWidget(size: size),
              ),
              AnimatedPositioned(
                curve: Curves.elasticOut,
                duration: const Duration(milliseconds: 500),
                right: isCollapsed ? 25 : -size.width,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: size.height,
                        width: size.width + 65,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEB6A4B),
                              Color(0xffD55434),
                            ],
                          ),
                        ),
                        child: const QrContentWidget(),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: size.height * 0.65 + 37,
                      child: GestureDetector(
                        onHorizontalDragEnd: (details) {
                          setState(() {
                            isCollapsed = !isCollapsed;
                          });
                        },
                        child: Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFF225173),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/frame-bg.png',
                              height: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      top: size.height * 0.65 + 37,
                      child: GestureDetector(
                        onHorizontalDragEnd: (details) {
                          setState(() {
                            isCollapsed = !isCollapsed;
                          });
                        },
                        child: Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffEB6A4B),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/air-plane.svg',
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                              height: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
