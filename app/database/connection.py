from pymongo import MongoClient

uri = 'mongodb://root:root@mongo'
client = MongoClient(uri)
database = client.skeletor
