

import 'package:flutter/material.dart';
import 'package:manager_video/presentation/providers/discover_providers.dart';
import 'package:manager_video/presentation/widgets/shared/video_scrolable.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {


  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final discoverProvider = context.watch<DiscoverProvider>();


    return Scaffold(


      body: discoverProvider.initialLoading
      ? const Center( child: CircularProgressIndicator(strokeWidth: 2,))
      : VideoScroleableView(videos: discoverProvider.videos)
    );
  }
}