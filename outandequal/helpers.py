"""Insta 485 helper functions."""

import os
import shutil
import uuid
import tempfile
import hashlib
from flask import session
import outandequal
from outandequal.model import get_db


def query_db(query, args=(), one=False):
    """Query the database."""
    cur = get_db().execute(query, args)
    row = cur.fetchall()
    cur.close()
    return (row[0] if row else None) if one else row

def make_password(password):
    """Make a password."""
    algorithm = 'sha512'
    salt = uuid.uuid4().hex
    hash_obj = hashlib.new(algorithm)
    password_salted = salt + password
    hash_obj.update(password_salted.encode('utf-8'))
    password_hash = hash_obj.hexdigest()
    password_db_string = "$".join([algorithm, salt, password_hash])
    return password_db_string