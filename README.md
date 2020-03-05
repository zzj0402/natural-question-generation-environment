# natural-questions-environment
Docker Environment for Natural Question Generation

## Prerequisite

- gsutil
- docker

## Dataset

In the host machine, download the dataset:
```bash
gsutil -m cp -R gs://natural_questions/v1.0 /root/Project/NaturalQuestionsData
```

## Run Container
In the host machine, mount dataset and run the image:  
```docker run -v ~/Project/NaturalQuestionsData:/root/data -it zzj0402/natural-question-generation-environment bash```

## Generate Data
With Python 2, run:

```python2
python prepare-dataset.py --nq_jsonl=data/v1.0/sample/nq-train-sample.jsonl.gz --dataset=train --gzipped=true
```