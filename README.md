# Functionomics
A tutorial for FAIR functionomics data. This tutorial belongs to the manuscript titled "**Operationalizing and digitalization of person centered daily functioning: a case for functionomics**"

## Prerequisites
Install Docker on your system. Please find the instructions [here](https://docs.docker.com/get-docker/); but do mind the requirements of docker itself.

## How to run?

### Step 1: start the infrastructure

[Download](./archive/master.zip) the contents of this Git repository. Unzip the file, and open the directory. Then start the infrastructure as following:
* On Windows: double-click the `start.bat` file
* On Linux/MacOS: open the folder in the terminal, and run the command `docker-compose up -d`

### Step 2: load the dataset

1. Open the url [http://localhost:8888](http://localhost:8888), and open the `import.ipynb` notebook.
2. Click the play/fast-forward button to execute the notebook. The data should now be loaded into the Postgres database
3. Open the `loadR2RML.ipynb` notebook, and click the play/fast-forward button. This wil load the [mapping.ttl](./mapping.ttl) (R2RML) file for execution.
4. Open the `termMapping.ipynb` notebook, and click the play/fast-forward button. This will load the terminology mapping rules (e.g. 0=male and 1=female for Gender).

### Step 3: Inspect the data

Open the url [http://localhost:7200](http://localhost:7200), select the database `data` in the upper-right menu, and afterwards select "SPARQL" in the left menubar.

Now, copy the SPARQL query from the folder [example_queries](./example_queries) and paste the query in the box. Hit the run button, and check the results.
