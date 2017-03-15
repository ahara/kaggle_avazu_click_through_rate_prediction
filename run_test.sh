#!/bin/bash
vw ../Data/train.vw -f ../VW/ctr_model.vw --loss_function logistic -b 29 -c -k -q cc -q dc -q hc --l2 4e-8 --holdout_period 20 --passes 4 --early_terminate 4 -l 0.15 --power_t 0.38
vw -i ../VW/ctr_model.vw -t ../Data/test.vw -p ../VW/preds.vw; python vw_to_csv.py; zip -9 ../VW/preds2.zip ../VW/preds.csv

