import 'package:clarity/feature/signin/screen/custom_card.dart';
import 'package:clarity/feature/signup/view/screen/daily_progress.dart';
import 'package:clarity/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0XFF004AC6),
        foregroundColor: Color(0XFFFAF8FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(Icons.add),
      ),

      backgroundColor: Color(0XFFFAF8FF),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            DailyProgress(),
            CustomCard(),
            SizedBox(height: 20),
            TaskChoiceChipSection(),
            Column(
              spacing: 15,
              children: [
                CustomContainer(
                  border: Border(
                    left: BorderSide(color: Color(0xffBA1A1A), width: 4),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(value: Icons.radio_button_on_outlined),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Finalize Q4 Marketing Budget',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight(500),
                                    color: Color(0xff191B23),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  spacing: 10,
                                  children: [
                                    Image.asset('assets/Icon (2).png'),

                                    Text('Today, 10:00 AM'),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                        color: Color(0xffFFDAD6),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            'HIGH',
                                            style: TextStyle(
                                              color: Color(0xffBA1A1A),
                                              fontSize: 10,
                                              fontWeight: FontWeight(700),
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
                        ],
                      ),
                    ],
                  ),
                ),
                CustomContainer(
                  border: Border(
                    left: BorderSide(color: Color(0xffBA1A1A), width: 4),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(value: Icons.radio_button_on_outlined),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Update Design System Tokens',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight(500),
                                    color: Color(0xff191B23),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  spacing: 10,
                                  children: [
                                    Image.asset('assets/Icon (2).png'),

                                    Text('Today, 2:30 PM'),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                        color: Color(0xffFFDBCD),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Medium',
                                            style: TextStyle(
                                              color: Color(0xffBA1A1A),
                                              fontSize: 10,
                                              fontWeight: FontWeight(700),
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
                        ],
                      ),
                    ],
                  ),
                ),
                CustomContainer(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(value: Icons.radio_button_on_outlined),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Morning Standup Meeting',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight(500),
                                    color: Color(0xff191B23),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  spacing: 10,
                                  children: [
                                    Image.asset('assets/Icon (2).png'),

                                    Text('Completed 9:15 AM'),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                        color: Color(0xffD0E1FB),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            'ROUTINE',
                                            style: TextStyle(
                                              color: Color(0xff54647A),
                                              fontSize: 10,
                                              fontWeight: FontWeight(700),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TaskChoiceChipSection extends StatefulWidget {
  const TaskChoiceChipSection({super.key});

  @override
  State<TaskChoiceChipSection> createState() => _TaskChoiceChipSectionState();
}

class _TaskChoiceChipSectionState extends State<TaskChoiceChipSection> {
  int selectedIndex = 0;

  final List<String> items = ['All', 'Pending', 'Completed'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: List.generate(items.length, (index) {
        return CustomChoiceChip(
          title: items[index],
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      }),
    );
  }
}

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  });

  final bool isSelected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: EdgeInsets.all(4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: Colors.grey.shade200,
      selectedColor: Color(0XFF004AC6),
      showCheckmark: false,
      label: Text(
        title,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
      selected: isSelected,
      onSelected: (_) => onTap(),
    );
  }
}
