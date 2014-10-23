#!/usr/bin/env python
# -*- coding: utf-8 -*-
__date__= 'Oct 23, 2014 '
__author__= 'samuel'


from lxml import etree
import urllib2
import os

def main():
    url = 'https://www.google.com/nexus/6/'
    response = urllib2.urlopen(url)
    html = response.read()

    try:
        tree = etree.HTML(html)
        r = tree.xpath('//*[@id="checkout"]/div/p')
        rtn = r[0].text.strip()
        if rtn != 'Available for pre-order starting in late October.':
            raise Exception('https://www.google.com/nexus/6/')
        print rtn
    except Exception, e:
        print str(e)
        for x in range(26):
            os.system('notify-send NEXUS 6')

if __name__ == '__main__':
    main()

