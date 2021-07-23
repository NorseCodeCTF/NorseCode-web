#/bin/bash
echo "<html style=background-color:#666>" > overview.html
ls *.svg | sed 's/^/<img src="/' | sed 's/$/">/' >> overview.html
echo "</html>" >> overview.html
