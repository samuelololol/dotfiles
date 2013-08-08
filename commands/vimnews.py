#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import urllib2
import json
import random
import time
def cap(s,l):
    return s if len(s) <=l else s[0:l-3] + '...'

def main():
    try:
        #x = urllib2.urlopen('http://gits-sac.appspot.com/vimplugins')
        #y = json.loads(x.read())
        x = urllib2.urlopen('http://samuel.rareodds.com/api/v1/vimplugins')
        y = json.loads(x.read())['items']
        random.seed(time.time())
        z = y[random.randint(0,len(y))]
        print '%s %s' %(cap(z[1]+':'+z[2],50),z[0])
    except Exception as e:
        print 'vimplugin_page: 404 [now]'

if __name__ == '__main__':
    main()
