#!/bin/bash
#SBATCH --account=PUOM0012
#SBATCH --job-name=multiqc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --time=01:00:00
#SBATCH --output=multiqc.out.%J
#SBATCH --error=multiqc.err.%J

DATA_FOLDER=/fs/ess/PUOM0012/linux

#Load Required Module
module load miniconda3

#Load Conda Environment
source activate multiqc

#Move into data folder
cd $DATA_FOLDER

#Run MultiQC
#The files may end in .fastq.zip or .fastq.qz.zip
multiqc *fastq.zip
