@ECHO OFF

:choice
set /P c=Are you sure you want to deploy your changes[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere
echo "Deploying changes"
git add *
git commit -m "website update"
git push
exit

:somewhere_else