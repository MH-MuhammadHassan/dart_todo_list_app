# Dart To-Do List App

An interactive command-line To-Do List application built with Dart. This simple app allows users to manage tasks by adding, removing, and viewing them in real time.

## Features
- **Add Tasks**: Add tasks to your To-Do list.
- **Remove Tasks**: Remove specific tasks by name.
- **View Tasks**: Display the current list of tasks.
- **Exit**: Safely exit the application.

## Usage
1. Run the application in a Dart environment.
2. Use the commands `add`, `remove`, `list`, or `stop` to interact with the To-Do list:
   - `add`: Add a new task.
   - `remove`: Remove an existing task by name.
   - `list`: View all current tasks.
   - `stop`: Exit the application.

## Example

```bash
Choose an option ('add', 'remove', 'list', 'stop'): add
Enter task name: Buy groceries
✅ Task added: Buy groceries

Choose an option ('add', 'remove', 'list', 'stop'): list
📋 Current tasks:
1. Buy groceries

Choose an option ('add', 'remove', 'list', 'stop'): remove
Enter the task name you want to remove: Buy groceries
✅ Task removed: Buy groceries

Choose an option ('add', 'remove', 'list', 'stop'): stop
🚪 Exiting the To-Do List. Final tasks: 
