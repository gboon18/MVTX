#!/bin/sh

python3 mvtxPositionTest.py --input_model model/MITSEW_L2.txt --input_cmm cmm/L2_SEW_2.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 353.5 --fidList 0 1 2 3 4 5 6 7 8 9 10 11 12 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1
python3 mvtxPositionTest.py --input_model model/MITNEW_L2.txt --input_cmm cmm/L2_NEW_2.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 31.5  --fidList 0 1 2 3 4 5 6 7 8 9 10 11 12 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1

python3 mvtxPositionTest.py --input_model model/MITSEW_L2.txt --input_cmm cmm/L2_SEW_1.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 353.5 --fidList 0 1 2 3 4 5 6 7 8 9 10 11 12 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1
python3 mvtxPositionTest.py --input_model model/MITNEW_L2.txt --input_cmm cmm/L2_NEW_1.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 31.5  --fidList 0 1 2 3 4 5 6 7 8 9 10 11 12 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1

python3 mvtxPositionTest.py --input_model model/MITSEW_L1.txt --input_cmm cmm/L1_SEW_1.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 353.5 --fidList 0 1 2 3 4 5 6 7 8 9 10 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1
python3 mvtxPositionTest.py --input_model model/MITNEW_L1.txt --input_cmm cmm/L1_NEW_1.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 31.5  --fidList 0 1 2 3 4 5 6 7 8 9 10 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1

python3 mvtxPositionTest.py --input_model model/MITSEW_L1.txt --input_cmm cmm/L1_SEW_2.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 353.5 --fidList 0 1 2 3 4 5 6 7 8 9 10 --pointList 43 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 1000
python3 mvtxPositionTest.py --input_model model/MITNEW_L1.txt --input_cmm cmm/L1_NEW_2.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 31.5  --fidList 0 1 2 3 4 5 6 7 8 9 10 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1

python3 mvtxPositionTest.py --input_model model/MITSEW_L0.txt --input_cmm cmm/L0_SEW_2.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 353.5 --fidList 0 1 2 3 4 5 6 7 8 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1
python3 mvtxPositionTest.py --input_model model/MITNEW_L0.txt --input_cmm cmm/L0_NEW_2.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 31.5  --fidList 0 1 2 3 4 5 6 7 8 --pointList 27 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 1000

python3 mvtxPositionTest.py --input_model model/MITSEW_L0.txt --input_cmm cmm/L0_SEW_1.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 353.5 --fidList 0 1 2 3 4 5 6 7 8 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1
python3 mvtxPositionTest.py --input_model model/MITNEW_L0.txt --input_cmm cmm/L0_NEW_1.dat  --r 1.0 --a 0.1 --b 0.1 --g 0.1 --xt 0 --yt 0 --zt 0 --xt0 31.5  --fidList 0 1 2 3 4 5 6 7 8 --pointList 35 --sigmaList 0.04 0.04 0.04 0.1 0.1 0.1 0.1 0.1 0.1 1000 