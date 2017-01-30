#
# Skeleton file for the Python "Hello World" exercise.
#


def hello(name='World'):
    name = 'World' if (name == '' or name == None) else name
    return 'Hello, ' + name + '!'
