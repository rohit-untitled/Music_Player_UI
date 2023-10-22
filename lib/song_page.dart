import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'neu_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 15),
              // back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: NewBox(child: Icon(Icons.arrow_back)),
                  ),
                  Column(
                    children: [
                      Text(
                        'PLAYING FROM YOUR LIBRARY',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[600],
                            letterSpacing: 3),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Liked Songs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: NewBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              //cover art , artist name, song name
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('lib/images/nance.png'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Raag Bhupali',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Banshi',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.green[700],
                            size: 35,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //start time, shuffle button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '06:25',
                      style: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.shuffle, color: Colors.grey[700]),
                    Icon(
                      Icons.repeat,
                      color: Colors.grey[700],
                    ),
                    Text(
                      '14:20',
                      style: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //linear bar
              NewBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.4,
                  progressColor: Colors.green[700],
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 30),

              //previous sond , play pause, next song
              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                      child: NewBox(
                          child: Icon(
                        Icons.skip_previous,
                        size: 32,
                      )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: NewBox(
                            child: Icon(
                          Icons.play_arrow,
                          size: 32,
                        )),
                      ),
                    ),
                    Expanded(
                      child: NewBox(
                          child: Icon(
                        Icons.skip_next,
                        size: 32,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
