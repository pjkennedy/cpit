####
# Written by Patrick Kennedy
# MIT license
#
# backup a git repository easily and quickly...
# This can be a very useful, if you want to keep your code off the internet
#
# usage: 
# cd /home/joe/code   # -- your projects directories are here
# /home/joe/sh/cpit ./facepress ./xfacepress
# result: copies facepress to xfacepress within ~/code
# 
####
rm /home/joe/log.txt  # remove log file
rm -fr $2  # remove target to do a new clean copy
mkdir  $2  # make target directory

# copy source git repository to new dest
cp -rpvT --preserve=timestamp $1 $2 \
  | tee -a /home/joe/log.txt
