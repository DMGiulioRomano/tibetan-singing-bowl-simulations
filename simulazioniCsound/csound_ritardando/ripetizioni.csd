<CsoundSynthesizer>
<CsOptions>

//-o "../../simulazioniCsound/accelerando/dentroAlCentro.wav" -W
//-o "../../simulazioniCsound/accelerando/dallAlto.wav" -W
//-o "../../simulazioniCsound/accelerando/dallAltoLegno.wav" -W
//-o "../../simulazioniCsound/accelerando/dallAltoBloccato.wav" -W
//-o "../../simulazioniCsound/accelerando/dalBasso.wav" -W
//-o "../../simulazioniCsound/accelerando/dalBassoBloccato.wav" -W
//-o "../../simulazioniCsound/accelerando/dalBassoLegno.wav" -W
//-o "../../simulazioniCsound/accelerando/daDentro.wav" -W
//-o "../../simulazioniCsound/accelerando/sullaPancia.wav" -W
//-o "../../simulazioniCsound/accelerando/sullaPanciaBloccato.wav" -W
//-o "../../simulazioniCsound/accelerando/sullaPanciaLegno.wav" -W
//-o "../../simulazioniCsound/accelerando/bloccatoApugnoCapovolto.wav" -W
//-o "../../simulazioniCsound/accelerando/bloccatoApugnoCapovoltoAlCentro.wav" -W
//-o "../../simulazioniCsound/accelerando/bloccatoApugnoCapovoltoEsterno.wav" -W
//-o "../../simulazioniCsound/accelerando/bloccatoApugnoDallAlto.wav" -W
//-o "../../simulazioniCsound/accelerando/bloccatoApugnoDalBasso.wav" -W
//-o "../../simulazioniCsound/accelerando/bloccatoApugnoSullaPancia.wav" -W
//-o "../../simulazioniCsound/accelerando/capovoltoAlCentro.wav" -W
//-o "../../simulazioniCsound/accelerando/capovoltoAlCentro_ditaAperte.wav" -W
-o "/Users/giuliodemattia/Desktop/prova.wav" -W


</CsOptions>
<CsInstruments>

sr = 96000
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
as diskin2 p4,1,p5
out as
endin 
</CsInstruments>
<CsScore>
///-------- ordinario ------------------------------------------------------------------------


//dentroAlCentro
t 0 100
{ 30 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../rec/dentroAlCentro.wav" 5.55
}

/*
//dallAlto
t 0 210
{ 30 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../dallAlto.wav" 4.84
}
*/

 /*
//dallAltoLegno
t 0 120 
{ 15 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] 3 "../../dallAltoLegno.wav" 4.1
}
 */

/*
//dallAltoBloccato
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../dallAltoBloccato.wav" 3.83
}
*/

/*
//dalBasso
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../dalBasso.wav" 5.465
}
*/

/*
//dalBassoBloccato
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../dalBassoBloccato.wav" 9.465
}
*/


/*
//dalBassoLegno
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../dalBassoLegno.wav" 4.893
}
*/


 /*
//daDentro
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../daDentro.wav" 3.45
}
 */


 /*
//sullaPancia
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../sullaPancia.wav" 12.99
}
 */


/*
//sullaPanciaBloccato
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../sullaPanciaBloccato.wav" 6.2
}
*/


 /*
//sullaPanciaLegno
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../sullaPanciaLegno.wav" 4.595
}
 */
















///-------- bloccatoApugno ------------------------------------------------------------------------



/*
//bloccatoApugnoCapovolto
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "../../bloccatoApugnoCapovolto.wav" 6.4
}
*/


/*
//bloccatoApugnoCapovoltoAlCentro
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../bloccatoApugnoCapovoltoAlCentro.wav" 7.705
}
*/



/*
//bloccatoApugnoCapovoltoEsterno
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../bloccatoApugnoCapovoltodalcentroAllesterno.wav" 11.74
}
*/


/*
//bloccatoApugnoDallAlto
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../bloccatoApugnoDallAlto.wav" 3.6
}
*/

/*
//bloccatoApugnoDalBasso
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../bloccatoApugnoDalBasso.wav" 7.62
}
*/

/*
//bloccatoApugnoSullaPancia
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../bloccatoApugnoSullaPancia.wav" 5.45
}
*/














///-------- Capovolto ------------------------------------------------------------------------

/*
//CapovoltoAlCentro
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../CapovoltoAlCentro.wav" 15
}
*/


/*
//CapovoltoAlCentro_ditaAperte
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "../../CapovoltoAlCentro_ditaAperte.wav" 8.83
}
*/




</CsScore>

</CsoundSynthesizer>


<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>240</r>
  <g>240</g>
  <b>240</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
