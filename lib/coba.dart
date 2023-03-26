import 'package:flutter/material.dart';

class CobaGit extends StatefulWidget {
  const CobaGit({super.key});

  @override
  State<CobaGit> createState() => _CobaGitState();
}

class _CobaGitState extends State<CobaGit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halo')),
    );
  }
}
