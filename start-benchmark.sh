echo "*******************************************"
echo "*                                         *"
echo "*        Building the debian image        *"
echo "*                                         *"
echo "*******************************************"
time docker build --no-cache -f Dockerfile.slim -t debvpython-slim .

echo ""
echo ""
echo ""
echo ""
echo ""

echo "*******************************************"
echo "*                                         *"
echo "*        Building the ubuntu image        *"
echo "*                                         *"
echo "*******************************************"
time docker build --no-cache -f Dockerfile.alpine -t debvpython-alpine .

echo ""
echo ""
echo ""
echo ""
echo ""

echo "*******************************************"
echo "*                                         *"
echo "*     Comparing the memory footprint      *"
echo "*                                         *"
echo "*******************************************"
docker images --format "table {{.Repository}}\t{{.Size}}" "python-*"
