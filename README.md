# 快速部署Miniconda

本项目用于在Centos快速部署miniconda

# 上手指南

## clone

```
git clone https://github.com/uncleguanghui/centos-miniconda.git
cd centos-miniconda
```

进来后可以看到

```
.
├── README.md
└── deploy_centos.sh  # 部署脚本

0 directories, 2 files
```

其中，在部署脚本`deploy_centos.sh`的第五行可以看到

```
env_name=myenv
```

## 部署

```
sh deploy_centos.sh
```

# 其他命令

## 查看所有环境

```
conda info --envs
```

## 激活环境

```
source activate 环境名
```

## 退出环境

当你处于某个已经激活的虚拟环境中时，可以运行以下命令来退出
```
source deactivate
```

## 克隆环境

```
conda create -n 新环境名 --clone 旧环境名
```

## 克隆环境

```
conda create -n 新环境名 --clone 旧环境名
```

## 导出环境

```
conda env export -n 环境名 > yml文件的路径
```

## 删除环境

```
conda env remove -n 环境名
```