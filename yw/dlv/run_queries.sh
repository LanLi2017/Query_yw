echo "*** Extract Queries ***"
echo ""

echo "EQ1:  What source files were YW annotations extracted from?"
./dlv.bin -silent -pfilter=souce_file extractfacts.dlv extract_queries.dlv
echo ""

echo "EQ2:  return all of URL file path"
./dlv.bin -silent -pfilter=url_file  extractfacts.dlv  extract_queries.dlv
echo ""

echo "EQ3:  return dependent/qualifying of annotation id?"
./dlv.bin -silent -pfilter=dep_aid  extractfacts.dlv  extract_queries.dlv
echo ""

echo "EQ4:  given qualifying annotation id: 21, get the value of primary annotation id?"
./dlv.bin -silent -pfilter=value_aid  extractfacts.dlv  extract_queries.dlv
echo ""

echo "EQ5:  Return all of primary id whoes value are "data"?"
./dlv.bin -silent -pfilter=p_aid  extractfacts.dlv  extract_queries.dlv
echo ""


echo "EQ6:  What out ports are qualified with URIs?"
./dlv.bin -silent -pfilter=eq3  extractfacts.dlv  extract_queries.dlv
echo ""

echo "EQ7:  What IN ports are qualified with URIs?"
./dlv.bin -silent -pfilter=eq4  extractfacts.dlv  extract_queries.dlv
echo ""