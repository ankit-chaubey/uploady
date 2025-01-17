.. highlight:: console

============
Installation
============


Stable release
--------------

To install uploady, run these commands in your terminal:

.. code-block:: console

    $ sudo pip3 install -U uploady

This is the preferred method to install uploady, as it will always install the most recent stable release.

If you don't have `pip`_ installed, this `Python installation guide`_ can guide
you through the process.

.. _pip: https://pip.pypa.io
.. _Python installation guide: http://docs.python-guide.org/en/latest/starting/installation/


Other releases
--------------
You can install other versions from Pypi using::

    $ pip install uploady==<version>

For versions that are not in Pypi (it is a development version)::

    $ pip install git+https://github.com/Nekmo/uploady.git@<branch>#egg=uploady


If you do not have git installed::

    $ pip install https://github.com/Nekmo/uploady/archive/<branch>.zip

Docker
======
Run uploady without installing it on your system using Docker. Instead of ``uploady``
and ``telegram-download`` you should use ``upload`` and ``download``. Usage::


    docker run -v <files_dir>:/files/
               -v <config_dir>:/config/
               -it nekmo/uploady:master
               <command> <args>

* ``<files_dir>``: Upload or download directory.
* ``<config_dir>``: Directory that will be created to store the uploady configuration.
  It is created automatically.
* ``<command>``: ``upload`` and ``download``.
* ``<args>``: ``uploady`` and ``telegram-download`` arguments.

For example::

    docker run -v /media/data/:/files/
               -v $PWD/config:/config/
               -it nekmo/uploady:master
               upload file_to_upload.txt
