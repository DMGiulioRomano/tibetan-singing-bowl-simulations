import("stdfaust.lib");
import("libreriaCampana.lib");
import("mspan.lib");
import("schroederAllpass.lib");
import("variMondi.lib");



timeRMS = 0.1;
timePeak = .1;
pkTresh = -25 : ba.db2linear;
timeAvgPeakCounter=4;



//============================================================================================================
//                 TERZO MONDO
//
// process multiCanale per Export
/*
process = + <:  (si.bus(2):par(i,2,*(.3))),
                (chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev3,.8,0.01,0.5),270,makeMidSide4,1,.3),
                    chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev,.8,.01,0.5),-90,makeMidSide4,1,.3) : lrsomma),
                (chord2(mappingQfilter6(1.7),noiseFbkBank2(fDev3,1.4,0.1,0),90,makeMidSide4,4,.3),
                    chord2(mappingQfilter6(1.5),noiseFbkBank2(fDev,1.4,0.05,0),-269,makeMidSide4,4,.3) : lrsomma);
*/
// process multiCanale per ascolto sulla Ide
/*
process = + <:  (si.bus(2):par(i,2,*(.3))),
                (chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev3,.8,0.01,0.5),270,makeMidSide4,1,.3),
                    chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev,.8,.01,0.5),-90,makeMidSide4,1,.3) : lrsomma),
                (chord2(mappingQfilter6(1.7),noiseFbkBank2(fDev3,1.4,0.1,0),90,makeMidSide4,4,.3),
                    chord2(mappingQfilter6(1.5),noiseFbkBank2(fDev,1.4,0.05,0),-269,makeMidSide4,4,.3) : lrsomma)
                : par(i,2,*(checkbox("[0]input")):*(volumePlus)), par(i,2,*(checkbox("1")):*(volumePlus)), par(i,2,*(checkbox("2")):*(volumePlus)):>  si.bus(2) ;
volumePlus = nentry("vol",1,1,9,0.1):si.smoo;
*/

//============================================================================================================











//============================================================================================================
//                 TERZO MONDO 2
//
// process multiCanale per Export
/*
process = + <:  si.bus(2),
                (chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev3,.8,0.01,0.5),56,makeMidSide4,6,.3),
                    chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev2,.8,.01,0.5),-60,makeMidSide4,6,.3) : lrsomma : par(i,2,de.sdelay(ma.SR*3,ma.SR/20,ma.SR*2.63))),
                (chord2(mappingQfilter6(1.7),noiseFbkBank2(fDev3,1.4,0.1,0),-12,makeMidSide4,6,.4),
                    chord2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,1.4,0.05,0),14,makeMidSide4,6,.4) : lrsomma ),
                (chord2(mappingQfilter6(1.7),noiseFbkBank2(fDev3,2.97,0.003,0.2),1,makeMidSide4,6,.36),
                    chord2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,2.97,0.003,0.2),-2,makeMidSide4,6,.36) : lrsomma : par(i,2,de.sdelay(ma.SR*2,ma.SR/20,ma.SR*1.76))),
                (chord2(mappingQfilter5(1.7),noiseFbkBank3(320,fDev3,.1,0.003,0.2),137,makeMidSide4,6,.36),
                    chord2(mappingQfilter5(1.5),noiseFbkBank3(320,fDev2,.1,0.003,0.2),-150,makeMidSide4,6,.36) : lrsomma : par(i,2,de.sdelay(ma.SR*4,ma.SR/20,ma.SR*3.1)));
*/
// process multiCanale per ascolto sulla Ide
/*
process = + <:  (si.bus(2):par(i,2,*(.3))),
                (chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev3,.8,0.01,0.5),56,makeMidSide4,6,.3),
                    chord2(mappingQfilter5(1.5),noiseFbkBank2(fDev,.8,.01,0.5),-60,makeMidSide4,6,.3) : lrsomma : par(i,2,de.sdelay(ma.SR*3,ma.SR/20,ma.SR*2.63))),
                (chord2(mappingQfilter6(1.7),noiseFbkBank2(fDev3,1.4,0.1,0),-12,makeMidSide4,6,.4),
                    chord2(mappingQfilter6(1.5),noiseFbkBank2(fDev,1.4,0.05,0),14,makeMidSide4,6,.4) : lrsomma : par(i,2,de.sdelay(ma.SR*4,ma.SR/20,ma.SR*3.45))),
                (chord2(mappingQfilter6(1.7),noiseFbkBank2(fDev3,2.97,0.003,0.2),1,makeMidSide4,6,.36),
                    chord2(mappingQfilter6(1.5),noiseFbkBank2(fDev,2.97,0.003,0.2),-2,makeMidSide4,6,.36) : lrsomma : par(i,2,de.sdelay(ma.SR*2,ma.SR/20,ma.SR*1.76))),
                (chord2(mappingQfilter5(1.7),noiseFbkBank3(320,fDev3,.1,0.003,0.2),137,makeMidSide4,6,.36),
                    chord2(mappingQfilter5(1.5),noiseFbkBank3(320,fDev2,.1,0.003,0.2),-150,makeMidSide4,6,.36) : lrsomma : par(i,2,de.sdelay(ma.SR*4,ma.SR/20,ma.SR*3.1)))                    
                : par(i,2,*(checkbox("[0]input")):*(volumePlus)), par(i,2,*(checkbox("1")):*(volumePlus)), par(i,2,*(checkbox("2")):*(volumePlus)),
                par(i,2,*(checkbox("3")):*(volumePlus)),par(i,2,*(checkbox("4")):*(volumePlus)):>  si.bus(2) ;
volumePlus = nentry("vol",1,1,9,0.1):si.smoo;
*/

