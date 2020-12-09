class Task {
  String title;
  bool isComplete;

  Task({
    this.title,
    this.isComplete,
  });

  changeStatus() {
    this.isComplete = !isComplete;
  }

  // changeStatus(bool newState) {
  //   this.isComplete = newState;
  // }
}
