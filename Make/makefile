#Task 1
report.txt: location.txt
	(cut -d" " -f1 location.txt | uniq -c) > report.txt
	cat report.txt

location.txt:
	#extract the third column
	cut -d, -f3 Starbucks.csv > l.txt
	
	#keep refine data
	sed 's/Starbucks - //g' l.txt > loca.txt
	sed 's/ - / /g' loca.txt > location.txt

.PHONY: clean
clean:
	rm -f location.txt report.txt l.txt loca.txt
	
