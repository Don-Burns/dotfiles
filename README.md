# dot-files

My dot files

## Management

Am managing dotfiles using [chezmoi](https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine)

## Chezmoi

### [Install chezmoi](https://www.chezmoi.io/install/#one-line-package-install)

Can install and init using the following command in one go
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME`

### Basic Commands

[Reference](https://www.chezmoi.io/user-guide/command-overview/#daily-commands)
 **NOTE**: File is the real path of the dotfile e.g. `~/.bashrc`, not the tmp chezmoi location

- chezmoi add $FILE adds $FILE from your home directory to the source directory.

- chezmoi edit $FILE opens your editor with the file in the source directory that corresponds to $FILE.

- chezmoi status gives a quick summary of what files would change if you ran chezmoi apply.

- chezmoi diff shows the changes that chezmoi apply would make to your home directory.

- chezmoi apply updates your dotfiles from the source directory.

- chezmoi edit --apply $FILE is like chezmoi edit $FILE but also runs chezmoi apply $FILE afterwards.

- chezmoi cd opens a subshell in the source directory.

### Ignoring files

Chezmoi will sync all the files in this repo to the home dir when using `chezmoi apply`.
To ignore a file add it to the `.chezmoiignore` file. Follows `.gitignore` like syntax
