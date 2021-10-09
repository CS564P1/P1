python group_47_parser.py ./ebay_data/items-*.json
sort -u Items.dat -o Items.dat
sort -u Categories.dat -o Categories.dat
dupeless="$(awk -F"|" '!_[$1]++' Person.dat)"
echo "$dupeless" > Person.dat
sort -u Bids.dat -o Bids.dat
