# CodeJudge-Library
A library containing common custom widgets, datamodels, etc.

## Overview
- [Content](#content-of-this-library)
    - [Widgets](#widgets)
    - [Datamodels](#datamodels)
- [Implementation](#implementation)
    - [Specific release](#use-a-specific-release)
    - [Automatically updating](#use-automated-updates-unrecommended)

## Content of this library
### Widgets
- Custom TextField
- Custom items for the Lists
- Custom NavigationBar

### Datamodels
- Datamodel defining an exercise

## Implementation
### Use a specific release
Open your `pubspeck.yaml` and search for `dependencies`. Then add these lines:
```
dependencies:
  my_custom_widgets:
    git:
      url: https://github.com/CodeJudgeOrg/CodeJudge-Library
      ref: v1.0.0 # Replace by the version you want to use
```
You can find the version of each release at the [release page](https://github.com/CodeJudgeOrg/CodeJudge-Library/releases).

### Use automated updates (unrecommended)
Open your `pubspeck.yaml` and search for `dependencies`. Then add these lines:
```
dependencies:
  my_custom_widgets:
    git:
      url: https://github.com/CodeJudgeOrg/CodeJudge-Library
      ref: main
```
