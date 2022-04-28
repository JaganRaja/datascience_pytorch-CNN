echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.7 -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
#echo [$(date)]: "install PyTorch"
# CUDA GPU setup
#conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch -y
# for CPU
# conda install pytorch torchvision torchaudio cpuonly -c pytorch
echo [$(date)]: "END"