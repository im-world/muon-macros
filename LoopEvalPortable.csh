#!/usr/local/bin/tcsh
 setenv HOME /eic/u/$LOGNAME
 source /etc/csh.login
 foreach i (/etc/profile.d/*.csh)
   source $i
 end
 source $HOME/.login
 source /cvmfs/eic.opensciencegrid.org/default/opt/fun4all/core/bin/eic_setup.csh -n
  
 printenv
  # this is how you run your Fun4All_G4_sPHENIX.C macro in batch: 

 root.exe -q -b 'LoopEvalPortable.C("CEMC")' > CEMC_CircularCut.txt
 root.exe -q -b 'LoopEvalPortable.C("EEMC")' > EEMC_CircularCut.txt
 root.exe -q -b 'LoopEvalPortable.C("FEMC", 0.5)' > FEMC_CircularCut.txt
 root.exe -q -b 'LoopEvalPortable.C("FHCAL", 10)' > FHCAL_CircularCut.txt
 root.exe -q -b 'LoopEvalPortable.C("HCALIN")' > HCALIN_CircularCut.txt
 root.exe -q -b 'LoopEvalPortable.C("HCALOUT", 5)' > HCALOUT_CircularCut.txt
 
 echo Done





