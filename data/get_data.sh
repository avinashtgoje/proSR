#! /bin/bash

DATADIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p $DATADIR/datasets $DATADIR/checkpoints

##################################
# Pretrained Models
##################################

# ProSR
wget https://www.dropbox.com/s/hlgunvtmkvylc4h/proSR.pth?dl=0 -O $DATADIR/checkpoints/proSR.pth

###################################
## Datasets
###################################

## DIV2K
mkdir -p $DATADIR/datasets/DIV2K
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_HR.zip -P /tmp
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_HR.zip -P /tmp
unzip /tmp/DIV2K_train_HR.zip -d $DATADIR/datasets/DIV2K
unzip /tmp/DIV2K_valid_HR.zip -d $DATADIR/datasets/DIV2K
rm /tmp/DIV2K_train_HR.zip
rm /tmp/DIV2K_valid_HR.zip

wget https://www.dropbox.com/s/uvwtxy5hul90hyl/DIV2KX8.zip?dl=0 -O /tmp/DIV2KX8.zip
unzip /tmp/DIV2KX8.zip -d $DATADIR/datasets/DIV2K
rm /tmp/DIV2KX8.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X4.zip -P /tmp
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X4.zip -P /tmp
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X2.zip -P /tmp
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X2.zip -P /tmp

unzip /tmp/DIV2K_train_LR_bicubic_X2.zip -d $DATADIR/datasets/DIV2K
unzip /tmp/DIV2K_valid_LR_bicubic_X2.zip -d $DATADIR/datasets/DIV2K
unzip /tmp/DIV2K_train_LR_bicubic_X4.zip -d $DATADIR/datasets/DIV2K
unzip /tmp/DIV2K_valid_LR_bicubic_X4.zip -d $DATADIR/datasets/DIV2K

rm /tmp/DIV2K_train_LR_bicubic_X4.zip
rm /tmp/DIV2K_valid_LR_bicubic_X4.zip
rm /tmp/DIV2K_train_LR_bicubic_X2.zip
rm /tmp/DIV2K_valid_LR_bicubic_X2.zip


# Flickr2K
# wget http://cv.snu.ac.kr/research/EDSR/Flickr2K.tar -P /tmp
# tar -xvf /tmp/Flickr2K.tar -C $DATADIR/datasets/
# rm -rf /tmp/Flickr2K.tar
