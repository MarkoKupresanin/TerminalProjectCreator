#! /bin/bash

read -p "Name of project folder: " FOLDERNAME
cd documents

read -p "What type of file: " FILEEXTENSION

cd projects
mkdir $FOLDERNAME

if [ "$FILEEXTENSION" == "python" ]
then
  cd $FOLDERNAME
  > main.py
  echo "New Python project created in Documents/Projects/$FOLDERNAME"
elif [ "$FILEEXTENSION" == "javascript" ]
then
  cd $FOLDERNAME
  > index.js
  echo "New Javascript project created in Documents/Projects/$FOLDERNAME"
elif [ "$FILEEXTENSION" == "html" ]
then
  cd $FOLDERNAME
  > index.html
  > style.css
  > index.js
  echo "New HTML project created in Documents/Projects/$FOLDERNAME"
elif [ "$FILEEXTENSION" == "swift" ]
then
  open -a Xcode
  echo "Opened Xcode"
else
  echo "Unkown Project"
fi