a = get_ipython().getoutput(u"echo show table status | mysql -uroot drupal")
plot([int(y) for x in a.fields(4,5).l[1:] for y in x.split()])

