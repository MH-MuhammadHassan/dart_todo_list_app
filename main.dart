import 'dart:io';

void main() {
  List<String> tasks = [];
  bool isRunning = true;

  print("Welcome to the To-Do List Manager!");

  while (isRunning) {
    stdout.write("\nChoose an option ('add', 'remove', 'list', 'stop'): ");
    String choice = stdin.readLineSync()!.trim().toLowerCase();

    switch (choice) {
      case 'add':
        stdout.write("Enter task name: ");
        String taskName = stdin.readLineSync()!.trim();
        if (taskName.isNotEmpty) {
          tasks.add(taskName);
          print("✅ Task added: $taskName");
        } else {
          print("❌ Task name cannot be empty.");
        }
        break;

      case 'remove':
        if (tasks.isEmpty) {
          print("❌ No tasks to remove.");
          break;
        }
        print("Current tasks: ${tasks.join(', ')}");
        stdout.write("Enter the task name you want to remove: ");
        String removeTaskName = stdin.readLineSync()!.trim();
        if (tasks.remove(removeTaskName)) {
          print("✅ Task removed: $removeTaskName");
        } else {
          print("❌ Task not found.");
        }
        break;

      case 'list':
        if (tasks.isEmpty) {
          print("📋 No tasks available.");
        } else {
          print("📋 Current tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case 'stop':
        print("🚪 Exiting the To-Do List. Final tasks: ${tasks.join(', ')}");
        isRunning = false;
        break;

      default:
        print("❌ Invalid input. Please choose 'add', 'remove', 'list', or 'stop'.");
    }
  }
}
