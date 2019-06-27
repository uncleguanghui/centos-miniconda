# ########################## 配置项 ##########################

if [ $USER == 'root' ];then
    conda=/root/miniconda3/bin/conda
else
    conda=/home/$USER/miniconda3/bin/conda
fi
miniconda=Miniconda3-latest-Linux-x86_64.sh
env_name=myenv

# ########################## 安装并配置 ##########################

# 安装
if [ ! -f "$conda" ]; then
    # 下载
    if [ ! -f "$miniconda" ]; then
        wget https://repo.continuum.io/miniconda/$miniconda
    fi

    # 安装
    sudo yum install -y bzip2
    bash $miniconda -b -q

    # 初始化
    $conda init
    source ~/.bashrc
fi

# ########################## 创建虚拟环境 ##########################

$conda create -n $env_name python=3.6.6 -y

echo "# To activate this environment, use"
echo "# "
echo "#    $ conda activate $env_name"
echo "# "
echo "# To deactivate an active environment, use"
echo "# "
echo "#    $ conda deactivate"
