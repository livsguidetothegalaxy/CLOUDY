#!/bin/bash 


cat temps.txt | while read tcor
do

cat hyden.txt | while read hyden
do

cat bb.txt | while read bb
do

cat thickness.txt | while read thick
do
cat lumi.txt | while read lumi
do

header=$(echo "title reproduction of model")
tc=$(echo "coronal equilibrium, $tcor K")
hd=$(echo "hden $hyden")
black=$(echo "blackbody, $bb")
lum=$(echo "luminosity $lumi solar linear")
dist=$(echo "distance 250.0 linear parsecs")
rad=$(echo "radius 13 thickness = $thick")
sphere=$(echo "sphere")
fe=$(echo 'species "Fe+" levels=all')
res=$(echo "set continuum resolution 0.05")
itr=$(echo "iterate")
lit=$(echo "print last iteration")
lod=$(echo "print line optical depths")
lfe=$(echo "print line flux at Earth")
con=$(echo 'punch continuum ".con" last units angstroms')

filename=$(echo "gher_bb"$bb"K_"$lumi"_chrom"$tcor"K_h"$hyden"_r13_t"$thick".in")

echo $filename

echo $header >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $tc  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $black  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $lum  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $hd  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $dist  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $rad  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $sphere  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $fe  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $res  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $itr  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $lit  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $lod  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $lfe  >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename
echo $con   >> /home/oyoung/c17.01/run_cloudy_new/grid2/$filename

done
done
done 
done
done
