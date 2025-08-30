#!/bin/sh

# Restore backups first
for f in /System/Library/Input\ Methods/CharacterPalette.app/Contents/Resources/*.bk
do
	mv "$f" "${f%.bk}"
done


FILES=(
    "/System/Library/Input Methods/CharacterPalette.app/Contents/Resources/Category-Emoji.plist"
    "/System/Library/Input Methods/CharacterPalette.app/Contents/Resources/CategoryImage-NKo.pdf"
    "/System/Library/Input Methods/CharacterPalette.app/Contents/Resources/CategoryImage-Tifinagh.pdf"
    "/System/Library/Input Methods/CharacterPalette.app/Contents/Resources/CategoryImage-Ugaritic.pdf"
    "/System/Library/Input Methods/CharacterPalette.app/Contents/Resources/CharacterDB.sqlite3"
)

for file in "${FILES[@]}"
do
    [ -f "$file" ] && cp "$file" "$file.bk"
done