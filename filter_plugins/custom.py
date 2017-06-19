#!/usr/bin/python

def count(word, char):
    '''
    Count occurences of character in string.
    '''
    return word.count(char)

class FilterModule(object):
    '''
    Custom jinja2 filter for working with collections.
    '''
    def filters(self):
        return {'count': count}
