module load python/3.7.0

python -m venv ~/base

source ~/base/bin/activate

pip install https://download.pytorch.org/whl/cu100/torch-1.0.0-cp37-cp37m-linux_x86_64.whl

pip install torchvision

# make a backup just in case
cp ~/.bashrc ~/.bashrc.bak

# update bashrc
echo 'module load python/3.7.0' >> ~/.bashrc

echo 'source ~/base/bin/activate' >> ~/.bashrc

echo 'alias show-logs="watch tail -n 20 $(ls -rt | grep .out | tail -n 1)"' >> ~/.bashrc

echo 'alias mdebug="msub -N skynet_1 -A jvb-000-ag -l nodes=1:gpus=1,walltime=01:00:00 -I -qtest"' >> ~/.bashrc
