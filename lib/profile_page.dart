import 'package:college_connect_user/common_widgets.dart/custom_button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:supabase_flutter/supabase_flutter.dart';

import 'common_widgets.dart/custom_alert_dialog.dart';
import 'features/login/loginscreen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1740677584606-a69717bad04e?q=80&w=1941&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Glass Effect Overlay
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(color: Colors.black.withAlpha(100)),
        ),
        // Profile Content
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black.withAlpha(100),
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1569413013126-5f9f76c55499?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),
              const SizedBox(height: 20),
              _buildGlassmorphicCard([
                _buildInfoRow('Name', 'John Doe'),
                _buildInfoRow('Email', 'john.doe@example.com'),
              ]),
              _buildGlassmorphicCard([
                _buildInfoRow('Register Number', '123456789'),
                _buildInfoRow('Phone', '***** *****'),
              ]),
              _buildGlassmorphicCard([
                _buildInfoRow('Date of Birth', '01/01/2000'),
                _buildInfoRow('Address', '123 Main St, City, Country'),
              ]),
              _buildGlassmorphicCard([
                _buildInfoRow('Pincode', '123456'),
                _buildInfoRow('Department', 'Computer Science'),
              ]),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => CustomAlertDialog(
                      title: "LOG OUT",
                      content: const Text(
                        "Are you sure you want to log out? Clicking 'Logout' will end your current session and require you to sign in again to access your account.",
                      ),
                      width: 400,
                      primaryButton: "LOG OUT",
                      onPrimaryPressed: () {
                        Supabase.instance.client.auth.signOut();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Loginscreen(),
                            ),
                            (route) => false);
                      },
                    ),
                  );
                },
                label: 'Log Out',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGlassmorphicCard(List<Widget> children) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
          Text(value,
              style: const TextStyle(fontSize: 16, color: Colors.white)),
        ],
      ),
    );
  }
}
