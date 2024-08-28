#define BPM#150#
#define COUNTER#20#
#define MIN_VALUE_TIME#0.022#
#define COUNTER2#10#
#define ERROR(value'percent)#($value + ($value * ($percent / 100) ) * ((0 + ~ *(100))/100))#
#define PATH#"/Users/giuliodemattia/Documents/campana/catalogo/rec/dentroAlCentro.wav"#
//dentroAlCentro
t 0 $BPM
{ $COUNTER CNT
i1	[($MIN_VALUE_TIME * $COUNTER * $COUNTER) - $ERROR(($MIN_VALUE_TIME) * ($CNT. * $CNT.)'1)] .3 $PATH 5.55
}
{ $COUNTER2 CNT
i1  [($MIN_VALUE_TIME * $COUNTER * $COUNTER) + $ERROR([($MIN_VALUE_TIME*10) * $CNT. ]'3)] .3 $PATH 5.55
}
