for f in *.md
do
 echo "Processing $f"
 # remove old file
 rm -f "export/$f.html"
 echo "<html>
    <head>
        <title>Biologie - zápisky Klimešová</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="notes.css">
    </head><body>" >> "export/$f.html" 
 markdown $f >> "export/$f.html"
 echo "</body></html>" >> "export/$f.html";
done
git add index.html
git add export/*.html
git commit -m "Update sources"
git push origin gh-pages
