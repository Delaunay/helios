


export  PATH=$PATH:/opt/software/singularity-3.0/bin/

singularity build --sandbox ~/pytorch.simg /rap/jvb-000-aa/singularityimages/pytorch.simg


# Add Singularity 3 to the path
echo 'PATH=$PATH:/opt/software/singularity-3.0/bin/' >> ~/.bashrc

# Helper
alias sing_exec="singularity exec --nv --bind $RAP,$HOME,$SCRATCH /rap/jvb-000-aa/singularityimages/pytorch.simg"
