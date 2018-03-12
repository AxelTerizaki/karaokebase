﻿[Version en français plus bas](#French version)

# English version

## Karaoke Mugen database

This is the git repository for the [Karaoke Mugen](http://mugen.karaokes.moe) karaoke database. It is to be used with the software found at the site linked just now, but you can also use it freely for your own purposes.

## Format

A karaoke is made of the following elements :

* A `.kara` file in the `karas` folder
* A `.ass/srt/vtt` file in the `lyrics` folder
* A video file in the `videos` folder

### `karas` folder

This folder holds files with karaoke metadata such as video file, lyrics file, etc. It uses the standard `.ini` format.

Example :
```
videofile=ANG - Porter Robinson & Madeon - MV - Shelter.mp4
subfile=ANG - Porter Robinson & Madeon - MV - Shelter.ass
year=2016
singer=Amy Millan
tags=
songwriter=Porter Robinson,Madeon
creator=A-1 Pictures
author=karaokes.moe
series=Shelter
lang=eng
KID=48d98d72-fe99-4eca-84be-bae0d598e169
videosize=109238678
videoduration=367
videogain=-5.49
dateadded=1507741308
title=Shelter
type=MV
order=
version=1
```

Some parameters are mandatory while others are generated by the Karaoke Mugen software when lauching it with the `--validate` or `--generate` options.

For more information, read the [.kara format documentation](docs/french/karafile.md) in french.

### `lyrics` folder

This folder contains the subtitles files as specified in the `.kara` file.

It is generally a `.ass` file made with AegisSub. See [CONTRIBUTING.md] for a more detailed tutorial on how to write good karaokes.

### `videos` folder

This folder contains the video file as specified in the `.kara` file.

Videos aren't included in this git repository or else it'd be way too huge (about 170Gb at the moment). You can launch `UpdateVideos.cmd` on Windows or `UpdateVideos.sh` on macOS/Linux to get the latest version of the videos folder via rsync from the Shelter server.

Launch the update script each time you pull/clone/download a new version of this repository to make sure the videos folder is in sync with the `.kara` files you just downloaded.

If you get errors from Karaoke Mugen during database generation / folder validation, make sure you have the latest version of the repository (`git pull` or downloaded latest `master.zip`) and that you ran the `UpdateVideos` script at least twice in a row.

---

# French version

## Base de données des times de Karaoke Mugen

Ceci est la base de données des times de [Karaoke Mugen](http://mugen.karaokes.moe).

### Format d'un time

Un karaoké Karaoke Mugen est composé de 3 éléments rangés dans des dossiers

* Un fichier `.kara` dans le dossier `karas`
* Un fichier `.ass` dans le dossier `lyrics`
* Un fichier vidéo dans le dossier `videos`

#### Dossier `karas`

Ce dossier regroupe les fichiers qui contiennent les informations permettant d'afficher le time dans la liste et que le daemon Karaoke Mugen le gère ensuite. Il reprend le format d'un .ini classique.

Exemple :
```
videofile=ANG - Porter Robinson & Madeon - MV - Shelter.mp4
subfile=ANG - Porter Robinson & Madeon - MV - Shelter.ass
year=2016
singer=Amy Millan
tags=
songwriter=Porter Robinson,Madeon
creator=A-1 Pictures
author=karaokes.moe
series=Shelter
lang=eng
KID=48d98d72-fe99-4eca-84be-bae0d598e169
videosize=109238678
videoduration=367
videogain=-5.49
dateadded=1507741308
title=Shelter
type=MV
order=
version=1
```

Certains éléments sont obligatoires, d'autres sont générés par le logiciel Karaoke Mugen lors de la validation des fichiers .kara

Pour plus d'informations, consultez la [documentation sur le format](docs/french/karafile.md)

#### Dossier `lyrics`

Contient le fichier de sous-titres tel que spécifié dans le .kara

Il s'agit d'un .ass généralement crée via AegisSub. Voyez [CONTRIBUTING.md] pour des tutoriels sur comment faire de bons karaokés dans ce format.

#### Dossier `videos`

Contient le fichier de vidéo tel que spécifié dans le .kara

Les vidéos ne sont pas fournies dans ce dépôt, par souci de place (et ça ferait un dépôt de 170 Go au bas mot). Vous pouvez néanmoins lancer `Mettre a jour videos.cmd` (Windows) ou `UpdateVideos.sh` (OSX/Linux) pour récupérer les vidéos par rsync depuis le serveur Shelter.

Pensez à lancer régulièrement ce script, parfois deux fois de suite pour vous assurer que tout a bien été récupéré. Le dossier de vidéos colle à la dernière version de la base.

Si vous rencontrez des erreurs de Karaoke Mugen durant la génération de la base / la validation des dossiers, assurez-vous que vous avez bien la dernière version de ce dépôt (`git pull` ou téléchargez le dernier `master.zip`) et lancez le script `UpdateVideos` deux fois d'affilée pour être sûr.
