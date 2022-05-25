.. Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  See the NOTICE file distributed
   with this work for additional information regarding copyright
   ownership.  The ASF licenses this file to you under the Apache
   License, Version 2.0 (the "License"); you may not use this file
   except in compliance with the License.  You may obtain a copy of
   the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
   implied.  See the License for the specific language governing
   permissions and limitations under the License.

.. include:: ../../../common.defs

.. default-domain:: c

TSHeapBufData
*************

Synopsis
========

.. code-block:: cpp

    #include <ts/ts.h>

.. function:: char *TSHeapBufData(TSHeapBuf hbp)

Description
===========

Returns a pointer to the first byte of data storage within the
heap buffer specified by :arg:`bufp`.

TSHeapBufLength
***************

Synopsis
========

.. code-block:: cpp

    #include <ts/ts.h>

.. function:: int TSHeapBufLength(TSHeapBuf hbp)

Description
===========

Returns the (non-negative) length in bytes of data storage within the
heap buffer specified by :arg:`bufp`.

TSHeapBufFree
*************

Synopsis
========

.. code-block:: cpp

    #include <ts/ts.h>

.. function:: void TSHeapBufFree(TSHeapBuf hbp)

Description
===========

Frees the heap buffer specified by :arg:`bufp`.
