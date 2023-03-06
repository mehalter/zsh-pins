pinfile=${XDG_DATA_HOME:-$HOME}/pins

alias pl='if [ -f $pinfile ]; then
            while read -r pin; do
              key=`awk -F "\t" '"'"'{print $1}'"'"' <<< $pin`
              folder=`awk -F "\t" '"'"'{print $2}'"'"' <<< $pin`
              echo -e "$key:-- $folder"
            done < $pinfile | column -t -s :
          fi'

pa() {
  if [ "$1" != "" ] && ([ ! -f "$pinfile" ] || ! grep -Pq "^$1\t" "$pinfile"); then
    touch "$pinfile"
    echo -e "$1\t$PWD" >> "$pinfile"
    sort -o "$pinfile" "$pinfile"
    pl
  fi
}

pd() {
  if [ "$1" != "" ] && grep -Pq "^$1\t" "$pinfile"; then
    sed -i --follow-symlinks "/^$1\t/d" "$pinfile"
    pl
  fi
}

pe() {
  if [ "$1" != "" ] && grep -Pq "^$1\t" "$pinfile"; then
    sed -i --follow-symlinks "s~^$1\t.*~$1\t$PWD~" "$pinfile"
    pl
  fi
}

pg() {
  if [ "$1" != "" ] && grep -Pq "^$1\t" "$pinfile"; then
    cd "$(sed "s/^$1\t\(.*\)$/\1/;t;d" "$pinfile")" || exit
    ls
  fi
}
