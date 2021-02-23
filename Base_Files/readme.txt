[gzredux]
Here are the base files for gzdoom that have to be in the same directory. Upon distribution, there shouldn't be
a config file (gzdoom-username.ini). Loading gzdoom should create a config file, but it won't work yet. You need
to edit the new config file with the further instructions listed:

Open the config file with notepad

Delete all paths in Iwadsearch. Add "Path=..\IWADS"

Delete all paths in filesearch. Add "Path=..\Addons"

Replace all instances of "$PROGDIR/" (use ctrl+H) with "..\"

Save file