//============================================================================================================














//============================================================================================================
//                 TERZO MONDO 3
//
// process multiCanale per Export
//------------                          freqList = (713,1844,3284,4946,6788,7744);
/*
process = + <:  si.bus(2),
               ( (sequencer2(mappingQfilter6(1.5),impulseFbkBank2(fDev3,.8,0.01,0.5),chooser(732),56,makeMidSide5,6,.3),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,.8,.02,0.43),chooser(712),-60,makeMidSide5,6,.3) : lrsomma:  par(i,2,de.sdelay(ma.SR*3,ma.SR/20,ma.SR*2.63))),
               (sequencer2(mappingQfilter3(1.7),impulseFbkBank2(fDev3,1.4,0.001,0.53),chooseFilter2,-12,makeMidSide5,6,.4),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,1.4,0.005,0.5),chooseFilter2,14,makeMidSide5,6,.4) : lrsomma),
                (sequencer2(mappingQfilter3(1.7),impulseFbkBank2(fDev3,2.97,0.003,0.5),chooser(482),1,makeMidSide5,6,.36),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,2.97,0.003,0.5),chooser(472),-2,makeMidSide5,6,.36) : lrsomma:  par(i,2,de.sdelay(ma.SR*3,ma.SR/20,ma.SR*.3))),
                (sequencer2(mappingQfilter3(1.7),impulseFbkBank3(7000,fDev3,.3,0.003,0.4),chooser(432),137,makeMidSide5,6,.36),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank3(7000,fDev2,.3,1,0.4),chooser(412),-150,makeMidSide5,6,.36) : lrsomma:  par(i,2,de.sdelay(ma.SR*2,ma.SR/20,ma.SR*.7))) <: si.bus(8) , par(i,8,de.delay(ma.SR*12,ma.SR*12)) :> si.bus(8));

*/
// process multiCanale per ascolto sulla Ide
/*
process = + <:  _*.3,_*.3,
               ( (sequencer2(mappingQfilter6(1.5),impulseFbkBank2(fDev3,.8,0.01,0.5),chooser(732),56,makeMidSide5,12,.3),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,.8,.02,0.43),chooser(712),-60,makeMidSide5,12,.3) : lrsomma:  par(i,2,de.sdelay(ma.SR*3,ma.SR/20,ma.SR*(2)))),
               (sequencer2(mappingQfilter3(1.7),impulseFbkBank2(fDev3,1.4,0.001,0.53),chooseFilter2,-1,makeMidSide5,1.2,.4),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,1.4,0.005,0.5),chooseFilter2,1,makeMidSide5,1.2,.4) : lrsomma),
                (sequencer2(mappingQfilter3(1.7),impulseFbkBank2(fDev3,2.97,0.003,0.5),chooser(482),1,makeMidSide5,6,.4),
                    sequencer2(mappingQfilter6(1.5),noiseFbkBank2(fDev2,2.97,0.003,0.5),chooser(472),-2,makeMidSide5,6,.36) : lrsomma:  par(i,2,de.sdelay(ma.SR*3,ma.SR/20,ma.SR*.3))),
                (sequencer2(mappingQfilter3(1.7),impulseFbkBank3(7000,fDev3,.3,0.003,0.7),chooser(432),137,makeMidSide5,2,.36),
                    sequencer2(mappingQfilter6(1.5),impulseFbkBank3(7000,fDev2,.3,0.003,0.7),chooseFilter2,-150,makeMidSide5,2,.36) : lrsomma:  par(i,2,de.sdelay(ma.SR*2,ma.SR/20,ma.SR*1.4))) <: si.bus(8) , (par(i,8,(+ :de.delay(ma.SR*12,ma.SR*12)<:*(os.osc(2345)), *(os.osc(426)):> _) ~ _*.4)) :> si.bus(8) )
                : par(i,2,*(checkbox("[0]input")):*(volumePlus)), par(i,2,*(checkbox("1")):*(volumePlus)), par(i,2,*(checkbox("2")):*(volumePlus)), par(i,2,*(checkbox("3")):*(volumePlus)), par(i,2,*(checkbox("4")):*(volumePlus)):>  si.bus(2) ;
volumePlus = nentry("vol",1,1,9,0.1):si.smoo;
*/
//process = _ : sequencer2(mappingQfilter6(1.5),impulseFbkBank2(fDev3,.8,0.01,0.5),chooser(732),56,makeMidSide5,2,.3);
//============================================================================================================
















