import pymongo
import sys

try:
    from pymongo import Collection
except ImportError:
    from pymongo import MongoClient as Collection

con=Collection('localhost',27017)
db=con.get_database('OrderExample')
coll=db.get_collection('customers')



        
