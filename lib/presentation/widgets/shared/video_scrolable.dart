import 'package:flutter/material.dart';
import 'package:manager_video/domain/entities/video_post.dart';
import 'package:manager_video/presentation/widgets/shared/video_bottons.dart';
import 'package:manager_video/presentation/widgets/video/fullscreen_player.dart';

class VideoScroleableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScroleableView({
    super.key,
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),

      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideoPost videoPost = videos[index];
    
        return Stack(
          children: [
            //VideoPlayer
            SizedBox.expand(
              child: FullScreenPlayer(
                  caption: videoPost.caption,
                  videoUrl: videoPost.videoUrl,
                ) ),
            
            //bottons
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            )

          ],
        );
      },
        
    );
      }

      // children: [
      //   Container(color: Colors.red,),
      //   Container(color: Colors.blue,),
      //   Container(color: Colors.teal,),
      //   Container(color: Colors.yellow,),
      //   Container(color: Colors.pink,),
      //   Container(color: Colors.deepPurple,),
      // ],
  
  }