//============================================================================================================
//                 PRIMO MONDO
// process multiCanale per Export
/*
process = + <:  (si.bus(2)),
                ((chord1(mappingQfilter4(1.5),impulseFbkBank(.6,0.05,.0),1,makeMidSide2)),
                    (chord1(mappingQfilter4(1.5),impulseFbkBank(.8,0.05,0),3,makeMidSide2)):lrsomma),                
                ((chord1(mappingQfilter5(1.5),impulseFbkBank(1.4,0.1,.2),5,makeMidSide2)),
                    chord1(mappingQfilter5(1.5),impulseFbkBank(1.2,0.1,.2),-12,makeMidSide2):lrsomma);
*/
// process multiCanale per ascolto sulla Ide
/*
process = + <:  (si.bus(2):par(i,2,*(0.05))),
                ((chord1(mappingQfilter4(1.5),impulseFbkBank(.6,0.05,.0),ba.take(1,deg),makeMidSide2)),
                    (chord1(mappingQfilter4(1.5),impulseFbkBank(.8,0.05,0),ba.take(2,deg),makeMidSide2)):lrsomma),                
                ((chord1(mappingQfilter5(1.5),impulseFbkBank(1.4,0.1,.2),ba.take(3,deg),makeMidSide2)),
                    chord1(mappingQfilter5(1.5),impulseFbkBank(1.2,0.1,.2),ba.take(4,deg),makeMidSide2):lrsomma)
                : par(i,2,*(checkbox("[0]input")):*(volumePlus)), par(i,2,*(checkbox("1")):*(volumePlus)), par(i,2,*(checkbox("2")):*(volumePlus)):>  si.bus(2) ;
volumePlus = nentry("vol",1,1,9,0.1):si.smoo;
deg = (par(i,4,0-hslider("deg %i",0,-180,180,1))); 
*/
//============================================================================================================



















//============================================================================================================
//                 SECONDO MONDO
// process multiCanale per Export
/*
process = + <:  (si.bus(2):par(i,2,*(0.2))),
                (chord2(mappingQfilter5(1.5),impulseFbkBank2(fDev2,.6,0.1,0.1),2,makeMidSide4,6,.5),
                    chord2(mappingQfilter5(1.5),impulseFbkBank2(fDev2,.8,.06,.2),-1,makeMidSide4,6,.5):lrsomma ),
                ((chord2(mappingQfilter5(1.5),impulseFbkBank2(fDev,1.4,0.06,.1),1,makeMidSide4,3,.4)),
                    chord2(mappingQfilter5(1.5),impulseFbkBank2(fDev,1.2,0.1,.1),-1,makeMidSide4,3,.4):lrsomma);
*/
// process multiCanale per ascolto sulla Ide


main(peakenv, rms,freqPicchi) = _ <: (si.bus(2):par(i,2,*(0.2))),
                ((chord2(mappingQfilter5(1.5),impulseFbkBank2(fDev2,.1,0.01,0.1),2,makeMidSide2,1,.4): par(i,2,_<: _*((freqPicchi/3))+_*(rms*15))),
                    (chord2(mappingQfilter5(1.5),impulseFbkBank2(fDev2,.8+.2*(1-peakenv),.09,.26),-1,makeMidSide4,4,.4):par(i,2,*(1-rms*2.5))):lrsomma /*:par(i,2,de.delay(ma.SR*2,ma.SR*1.2))*/),
                ((sequencer2(mappingQfilter5(1.5),impulseFbkBank2(fDev,.6+.2*(peakenv),0.012,.15),chooser(4728),1,makeMidSide4,4,.4):par(i,2,*(1-rms*2.5))),
                    (chord2(mappingQfilter3(1.5),impulseFbkBank2(fDev,.129,0.1,.1),-1,makeMidSide2,.2,.6): par(i,2,_<: _*((freqPicchi/3))+_*(rms*15))) :lrsomma):
                     par(i,2,*(checkbox("[0]input")):*(volumePlus)), par(i,2,*(checkbox("1")):*(volumePlus)),par(i,2,*(checkbox("2")):*(volumePlus)):>  si.bus(2);


process = + <: peakenvelope(0.2), rmsInputVis(0.01), frequenzaPicchi(timePeak,pkTresh,3,2), _ : main;
volumePlus = nentry("vol",1,1,9,0.1):si.smoo;

//bal = hslider("m-s", 0.5, 0, 1, 0.01):*(90):si.smoo;
//balance(m,s) = m * cos(bal), s * sin(bal);
// : sdmx : balance : par(i,2,*(2)) : sdmx

//============================================================================================================

