#!/usr/bin/env bash

# Arguments <name> <email>
function gitUser () {
    git config user.name "$1"
    git config user.email "$2"
}


## Generate README.mp4

pushd input

echo "file 'README_without_flag.mp3'" >> tmp.txt
echo "file 'flag-part.mp3'" >> tmp.txt
ffmpeg -f concat -i tmp.txt -c copy README.mp3
ffmpeg -loop 1 -i README_without_flag.png -i README.mp3 -shortest ../output/README.mp4

rm tmp.txt
popd



## Generate README.png

FLAG_PART="ou_can_use"
cp input/README_without_flag.png output/README.png
exiftool -author="${FLAG_PART}" output/README.png


# Init
mkdir malwarehackercode
cd malwarehackercode
git init


# Initial Commit
gitUser "Hohn Jammond" "hohn.1337.jammond@gmail.net"
echo "code" > code.py
git add --all
git commit -m "Upload file code.py" --date="Mon Apr 24 15:03:57 2024 +0200"


cp ../README.* ./
cp ../output/* ./
git add --all
git commit -m "malwar +readme" --date="Fri May 5 09:48:06 2024 +0200"


cd ..
7z a $dir.7z $dir
