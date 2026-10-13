# config.nu
#
# Installed by:
# version = "0.115.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R


# UI config
## Get shell colors
#cat ~/.cache/wal/sequences
$env.config.show_banner = false
$env.PROMPT_INDICATOR = "::󰘧 "

# Aliases 
alias n = nvim
alias tags = easytag ~/Music/

# Add Tooling
$env.path ++= ['/home/ideale/scripts/']
$env.path ++= ['/home/ideale/scripts/fzf/']
$env.path ++= ['/home/ideale/.local/bin/']

let $ZK_NOTEBOOK_DIR = "~/notebook/"

let quotes = [
  "I use arch btw"

  "Emacs cured my autism
  @Emerald Mcs. et al., PhD"

  "I love vim; I'm just as unproductive as before, but in a more efficient manner.
  @mkultrasoldier"

  "People don't quit Emacs, they just die at some point
  @Emerald Mcs. et al., PhD"

  "There are 5 games written in rust and 50 game engines
  @Jester Hartman"

  "There are 5 games written in rust and 50 game engines
  @Jester Hartman"

  "GNU is bloat
  @MentalOutlaw"
]

cowsay -f tux ($quotes | shuffle | first)

