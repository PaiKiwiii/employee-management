import 'package:flutter/material.dart';

class AddExpensesScreen extends StatefulWidget {
  const AddExpensesScreen({super.key});

  @override
  State<AddExpensesScreen> createState() => _AddExpensesScreenState();
}

class _AddExpensesScreenState extends State<AddExpensesScreen> {
  String? _selectedValue;
  final TextEditingController _amountController = TextEditingController();

  final List<String> _choices = ['Housing', 'Travel', 'Food', 'Lifestyle', 'Education', 'Allowance'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expenses'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the back button is pressed
          },
        ),
      ),
      backgroundColor: Colors.black, // Set the background color of the entire screen
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(),
            const SizedBox(height: 20),
            Container(
              width: 292,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: const Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Add Expenses',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 1,
                      // Adjusted height from 0 to 1 for proper text rendering
                      letterSpacing: -0.90,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 223,
                    height: 29,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedValue,
                              dropdownColor: Colors.black,
                              // Set dropdown menu background color
                              icon: Container(
                                width: 11,
                                height: 11,
                                padding: const EdgeInsets.only(
                                  top: 2.29,
                                  left: 0.92,
                                  right: 0.92,
                                  bottom: 1.83,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: const Icon(Icons.arrow_drop_down, color: Colors.white, size: 11),
                              ),
                              items: _choices.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(
                                    child: Container(
                                      width: 94,
                                      height: 20,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 1, color: Colors.white),
                                          borderRadius: BorderRadius.circular(11),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          value,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                            letterSpacing: -0.54,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedValue = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 223,
                    height: 29,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: TextField(
                      controller: _amountController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1,
                        letterSpacing: -0.72,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter Amount',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1,
                          letterSpacing: -0.72,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 6), // Center the text vertically
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement save functionality
                        },
                        child: const Text(
                          'Save',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 1,
                            letterSpacing: -0.78,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement cancel functionality
                        },
                        child: const Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 1,
                            letterSpacing: -0.78,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 11,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 2.29,
                      left: 0.92,
                      right: 0.92,
                      bottom: 1.83,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
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
