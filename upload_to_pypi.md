 # before you start
 1. create ```setup.py``` file
 2. open two terminals
 2. create python virtual env and activate it in teminal 2
 
 # Package Python Project - in teminal 1
 cd $your_project_directory
 ## run ```python setup.py sdist```
 ```powershell
 PS C:\Users\Sagivba\PycharmProjects\pdb_prep> python setup.py sdist
running sdist
running egg_info
writing pdb_prep.egg-info\PKG-INFO
writing dependency_links to pdb_prep.egg-info\dependency_links.txt
writing entry points to pdb_prep.egg-info\entry_points.txt
writing requirements to pdb_prep.egg-info\requires.txt
writing top-level names to pdb_prep.egg-info\top_level.txt
reading manifest file 'pdb_prep.egg-info\SOURCES.txt'
reading manifest template 'MANIFEST.in'
writing manifest file 'pdb_prep.egg-info\SOURCES.txt'
running check
creating pdb_prep-0.1.0.0
creating pdb_prep-0.1.0.0\Chemistry
creating pdb_prep-0.1.0.0\Chemistry\PDB
creating pdb_prep-0.1.0.0\Geometry
creating pdb_prep-0.1.0.0\PDB_Distance
creating pdb_prep-0.1.0.0\PDB_Prep
creating pdb_prep-0.1.0.0\Utils
creating pdb_prep-0.1.0.0\_Tests
creating pdb_prep-0.1.0.0\pdb_prep.egg-info
copying files to pdb_prep-0.1.0.0...
copying MANIFEST.in -> pdb_prep-0.1.0.0
copying README.md -> pdb_prep-0.1.0.0
copying pdb_distance.py -> pdb_prep-0.1.0.0
copying pdb_info.py -> pdb_prep-0.1.0.0
copying pdb_prep.py -> pdb_prep-0.1.0.0
copying pdb_prep_all.py -> pdb_prep-0.1.0.0
copying setup.py -> pdb_prep-0.1.0.0
copying version.py -> pdb_prep-0.1.0.0
copying Chemistry\__init__.py -> pdb_prep-0.1.0.0\Chemistry
copying Chemistry\PDB\Sievers.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\__init__.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_atom.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_chain.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_constants.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_model.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_obj.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_remark.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Chemistry\PDB\pdb_utils.py -> pdb_prep-0.1.0.0\Chemistry\PDB
copying Geometry\__init__.py -> pdb_prep-0.1.0.0\Geometry
copying Geometry\distance.py -> pdb_prep-0.1.0.0\Geometry
copying PDB_Distance\__init__.py -> pdb_prep-0.1.0.0\PDB_Distance
copying PDB_Distance\protein_dimer_distance.py -> pdb_prep-0.1.0.0\PDB_Distance
copying PDB_Distance\symetric_axis_distance.py -> pdb_prep-0.1.0.0\PDB_Distance
copying PDB_Prep\__init__.py -> pdb_prep-0.1.0.0\PDB_Prep
copying PDB_Prep\clean_stages.py -> pdb_prep-0.1.0.0\PDB_Prep
copying PDB_Prep\diff_uils.py -> pdb_prep-0.1.0.0\PDB_Prep
copying PDB_Prep\pdb_prep_functions.py -> pdb_prep-0.1.0.0\PDB_Prep
copying PDB_Prep\pdb_prep_inform.py -> pdb_prep-0.1.0.0\PDB_Prep
copying Utils\__init__.py -> pdb_prep-0.1.0.0\Utils
copying Utils\cli_utils.py -> pdb_prep-0.1.0.0\Utils
copying Utils\inform.py -> pdb_prep-0.1.0.0\Utils
copying _Tests\GEOMETRY_distance_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\PDB_pdb_atom_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\PDB_pdb_chain_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\PDB_pdb_model_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\PDB_pdb_obj_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\PDB_pdb_remark_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\PDB_pdb_utils_unit_test.py -> pdb_prep-0.1.0.0\_Tests
copying _Tests\__init__.py -> pdb_prep-0.1.0.0\_Tests
copying pdb_prep.egg-info\PKG-INFO -> pdb_prep-0.1.0.0\pdb_prep.egg-info
copying pdb_prep.egg-info\SOURCES.txt -> pdb_prep-0.1.0.0\pdb_prep.egg-info
copying pdb_prep.egg-info\dependency_links.txt -> pdb_prep-0.1.0.0\pdb_prep.egg-info
copying pdb_prep.egg-info\entry_points.txt -> pdb_prep-0.1.0.0\pdb_prep.egg-info
copying pdb_prep.egg-info\requires.txt -> pdb_prep-0.1.0.0\pdb_prep.egg-info
copying pdb_prep.egg-info\top_level.txt -> pdb_prep-0.1.0.0\pdb_prep.egg-info
Writing pdb_prep-0.1.0.0\setup.cfg
Creating tar archive
removing 'pdb_prep-0.1.0.0' (and everything under it)
PS C:\Users\Sagivba\PycharmProjects\pdb_prep>
```
### lets find the $gz_file_name : ```dir .\dist``
```powershell
PS C:\Users\Sagiv\PycharmProjects\pdb_prep> dir .\dist


    Directory: C:\Users\Sagiv\PycharmProjects\pdb_prep\dist


Mode                LastWriteTime     Length Name
----                -------------     ------ ----
-a---         2/19/2020  11:11 AM      45976 pdb_prep-0.0.9.8.tar.gz
-a---         2/25/2020   9:17 PM      46350 pdb_prep-0.1.0.0.tar.gz
```


## test the packege - in terminal 2
use ``pip install $package_path\dist\$gz_name```
```powershell
(env) PS C:\temp> pip install C:\Users\Sagivba\PycharmProjects\pdb_prep\dist\pdb_prep-0.1.0.0.tar.gz
Processing c:\users\sagivba\pycharmprojects\pdb_prep\dist\pdb_prep-0.1.0.0.tar.gz
Requirement already satisfied: click in c:\temp\env\lib\site-packages (from pdb-prep==0.1.0.0) (7.0)
Installing collected packages: pdb-prep
    Running setup.py install for pdb-prep ... done
Successfully installed pdb-prep-0.1.0.0
(env) PS C:\temp> pdb_prep_all --help
```

## test the program - in teminal 2

## install twine - in terminal 1
use ```pip install twine```
Twine is a utility for publishing Python packages on PyPI.
It provides build system independent uploads of source and binary distribution artifacts for both new and existing projects.


## publish your packages on PyPI - in terminal 1
use ```twine upload .\dist\$gz_name```
```powershell
 for details for url: https://upload.pypi.org/legacy/
PS C:\Users\Sagivba\PycharmProjects\pdb_prep>  twine upload .\dist\pdb_prep-0.1.0.0.tar.gz
Uploading distributions to https://upload.pypi.org/legacy/
Enter your username: sagivba
Enter your password:
Uploading pdb_prep-0.1.0.0.tar.gz
100%|█████████████████████████████████████████████████████████████████████████████| 48.9k/48.9k [00:02<00:00, 17.8kB/s]

View at:
https://pypi.org/project/pdb-prep/0.1.0.0/
```



