import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/profile/presentation/profile_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => const ProfileBody();
}
