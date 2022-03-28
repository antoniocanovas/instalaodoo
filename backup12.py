import xmlrpc.client as xl
import sys

username = sys.argv[1] #the user
pwd = sys.argv[2]      #the password of the user
dbname = sys.argv[3]    #the database
urlport = sys.argv[4]  # to compoose the url for connect
theurl1 = "http://localhost:"+urlport+"/xmlrpc/common"
theurl2 = "http://localhost:"+urlport+"/xmlrpc/object"

#print(username,pwd,dbname,urlport,theurl1,theurl2)
# Get the uid
sock_common = xl.ServerProxy (theurl1)
uid = sock_common.login(dbname, username, pwd)

#replace localhost with the address of the server
sock = xl.ServerProxy(theurl2)

ids = sock.execute_kw(dbname, uid, pwd, 'db.backup', 'schedule_backup', [], {'context': {'run': True}})
