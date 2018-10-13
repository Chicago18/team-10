"""Insta 485 helper functions."""

import os
import shutil
import uuid
import tempfile
import hashlib
from flask import session
import insta485
from insta485.model import get_db


def query_db(query, args=(), one=False):
    """Query the database."""
    cur = get_db().execute(query, args)
    row = cur.fetchall()
    cur.close()
    return (row[0] if row else None) if one else rowj
