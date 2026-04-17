/// Copyright 2026 Fabian Roland (naibaf-1)

/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at

/// http://www.apache.org/licenses/LICENSE-2.0

/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
library;

// This defines which values an exercise has
class ExerciseDatamodel {
  final int id;
  String name;
  String description;
  String task;
  String solution;
  int difficultyLevel;
  String hint;
  bool isSelected;

  ExerciseDatamodel({
    required this.id,
    required this.name,
    required this.description,
    required this.task,
    required this.solution,
    required this.difficultyLevel,
    this.hint = "No hint available.",
    this.isSelected = false,
  });
}

// This defines which values a submission has
class SubmissionDatamodel {
  String name;
  String task;
  String code;
  String output;
  String studentName;

  SubmissionDatamodel({
    required this.name,
    required this.task,
    required this.code,
    required this.output,
    required this.studentName
  });
}
