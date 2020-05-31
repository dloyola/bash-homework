#!/bin/bash

nproc=$(cat  /proc/cpuinfo | grep processor | wc -l);
procmodel=$(cat  /proc/cpuinfo | grep -i name | head -n1   | cut -d ':' -f2 | sed s'/ //');
memTotal=$(cat  /proc/meminfo | grep MemTotal | sed s'/kB//'g | sed s'/ //'g | cut -d ':' -f2);
memtotalGB=$(($memTotal/1024/1024));

echo "Numero de procesadores: $nproc";
echo "Modelo del procesador: $procmodel";
echo "Memoria Ram (GB): $memtotalGB";
