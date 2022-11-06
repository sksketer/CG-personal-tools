@echo off

:: open Google chrome
start chrome

:: open VS Code in given path
start code "D:\IngenuityGit\ONLINE\CoreGaming\elephantgold"

:: start Gdk server
D:
cd "D:\IngenuityGit\ONLINE\CoreGaming\workbench\pokerstars\starsgdk"
java -jar server/starsgdk.jar
