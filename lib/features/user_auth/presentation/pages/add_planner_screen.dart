import 'package:flutter/material.dart';
import 'dart:ui'; // Import for ImageFilter

class AddPlannerScreen extends StatefulWidget {
  @override
  _AddPlannerScreenState createState() => _AddPlannerScreenState();
}

class _AddPlannerScreenState extends State<AddPlannerScreen> {
  String plannerName = ''; // Variable to store the planner name
  Map<String, double> budgets = {
    'Housing': 0,
    'Food': 0,
    'Education': 0,
  };

  bool _isDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Planner'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the back button is pressed
          },
        ),
      ),
      backgroundColor: Colors.black, // Set the background color of the entire screen
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Planner Screen',
                    style: TextStyle(color: Colors.white), // Set the text color to white for visibility
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.attach_money_rounded),
                          SizedBox(width: 10),
                          Text(
                            'Planner Name',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _showPlannerNameDialog(context);
                        },
                        child: Icon(Icons.add_circle_rounded),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      for (var entry in budgets.entries)
                        _buildItemRow(context, entry.key, entry.value.toString()),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality to save the budget
                  },
                  child: Text('Save Budget'),
                ),
              ],
            ),
          ),
          if (_isDialogOpen)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Apply blur effect
              child: Container(
                color: Colors.black.withOpacity(0.5), // Transparent black background
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildItemRow(BuildContext context, String title, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              '₱$amount',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                _showEditBudgetDialog(context, title, amount);
              },
              icon: Icon(Icons.edit),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _showPlannerNameDialog(BuildContext context) async {
    setState(() {
      _isDialogOpen = true;
    });

    String? newPlannerName = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String newPlannerName = '';

        return AlertDialog(
          title: Text('Enter Planner Name'),
          content: TextField(
            onChanged: (value) {
              newPlannerName = value;
            },
            decoration: InputDecoration(
              hintText: 'Planner Name',
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pop(newPlannerName);
              },
              icon: Icon(Icons.check),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
          ],
        );
      },
    );

    setState(() {
      _isDialogOpen = false;
    });

    if (newPlannerName != null && newPlannerName.isNotEmpty) {
      setState(() {
        plannerName = newPlannerName;
      });
    }
  }

  Future<void> _showEditBudgetDialog(BuildContext context, String title, String amount) async {
    setState(() {
      _isDialogOpen = true;
    });

    String? newAmount = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String newAmount = amount;

        return AlertDialog(
          title: Text('Edit $title Budget'),
          content: TextField(
            onChanged: (value) {
              newAmount = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter new amount',
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pop(newAmount);
              },
              icon: Icon(Icons.check),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
          ],
        );
      },
    );

    setState(() {
      _isDialogOpen = false;
    });

    if (newAmount != null && newAmount.isNotEmpty) {
      setState(() {
        budgets[title] = double.parse(newAmount);
      });
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: AddPlannerScreen(),
  ));
}
