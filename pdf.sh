COURSEFILE=course/filename

# Change this to redirect file
FILE=$COURSEFILE
(
  latexmk -pdf -jobname=cache/temp -quiet temp.tex &&
    cp cache/temp.pdf $FILE.pdf &&
    cp temp.tex $FILE.tex &&
    printf "Exported to \e[32m$FILE.pdf\n" &&
    sleep 1 &&
    clear
) || (
  printf "\e[31mError while compiling. Check log.\n"
)
exit
