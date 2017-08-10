set -e

if [ "$1" ]; then
  backup()

else 
  restore()
fi


backup(){
  cp ~/.IdeaIC2017.1 .
  
}

restore(){
  cp ./.IdeaIC2017.1 ~/
}


