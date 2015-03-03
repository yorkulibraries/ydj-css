#!/bin/bash

#JOURNAL=witness currents tusaaji topia theoriandpraxis sclr soi hssh refuge protem pivot ngn lh jarm jppal jid ijcst edu_hse-rhe yujhs historicalpapers ht gjis cws crsp caml

while read line
do
    wget -i $line 
done < urls.txt
