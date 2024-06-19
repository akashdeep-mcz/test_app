import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:untitled/constrants/custom_colors.dart';
import 'package:untitled/fragments/tab1.dart';
import 'package:untitled/widgets/custom_app_bar.dart';
import 'package:untitled/widgets/mobile_body_widget.dart';

import '../widgets/desktop_body_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  BorderRadius? _indicatorBorderRadius;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: const Size.fromHeight(65.0), child: CustomAppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScreenTypeLayout.builder(
              mobile: (BuildContext context) => const MobileBodyWidget(),
              tablet: (BuildContext context) => const DesktopBodyWidget(),
              desktop: (BuildContext context) => const DesktopBodyWidget(),
            ),
            const SizedBox(height: 40,),
            SizedBox(
              height: 48, // Adjust the height as needed
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: TabBar(
                  tabAlignment: TabAlignment.center,
                  controller: _tabController,
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Tab(text: 'Arbeitnehmer'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Tab(text: 'Arbeitgeber'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Tab(text: 'Temporärbüro'),
                    ),
                  ],
                  isScrollable: true, // Allows tabs to scroll if needed
                  indicator: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: _indicatorBorderRadius ?? const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    color: CustomColors.seyanLight,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: CustomColors.white,
                  unselectedLabelColor: CustomColors.seyan,
                  dividerHeight: 0,
                  onTap: (index) {
                    setState(() {
                      if (index == 0) {
                        _indicatorBorderRadius = const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        );
                      } else if (index == _tabController.length - 1) {
                        _indicatorBorderRadius = const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        );
                      } else {
                        _indicatorBorderRadius = BorderRadius.circular(0);
                      }
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height - 48, // Remaining height for TabBarView
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(child: Tab1()),
                  Center(child: Tab1()),
                  Center(child: Tab1()),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}

