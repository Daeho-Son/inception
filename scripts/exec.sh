clear

function trap_ctrlc ()
{
	echo ""
    exit 2
}
trap "trap_ctrlc" 2

make ps
echo ""
echo -n "Container ID: "
read CID

docker exec -it $CID /bin/sh
