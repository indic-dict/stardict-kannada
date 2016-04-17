Creation instructions.

- Copy headwords from kn-headwords.txt.
- Convert to HK using [http://www.virtualvinodh.com/wp/aksharamukha/].
- Do the following regular expression replacements in a text editor (in this sequence):
	- M([kgcj]) to n\1
	- M([TD]) to N\1
	- A to aa
	- I to ii
	- U to uu
	- ch to Ch
	- c to ch
	- S to Sh
	- z to sh
	- kSh to x
	- jJ to GY
- Run make_tsv.sh.
- Go to the parent directory, and run make all.


