[Version française ci-dessous](#french-version)

# English version

## How to create a karaoke

There's a tutorial describing how to make one here :

* [Karaoke Tutorial](http://docs.karaokes.moe/fr) (in french for now)

## I already have some karaoke files, I would like to add them to this database

If your files are ready, you can add them in different ways.

### I just want to send my files and let you handle the rest

You can use [our submission form](https://kara.moe/import). Please fill in all fields if possible so we won't have to search for the data ourselves, unless you don't know of course.

### I can use git and would like to contribute to the database myself

You can either become a member of the database team or send your modifications via git pull requests.

Database team members have write access to this git repository as well as to the FTP server where videos are stored. If you'd like to become part of the team and get absolutely no advantages other than personal satisfaction for contributing to this, read the section below. If you're in the team already, read the following :

* [Download and install Karaoke Mugen](http://mugen.karaokes.moe)
* Create a folder called `app` and then another one called `data` inside in your KM install folder.
* Put your new videos in place in that folder according to the usual structure, like `app/data/medias`
* Make any modification or add new karaoke songs by using the System Panel interface in Karaoke Mugen.
* Send your media file to us, or if you have access to Shelter's FTP, upload your media files on Shelter or simply rename them if it only needs renaming.
* Commit & push once your media files are in place on Shelter, then submit your pull request.

## I want to help maintain the karaoke database

The more we are, the faster we can achieve a fully completed database.

[Let's talk about it on Discord!](https://karaokes.moe/discord) (in the #karaoke channel) We welcome everyone with open arms.

Some karaokes need to be verified / retimed when they're clearly not in sync, for example. Sometimes we also change a time's style to meet our visibility standards (we remove special effects, weird, fantasy fonts, etc.)

If you don't feel like you can do that, we still need some karaokes to be tagged and properly filled up with metadata. It means put in the missing information like the anime's production year, its animation studio, the singer and songwriter(s), etc.

## I need help

Again, [come to the Discord server](https://karaokes.moe/discord)

And go to the #help channel!


## For the maintainers

CI is automatic at each commit, you may want to skip some steps if they are not useful in the context:

* If you change files but without altering the medias, you can append `[nomedia]` to your commit message to skip the media sync step.
* If you change files that are not the database (such as these .md documents), you can append `[skip-ci]` to your commit message to skip database deploy.

# French version

## Comment créer un karaoké

Nous avons écrit un document à ce sujet que vous trouverez ici :

[Tutorial de karaoké](http://docs.karaokes.moe/fr/contrib-guide/create/)

## J'ai déjà des karaokés, comment vous les envoyer ?

Vous pouvez utiliser [notre formulaire d'envoi](https://kara.moe/import).
Essayez de remplir si possible l'intégralité du formulaire, ça nous fera ça de moins à chercher. Si vous ne savez pas du tout et ne trouvez rien, ce n'est bien sûr pas obligatoire, juste plus sympa pour nous.

## Je veux aider à maintenir la base des karaokés !

C'est sûr que plus on est nombreux, plus ça va vite de maintenir cette base à jour !

[Discutons-en sur Discord](https://karaokes.moe/discord). On prend toutes les bonnes volontés !

Il y a notamment des karaokés dont il faut vérifier le titre, mais aussi les paroles.

Si rien de tout cela ne vous botte, il y a toujours le boulot de tag les karaokés, c'est à dire remplir leurs .kara.json d'informations comme l'année de l'animé, le studio de production, le chanteur ou le compositeur, etc.

## J'ai besoin d'aide

Venez sur [le discord](https://karaokes.moe/discord)

Et dirigez-vous sur le salon #aide !

## À l'intention des mainteneurs

La CI est automatique sur chaque commit. Cependant certains passages peuvent être sautés si ils ne sont pas utiles dans le contexte :

* Si vous apportez une modification à la base sans porter atteinte aux médias, vous pouvez indiquer `[nomedia]` dans votre message de commit pour passer l'étape de la synchronisation des médias.
* Si vous apportez une modification aux fichiers autour de la base (comme ces documents .md par exemple), vous pouvez indiquer `[skip-ci]` dans votre message de commit pour passer le déploiement de la base de données qui n'a pas changée au final.
