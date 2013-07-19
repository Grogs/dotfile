#!env zsh

dotfiles=`pwd`

#Move dotfile into repository and create a symlink in its' place
mvdot() {
  file=$1
  mv $file $dotfiles
  ln -s $dotfiles/$file $file
  echo "File moved and symlink added. You may want to commit with git."
}

#Create symlinks to dotfiles. Prompts if file exists
#TODO: Handle file already exists better.
#If expected symlink exists, ignore
sync-dotfiles() {
  for dotfile in $dotfiles/.*; ln -si $dotfile 
}

sync-dotfiles

