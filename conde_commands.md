# topics for learning
1. Q: how do I know .condarc location
   A: ```conda config --show-sources```
   also: we can specify a custom location for the `.condarc` file in Conda by setting the `CONDARC` environment variable. 
   ```bash
   export CONDARC=/path/to/your/custom/location/.condarc
   ```
3. Q: is central .condarc possible
   A: see next Q
5. can I include| source condarc into my .condarc
   A: yes!
     Step 1: Create a Base Configuration File: `base_condarc.yml`:   
    ```yaml
    channels:
      - defaults
    ```
    Step 2: Create Environment-Specific Configuration Files: `development_condarc.yml` and `production_condarc.yaml`:
   ```yaml
   # development_condarc.yaml
   !include base_condarc.yaml
   channels:
      - conda-forge
   ```
   ```yaml
   # production_condarc.yaml
   !include base_condarc.yaml
   channels:
      - my-internal-channel
   ```
   Step 3: now we can choose:
   ```bash
   conda config --file development_condarc.yaml
   conda config --file production_condarc.yaml
   ```
The !include directive relies on the YAML processor being used by Conda. 
As of my last update, this method should work, but it's always a good idea to check the Conda documentation.




6. how to change prompt after source activate to show only the name of the environment and not the path
7. Installing conda packages 




## Initialize conda for shell interaction.
```bash
conda init <shell-name> # e.g., zsh or bash
conda init --dry-run    # Only display what would have been done.
conda init --all        # Initialize all currently available shells. 
conda init --reverse    # Undo effects of last conda init.
```

## get help
```bash
conda --help 
conda create --help
```



## Export your active environment to a new file:
```bash
conda env export > environment.yml
conda create --name <env-name>
conda create --name <env-name> --file enviroment.yaml
```

## cloning enviroment
```bash
conda create --name cloned_env --clone original_env
```

### export environment.yml  && update 
#### Export
```bash
conda activate original_env
conda env export > original_env.yml
conda deactivate
```

#### create env and update using the yaml file
```bash
conda create --name cloned_env
cp original_env.yml cloned_env.yml
vim cloned_env.yml # :%s/original_env/cloned_env/
conda activate cloned_env
conda env update --name cloned_env --file original_env.yml
```


### Copy Directory directly
It is not advised to copy the directory directly where the conda environment is stored. In some cases, it might be necessary so the steps are:
```bash
conda info --envs                          # Find the path of the conda environment using
cp -r path/of/orig/env location/of/new/env # Copy the directory directly:
```
```bash
conda activate /my/path/to/conda_venv
conda deactivate /my/path/to/conda_venv
```
## .condarc
```yaml
proxy_servers:
    http: http://proxy.cslab.openu.ac.il:80
    https: http://proxy.cslab.openu.ac.il:80

ssl_verify: False

pkgs_dirs:
 - ~/.conda/pkgs

envs_dirs:
 - /home/yaffash4/work/conda/envs
```
## adding to jupyter 
https://janakiev.com/blog/jupyter-virtual-envs/

## yaml tutorial:
https://www.cloudbees.com/blog/yaml-tutorial-everything-you-need-get-started

