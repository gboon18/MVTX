# MVTX assembly
An archive of the MVTX alignment and assembly procedure
## Check the [slides](https://docs.google.com/presentation/d/1Mw-gxMG6_pSEkKxFjsVr7o5ma_s3q36b/edit?usp=sharing&ouid=115313506692148889725&rtpof=true&sd=true) or the [PIXEL2022 proceedings](https://pos.sissa.it/420/073/pdf)

We assembled a MAPS (Monolithic Active Pixel Sensor) vertex tracker, MVTX, with 0.19 m2 total silicon coverage and a pixel pitch of 27 $\mu \text{m}$. 
48 staves, each comprised of 9 sensors thinned down to 50 $\mu \text{m}$ thickness, are supported by carbon composite structures and organized into three concentric layers immediately surrounding the beampipe inside of the sPHENIX at RHIC of BNL. 
Reaching the designed resolution of MVTX is critical to the delivery of sPHENIX physics including heavy flavor studies. 
We present the construction and $\sim$ 20 $\mu \text{m}$-level mechanical alignment in the carbon composite support structure.

## Quick start
- Warning: You can modify this code to use but right now, this is very much MVTX alignment/assembly oriented. i.e. It works very quickly on the fly where you CMM-measure and use the data with its specific print format.

It requires c++11.
Please modify the Makefile accordingly to your system.
Will include docker image in the future.

Here are some of the modules you may need to install
```
pip install seaborn 
pip install plotly
```
Then run
```
./summary.sh
```

This will read the CMM probe x,y,z data and fit the measurements to the multiple faces of the part in CAD model.
There are 12 parts: 3 layers (L0, L1, L2) X North and South End Wheel (NEW, SEW) X 2 parts each (_1, _2).
The output will give rotational values ($\alpha$, $\beta$, and $\gamma$: "a", "b", and "g") and translational values ($xt$, $yt$, and $zt$).
[See the figure below](#detector-alignment-challenge).

## TLDC (Too Long Don't Care) of the MVTX alignment
- Align and assemble parts: 6 degrees of freedom that is $\sim$ 50 cm apart in $\sim$ 20 $\mu m$ accuracy.
<div id="mvtx-assembly">
<img src="https://github.com/gboon18/MVTX/blob/main/images/MVTX_assembly.png?raw=true" alt="MVTX assembly"> 
</div>

The staves sit on the endwheels (NEW and SEW for the north and south respectively).
The entire structure is supported at the SEW side epoxy bonded with a carbon composite structure.
$\rightarrow$
Need to align the NEW and the SEW with $\sim$ 20 $\mu m$ accuracy.

<div id="detector-alignment-challenge">
<img src="https://github.com/gboon18/MVTX/blob/main/images/Alignment_challenge.png?raw=true" alt="Detector Alignment Challenge"> 
</div>
How will you achieve a 20 $\mu m$ accuracy over 50 cm? There is no flat face perpendicular or parallel to the earth or fiducial markers measureable during the assembly process.

$\Rightarrow$ How do we determine the complete pose (position and orientation) of the detector parts? All you have is a Coordinate Measuring Machine with $\sim$ 2 micron precision.

<img src="https://github.com/gboon18/MVTX/blob/main/images/CMM.png" alt="CMM"> 
The answer is multiple CMM probing of many faces the parts.
Then we perform a conjugate gradient minimization (see the [reference](https://scripts.iucr.org/cgi-bin/paper?S0567739482001806))
on the CMM points to the CAD model to find the translation and rotation value from the part position to the model "ideal" position.

## Accompanying advantage of the global alignment using a CMM
By measuring multiple faces of the part, the fitting of the CMM points to the model part gives us the fit residual.
<div id="fit-residual">
<img src="https://github.com/gboon18/MVTX/blob/main/images/Fit_residuals.png?raw=true" alt="Fit residual"> 
</div>
As an example, one of the endwheels (SEW of L2) residuals are plotted.
The inverted "U" shape indicates that the measurement of the endwheel is sprining outward with respect to the model value.
This was the most prominent for the L2 which is the largest endwheel.
In our case, by epoxy bonding the endwheel to the carbon composite reduced this effect and we kept the hermiticity of the detector.

## Assembly using kinematic mounts and CMM
The kinematic mounts allow us to precisely control each of the six degrees of freedom within a few microns.
<div id="kinematic-mounts">
<img src="https://github.com/gboon18/MVTX/blob/main/images/kinematic_mounts.png?raw=true" alt="Kinematic mounts">
</div>
We fix the SEW and determine it's pose with the CMM.
Then we align the NEW pose to the SEW using the kinematic mounts.
During this procedure, we use CMM but not the global alignment fitting procedure.
This is possible since we are contolling only one degree of freedom at a time.
Measureing two points and one point can determine the change of the rotation and the translation, respectively.

By using the CMM measurements combined with the model fitting and the kinematic mounts, we can efficiently assemble a single half-layer within a few hours and a full three-layer half-MVTX detector within a week.
