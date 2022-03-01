# nullsafety

A new Flutter project to understand Null Safety in Flutter.
- [Null Safety codelab](https://dart.dev/null-safety)
- [sound Null safety](https://dart.dev/null-safety)
- [Unsound Null safety](https://dart.dev/null-safety/unsound-null-safety)

## Writing notes about Null Safety in Flutter.

#What happens when Null safety is set as default?

1. All variables cannot be null. Non-nullable variables cannot be assigned as null. (TEST_NO_1)
   >> This causes Compile errors. It means you cannot even run the code.
2. Null check is not needed for non-nullable variable. (TEST_NO_2)
   >> This does not give compile error, but the program suggests to remove if statement.
3. variables "in Class" should be initialized as soon as it is declared.(TEST_NO_3)
   >> This also causes Compile error.

# How do I use null when it is needed?
1. By adding '?' right after variable Type. It tells to Compiler that the variable cannot null.

# Why do we need Null Safety?

# How do we activate or deactivate null safety option in flutter?

# Every new Flutter project is set with Null Safety?

# What should I be careful?


# sound null safety and null safety? What is differences?
>>null safety
- A Dart program can contain some libraries that are null safe and some that are not. These mixed-version programs execute with unsound null safety.

>>sound null safety
- When a program is fully migrated and all its libraries are null safe, then it runs with sound null safety, with all of the guarantees and compiler optimizations that soundness enables.