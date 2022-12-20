if [ -d "result" ]
then 		
	echo ""
	echo "Removing previously existing results"
	echo ""
	rm -r "result"
else
	echo "Executing script"
	echo ""
fi
spark-shell -i top_games_winner.scala
echo ""
echo ""
cat result/part*.csv
echo ""
