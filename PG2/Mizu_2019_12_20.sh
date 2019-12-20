#!/bin/bash -vx 
PG_DIR="" 
REP_HOME="/home/densyx/Área de Trabalho/DensyxArquivos/AutomatFactoryTalk" 
export PGPASSWORD=servidor 
MYBD=factorytalk 
HOST=187.64.128.229 
DIA="'2019-12-20'"
#!/bin/bash -vx
export INTERVENTIONS=8
IDSEVERCEM=18 
#!/bin/bash -vx
export TIMEPROD=184
export TIMEMILLEX=2731
export IDPRODUCAO=715
export PRODUCTION=81.7698567923837
export KWH=2970.66042475284
"$PG_DIR"psql -h "$HOST" -p 5432 -U postgres -w -v id_sever_cem="$IDSEVERCEM" -v dia="$DIA" -v timeprod="$TIMEPROD" -v timemillex="$TIMEMILLEX" -v production="$PRODUCTION" -v kwh="$KWH" -v interventions="$INTERVENTIONS" -v avg_dia=0 "$MYBD" < "$REP_HOME"/UpdateFacTalk.sql 
IDSEVERCEM=19 
#!/bin/bash -vx
export TIMEPROD=5
export TIMEMILLEX=3740
export IDPRODUCAO=716
export PRODUCTION=66.7522396150764
export KWH=2894.95519914462
"$PG_DIR"psql -h "$HOST" -p 5432 -U postgres -w -v id_sever_cem="$IDSEVERCEM" -v dia="$DIA" -v timeprod="$TIMEPROD" -v timemillex="$TIMEMILLEX" -v production="$PRODUCTION" -v kwh="$KWH" -v interventions="$INTERVENTIONS" -v avg_dia=0 "$MYBD" < "$REP_HOME"/UpdateFacTalk.sql 
