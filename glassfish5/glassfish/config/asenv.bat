REM
REM  DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
REM
REM  Copyright (c) 2004-2017 Oracle and/or its affiliates. All rights reserved.
REM
REM  The contents of this file are subject to the terms of either the GNU
REM  General Public License Version 2 only ("GPL") or the Common Development
REM  and Distribution License("CDDL") (collectively, the "License").  You
REM  may not use this file except in compliance with the License.  You can
REM  obtain a copy of the License at
REM  https://oss.oracle.com/licenses/CDDL+GPL-1.1
REM  or LICENSE.txt.  See the License for the specific
REM  language governing permissions and limitations under the License.
REM
REM  When distributing the software, include this License Header Notice in each
REM  file and include the License file at LICENSE.txt.
REM
REM  GPL Classpath Exception:
REM  Oracle designates this particular file as subject to the "Classpath"
REM  exception as provided by Oracle in the GPL Version 2 section of the License
REM  file that accompanied this code.
REM
REM  Modifications:
REM  If applicable, add the following below the License Header, with the fields
REM  enclosed by brackets [] replaced by your own identifying information:
REM  "Portions Copyright [year] [name of copyright owner]"
REM
REM  Contributor(s):
REM  If you wish your version of this file to be governed by only the CDDL or
REM  only the GPL Version 2, indicate your decision by adding "[Contributor]
REM  elects to include this software in this distribution under the [CDDL or GPL
REM  Version 2] license."  If you don't indicate a single choice of license, a
REM  recipient has the option to distribute your version of this file under
REM  either the CDDL, the GPL Version 2 or to extend the choice of license to
REM  its licensees as provided above.  However, if you add GPL Version 2 code
REM  and therefore, elected the GPL Version 2 license, then the option applies
REM  only if the new code is made subject to such option by the copyright
REM  holder.
REM

REM
REM                       * * *    N O T E     * * *
REM
REM  Although the lines in this file are formatted as environment
REM  variable assignments, this file is NOT typically invoked as a script
REM  from another script to define these variables.  Rather, this file is read
REM  and processed by a server as it starts up.  That scanning code resolves
REM  the relative paths against the GlassFish installation directory.
REM
REM  Yet, this file is also where users of earlier versions have sometimes added
REM  a definition of AS_JAVA to control which version of Java GlassFish
REM  should use.  As a result, in order to run a user-specified version of Java,
REM  the asadmin and appclient scripts do indeed invoke this file as a
REM  script - but ONLY to define AS_JAVA.  Any calling script should not
REM  rely on the other settings because the relative paths will be resolved
REM  against the current directory when the calling script is run, not the
REM  installation directory of GlassFish, and such resolution will not work
REM  correctly unless the script happens to be run from the GlassFish installation
REM  directory.
REM

set path=C:\Program Files\Java\jdk1.8.0_261\bin;
set AS_IMQ_LIB=..\..\mq\lib
set AS_IMQ_BIN=..\..\mq\bin
set AS_CONFIG=..\config
set AS_INSTALL=..
set AS_DEF_DOMAINS_PATH=..\domains
set AS_DEF_NODES_PATH=..\nodes
set AS_DERBY_INSTALL=..\..\javadb
