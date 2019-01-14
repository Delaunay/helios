RAP=/rap/jvb-000-aa/COURS2019/etudiants/$USER
mkdir -p $RAP

module --force purge

# make singularity 3 available
PATH=$PATH:/opt/software/singularity-3.0/bin/

# make a shortcut to create an interactive session
alias mdebug="msub -N debug -A colosse-users -l advres=MILA2019,feature=k80,nodes=1:gpus=1,walltime=15:00 -I -qtest"

alias fast_msub="msub -A colosse-users -l advres=MILA2019,feature=k80,nodes=1:gpus=1"

export SINGULARITY_ARGS="--nv --bind $RAP,$HOME /rap/jvb-000-aa/COURS2019/etudiants/ift6759.simg"

alias s_shell="singularity shell $SINGULARITY_ARGS"
alias s_exec="singularity exec $SINGULARITY_ARGS" 

alias show_err="watch tail -n 20 $(ls -rt | grep .err | tail -n 1)"
alias show_out="watch tail -n 20 $(ls -rt | grep .out | tail -n 1)"
alias rm_logs="rm *.out *.err"
