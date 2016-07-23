NCURSES-Programming-HOWTO examples
==================================

CMake examples for code in http://tldp.org/HOWTO/NCURSES-Programming-HOWTO/index.html

Requires `CMake`_, `ncurses`_ library, C compiler (clang, gcc).

You can find ncurses for linux, BSD and OS X with your package manager
under names package names like
``ncurses-devel``, ``libncurses-dev`` and ``ncurses``.

Building
--------

Easiest:

.. code-block:: sh

   $ make debug

.. code-block:: sh

   $ make debug_ninja

Manual:

.. code-block:: sh

   $ mkdir build
   $ cd build
   $ make

The examples will be in ``./build/examples/``.

.. CMake: https://cmake.org/
.. ncurses: https://www.gnu.org/software/ncurses/

