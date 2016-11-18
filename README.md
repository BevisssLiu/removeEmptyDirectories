# removeEmptyDirectories

>The purpose of this script is to remove all empty directories under the path you give by one command.
> Let's give the script a abbreviation "red" in short, that means " remove empty directory".
---
Usage:
- red "your directory path" 
- enter this command, that will show you how many objects(files and directories) are in every path,
- and the empty directories will be among them
- red "your directory path" -d
- there's one more thing than above, removed directories will be highlight on screen.

you'll see the output with colors, but this's just a README, so please forgive me and I'll refine it ASAP.

Examples:
```
➜  removeEmptyDirectories git:(master) ✗ sh red.sh ~/Desktop/GitTest
-e ============the current directory is /Users/lidia/Desktop/GitTest==========
-e /Users/lidia/Desktop/GitTest/  contains  5 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift==========
-e /Users/lidia/Desktop/GitTest/OXswift/  contains  3 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift/OXswift==========
-e /Users/lidia/Desktop/GitTest/OXswift/OXswift/  contains  5 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift/OXswift/Assets.xcassets==========
-e /Users/lidia/Desktop/GitTest/OXswift/OXswift/Assets.xcassets/  contains  1 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift/OXswift/Assets.xcassets/AppIcon.appiconset==========
-e /Users/lidia/Desktop/GitTest/OXswift/OXswift/Assets.xcassets/AppIcon.appiconset/  contains  1 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift/OXswift/Base.lproj==========
-e /Users/lidia/Desktop/GitTest/OXswift/OXswift/Base.lproj/  contains  1 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift/OXswift.xcodeproj==========
-e /Users/lidia/Desktop/GitTest/OXswift/OXswift.xcodeproj/  contains  3 objects
-e ============the current directory is /Users/lidia/Desktop/GitTest/OXswift/OXswift.xcodeproj/project.xcworkspace==========
```
```
➜  removeEmptyDirectories git:(master) ✗ mkdir ~/Desktop/GitTest/shellScripts/testDirectory
➜  removeEmptyDirectories git:(master) ✗ sh red.sh ~/Desktop/GitTest | grep empty       
-e /Users/lidia/Desktop/GitTest/shellScripts/testDirectory is empty
➜  removeEmptyDirectories git:(master) ✗ sh red.sh ~/Desktop/GitTest -d | grep remove      
-e /Users/lidia/Desktop/GitTest/shellScripts/testDirectory  has been removed
```
