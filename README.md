# Search Mans

### Search your `/usr{/local}/share/man` folders for man pages describing command usage

---

### This is just a cheap a oneliner that searches for and returns a list of man pages on your computer in the two most common locations.

I pretty much created this as a demo for repo usage in a course I'm taking https://nucamp.co but it's kinda fun and appears to work OK

(you can also just type `man (command)` and hit \<TAB\> twice to get a list, so this is not super useful, but still was fun to write up...)

The script _does_ make it easier to save a list of mans, or count them if you need to ... (see below)

#### Usage:

```
$ chmod +x search-mans.sh (one time)
$ ./search-mans.sh (command)
```

#### Example output:

```
$ ./search-mans.sh git
git
git-add
git-am
git-annotate
git-apply
git-archimport
git-archive
git-bisect
git-blame
git-branch
git-bugreport
git-bundle
git-cat-file
git-check-attr
git-check-ignore
git-check-mailmap
git-checkout
git-checkout-index
git-check-ref-format
git-cherry
git-cherry-pick
git-citool
git-clean
git-clone
git-column
. . .
wow, so much gits
```

#### Save output to file:

```
$ ./search-mans.sh git > git-mans.list
```

#### Create $HOME/bin and add to PATH (another cheap one-liner):

```
$ for m in search-mans; do mv $m.sh $m; mkdir $HOME/bin; mv $m $HOME/bin; export PATH=$PATH:$HOME/bin; echo 'PATH=$PATH:$HOME/bin' >> $HOME/.profile; done
```

Note: After running this command you should be able to run `search-mans (command)` from anywhere, without the leading `./`, e.g.:

```
$ search-mans git > all-the-git-man-pages.txt
```

#### Find out how many {sub-}pages a command has by counting the man files:

```
$ search-mans git | wc -l  // returns: 185
```
