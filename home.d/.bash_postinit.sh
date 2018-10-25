#! /usr/bin/env bash

# -- Load shell dotfiles ---------------------------------------------------------

# * "$HOME/.path" can be used to extend `$PATH`.
# * "$HOME/.extra" can be used for other settings you don't want to commit.
for config in "${HOME}/."{paths,exports,extra,aliases}; do
  [[ -f "${config}" ]] && source "${config}"
done

# -- Cleaning up -----------------------------------------------------------------

unset \
  m_compinit_age \
  m_get_shell_type \
  m_check_exist \
  m_check_ssh