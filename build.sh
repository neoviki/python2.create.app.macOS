rm -rf build
rm -rf dist
#Console App
pyinstaller --noconsole --add-binary='/System/Library/Frameworks/Tk.framework/Tk':'tk' --add-binary='/System/Library/Frameworks/Tcl.framework/Tcl':'tcl' --windowed myapp.py

if [ $? -ne 0 ]; then
    echo "error: pyinstaller failed"
    exit 1
fi

cd dist/myapp.app/Contents/MacOS
if [ $? -ne 0 ]; then
    echo "error: dist directoru missing!"
    exit 1
fi

codesign --remove-signature Python
codesign --remove-signature myapp

echo
echo
echo "Generated application is @ dist/myapp.app"
echo
echo
