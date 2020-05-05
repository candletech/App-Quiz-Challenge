

This project is ... with objective


## Functional Project

- Insert words and have them counted as a hit as soon as the player types the last letter of each word.
- There will be a 5 min timer to finish the game.
- There will be a button to start the timer.

## Requirements
- Swift 5
- Target: iOS 12.0
- Xcode 11.2.1

### Run project
To execute the project you have to:

1. Clone [the repo](https://github.com/LevyCristian/ArcTouchChallenge) or download the ZIP file on a Mac
1. If you choose to download the ZIP file, unzip it
1. Open the file `QuizArcTouch.xcodeproj` with Xcode 11
1. Pick a simulator (choose an iPhone with iOS 12 or later)
1. Run the project (CMD+R)

### Run tests
To run some unit tests you have to:

1. Open the file `QuizArcTouch.xcodeproj` with Xcode 11
1. Run tests (CMD+U)

---

## Project Patterns

### Architecture 
- MVVM with closures

```
<MODULE_NAME>
├── Coordinators
│   └── <MODULE_NAME>Coordinator.swift
├── ViewControllers
│   └── <MODULE_NAME>ViewController.swift
└── ViewModels
    └── <MODULE_NAME>ViewModel.swift
```

### UI development
- ViewCode

### Good Practices
- SwiftLint

### Network Layer Pattern
- Repository Pattern
