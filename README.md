# Gym Tracker

## Project Description

Gym Tracker is an application that allows users to keep track of their gym workouts and exercises. Users will eventually be able to create an account, log in, and record information about the exercises they perform.

## Purpose

The purpose of Gym Tracker is to give people who go to the gym a simple way to save and manage their exercise information in one place.

## Intended Users

The intended users are people who go to the gym and want a simple way to keep track of their workouts.

## Main Features

- User registration
- User login
- Add exercise entries
- Record exercise information such as exercise name, weight, sets, and repetitions
- View exercise entries
- Edit exercise entries
- Delete exercise entries

## Main Entities

The two main entities in the application are:

- `USER`
- `EXERCISE_ENTRY`

### USER Attributes

- `UserID` - Primary Key
- `FirstName`
- `LastName`
- `Email`
- `Password`

### EXERCISE_ENTRY Attributes

- `ExerciseEntryID` - Primary Key
- `UserID` - Foreign Key
- `ExerciseName`
- `Weight`
- `Sets`
- `Repetitions`

## Business Rules

**Relationship:** `USER` records `EXERCISE_ENTRY`

1. A USER may record zero, one, or many EXERCISE ENTRIES.
2. Each EXERCISE ENTRY must be recorded by exactly one USER.

![Gym Tracker Business Rules](images/gymtracker-business-rules.png)

## Entity Relationship Diagram

![Gym Tracker ERD](images/gymtracker-erd.png)
