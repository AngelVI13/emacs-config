#!/bin/bash

echo "Installing Emacs config related dependencies"
echo "------------"
echo "Installing packages"
for package in global clang vlc pandoc texlive-latex-recommended texlive-xetex texlive-luatex pandoc-citeproc texlive-latex-extra context wkhtmltopdf groff silversearcher-ag
do
    sudo apt-get install $package -y
done
echo "------------"
echo "Installing python packages"
echo "-- Installing pip"

sudo apt-get install python-pip -y
sudo apt-get install python3-pip -y

echo "-- Installing modules"
for module in autopep8 jedi rope flake8 yapf numpy cython pyserial
do
    python -m pip install $module
    python3 -m pip install $module
done

