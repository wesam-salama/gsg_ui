import 'package:flutter/material.dart';
import 'package:ui_work/ui/screens/todo_gsg_assigment/ui/widgets/task_tile.dart';
import 'package:ui_work/ui/screens/todo_gsg_assigment/utils/utils.dart';

class TapBarExample extends StatefulWidget {
  @override
  _TapBarExampleState createState() => _TapBarExampleState();
}

class _TapBarExampleState extends State<TapBarExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Todo App'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.green,
          tabs: [
            Tab(
              child: Text(
                'All Tasks',
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                'Complete Tasks',
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                'Incomplete Tasks',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Column(
            children: tasks
                .map((e) => TaskTile(
                      task: e,
                      checkBoxCallback: (newState) {
                        setState(() {
                          e.changeStatus();
                        });
                      },
                    ))
                .toList(),
          ),
          Column(
            children: tasks
                .where((element) => element.isComplete)
                .map((e) => TaskTile(
                      task: e,
                      checkBoxCallback: (newState) {
                        setState(() {
                          e.isComplete = newState;
                        });
                      },
                    ))
                .toList(),
          ),
          Column(
            children: tasks
                .where((element) => !element.isComplete)
                .map((e) => TaskTile(
                      task: e,
                      checkBoxCallback: (newState) {
                        setState(() {
                          e.isComplete = newState;
                        });
                      },
                    ))
                .toList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabController.index,
        onTap: (value) {
          _tabController.animateTo(value);
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            label: 'All Task',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Complet Task',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Complet Task',
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
