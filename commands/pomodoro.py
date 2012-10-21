#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import time
import sys

barlen = 20
def percf(inp):
    if inp != -1:
        perc = int(inp * 100)
        if perc < 20:
            return 'START! FIGHT!'
        elif perc > 80:
            return 'ALMOST!!!!'
        else:
            return ''.join([str(perc),'%'])
    else:
        return ''

def display(inp):
    if inp != -1:
        rtn = ''.join('[')
        barc = int(barlen * inp) 
        for i in range(barlen):
            if  i < barc:
                rtn = ''.join([rtn,'='])
            elif i == barc:
                rtn = ''.join([rtn,'>'])
            else:
                rtn = ''.join([rtn,' '])
        rtn = ''.join([rtn,']'])
    else:
        rtn = ''.join(' Take a Break! ')
    return rtn

def count25(min):
    if min > 30:
        min = min - 30
    if min > 24:
        return -1
    else:
        rtn = (float(min) / 25)
        return rtn 

def count50(min):
    if min > 49:
        return -1
    else:
        rtn = (float(min) / 50)
        return rtn 

def main():
    min = int(time.ctime().split()[3].split(':')[1])
    #unit = count50(min)   # [work,break] = [50,10]
    unit = count25(min)   # [work,break] = [25,5]
    if len(sys.argv) != 1:
        if sys.argv[1] == 'perc':
            print percf(unit)
        elif sys.argv[1] == 'pgr':
            print display(unit)
    else:
        print ''.join([percf(unit), display(unit)])

if __name__ == '__main__':
    main()
