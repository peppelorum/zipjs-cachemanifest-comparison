# A quick comparion between cache manifest with many files, or a big zip file

This is a quick comparison between loading many small (70KB) files and zipping them all together, putting the zip in cache manifest and downloading that and loading the resources with [zipjs](http://gildas-lormeau.github.com/zip.js/). The files in the zip file were made by piping from /dev/random so zip couldn’t actually compress them, check out the createimages.sh in the files directory.

I did some inital testing myself with Chrome behind [Charles](http://www.charlesproxy.com/), too bad my result showed that loading a zip file was slower than loading many small files.

Settings for Charles:
* Bandwidth: 8024
* Latency: 50

Results:
* Many files: 27 988ms
* Zip file: 58 742ms

To run this, clone and run the createimages.sh script to create all the necessary files.