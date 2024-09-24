#!/bin/bash

# 安装依赖
echo "Installing dependencies..."
pip install -r requirements.txt

# 构建和安装 PyTorch
echo "Building and installing PyTorch from source..."
python setup.py install
python setup.py develop
python setup.py install

# 或者构建 wheel 并安装
# echo "Building wheel..."
# python setup.py bdist_wheel
# echo "Installing wheel..."
# pip install dist/*.whl

# 验证安装
echo "Verifying PyTorch installation..."
python -c "import torch; print('PyTorch version:', torch.__version__)"

# 确定安装位置
echo "Checking installation location..."
python -c "import torch; print('PyTorch is installed at:', torch.__file__)"

echo "PyTorch installation complete."

