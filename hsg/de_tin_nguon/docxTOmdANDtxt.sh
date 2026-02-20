#!/bin/zsh
echo "starting..."

parallel --load 70% --nice 19 --progress '
    if [[ ! -f "{.}.md" || ! -f "{.}.txt" ]]; then
        pandoc "{}" -o "{.}.md" &&\
        pandoc "{}" -o "{.}.txt" &&\
        echo "Done {}"
    fi
' ::: **/*.docx
echo "Completed! Total files: $(ls **/*.md | wc -l)"
