SEARCH_FOLDER="/home/jovyan/finetuna_2_data_private/data/oxides/OC22/*/"
newfolder="finetuna_gnoc_oc20+22"
oldfolder="finetuna_gnoc_oc20_oc22"
for entry in $SEARCH_FOLDER
do
  id=$(echo "$entry" | awk -F '/' '{print $8}')
  
  mkdir -p ${id}/${newfolder}
  cp -r /home/jovyan/finetuna_2_data_private/data/oxides/OC22/${id}/${oldfolder}/INCAR ${id}/${newfolder}
  cp -r /home/jovyan/finetuna_2_data_private/data/oxides/OC22/${id}/${oldfolder}/POSCAR ${id}/${newfolder}
  cp -r /home/jovyan/finetuna_2_data_private/data/oxides/OC22/${id}/${oldfolder}/KPOINTS ${id}/${newfolder}
  cp -r /home/jovyan/finetuna_2_data_private/data/oxides/OC22/${id}/${oldfolder}/*.db ${id}/${newfolder}

  # cp -r /home/jovyan/exp_finetuna/oc22_oxides/abinitio/${id,,}/INCAR ${id}/vasp_bfgs
  # cp -r /home/jovyan/exp_finetuna/oc22_oxides/abinitio/${id,,}/POSCAR ${id}/vasp_bfgs
  # cp -r /home/jovyan/exp_finetuna/oc22_oxides/abinitio/${id,,}/KPOINTS ${id}/vasp_bfgs
  # # cp -r /home/jovyan/exp_finetuna/oc22_oxides/gpmin/${id,,}/*.db ${id}/finetuna_gndt_oc22
  # cp -r /home/jovyan/exp_finetuna/oc22_oxides/abinitio/${id,,}/*.traj ${id}/vasp_bfgs

done