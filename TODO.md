# TODO

## Uncomplete

## Done or almost done

- [x] Remove [sensitive information][2].

  In `.gitattributes`, add this line:

  ```
  xfce4-keyboard-shortcuts.xml filter=xfce_user
  desktop.d/*.desktop          filter=xfce_user
  ```

  In the git root directory of repository, type in bash:

  ```bash
  git config filter.xfce_user.clean  ./scripts/git/filter/xfce_user/clean.sh
  git config filter.xfce_user.smudge ./scripts/git/filter/xfce_user/smudge.sh
  git config filter.subl_dict.clean ./scripts/git/filter/subl_dict/clean.sh
  ```

- [x] Flexible `boostrap.sh` for each Linux distribution.

  Now support both Arch and Debian Linux.

- [x] Remove `.ssh/config` that contains sensitive infos.

- [x] Fix error makes cursor cannot jumps to beginning of the line.

  **Fixed**: non-printing escape sequences have to be enclosed in `\[\e[` and `\]`.

- [x] Use vi-style editing mode for both bash and zsh

  Read more:
  - https://dougblack.io/words/zsh-vi-mode.html
  - https://stratus3d.com/blog/2017/10/26/better-vi-mode-in-zshell/

[1]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes#Keyword-Expansion
[2]: https://wiki.archlinux.org/index.php/Dotfiles#Confidential_information
