#!/bin/bash
counter=0

while [ $counter -le 9 ]
do
    echo Processing training data $counter ...
    python prepare-dataset.py --nq_jsonl=/root/data/v1.0/train/nq-train-0$counter.jsonl.gz --dataset=train --gzipped=true
    ((counter++))
done

while [ $counter -le 49 ]
do
    echo Processing training data $counter ...
    python prepare-dataset.py --nq_jsonl=/root/data/v1.0/train/nq-train-$counter.jsonl.gz --dataset=train --gzipped=true
    ((counter++))
done

echo All $counter training data sets processed!