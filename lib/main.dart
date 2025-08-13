import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'theme.dart';
import 'widgets/loading_screen.dart';
import 'sections/landing_section.dart';
import 'sections/summary_section.dart';
import 'sections/skills_section.dart';
import 'sections/projects_section.dart';
import 'sections/experience_section.dart';
import 'sections/certifications_section.dart';
import 'sections/extracurricular_section.dart';
import 'sections/footer_section.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Harshit Gyanchandani - Portfolio",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      builder: (context, child) => ResponsiveWrapper.builder(
        child!,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      home: const SplashToPortfolio(),
    );
  }
}

// Shows loading animation before loading the actual home page
class SplashToPortfolio extends StatefulWidget {
  const SplashToPortfolio({super.key});

  @override
  State<SplashToPortfolio> createState() => _SplashToPortfolioState();
}

class _SplashToPortfolioState extends State<SplashToPortfolio> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  void _simulateLoading() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingScreen();
    return const PortfolioHome();
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            LandingSection(),
            SummarySection(),
            SkillsSection(),
            ProjectsSection(),
            ExperienceSection(),
            CertificationsSection(),
            ExtracurricularSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
