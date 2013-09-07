#!/usr/bin/env python2.7
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
        url = 'http://samuel.rareodds.com/api/v1/vimplugins'
        x = urllib2.urlopen(url, timeout=5)
        y = json.loads(x.read())['items']
        random.seed(time.time())
        z = y[random.randint(0,len(y))]
        print '%s' %(cap(z[0]+' : '+z[1],50))
    except Exception as e:
        print 'vimplugin_page: 404 [now][tmux]'

if __name__ == '__main__':
    main()
