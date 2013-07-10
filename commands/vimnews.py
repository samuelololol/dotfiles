#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import urllib2
import json
import random
import time
def cap(s,l):
    return s if len(s) <=l else s[0:l-3] + '...'

def main():
    x = urllib2.urlopen('http://gits-sac.appspot.com/vimplugins')
    y = json.loads(x.read())
    random.seed(time.time())
    z = y[random.randint(0,len(y))]
    print '%s %s' %(cap(z[1]+':'+z[2],50),z[0])

if __name__ == '__main__':
    main()
