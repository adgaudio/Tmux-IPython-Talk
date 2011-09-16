c = get_ipython()

def do_something_magical(self, arg):
    print "This is %s" % arg
c.define_magic('something_magical', do_something_magical)
