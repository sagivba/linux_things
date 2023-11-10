## Initialize conda for shell interaction.
conda init <shell-name> # e.g., zsh or bash
conda init --dry-run    # Only display what would have been done.
conda init --all        # Initialize all currently available shells. 
conda init --reverse    # Undo effects of last conda init.


conda create --help



## Export your active environment to a new file:
conda env export > environment.yml


conda create --name <env-name>
conda create --name <env-name> --file enviroment.yaml

## cloning enviroment

conda create --name cloned_env --clone original_env

### export environment.yml  && update 
#### Export
conda activate original_env
conda env export > original_env.yml
conda deactivate

#### create env and update using the yaml file
conda create --name cloned_env
conda activate cloned_env
conda env update --name root --file original_env.yml



### Copy Directory directly
It is not advised to copy the directory directly where the conda environment is stored. In some cases, it might be necessary so the steps are:
conda info --envs                          # Find the path of the conda environment using
cp -r path/of/orig/env location/of/new/env # Copy the directory directly:


conda activate /my/path/to/conda_venv
conda deactivate /my/path/to/conda_venv

adding to jupyter 
https://janakiev.com/blog/jupyter-virtual-envs/
