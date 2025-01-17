.. image:: https://raw.githubusercontent.com/ankit-chaubey/uploady/main/logo.png
    :width: 100%

|

.. image:: https://raw.githubusercontent.com/ankit-chaubey/uploady/pip-rating-badge/pip-rating-badge.svg
  :target: https://github.com/ankit-chaubey/uploady/actions/workflows/pip-rating.yml
  :alt: pip-rating badge

.. image:: https://img.shields.io/github/actions/workflow/status/ankit-chaubey/uploady/test.yml?style=flat-square&maxAge=2592000&branch=main
  :target: https://github.com/ankit-chaubey/uploady/actions?query=workflow%3ATests
  :alt: Latest Tests CI build status

.. image:: https://img.shields.io/pypi/v/uploady.svg?style=flat-square
  :target: https://pypi.org/project/uploady/
  :alt: Latest PyPI version

.. image:: https://img.shields.io/pypi/pyversions/uploady.svg?style=flat-square
  :target: https://pypi.org/project/uploady/
  :alt: Python versions

.. image:: https://img.shields.io/codeclimate/maintainability/ankit-chaubey/uploady.svg?style=flat-square
  :target: https://codeclimate.com/github/ankit-chaubey/uploady
  :alt: Code Climate

.. image:: https://img.shields.io/codecov/c/github/ankit-chaubey/uploady/main.svg?style=flat-square
  :target: https://codecov.io/github/ankit-chaubey/uploady
  :alt: Test coverage

.. image:: https://img.shields.io/github/stars/ankit-chaubey/uploady?style=flat-square
     :target: https://github.com/ankit-chaubey/uploady
     :alt: Github stars


###############
Uploady
###############
Why uploady?
While telegram-upload is great, Uploady offers additional features (currently in development):

- Support for multiple bots/accounts with floodwait handling

- Scheduled uploads for hands-off management

- Gallery synchronization for up-to-date media

- Posting with inline button and much more

- Something even more unexpected 😄 is coming soon!

Uploady enhances flexibility, automation, and control, making it the ultimate solution for Telegram file management.

----------------

Telegram-upload uses your **personal Telegram account** to **upload** and **download** files up to **4 GiB** (2 GiB for
free users). Turn Telegram into your personal ☁ cloud!

To **install 🔧 uploady**, run this command in your terminal:

.. code-block:: console

    $ sudo pip3 install -U uploady

This is the preferred method to install uploady, as it will always install the most recent stable release.
🐍 **Python 3.7-3.12** are tested and supported. There are other installation ways available like `Docker <#-docker>`_.
More info in the `📕 documentation <https://docs.ankit-chaubey.org/uploady/installation.html>`_ but make sure to use ``uploady`` instead of ``telegram-upload`` in all respective methods.

.. image:: https://raw.githubusercontent.com/ankit-chaubey/uploady/main/uploady-demo.gif
  :target: https://asciinema.org/a/592098
  :width: 100%

❓ Usage
========
To use this program you need a Telegram account and your **App api_id & api_hash** (get it in
`my.telegram.org <https://my.telegram.org/>`_). The first time you use uploady it requests your
📱 **telephone**, **api_id** and **api_hash**. Bot tokens can not be used with this program (bot uploads are limited to
50MB).

To **send ⬆️ files** (by default it is uploaded to saved messages):

.. code-block:: console

    $ uploady file1.mp4 file2.mkv

You can **download ⤵️ the files** again from your saved messages (by default) or from a channel. All files will be
downloaded until the last text message.

.. code-block:: console

    $ telegram-download

`Read the documentation <https://docs.ankit-chaubey.org/uploady/usage.html#telegram-download>`_ for more info about the
options availables.

Interactive mode
----------------
The **interactive option** (``--interactive``) allows you to choose the dialog and the files to download or upload with
a **terminal 🪄 wizard**. It even **supports mouse**!

.. code-block:: console

    $ uploady --interactive    # Interactive upload
    $ telegram-download --interactive  # Interactive download

`More info in the documentation <https://docs.ankit-chaubey.org/uploady/usage.html#interactive-mode>`_

Set group or chat
-----------------
By default when using uploady without specifying the recipient or sender, uploady will use your personal
chat. However you can define the 👨 destination. For file upload the argument is ``--to <entity>``. For example:

.. code-block::

    $ uploady --to telegram.me/joinchat/AAAAAEkk2WdoDrB4-Q8-gg video.mkv

You can download files from a specific chat using the --from <entity> parameter. For example:

.. code-block::

    $ telegram-download --from username

You can see all `the possible values for the entity in the documentation <https://docs.ankit-chaubey.org/uploady/usage.html#set-recipient-or-sender>`_.

Split & join files
------------------
If you try to upload a file that **exceeds the maximum supported** by Telegram by default, an error will occur. But you
can enable ✂ **split mode** to upload multiple files:

.. code-block:: console

    $ uploady --large-files split large-video.mkv

Files split using split can be rejoined on download using:

.. code-block:: console

    $ telegram-download --split-files join

Find more help in `the uploady documentation <https://docs.ankit-chaubey.org/uploady/usage.html#split-files>`_.

Delete on success
-----------------
The ``--delete-on-success`` option allows you to ❌ **delete the Telegram message** after downloading the file. This is
useful to send files to download to your saved messages and avoid downloading them again. You can use this option to
download files on your computer away from home.

Configuration
-------------
Credentials are saved in ``~/.config/uploady.json`` and ``~/.config/uploady.session``. You must make
sure that these files are secured. You can copy these 📁 files to authenticate ``uploady`` on more machines, but
it is advisable to create a session file for each machine.

More options
------------
Telegram-upload has more options available, like customizing the files thumbnail, set a caption message (including
variables) or configuring a proxy.
`Read the documentation <https://docs.ankit-chaubey.org/uploady/usage.html#telegram-download>`_ for more info.

💡 Features
===========

* **Upload** and **download** multiples files  (up to 4 GiB per file for premium users).
* **Interactive** mode.
* Add video **thumbs**.
* **Split** and **join** large files.
* **Delete** local or remote file on success.
* Use **variables** in the **caption** message.
* ... And **more**.

🐋 Docker
=========
Run uploady without installing it on your system using Docker. Instead of ``uploady``
and ``telegram-download`` you should use ``upload`` and ``download``. Usage::

    $ docker run -v <files_dir>:/files/
                 -v <config_dir>:/config
                 -it ankit-chaubey/uploady:main
                 <command> <args>

* ``<files_dir>``: upload or download directory.
* ``<config_dir>``: Directory that will be created to store the uploady configuration.
  It is created automatically.
* ``<command>``: ``upload`` and ``download``.
* ``<args>``: ``uploady`` and ``telegram-download`` arguments.

For example::

    $ docker run -v /media/data/:/files/
                 -v $PWD/config:/config
                 -it ankit-chaubey/uploady:main
                 upload file_to_upload.txt

❤️ Thanks
=========
This project developed by `Nekmo <https://github.com/Nekmo>`_ & `collaborators <https://github.com/ankit-chaubey/uploady/graphs/contributors>`_ would not be possible without
`Telethon <https://github.com/LonamiWebs/Telethon>`_, the library used as a Telegram client.

This project is maintained by `Ankit Chaubey <https://github.com/ankit-chaubey>`_ & The enhancements and customizations for Uploady are coming soon.

Telegram-upload is licensed under the `MIT license <https://github.com/ankit-chaubey/uploady/blob/main/LICENSE>`_.
