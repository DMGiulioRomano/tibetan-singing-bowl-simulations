<CsoundSynthesizer>
<CsOptions>

//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dentroAlCentro.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dallAlto.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dallAltoLegno.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dallAltoBloccato.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dalBasso.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dalBassoBloccato.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/dalBassoLegno.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/daDentro.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/sullaPancia.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/sullaPanciaBloccato.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/sullaPanciaLegno.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/bloccatoApugnoCapovolto.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/bloccatoApugnoCapovoltoAlCentro.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/bloccatoApugnoCapovoltoEsterno.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/bloccatoApugnoDallAlto.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/bloccatoApugnoDalBasso.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/bloccatoApugnoSullaPancia.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/capovoltoAlCentro.wav" -W
//-o "/Users/giuliodemattia/Documents/campana/catalogo/simulazioniCsound/accelerando/capovoltoAlCentro_ditaAperte.wav" -W
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
y
#define BPM#100#
#define COUNTER#20#
#define MIN_VALUE_TIME#0.022#
#define COUNTER2#10#
#define ERROR(value'percent)#($value + ($value * ($percent / 100) ) * ((0 + ~ *(100))/100))#
///-------- ordinario ------------------------------------------------------------------------

/*
//dentroAlCentro
t 0 $BPM
{ $COUNTER CNT
i1	[($MIN_VALUE_TIME * $COUNTER * $COUNTER) - $ERROR(($MIN_VALUE_TIME) * ($CNT. * $CNT.)'1)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/rec/dentroAlCentro.wav" 5.55
}
{ $COUNTER2 CNT
i1  [($MIN_VALUE_TIME * $COUNTER * $COUNTER) + $ERROR([($MIN_VALUE_TIME*10) * $CNT. ]'3)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/rec/dentroAlCentro.wav" 5.55
}
*/

#define PATH#"/Users/giuliodemattia/Documents/campana/catalogo/rec/dallAlto.wav"#
//dallAlto
t 0 $BPM
{ $COUNTER CNT
i1	[($MIN_VALUE_TIME * $COUNTER * $COUNTER) - ($MIN_VALUE_TIME) * ($CNT. * $CNT.)] [($MIN_VALUE_TIME) * (($CNT. +1)* ($CNT. +1))-($MIN_VALUE_TIME) * ($CNT. * $CNT.)] $PATH 4.84
}


 /*
//dallAltoLegno
t 0 120 
{ 15 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] 3 "/Users/giuliodemattia/Documents/campana/catalogo/dallAltoLegno.wav" 4.1
}
 */

/*
//dallAltoBloccato
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/dallAltoBloccato.wav" 3.83
}
*/

/*
//dalBasso
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/dalBasso.wav" 5.465
}
*/

/*
//dalBassoBloccato
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/dalBassoBloccato.wav" 9.465
}
*/


/*
//dalBassoLegno
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/dalBassoLegno.wav" 4.893
}
*/


 /*
//daDentro
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/daDentro.wav" 3.45
}
 */


 /*
//sullaPancia
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/sullaPancia.wav" 12.99
}
 */


/*
//sullaPanciaBloccato
t 0 120 
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/sullaPanciaBloccato.wav" 6.2
}
*/


 /*
//sullaPanciaLegno
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/sullaPanciaLegno.wav" 4.595
}
 */
















///-------- bloccatoApugno ------------------------------------------------------------------------



/*
//bloccatoApugnoCapovolto
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] [00.50 + 0.05 * (2 * $CNT. + 1)] "/Users/giuliodemattia/Documents/campana/catalogo/bloccatoApugnoCapovolto.wav" 6.4
}
*/


/*
//bloccatoApugnoCapovoltoAlCentro
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/bloccatoApugnoCapovoltoAlCentro.wav" 7.705
}
*/



/*
//bloccatoApugnoCapovoltoEsterno
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/bloccatoApugnoCapovoltodalcentroAllesterno.wav" 11.74
}
*/


/*
//bloccatoApugnoDallAlto
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/bloccatoApugnoDallAlto.wav" 3.6
}
*/

/*
//bloccatoApugnoDalBasso
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/bloccatoApugnoDalBasso.wav" 7.62
}
*/

/*
//bloccatoApugnoSullaPancia
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/bloccatoApugnoSullaPancia.wav" 5.45
}
*/














///-------- Capovolto ------------------------------------------------------------------------

/*
//CapovoltoAlCentro
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/CapovoltoAlCentro.wav" 15
}
*/


/*
//CapovoltoAlCentro_ditaAperte
t 0 120
{ 20 CNT
i1	[0 + .5 * ($CNT.)+ (0.05 * $CNT. * $CNT.)] .3 "/Users/giuliodemattia/Documents/campana/catalogo/CapovoltoAlCentro_ditaAperte.wav" 8.83
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
