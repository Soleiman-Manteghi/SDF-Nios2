clear
export PATH=$PATH:/home/soleimanmanteghi/intelFPGA/22.1std/modelsim_ase/bin
source /home/soleimanmanteghi/intelFPGA/22.1std/hls/init_hls.sh
rm sim
CPP="$@"
SIM="sim"
i++ -march=5CSEBA6U23I7  "$CPP"  -o "$SIM" -v --simulator none
./$SIM
