import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class ProjectDetailsWidget extends StatefulWidget {

  static String id='projectDetails';

  const ProjectDetailsWidget({Key? key}) : super(key: key);

  @override
  _ProjectDetailsWidgetState createState() => _ProjectDetailsWidgetState();
}

class _ProjectDetailsWidgetState extends State<ProjectDetailsWidget> {
  double ratingBarValue1 = 0.0;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> openUrl(String url) async {
    print(url);
    try{
      await canLaunch(url);
      await launch(url);
    }
    catch(e)
    {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:Text(
              'Oops.... the Url couldn\'t be opened',
            ),
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: Colors.transparent,
          // borderRadius: 30,
          // borderWidth: 1,
          // buttonSize: 60,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Project Details',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        'Project Title',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Problem Statement',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            'Statement',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            'Description of the Project',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            'Technical Stack',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          const Text(
                            'Flutter, ReactJs, Django',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          const Text(
                            'Github Repo Link',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                            ),
                          ),
                          InkWell(
                            onTap: () => openUrl(''),
                            child: const Text(
                              'Problem Statement',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Status',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              RatingBar.builder(
                                onRatingUpdate: (newValue) => setState(
                                        () => ratingBarValue1 = newValue),
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star_rounded,
                                  color: Colors.green,
                                ),
                                direction: Axis.horizontal,
                                initialRating: ratingBarValue1 = 3.0,
                                unratedColor: const Color(0xFF9E9E9E),
                                itemCount: 5,
                                itemSize: 40,
                                glowColor: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      // height: 500,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: SizedBox(
                        height: 100,
                        child: Column(
                          children: [
                            Text(
                              'Team Members',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10.0
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              child: ListView.builder(
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index){
                                  return SizedBox(
                                    child: Text(
                                      'Team Member 1',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10.0
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=C30hQ0ZSFoM')!,
                          flags: const YoutubePlayerFlags(
                            autoPlay: true,
                            mute: false,
                          ),
                        ),
                        liveUIColor: Colors.amber,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}