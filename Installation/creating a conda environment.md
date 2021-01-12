# Creating a conda environment
*([Brief guide on handling conda environments](https://medium.com/@balance1150/how-to-build-a-conda-environment-through-a-yaml-file-db185acf5d22))*
*([Detailed guide](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#))*

This makes sure that all the necessary packages are installed to run the initial mapping and counting pipelines of MAGeCK.

In Rosalind, use the following commands to:  
1. load the prerequisites,
2. make the mageck environment,
3. activate the conda environment.

~~~
$ module load anaconda
$ conda env create -f mageckenv.yml
$ conda activate mageckenv
~~~

If you want to run mageck at a later time, use the following:

~~~
$ module load anaconda && conda activate mageckenv
~~~

I have assigned the above line to an alias as shown below so I don't have to type the entire line each time that I want to run MAGeCK.

~~~
$ alias mageckenv = module load anaconda && conda activate mageckenv
~~~

When you want to activate the environment use the following line of code.

~~~
$ mageckenv
~~~
