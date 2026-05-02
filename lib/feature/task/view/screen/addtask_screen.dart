import 'package:clarity/core/widget/custom_textfromfield.dart';
import 'package:clarity/core/widget/custom_elevatedbutton.dart';
import 'package:flutter/material.dart';

class AddtaskScreen extends StatefulWidget {
  const AddtaskScreen({super.key});

  @override
  State<AddtaskScreen> createState() => _AddtaskScreenState();
}

class _AddtaskScreenState extends State<AddtaskScreen> {
  String selectedPriority = "Medium";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Add Task', style: TextTheme.of(context).headlineMedium),
      ),
      backgroundColor: Color(0xffFAF8FF),
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          spacing: 10,
          children: [
            CustomTextfromfield(
              controller: TextEditingController(),
              title: 'Task Title *',
            ),
            CustomTextfromfield(
              controller: TextEditingController(),
              maxlines: 4,
              title: 'Description',
            ),
            SizedBox(height: 10),
            CustomTextfromfield(
              controller: TextEditingController(),
              title: 'Due Date',
              suffixIcon: Icon(Icons.calendar_today_outlined),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrioritySelector(
                  onChanged: (value) {
                    setState(() {
                      selectedPriority = value;
                    });
                  },
                ),

                SizedBox(height: 15),
                CustomTextfromfield(
                  controller: TextEditingController(),
                  title: 'Tags',
                ),
                SizedBox(height: 25),
                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SUGGESTED TASKS'),
                    Row(
                      spacing: 15,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 106,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            spacing: 8,
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                height: 32,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xffDBE1FF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.mail_outline,
                                      color: Color(0xff004AC6),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Email follow-up',
                                      style: TextTheme.of(context).titleLarge
                                          ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight(700),
                                          ),
                                    ),
                                    Text(
                                      'Work category',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight(400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 106,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            spacing: 15,
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                height: 32,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFDBCD),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/Icon (1).png'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Daily workout',
                                      style: TextTheme.of(context).titleLarge
                                          ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight(700),
                                          ),
                                    ),
                                    Text(
                                      'Health category',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight(400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                Expanded(
                  child: TextButton(onPressed: () {}, child: Text('Cancel')),
                ),
                Expanded(
                  child: CustomElevatedbutton(
                    onPressed: () {},
                    fontsize: 13,
                    title: 'Save Task',
                    width: double.infinity,
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

class PrioritySelector extends StatefulWidget {
  final Function(String) onChanged;
  const PrioritySelector({super.key, required this.onChanged});

  @override
  State<PrioritySelector> createState() => _PrioritySelectorState();
}

class _PrioritySelectorState extends State<PrioritySelector> {
  String selectedPriority = 'Medium';

  List<String> priorities = ['Low', 'Medium', 'High'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Priority Level'),
        SizedBox(height: 8),

        Wrap(
          spacing: 10,
          children: priorities.map((item) {
            return ChoiceChip(
              showCheckmark: false,
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: item == 'Low'
                          ? Color(0xff22C55E)
                          : item == 'Medium'
                          ? Color(0xffF59E0B)
                          : Color(0xffEF4444),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(item),
                ],
              ),

              selected: selectedPriority == item,

              selectedColor: Color(0xffD0E1FB),
              backgroundColor: Color(0xffF3F3FE),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Color(0xffC3C6D7)),
              ),

              onSelected: (val) {
                setState(() {
                  selectedPriority = item;
                });
                widget.onChanged(item);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
