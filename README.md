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
`docker run -v ~/Project/NaturalQuestionsData:/root/data -it zzj0402/natural-question-generation-environment bash`

## Generate Data

Under root directory in the container:

```bash
bash prepare-data.sh
```
