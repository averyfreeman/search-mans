# Search Mans

### Search your `/usr{/local}/share/man` folders for man pages describing command usage

---

I wrote this while I was using `msys2` because there wasn't a proper `apropos`

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
wow, such gits
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
