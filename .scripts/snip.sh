maim /tmp/screenshot.png
feh -x -F /tmp/screenshot.png &
id=$!
maim -s --format=png /dev/stdout | xclip -selection clipboard -t image/png -i
kill $id
