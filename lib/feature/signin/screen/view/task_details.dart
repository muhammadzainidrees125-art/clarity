import 'package:clarity/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Clarity',
          style: TextTheme.of(
            context,
          ).titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight(700)),
        ),
      ),
      backgroundColor: Color(0xfFf1F5F9),
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 94,
                    decoration: BoxDecoration(
                      color: Color(0xffD3E4FE),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'In Progress',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Redesign Landing Page',
                    style: TextTheme.of(context).headlineLarge,
                  ),
                  Text(
                    'Update the visual language for the Q4 product release to improve user conversion.',
                  ),
                ],
              ),
            ),
            CustomContainer(
              child: Column(
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xff004AC6),
                      ),
                      Column(
                        children: [
                          Text(
                            'DUE DATE',
                            style: TextTheme.of(context).labelSmall?.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Text(
                            'Oct 25',
                            style: TextTheme.of(context).headlineSmall
                                ?.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight(700),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(height: 1, width: 316, color: Color(0xffC3C6D7)),
                  SizedBox(height: 20),
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.error_outline, color: Color(0xffBA1A1A)),
                      Column(
                        children: [
                          Text(
                            'PRIORITY',
                            style: TextTheme.of(context).labelSmall?.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Text(
                            'High',
                            style: TextTheme.of(context).headlineSmall
                                ?.copyWith(
                                  color: Color(0xffBA1A1A),
                                  fontSize: 20,
                                  fontWeight: FontWeight(700),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomContainer(
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('TAGS'),
                  Row(
                    spacing: 7,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 32,
                        width: 82,
                        decoration: BoxDecoration(
                          color: Color(0xffDBE1FF),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '#Design',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 32,
                        width: 82,
                        decoration: BoxDecoration(
                          color: Color(0xffD3E4FE),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '#Stitch',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomContainer(
              color: Color(0xff2563EB),
              child: Column(
                spacing: 5,
                children: [
                  Text(
                    'TIME TRACKED',
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                  Text(
                    '01:24:45',
                    style: TextTheme.of(context).displayLarge?.copyWith(
                      fontSize: 64,
                      fontWeight: FontWeight(800),
                      color: Color(0xffffffff),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        spacing: 25,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Color(
                                0xffFFFFFF,
                              ).withValues(alpha: 0.20),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.crop_square_sharp,
                              size: 30,
                              color: Color(0xffffffff),
                            ),
                          ),
                          CustomContainer(
                            padding: EdgeInsets.all(4),
                            borderRadius: BorderRadius.circular(60),
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.pause, size: 50),
                                  color: Color(0xff2563EB),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Color(
                                0xffFFFFFF,
                              ).withValues(alpha: 0.20),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.refresh,
                              size: 30,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
