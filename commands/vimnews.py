#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import urllib2
import json
import random
import time
def cap(s,l):
    return s if len(s) <=l else s[0:l-4] + ' ...'

def main():
    try:
        #x = urllib2.urlopen('http://gits-sac.appspot.com/vimplugins')
        #y = json.loads(x.read())
        x = urllib2.urlopen('http://dev.samuelololol.org/api/v1/vimplugins')
        y = json.loads(x.read())['items']
        random.seed(time.time())
        z = y[random.randint(0,len(y))]
        print '%s' %(cap(z[0]+' : '+z[1],50))
    except Exception as e:
        print 'vimplugin_page: 404 [now]'

if __name__ == '__main__':
    main()
