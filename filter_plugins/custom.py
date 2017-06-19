#!/usr/bin/python

def count(word, char):
    ''' Count occurrences of character in string. '''
    return word.count(char)

class FilterModule(object):
    ''' Custom jinja2 filters. '''
    def filters(self):
        return {'count': count}
