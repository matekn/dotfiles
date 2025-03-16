#!bin/bash

#dirs
CONFIG_DIR="$HOME/.config"
REPO_DIR="$HOME/dotfiles"

#list of the config files
CONFIG_FILES=(
  "i3/config"
  "picom.conf"
)

mkdir -p "$REPO_DIR"

create_symlinks() {
  local src="$1"
  local dest="$2"
  if [! -e "$src"]; then
     echo "Source file does not exist: $src"
     return 1
  fi
  #create symlink
  ln -sf "$src" "$dest"
  echo "Created symlink: $dest -> $src"
}

for file in "${CONFIG_FILES[0]}"; do 
  src="$CONFIG_DIR/$file"
  dest="$REPO_DIR/$file"
  mkdir -p "$(dirname "$dest")"
  create_symlink "$src" "$dest"
done

echo "Symlink created successfully!"
}

