#!/usr/bin/env python3
""" MongoDB with Python using pymongo """


def schools_by_topic(mongo_collection, topic):
    """ returns list of school with a specific topic """
    documents = mongo_collection.find({"topics": topic})
    return list(documents)
