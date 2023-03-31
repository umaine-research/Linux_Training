#!/bin/bash
#SBATCH --account=PUOM0012
#SBATCH --job-name=fastqc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --time=01:00:00
#SBATCH --output=fastqc.out.%J
#SBATCH --error=fastqc.err.%J

DATA_FOLDER=/fs/ess/PUOM0012/linux

#Load Required Module and version
module load fastqc/0.11.7

#Move into data folder
cd $DATA_FOLDER

#Run FastQC
#The files may end in .fastq or .fastq.qz
fastqc ./*fastq
