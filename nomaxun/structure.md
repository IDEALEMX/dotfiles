# Structure
## Intro
Nomaxun is a Neovim configuration paradigm that attempts to reconcile the speed
and extend extensibility of Neovim with the "Text editor as your interface OS"
mentality of Emacs and the UNIX philosophy adherence and simplicity of
Kakoune... As insane as this premise may sound.

## The Nomaxun philosophy
### The UNIX philosophy
In this document, when referring to the "UNIX philosophy" we will be referring
really to the idea that "Programs should be focused and perform only one task
so they may be orchestrated later".

This is of course not the original full UNIX philosophy, but it will guide the
design of a Nomaxun configuration while remaining as close as possible to the
original idea.

### Redefining Neovim
To be able to achieve this goal, the key is to redefine or re-understand Neovim
not as simply as a "Text editor" but instead as something closer to a "Manual
shell"

Yes, in this configuration Neovim is treated as something closer to a "shell",
what on earth could this mean?

Well, in a shell script what do you do? You store text in variables and files
and pipe it around from program to program. In Neovim buffers are the
fundamental objects that allow for text storage, and sections of said buffer
will be piped around from program to program to be edited by them.

And by that logic Neovim does not break the UNIX philosophy we have defined even if
doing something things as non text-editing related as browsing the internet on it.
You are not "browsing the internet on a text editor", you are simply using Neovim as an
intermediary between the input and output of different programs.

### Outsourcing
It is by this very reason that it is preferable, when possible, to use literal
pipes to external programs or write wrappers around them Kakoune style rather
than re-implementing logic inside Lua.

The hierarchy of implementation for any given needed behavior should ideally follow:

1. Pipe to an external program
2. Write fully fledged Lua wrapper around an external program
3. Get and external plugin with this behavior
4. Manually implement

Note implementation could very well take place in Lua or as an external
independent program.
While the most UNIX-y solution would probably be to write an external
implementation and wrap onto it, for practicality and in line with the Emacs
side of the Nomaxun philosophy it is probably best to, at least at first,
implement locally in Lua.

### The Emacs side of things
#### Organization
In order to be able to implement as many features as we may wish into our
editor, while also keeping everything organized in such a way one does not lose
track of what features already exist in the editor I propose an organization
method that is heavily inspired by that on Emacs, and which also invites for a
lot of customization while keeping it all accessible.
