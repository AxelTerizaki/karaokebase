@ECHO OFF
SETLOCAL
SET CWRSYNCHOME=.\Updater
SET HOME=.\Updater
SET CWOLDPATH=%PATH%
SET PATH=%CWRSYNCHOME%\BIN;%PATH%
SET HOST=shelter.mahoro-net.org
SET RSYNCRESSOURCE=karaokevideos
SET LOGIN=public

echo Karaoke Mugen Videos
echo ====================
echo.
echo Entrez le mot de passe pour mettre a jour votre dossier video de Karaoke Mugen
echo.
echo Le mot de passe est : musubi
echo Le mot de passe ne s'affiche pas, ceci n'est pas un bug, n'essayez pas de regler votre ecran.
echo.
echo ATTENTION : Au moins 150 Go sont requis pour recuperer l'integralite des videos.
echo.
echo Vous pouvez couper le telechargement a tout moment et le reprendre plus tard.

Updater\rsync -ruvh --progress --delete-during --exclude=".git" --exclude=".gitlab" --exclude="karas/" --exclude="lyrics/" --exclude=".gitignore" --exclude="CONTRIBUTING.md" --exclude="/dev" --exclude="/cygdrive" --exclude="Mettre a jour videos.cmd" --exclude="UpdateVideos.sh" --exclude="/proc" --exclude="LICENSE.md" --exclude="README.md" %LOGIN%@%HOST%::%RSYNCRESSOURCE% .
pause
