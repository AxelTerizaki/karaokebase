# Karaoke Mugen Base Tools

These are scripts used for base maintenance and other utilities.

There are also a [bunch of code snippets](https://lab.shelter.moe/karaokemugen/karaokebase/snippets) you might want to take a look at.

## delay.sh

Adds a 1 second delay at the beginning of a line in ASS files. This allows them to appear a bit before the line is to be sung.

This modification is usually applied by timers individually using AegisSub during karaoke timing, but this Bash script allows to run this on many .ass at once.

## export_json.sh

Exports a SQLite Karaoke Mugen database into JSON.

## stats.sh

Exports basic stats from a SQLite Karaoke Mugen database into JSON.