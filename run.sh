docker run --rm -v "$(pwd)":/app \
-w /app minidocks/ghostscript \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/ebook -dNOPAUSE \
-dQUIET -dBATCH \
-sOutputFile=Computer_science_compressed.pdf Computer_science.pdf
