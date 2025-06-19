#!/bin/bash

#SBATCH --nodes=1

#SBATCH --ntasks-per-node=1

#SBATCH --cpus-per-task=1

#SBATCH --time=4:00:00
#SBATCH --partition=a100_dev
#SBATCH --mem=8GB

#SBATCH --job-name=KEN_HIVControl
#SBATCH --chdir=/gpfs/data/bershteynlab/EMOD/citrod01/KEN_202301_Nyanza_Baseline_MalariaOngoing

#SBATCH --mail-type=END

#SBATCH --mail-user=daniel.citron@nyulangone.org

#SBATCH --output=/gpfs/data/bershteynlab/EMOD/citrod01/KEN_202301_Nyanza_Baseline_MalariaOngoing/slurm_%j.out

# python optim_script.py

python run_scenarios.py -c optim_script.py --resample-method provided --samples resampled_parameter_sets.csv --output-dir hivcontrol_ken --suite-name hivcontrol_ken --table scenarios.csv