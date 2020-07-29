LATEST_TAG=$1
BRANCH=$2

i=1

v_part1=0
v_part2=0
v_part3=0

for v_part in ${LATEST_TAG//./ }
do
 if ((i==1))
  then
	v_part1=$v_part
  fi
 if ((i==2))
  then
	v_part2=$v_part
  fi

 if ((i==3))
  then
	v_part3=$v_part
  fi

  i=$(($i+1))

done

 if ((BRANCH=='master'))
  then
	     v_part3=0
        v_part2=0
        v_part1=$(($v_part1+1))
  fi

 if ((BRANCH=='pre'))
  then
	     v_part3=0
        v_part1=0
        v_part2=$(($v_part2+1))
  fi

 if ((BRANCH=='desarrollo'))
  then
	     v_part2=0
        v_part1=0
        v_part3=$(($v_part3+1))
  fi

NEXT_TAG="$v_part1.$v_part2.$v_part3"

echo $NEXT_TAG

