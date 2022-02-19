------------------------------------------
## Step 1

Python Version: Python 2.7.18 
Host System: MacOS Catalina

------------------------------------------

## Step 2

I used python GUI installer, 
	- https://www.python.org/downloads/release/python-2718/

Interpreter Location:

	/Library/Frameworks/Python.framework/Versions/2.7/bin/python2
	/Library/Frameworks/Python.framework/Versions/2.7/bin/pip2
--------------------------------------------------

## Step 3

Confirm the installation path path

which pip2

Expected Output : /Library/Frameworks/Python.framework/Versions/2.7/bin/pip2
	
which python2

Expected Output : /Library/Frameworks/Python.framework/Versions/2.7/bin/python2

------------------------------------------

## Step 4

After installing python 

go to 

/Applications/Python 2.7

Double click and install

	Install Certificates.command


-----------------------------------------
## Step 5

pip2 install pyinstaller==3.6

Make sure the installation is successful
--------------------------------------------------

## Step 6

which pyinstaller

    ### Make sure the path is 
    /Library/Frameworks/Python.framework/Versions/2.7/bin/pyinstaller

--------------------------------------------------
## Step 7

Build Application

pyinstaller --noconsole --add-binary='/System/Library/Frameworks/Tk.framework/Tk':'tk' --add-binary='/System/Library/Frameworks/Tcl.framework/Tcl':'tcl' --windowed myapp.py

    (or)

/Library/Frameworks/Python.framework/Versions/2.7/bin/pyinstaller --noconsole --add-binary='/System/Library/Frameworks/Tk.framework/Tk':'tk' --add-binary='/System/Library/Frameworks/Tcl.     framework/Tcl':'tcl' --windowed myapp.py

--------------------------------------------------
## Step 8

codesign --remove-signature dist/myapp.app/Contents/MacOS/Python
codesign --remove-signature dist/myapp.app/Contents/MacOS/myapp

--------------------------------------------------

## Step 9

open dist/myapp.app

By now your application should launch and run

----------------------------------------------------



----------------------------------------------------
